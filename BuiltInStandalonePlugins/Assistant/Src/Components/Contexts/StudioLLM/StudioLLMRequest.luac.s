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
        5 DUPTABLE                         R1 K3 [{"body"}]
        6 GETUPVAL                         R2 1
        7 SETTABLEKS                       R2 R1 K2 ["body"]
        9 CALL                             R0 1 -1
       10 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Conversation"]
        3 GETTABLEKS                       R0 R0 K1 ["postCreateConversationV1ConversationPostAsync"]
        5 DUPTABLE                         R1 K3 [{"body"}]
        6 GETUPVAL                         R2 1
        7 SETTABLEKS                       R2 R1 K2 ["body"]
        9 CALL                             R0 1 -1
       10 RETURN                           R0 -1

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
        9 GETTABLEKS                       R5 R5 K2 ["FStringMCPAssistantCustomModelName"]
       11 LOADK                            R6 K3 ["auto"]
       12 CALL                             R3 3 1
       13 GETUPVAL                         R4 0
       14 GETUPVAL                         R5 1
       15 GETTABLEKS                       R5 R5 K4 ["FStringMCPAssistantThinkingMode"]
       17 LOADK                            R6 K3 ["auto"]
       18 CALL                             R4 2 1
       19 DUPTABLE                         R5 K9 [{"system", "llm_config", "messages", "tools"}]
       20 GETTABLEKS                       R6 R1 K5 ["system"]
       22 SETTABLEKS                       R6 R5 K5 ["system"]
       24 DUPTABLE                         R6 K15 [{["model"], ["thinking_mode"], ["max_tokens"], ["parallel_tool_calls"] = True}]
       25 SETTABLEKS                       R3 R6 K10 ["model"]
       27 SETTABLEKS                       R4 R6 K11 ["thinking_mode"]
       29 GETUPVAL                         R7 1
       30 GETTABLEKS                       R7 R7 K16 ["FIntConvAIAssistantMaxTokens"]
       32 SETTABLEKS                       R7 R6 K12 ["max_tokens"]
       34 SETTABLEKS                       R6 R5 K6 ["llm_config"]
       36 GETTABLEKS                       R6 R1 K7 ["messages"]
       38 SETTABLEKS                       R6 R5 K7 ["messages"]
       40 GETTABLEKS                       R6 R1 K8 ["tools"]
       42 SETTABLEKS                       R6 R5 K8 ["tools"]
       44 DUPTABLE                         R6 K25 [{["threadId"], ["messageId"], ["requestId"], ["conversation"], ["firstMessage"], ["useAgenticMode"], ["isDebugMode"] = True, ["assistantMode"]}]
       45 GETTABLEKS                       R7 R1 K17 ["threadId"]
       47 SETTABLEKS                       R7 R6 K17 ["threadId"]
       49 GETTABLEKS                       R7 R1 K26 ["messageGuid"]
       51 SETTABLEKS                       R7 R6 K18 ["messageId"]
       53 SETTABLEKS                       R2 R6 K19 ["requestId"]
       55 SETTABLEKS                       R5 R6 K20 ["conversation"]
       57 GETTABLEKS                       R7 R1 K27 ["isFirstMessage"]
       59 SETTABLEKS                       R7 R6 K21 ["firstMessage"]
       61 GETTABLEKS                       R7 R1 K28 ["isAgenticMode"]
       63 SETTABLEKS                       R7 R6 K22 ["useAgenticMode"]
       65 GETTABLEKS                       R7 R1 K24 ["assistantMode"]
       67 SETTABLEKS                       R7 R6 K24 ["assistantMode"]
       69 GETUPVAL                         R7 1
       70 GETTABLEKS                       R7 R7 K29 ["FFlagAssistantUseNewOpenAPIClients"]
       72 JUMPIFNOT                        R7 ; [+129]
       73 GETTABLEKS                       R8 R1 K0 ["isSubagent"]
       75 JUMPIFEQKB                       R8 TRUE ; [+2]
       77 LOADB                            R7 0 +1
       78 LOADB                            R7 1
       79 JUMPIFNOT                        R7 ; [+4]
       80 GETUPVAL                         R8 1
       81 GETTABLEKS                       R8 R8 K30 ["FStringSubagentURLOverride"]
       83 JUMP                             ; [+3]
       84 GETUPVAL                         R8 1
       85 GETTABLEKS                       R8 R8 K31 ["FStringMCPAssistantURLOverride"]
       87 GETUPVAL                         R9 0
       88 MOVE                             R10 R8
       89 GETTABLEKS                       R11 R1 K32 ["conversationUrl"]
       91 CALL                             R9 2 1
       92 JUMPIFNOT                        R9 ; [+49]
       93 JUMPIFEQKS                       R9 K33 [""] ; [+48]
       95 NEWTABLE                         R10 1 0
       97 LOADK                            R11 K34 ["application/json"]
       98 SETTABLEKS                       R11 R10 K35 ["Content-Type"]
      100 JUMPIFEQKS                       R8 K33 [""] ; [+26]
      102 LOADNIL                          R11
      103 GETUPVAL                         R12 1
      104 GETTABLEKS                       R12 R12 K36 ["FFlagAssistantNotificationManager"]
      106 JUMPIFNOT                        R12 ; [+9]
      107 GETUPVAL                         R12 2
      108 GETTABLEKS                       R12 R12 K37 ["get"]
      110 CALL                             R12 0 1
      111 GETTABLEKS                       R13 R12 K38 ["getUserId"]
      113 CALL                             R13 0 1
      114 MOVE                             R11 R13
      115 JUMP                             ; [+4]
      116 NAMECALL                         R12 R0 K39 ["GetUserId"]
      118 CALL                             R12 1 1
      119 MOVE                             R11 R12
      120 FASTCALL1                        TOSTRING R11 ; [+3]
      121 MOVE                             R13 R11
      122 GETIMPORT                        R12 K41 [tostring]
      124 CALL                             R12 1 1
      125 SETTABLEKS                       R12 R10 K42 ["robloxctx-authenticated-userid"]
      127 GETUPVAL                         R11 3
      128 GETTABLEKS                       R11 R11 K43 ["Json"]
      130 GETTABLEKS                       R11 R11 K44 ["encode"]
      132 MOVE                             R12 R6
      133 CALL                             R11 1 1
      134 GETUPVAL                         R12 4
      135 MOVE                             R14 R9
      136 MOVE                             R15 R11
      137 MOVE                             R16 R10
      138 NAMECALL                         R12 R12 K45 ["post"]
      140 CALL                             R12 4 -1
      141 RETURN                           R12 -1
      142 DUPTABLE                         R10 K46 [{["threadId"], ["requestId"], ["messageId"], ["conversation"], ["firstMessage"], ["useAgenticMode"], ["isDebugMode"] = True, ["assistantMode"]}]
      143 GETTABLEKS                       R11 R1 K17 ["threadId"]
      145 SETTABLEKS                       R11 R10 K17 ["threadId"]
      147 SETTABLEKS                       R2 R10 K19 ["requestId"]
      149 GETTABLEKS                       R11 R1 K26 ["messageGuid"]
      151 SETTABLEKS                       R11 R10 K18 ["messageId"]
      153 DUPTABLE                         R11 K48 [{"system", "llmConfig", "messages", "tools"}]
      154 GETTABLEKS                       R12 R1 K5 ["system"]
      156 SETTABLEKS                       R12 R11 K5 ["system"]
      158 DUPTABLE                         R12 K54 [{["model"], ["thinkingMode"], ["parallelToolCalls"] = True, ["maxTokens"], ["temperature"] = }]
      159 SETTABLEKS                       R3 R12 K10 ["model"]
      161 SETTABLEKS                       R4 R12 K49 ["thinkingMode"]
      163 GETUPVAL                         R13 1
      164 GETTABLEKS                       R13 R13 K16 ["FIntConvAIAssistantMaxTokens"]
      166 SETTABLEKS                       R13 R12 K51 ["maxTokens"]
      168 SETTABLEKS                       R12 R11 K47 ["llmConfig"]
      170 GETTABLEKS                       R12 R1 K7 ["messages"]
      172 SETTABLEKS                       R12 R11 K7 ["messages"]
      174 GETTABLEKS                       R12 R1 K8 ["tools"]
      176 SETTABLEKS                       R12 R11 K8 ["tools"]
      178 SETTABLEKS                       R11 R10 K20 ["conversation"]
      180 GETTABLEKS                       R11 R1 K27 ["isFirstMessage"]
      182 SETTABLEKS                       R11 R10 K21 ["firstMessage"]
      184 GETTABLEKS                       R11 R1 K28 ["isAgenticMode"]
      186 SETTABLEKS                       R11 R10 K22 ["useAgenticMode"]
      188 GETTABLEKS                       R11 R1 K24 ["assistantMode"]
      190 SETTABLEKS                       R11 R10 K24 ["assistantMode"]
      192 GETUPVAL                         R11 5
      193 GETTABLEKS                       R11 R11 K55 ["new"]
      195 NEWCLOSURE                       R12 P0
      196 CAPTURE                          UPVAL U6
      197 CAPTURE                          VAL R10
      198 CAPTURE                          VAL R7
      199 CAPTURE                          UPVAL U7
      200 CALL                             R11 1 -1
      201 RETURN                           R11 -1
      202 GETTABLEKS                       R8 R1 K0 ["isSubagent"]
      204 JUMPIFEQKB                       R8 TRUE ; [+2]
      206 LOADB                            R7 0 +1
      207 LOADB                            R7 1
      208 JUMPIFNOT                        R7 ; [+4]
      209 GETUPVAL                         R8 1
      210 GETTABLEKS                       R8 R8 K30 ["FStringSubagentURLOverride"]
      212 JUMP                             ; [+3]
      213 GETUPVAL                         R8 1
      214 GETTABLEKS                       R8 R8 K31 ["FStringMCPAssistantURLOverride"]
      216 GETTABLEKS                       R10 R1 K32 ["conversationUrl"]
      218 JUMPIFNOT                        R10 ; [+4]
      219 JUMPIFEQKS                       R10 K33 [""] ; [+3]
      221 MOVE                             R9 R10
      222 JUMP                             ; [+4]
      223 JUMPIFNOT                        R7 ; [+2]
      224 GETUPVAL                         R9 8
      225 JUMP                             ; [+1]
      226 GETUPVAL                         R9 9
      227 GETUPVAL                         R10 0
      228 MOVE                             R11 R8
      229 MOVE                             R12 R9
      230 CALL                             R10 2 1
      231 NEWTABLE                         R11 1 0
      233 LOADK                            R12 K34 ["application/json"]
      234 SETTABLEKS                       R12 R11 K35 ["Content-Type"]
      236 JUMPIFEQKS                       R8 K33 [""] ; [+26]
      238 LOADNIL                          R12
      239 GETUPVAL                         R13 1
      240 GETTABLEKS                       R13 R13 K36 ["FFlagAssistantNotificationManager"]
      242 JUMPIFNOT                        R13 ; [+9]
      243 GETUPVAL                         R13 2
      244 GETTABLEKS                       R13 R13 K37 ["get"]
      246 CALL                             R13 0 1
      247 GETTABLEKS                       R14 R13 K38 ["getUserId"]
      249 CALL                             R14 0 1
      250 MOVE                             R12 R14
      251 JUMP                             ; [+4]
      252 NAMECALL                         R13 R0 K39 ["GetUserId"]
      254 CALL                             R13 1 1
      255 MOVE                             R12 R13
      256 FASTCALL1                        TOSTRING R12 ; [+3]
      257 MOVE                             R14 R12
      258 GETIMPORT                        R13 K41 [tostring]
      260 CALL                             R13 1 1
      261 SETTABLEKS                       R13 R11 K42 ["robloxctx-authenticated-userid"]
      263 GETUPVAL                         R12 3
      264 GETTABLEKS                       R12 R12 K43 ["Json"]
      266 GETTABLEKS                       R12 R12 K44 ["encode"]
      268 MOVE                             R13 R6
      269 CALL                             R12 1 1
      270 GETUPVAL                         R13 4
      271 MOVE                             R15 R10
      272 MOVE                             R16 R12
      273 MOVE                             R17 R11
      274 NAMECALL                         R13 R13 K45 ["post"]
      276 CALL                             R13 4 -1
      277 RETURN                           R13 -1

PROTO_6:
        0 LOADNIL                          R2
        1 GETTABLEKS                       R3 R0 K0 ["responseCode"]
        3 JUMPIFNOTEQKN                    R3 K1 [429] ; [+19]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K2 ["FFlagMCPAssistantTooManyRequestLog"]
        8 JUMPIFNOT                        R3 ; [+12]
        9 GETTABLEKS                       R3 R0 K3 ["responseBody"]
       11 JUMPIFEQKS                       R3 K4 ["\"Quota Exceeded\""] ; [+5]
       13 GETTABLEKS                       R3 R0 K3 ["responseBody"]
       15 JUMPIFNOTEQKS                    R3 K5 ["\"Quota Checking Failed\""] ; [+3]
       17 LOADK                            R2 K6 ["quota_exceeded"]
       18 JUMP                             ; [+5]
       19 LOADK                            R2 K7 ["too_many_request"]
       20 JUMP                             ; [+3]
       21 LOADK                            R2 K6 ["quota_exceeded"]
       22 JUMP                             ; [+1]
       23 LOADK                            R2 K8 ["request_failed"]
       24 MOVE                             R3 R1
       25 DUPTABLE                         R4 K11 [{["type"] = "error", ["error"]}]
       26 SETTABLEKS                       R2 R4 K10 ["error"]
       28 CALL                             R3 1 0
       29 RETURN                           R0 0

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
        8 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantNotificationManager"]
       10 JUMPIFNOT                        R1 ; [+11]
       11 GETUPVAL                         R1 5
       12 GETTABLEKS                       R1 R1 K1 ["get"]
       14 CALL                             R1 0 1
       15 GETTABLEKS                       R2 R1 K2 ["listen"]
       17 LOADK                            R3 K3 ["AssistantPlugin"]
       18 MOVE                             R4 R0
       19 CALL                             R2 2 1
       20 SETUPVAL                         R2 0
       21 RETURN                           R0 0
       22 GETUPVAL                         R1 6
       23 GETTABLEKS                       R1 R1 K4 ["RobloxEventReceived"]
       25 NEWCLOSURE                       R3 P1
       26 CAPTURE                          VAL R0
       27 NAMECALL                         R1 R1 K5 ["Connect"]
       29 CALL                             R1 2 1
       30 SETUPVAL                         R1 0
       31 RETURN                           R0 0

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
        4 GETUPVAL                         R2 2
        5 GETTABLEKS                       R2 R2 K0 ["isSubagent"]
        7 JUMPIFEQKB                       R2 TRUE ; [+2]
        9 LOADB                            R1 0 +1
       10 LOADB                            R1 1
       11 JUMPIFNOT                        R1 ; [+4]
       12 GETUPVAL                         R2 3
       13 GETTABLEKS                       R2 R2 K1 ["FStringSubagentURLOverride"]
       15 JUMP                             ; [+3]
       16 GETUPVAL                         R2 3
       17 GETTABLEKS                       R2 R2 K2 ["FStringMCPAssistantURLOverride"]
       19 GETUPVAL                         R4 2
       20 GETTABLEKS                       R4 R4 K3 ["conversationUrl"]
       22 JUMPIFNOT                        R4 ; [+4]
       23 JUMPIFEQKS                       R4 K4 [""] ; [+3]
       25 MOVE                             R3 R4
       26 JUMP                             ; [+4]
       27 JUMPIFNOT                        R1 ; [+2]
       28 GETUPVAL                         R3 4
       29 JUMP                             ; [+1]
       30 GETUPVAL                         R3 5
       31 GETIMPORT                        R4 K6 [warn]
       33 LOADK                            R5 K7 ["[StudioLLMRequest] Request failed:"]
       34 DUPTABLE                         R6 K16 [{"responseCode", "responseBody", "isSubagent", "selectedModel", "useNewOpenAPIClients", "notificationManager", "baseApisUrl", "urlOverride", "requestUrl"}]
       35 GETTABLEKS                       R7 R0 K8 ["responseCode"]
       37 SETTABLEKS                       R7 R6 K8 ["responseCode"]
       39 GETTABLEKS                       R7 R0 K9 ["responseBody"]
       41 SETTABLEKS                       R7 R6 K9 ["responseBody"]
       43 SETTABLEKS                       R1 R6 K0 ["isSubagent"]
       45 GETUPVAL                         R7 2
       46 GETTABLEKS                       R7 R7 K10 ["selectedModel"]
       48 SETTABLEKS                       R7 R6 K10 ["selectedModel"]
       50 GETUPVAL                         R7 3
       51 GETTABLEKS                       R7 R7 K17 ["FFlagAssistantUseNewOpenAPIClients"]
       53 SETTABLEKS                       R7 R6 K11 ["useNewOpenAPIClients"]
       55 GETUPVAL                         R7 3
       56 GETTABLEKS                       R7 R7 K18 ["FFlagAssistantNotificationManager"]
       58 SETTABLEKS                       R7 R6 K12 ["notificationManager"]
       60 GETUPVAL                         R7 6
       61 GETTABLEKS                       R7 R7 K19 ["APIS_URL"]
       63 SETTABLEKS                       R7 R6 K13 ["baseApisUrl"]
       65 SETTABLEKS                       R2 R6 K14 ["urlOverride"]
       67 GETUPVAL                         R7 7
       68 MOVE                             R8 R2
       69 MOVE                             R9 R3
       70 CALL                             R7 2 1
       71 SETTABLEKS                       R7 R6 K15 ["requestUrl"]
       73 CALL                             R4 2 0
       74 GETUPVAL                         R4 8
       75 MOVE                             R5 R0
       76 GETUPVAL                         R6 9
       77 CALL                             R4 2 0
       78 RETURN                           R0 0

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
       38 CAPTURE                          VAL R0
       39 CAPTURE                          UPVAL U6
       40 CAPTURE                          UPVAL U7
       41 CAPTURE                          UPVAL U8
       42 CAPTURE                          UPVAL U9
       43 CAPTURE                          UPVAL U10
       44 CAPTURE                          UPVAL U11
       45 CAPTURE                          VAL R1
       46 NAMECALL                         R3 R3 K15 ["catch"]
       48 CALL                             R3 2 0
       49 RETURN                           R0 0

PROTO_15:
        0 LOADNIL                          R2
        1 LOADNIL                          R3
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K0 ["FFlagAssistantNotificationManager"]
        5 JUMPIF                           R4 ; [+10]
        6 LOADK                            R6 K1 ["NotificationService"]
        7 NAMECALL                         R4 R0 K2 ["GetService"]
        9 CALL                             R4 2 1
       10 MOVE                             R2 R4
       11 LOADK                            R6 K3 ["StudioService"]
       12 NAMECALL                         R4 R0 K2 ["GetService"]
       14 CALL                             R4 2 1
       15 MOVE                             R3 R4
       16 NEWTABLE                         R4 0 0
       18 LOADNIL                          R5
       19 NEWCLOSURE                       R6 P0
       20 CAPTURE                          UPVAL U1
       21 CAPTURE                          UPVAL U2
       22 CAPTURE                          VAL R4
       23 NEWCLOSURE                       R7 P1
       24 CAPTURE                          REF R5
       25 CAPTURE                          UPVAL U3
       26 CAPTURE                          VAL R4
       27 CAPTURE                          VAL R6
       28 CAPTURE                          UPVAL U0
       29 CAPTURE                          UPVAL U4
       30 CAPTURE                          REF R2
       31 JUMPIFNOT                        R1 ; [+8]
       32 GETTABLEKS                       R8 R1 K4 ["Unloading"]
       34 NEWCLOSURE                       R10 P2
       35 CAPTURE                          REF R5
       36 CAPTURE                          VAL R4
       37 NAMECALL                         R8 R8 K5 ["Connect"]
       39 CALL                             R8 2 0
       40 NEWCLOSURE                       R8 P3
       41 CAPTURE                          UPVAL U5
       42 CAPTURE                          UPVAL U6
       43 CAPTURE                          VAL R7
       44 CAPTURE                          VAL R4
       45 CAPTURE                          UPVAL U7
       46 CAPTURE                          REF R3
       47 CAPTURE                          UPVAL U0
       48 CAPTURE                          UPVAL U8
       49 CAPTURE                          UPVAL U9
       50 CAPTURE                          UPVAL U10
       51 CAPTURE                          UPVAL U11
       52 CAPTURE                          UPVAL U12
       53 CLOSEUPVALS                      R2
       54 RETURN                           R8 1

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
       36 GETTABLEKS                       R6 R0 K10 ["Packages"]
       38 GETTABLEKS                       R6 R6 K14 ["ModelContextProtocol"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K9 [require]
       43 GETTABLEKS                       R7 R0 K15 ["Src"]
       45 GETTABLEKS                       R7 R7 K16 ["Util"]
       47 GETTABLEKS                       R7 R7 K17 ["NotificationManagerStore"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K9 [require]
       52 GETTABLEKS                       R8 R0 K10 ["Packages"]
       54 GETTABLEKS                       R8 R8 K18 ["OpenApiMcpAssistantApi"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K9 [require]
       59 GETTABLEKS                       R9 R0 K10 ["Packages"]
       61 GETTABLEKS                       R9 R9 K19 ["Promise"]
       63 CALL                             R8 1 1
       64 GETIMPORT                        R9 K9 [require]
       66 GETTABLEKS                       R10 R0 K15 ["Src"]
       68 GETTABLEKS                       R10 R10 K16 ["Util"]
       70 GETTABLEKS                       R10 R10 K20 ["StudioEndpointUtil"]
       72 CALL                             R9 1 1
       73 GETIMPORT                        R10 K9 [require]
       75 GETTABLEKS                       R11 R0 K15 ["Src"]
       77 GETTABLEKS                       R11 R11 K21 ["Types"]
       79 CALL                             R10 1 1
       80 GETIMPORT                        R11 K9 [require]
       82 GETTABLEKS                       R12 R0 K15 ["Src"]
       84 GETTABLEKS                       R12 R12 K16 ["Util"]
       86 GETTABLEKS                       R12 R12 K22 ["stringCoalesce"]
       88 CALL                             R11 1 1
       89 GETIMPORT                        R12 K9 [require]
       91 GETTABLEKS                       R13 R0 K15 ["Src"]
       93 GETTABLEKS                       R13 R13 K23 ["Flags"]
       95 CALL                             R12 1 1
       96 GETTABLEKS                       R13 R2 K24 ["Utils"]
       98 GETTABLEKS                       R13 R13 K25 ["ServerStreamIdStore"]
      100 GETTABLEKS                       R14 R2 K24 ["Utils"]
      102 GETTABLEKS                       R14 R14 K26 ["StreamEventUtils"]
      104 GETTABLEKS                       R15 R3 K27 ["Http"]
      106 GETTABLEKS                       R15 R15 K28 ["Networking"]
      108 GETTABLEKS                       R16 R15 K29 ["new"]
      110 DUPTABLE                         R17 K33 [{["isInternal"] = True, ["loggingLevel"]}]
      111 GETTABLEKS                       R19 R12 K34 ["FFlagDebugLogAssistantUI"]
      113 JUMPIFNOT                        R19 ; [+2]
      114 LOADN                            R18 4
      115 JUMP                             ; [+1]
      116 LOADN                            R18 0
      117 SETTABLEKS                       R18 R17 K32 ["loggingLevel"]
      119 CALL                             R16 1 1
      120 GETTABLEKS                       R17 R2 K35 ["Guest"]
      122 GETTABLEKS                       R17 R17 K36 ["Environment"]
      124 GETTABLEKS                       R18 R3 K27 ["Http"]
      126 GETTABLEKS                       R18 R18 K37 ["HttpResponse"]
      128 GETTABLEKS                       R19 R3 K38 ["Url"]
      130 GETTABLEKS                       R20 R19 K29 ["new"]
      132 LOADNIL                          R21
      133 CALL                             R20 1 1
      134 LOADK                            R22 K39 ["%*/studio-assistant/v1/conversation"]
      135 GETTABLEKS                       R24 R20 K40 ["APIS_URL"]
      137 NAMECALL                         R22 R22 K41 ["format"]
      139 CALL                             R22 2 1
      140 MOVE                             R21 R22
      141 LOADK                            R23 K42 ["%*/studio-assistant/v1/subagent-conversation"]
      142 GETTABLEKS                       R25 R20 K40 ["APIS_URL"]
      144 NAMECALL                         R23 R23 K41 ["format"]
      146 CALL                             R23 2 1
      147 MOVE                             R22 R23
      148 DUPCLOSURE                       R23 K43 [PROTO_0]
      149 CAPTURE                          VAL R22
      150 CAPTURE                          VAL R21
      151 DUPCLOSURE                       R24 K44 [PROTO_3]
      152 CAPTURE                          VAL R9
      153 CAPTURE                          VAL R7
      154 DUPCLOSURE                       R25 K45 [PROTO_5]
      155 CAPTURE                          VAL R11
      156 CAPTURE                          VAL R12
      157 CAPTURE                          VAL R17
      158 CAPTURE                          VAL R5
      159 CAPTURE                          VAL R16
      160 CAPTURE                          VAL R8
      161 CAPTURE                          VAL R24
      162 CAPTURE                          VAL R9
      163 CAPTURE                          VAL R22
      164 CAPTURE                          VAL R21
      165 DUPTABLE                         R26 K52 [{["QUOTA_EXCEEDED"] = "quota_exceeded", ["TOO_MANY_REQUESTS"] = "too_many_request", ["REQUEST_FAILED"] = "request_failed"}]
      166 DUPCLOSURE                       R27 K53 [PROTO_6]
      167 CAPTURE                          VAL R12
      168 DUPCLOSURE                       R28 K54 [PROTO_15]
      169 CAPTURE                          VAL R12
      170 CAPTURE                          VAL R17
      171 CAPTURE                          VAL R14
      172 CAPTURE                          VAL R5
      173 CAPTURE                          VAL R6
      174 CAPTURE                          VAL R1
      175 CAPTURE                          VAL R13
      176 CAPTURE                          VAL R25
      177 CAPTURE                          VAL R22
      178 CAPTURE                          VAL R21
      179 CAPTURE                          VAL R20
      180 CAPTURE                          VAL R11
      181 CAPTURE                          VAL R27
      182 DUPCLOSURE                       R29 K55 [PROTO_16]
      183 CAPTURE                          VAL R28
      184 DUPTABLE                         R30 K57 [{"createRequestHandler"}]
      185 SETTABLEKS                       R29 R30 K56 ["createRequestHandler"]
      187 RETURN                           R30 1
