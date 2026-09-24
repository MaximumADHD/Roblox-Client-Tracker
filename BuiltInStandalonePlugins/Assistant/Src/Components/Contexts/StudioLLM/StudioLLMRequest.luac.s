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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R4 R0 K0 ["isSubagent"]
        3 JUMPIFNOT                        R4 ; [+3]
        4 GETTABLEKS                       R3 R0 K1 ["selectedModel"]
        6 JUMP                             ; [+1]
        7 LOADNIL                          R3
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R4 R4 K2 ["FStringMCPAssistantCustomModelName"]
       11 LOADK                            R5 K3 ["auto"]
       12 CALL                             R2 3 1
       13 GETUPVAL                         R3 0
       14 GETUPVAL                         R4 1
       15 GETTABLEKS                       R4 R4 K4 ["FStringMCPAssistantThinkingMode"]
       17 LOADK                            R5 K3 ["auto"]
       18 CALL                             R3 2 1
       19 DUPTABLE                         R4 K9 [{"system", "llm_config", "messages", "tools"}]
       20 GETTABLEKS                       R5 R0 K5 ["system"]
       22 SETTABLEKS                       R5 R4 K5 ["system"]
       24 DUPTABLE                         R5 K15 [{["model"], ["thinking_mode"], ["max_tokens"], ["parallel_tool_calls"] = True}]
       25 SETTABLEKS                       R2 R5 K10 ["model"]
       27 SETTABLEKS                       R3 R5 K11 ["thinking_mode"]
       29 GETUPVAL                         R6 1
       30 GETTABLEKS                       R6 R6 K16 ["FIntConvAIAssistantMaxTokens"]
       32 SETTABLEKS                       R6 R5 K12 ["max_tokens"]
       34 SETTABLEKS                       R5 R4 K6 ["llm_config"]
       36 GETTABLEKS                       R5 R0 K7 ["messages"]
       38 SETTABLEKS                       R5 R4 K7 ["messages"]
       40 GETTABLEKS                       R5 R0 K8 ["tools"]
       42 SETTABLEKS                       R5 R4 K8 ["tools"]
       44 GETUPVAL                         R6 2
       45 CALL                             R6 0 1
       46 JUMPIFNOT                        R6 ; [+6]
       47 GETUPVAL                         R6 1
       48 GETTABLEKS                       R6 R6 K17 ["FFlagAssistantCreditMeteringLocalBackend"]
       50 JUMPIFNOT                        R6 ; [+2]
       51 LOADB                            R5 1
       52 JUMP                             ; [+1]
       53 LOADNIL                          R5
       54 DUPTABLE                         R6 K27 [{["threadId"], ["messageId"], ["requestId"], ["conversation"], ["firstMessage"], ["useAgenticMode"], ["isDebugMode"] = True, ["assistantMode"], ["newQuotaChecking"]}]
       55 GETTABLEKS                       R7 R0 K18 ["threadId"]
       57 SETTABLEKS                       R7 R6 K18 ["threadId"]
       59 GETTABLEKS                       R7 R0 K28 ["messageGuid"]
       61 SETTABLEKS                       R7 R6 K19 ["messageId"]
       63 SETTABLEKS                       R1 R6 K20 ["requestId"]
       65 SETTABLEKS                       R4 R6 K21 ["conversation"]
       67 GETTABLEKS                       R7 R0 K29 ["isFirstMessage"]
       69 SETTABLEKS                       R7 R6 K22 ["firstMessage"]
       71 GETTABLEKS                       R7 R0 K30 ["isAgenticMode"]
       73 SETTABLEKS                       R7 R6 K23 ["useAgenticMode"]
       75 GETTABLEKS                       R7 R0 K25 ["assistantMode"]
       77 SETTABLEKS                       R7 R6 K25 ["assistantMode"]
       79 SETTABLEKS                       R5 R6 K26 ["newQuotaChecking"]
       81 GETUPVAL                         R7 1
       82 GETTABLEKS                       R7 R7 K31 ["FFlagAssistantUseNewOpenAPIClients"]
       84 JUMPIFNOT                        R7 ; [+120]
       85 GETTABLEKS                       R8 R0 K0 ["isSubagent"]
       87 JUMPIFEQKB                       R8 TRUE ; [+2]
       89 LOADB                            R7 0 +1
       90 LOADB                            R7 1
       91 JUMPIFNOT                        R7 ; [+4]
       92 GETUPVAL                         R8 1
       93 GETTABLEKS                       R8 R8 K32 ["FStringSubagentURLOverride"]
       95 JUMP                             ; [+3]
       96 GETUPVAL                         R8 1
       97 GETTABLEKS                       R8 R8 K33 ["FStringMCPAssistantURLOverride"]
       99 GETUPVAL                         R9 0
      100 MOVE                             R10 R8
      101 GETTABLEKS                       R11 R0 K34 ["conversationUrl"]
      103 CALL                             R9 2 1
      104 JUMPIFNOT                        R9 ; [+38]
      105 JUMPIFEQKS                       R9 K35 [""] ; [+37]
      107 NEWTABLE                         R10 1 0
      109 LOADK                            R11 K36 ["application/json"]
      110 SETTABLEKS                       R11 R10 K37 ["Content-Type"]
      112 JUMPIFEQKS                       R8 K35 [""] ; [+15]
      114 GETUPVAL                         R11 3
      115 GETTABLEKS                       R11 R11 K38 ["get"]
      117 CALL                             R11 0 1
      118 GETTABLEKS                       R11 R11 K39 ["getUserId"]
      120 CALL                             R11 0 1
      121 FASTCALL1                        TOSTRING R11 ; [+3]
      122 MOVE                             R13 R11
      123 GETIMPORT                        R12 K41 [tostring]
      125 CALL                             R12 1 1
      126 SETTABLEKS                       R12 R10 K42 ["robloxctx-authenticated-userid"]
      128 GETUPVAL                         R11 4
      129 GETTABLEKS                       R11 R11 K43 ["Json"]
      131 GETTABLEKS                       R11 R11 K44 ["encode"]
      133 MOVE                             R12 R6
      134 CALL                             R11 1 1
      135 GETUPVAL                         R12 5
      136 MOVE                             R14 R9
      137 MOVE                             R15 R11
      138 MOVE                             R16 R10
      139 NAMECALL                         R12 R12 K45 ["post"]
      141 CALL                             R12 4 -1
      142 RETURN                           R12 -1
      143 DUPTABLE                         R10 K46 [{["threadId"], ["requestId"], ["messageId"], ["conversation"], ["firstMessage"], ["useAgenticMode"], ["isDebugMode"] = True, ["assistantMode"], ["newQuotaChecking"]}]
      144 GETTABLEKS                       R11 R0 K18 ["threadId"]
      146 SETTABLEKS                       R11 R10 K18 ["threadId"]
      148 SETTABLEKS                       R1 R10 K20 ["requestId"]
      150 GETTABLEKS                       R11 R0 K28 ["messageGuid"]
      152 SETTABLEKS                       R11 R10 K19 ["messageId"]
      154 DUPTABLE                         R11 K48 [{"system", "llmConfig", "messages", "tools"}]
      155 GETTABLEKS                       R12 R0 K5 ["system"]
      157 SETTABLEKS                       R12 R11 K5 ["system"]
      159 DUPTABLE                         R12 K54 [{["model"], ["thinkingMode"], ["parallelToolCalls"] = True, ["maxTokens"], ["temperature"] = }]
      160 SETTABLEKS                       R2 R12 K10 ["model"]
      162 SETTABLEKS                       R3 R12 K49 ["thinkingMode"]
      164 GETUPVAL                         R13 1
      165 GETTABLEKS                       R13 R13 K16 ["FIntConvAIAssistantMaxTokens"]
      167 SETTABLEKS                       R13 R12 K51 ["maxTokens"]
      169 SETTABLEKS                       R12 R11 K47 ["llmConfig"]
      171 GETTABLEKS                       R12 R0 K7 ["messages"]
      173 SETTABLEKS                       R12 R11 K7 ["messages"]
      175 GETTABLEKS                       R12 R0 K8 ["tools"]
      177 SETTABLEKS                       R12 R11 K8 ["tools"]
      179 SETTABLEKS                       R11 R10 K21 ["conversation"]
      181 GETTABLEKS                       R11 R0 K29 ["isFirstMessage"]
      183 SETTABLEKS                       R11 R10 K22 ["firstMessage"]
      185 GETTABLEKS                       R11 R0 K30 ["isAgenticMode"]
      187 SETTABLEKS                       R11 R10 K23 ["useAgenticMode"]
      189 GETTABLEKS                       R11 R0 K25 ["assistantMode"]
      191 SETTABLEKS                       R11 R10 K25 ["assistantMode"]
      193 SETTABLEKS                       R5 R10 K26 ["newQuotaChecking"]
      195 GETUPVAL                         R11 6
      196 GETTABLEKS                       R11 R11 K55 ["new"]
      198 NEWCLOSURE                       R12 P0
      199 CAPTURE                          UPVAL U7
      200 CAPTURE                          VAL R10
      201 CAPTURE                          VAL R7
      202 CAPTURE                          UPVAL U8
      203 CALL                             R11 1 -1
      204 RETURN                           R11 -1
      205 GETTABLEKS                       R8 R0 K0 ["isSubagent"]
      207 JUMPIFEQKB                       R8 TRUE ; [+2]
      209 LOADB                            R7 0 +1
      210 LOADB                            R7 1
      211 JUMPIFNOT                        R7 ; [+4]
      212 GETUPVAL                         R8 1
      213 GETTABLEKS                       R8 R8 K32 ["FStringSubagentURLOverride"]
      215 JUMP                             ; [+3]
      216 GETUPVAL                         R8 1
      217 GETTABLEKS                       R8 R8 K33 ["FStringMCPAssistantURLOverride"]
      219 GETTABLEKS                       R10 R0 K34 ["conversationUrl"]
      221 JUMPIFNOT                        R10 ; [+4]
      222 JUMPIFEQKS                       R10 K35 [""] ; [+3]
      224 MOVE                             R9 R10
      225 JUMP                             ; [+4]
      226 JUMPIFNOT                        R7 ; [+2]
      227 GETUPVAL                         R9 9
      228 JUMP                             ; [+1]
      229 GETUPVAL                         R9 10
      230 GETUPVAL                         R10 0
      231 MOVE                             R11 R8
      232 MOVE                             R12 R9
      233 CALL                             R10 2 1
      234 NEWTABLE                         R11 1 0
      236 LOADK                            R12 K36 ["application/json"]
      237 SETTABLEKS                       R12 R11 K37 ["Content-Type"]
      239 JUMPIFEQKS                       R8 K35 [""] ; [+15]
      241 GETUPVAL                         R12 3
      242 GETTABLEKS                       R12 R12 K38 ["get"]
      244 CALL                             R12 0 1
      245 GETTABLEKS                       R12 R12 K39 ["getUserId"]
      247 CALL                             R12 0 1
      248 FASTCALL1                        TOSTRING R12 ; [+3]
      249 MOVE                             R14 R12
      250 GETIMPORT                        R13 K41 [tostring]
      252 CALL                             R13 1 1
      253 SETTABLEKS                       R13 R11 K42 ["robloxctx-authenticated-userid"]
      255 GETUPVAL                         R12 4
      256 GETTABLEKS                       R12 R12 K43 ["Json"]
      258 GETTABLEKS                       R12 R12 K44 ["encode"]
      260 MOVE                             R13 R6
      261 CALL                             R12 1 1
      262 GETUPVAL                         R13 5
      263 MOVE                             R15 R10
      264 MOVE                             R16 R12
      265 MOVE                             R17 R11
      266 NAMECALL                         R13 R13 K45 ["post"]
      268 CALL                             R13 4 -1
      269 RETURN                           R13 -1

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
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+1]
        2 RETURN                           R0 0
        3 NEWCLOSURE                       R0 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 GETUPVAL                         R1 4
        8 GETTABLEKS                       R1 R1 K0 ["get"]
       10 CALL                             R1 0 1
       11 GETTABLEKS                       R2 R1 K1 ["listen"]
       13 LOADK                            R3 K2 ["AssistantPlugin"]
       14 MOVE                             R4 R0
       15 CALL                             R2 2 1
       16 SETUPVAL                         R2 0
       17 RETURN                           R0 0

PROTO_11:
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

PROTO_12:
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
       34 DUPTABLE                         R6 K15 [{"responseCode", "responseBody", "isSubagent", "selectedModel", "useNewOpenAPIClients", "baseApisUrl", "urlOverride", "requestUrl"}]
       35 GETTABLEKS                       R7 R0 K8 ["responseCode"]
       37 SETTABLEKS                       R7 R6 K8 ["responseCode"]
       39 GETTABLEKS                       R7 R0 K9 ["responseBody"]
       41 SETTABLEKS                       R7 R6 K9 ["responseBody"]
       43 SETTABLEKS                       R1 R6 K0 ["isSubagent"]
       45 GETUPVAL                         R7 2
       46 GETTABLEKS                       R7 R7 K10 ["selectedModel"]
       48 SETTABLEKS                       R7 R6 K10 ["selectedModel"]
       50 GETUPVAL                         R7 3
       51 GETTABLEKS                       R7 R7 K16 ["FFlagAssistantUseNewOpenAPIClients"]
       53 SETTABLEKS                       R7 R6 K11 ["useNewOpenAPIClients"]
       55 GETUPVAL                         R7 6
       56 GETTABLEKS                       R7 R7 K17 ["APIS_URL"]
       58 SETTABLEKS                       R7 R6 K12 ["baseApisUrl"]
       60 SETTABLEKS                       R2 R6 K13 ["urlOverride"]
       62 GETUPVAL                         R7 7
       63 MOVE                             R8 R2
       64 MOVE                             R9 R3
       65 CALL                             R7 2 1
       66 SETTABLEKS                       R7 R6 K14 ["requestUrl"]
       68 CALL                             R4 2 0
       69 GETUPVAL                         R4 8
       70 MOVE                             R5 R0
       71 GETUPVAL                         R6 9
       72 CALL                             R4 2 0
       73 RETURN                           R0 0

PROTO_13:
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
       13 JUMPIFNOT                        R3 ; [+1]
       14 JUMP                             ; [+14]
       15 NEWCLOSURE                       R3 P0
       16 CAPTURE                          UPVAL U3
       17 CAPTURE                          UPVAL U4
       18 CAPTURE                          UPVAL U5
       19 GETUPVAL                         R4 6
       20 GETTABLEKS                       R4 R4 K3 ["get"]
       22 CALL                             R4 0 1
       23 GETTABLEKS                       R5 R4 K4 ["listen"]
       25 LOADK                            R6 K5 ["AssistantPlugin"]
       26 MOVE                             R7 R3
       27 CALL                             R5 2 1
       28 SETUPVAL                         R5 2
       29 GETUPVAL                         R3 4
       30 DUPTABLE                         R4 K14 [{["callback"], ["receivedResponses"], ["currentSequenceNumber"] = 0, ["startTime"], ["isProcessing"] = False, ["requestId"]}]
       31 SETTABLEKS                       R1 R4 K6 ["callback"]
       33 NEWTABLE                         R5 0 0
       35 SETTABLEKS                       R5 R4 K7 ["receivedResponses"]
       37 GETIMPORT                        R5 K17 [os.clock]
       39 CALL                             R5 0 1
       40 SETTABLEKS                       R5 R4 K10 ["startTime"]
       42 SETTABLEKS                       R2 R4 K13 ["requestId"]
       44 SETTABLE                         R4 R3 R2
       45 GETUPVAL                         R3 7
       46 MOVE                             R4 R0
       47 MOVE                             R5 R2
       48 CALL                             R3 2 1
       49 NEWCLOSURE                       R5 P1
       50 CAPTURE                          UPVAL U4
       51 CAPTURE                          VAL R2
       52 CAPTURE                          VAL R0
       53 CAPTURE                          UPVAL U8
       54 CAPTURE                          UPVAL U9
       55 CAPTURE                          UPVAL U10
       56 CAPTURE                          UPVAL U11
       57 CAPTURE                          UPVAL U12
       58 CAPTURE                          UPVAL U13
       59 CAPTURE                          VAL R1
       60 NAMECALL                         R3 R3 K18 ["catch"]
       62 CALL                             R3 2 0
       63 RETURN                           R0 0

PROTO_14:
        0 NEWTABLE                         R1 0 0
        2 LOADNIL                          R2
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          VAL R1
        7 NEWCLOSURE                       R4 P1
        8 CAPTURE                          REF R2
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          VAL R1
       11 CAPTURE                          VAL R3
       12 CAPTURE                          UPVAL U3
       13 JUMPIFNOT                        R0 ; [+8]
       14 GETTABLEKS                       R5 R0 K0 ["Unloading"]
       16 NEWCLOSURE                       R7 P2
       17 CAPTURE                          REF R2
       18 CAPTURE                          VAL R1
       19 NAMECALL                         R5 R5 K1 ["Connect"]
       21 CALL                             R5 2 0
       22 NEWCLOSURE                       R5 P3
       23 CAPTURE                          UPVAL U4
       24 CAPTURE                          UPVAL U5
       25 CAPTURE                          REF R2
       26 CAPTURE                          UPVAL U2
       27 CAPTURE                          VAL R1
       28 CAPTURE                          VAL R3
       29 CAPTURE                          UPVAL U3
       30 CAPTURE                          UPVAL U6
       31 CAPTURE                          UPVAL U7
       32 CAPTURE                          UPVAL U8
       33 CAPTURE                          UPVAL U9
       34 CAPTURE                          UPVAL U10
       35 CAPTURE                          UPVAL U11
       36 CAPTURE                          UPVAL U12
       37 CLOSEUPVALS                      R2
       38 RETURN                           R5 1

PROTO_15:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 RETURN                           R1 1

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
       96 GETTABLEKS                       R13 R2 K24 ["FlagUtils"]
       98 GETTABLEKS                       R13 R13 K25 ["getIsCreditMeteringEnabled"]
      100 GETTABLEKS                       R14 R2 K26 ["Utils"]
      102 GETTABLEKS                       R14 R14 K27 ["ServerStreamIdStore"]
      104 GETTABLEKS                       R15 R2 K26 ["Utils"]
      106 GETTABLEKS                       R15 R15 K28 ["StreamEventUtils"]
      108 GETTABLEKS                       R16 R3 K29 ["Http"]
      110 GETTABLEKS                       R16 R16 K30 ["Networking"]
      112 GETTABLEKS                       R17 R16 K31 ["new"]
      114 DUPTABLE                         R18 K35 [{["isInternal"] = True, ["loggingLevel"]}]
      115 GETTABLEKS                       R20 R12 K36 ["FFlagDebugLogAssistantUI"]
      117 JUMPIFNOT                        R20 ; [+2]
      118 LOADN                            R19 4
      119 JUMP                             ; [+1]
      120 LOADN                            R19 0
      121 SETTABLEKS                       R19 R18 K34 ["loggingLevel"]
      123 CALL                             R17 1 1
      124 GETTABLEKS                       R18 R2 K37 ["Guest"]
      126 GETTABLEKS                       R18 R18 K38 ["Environment"]
      128 GETTABLEKS                       R19 R3 K29 ["Http"]
      130 GETTABLEKS                       R19 R19 K39 ["HttpResponse"]
      132 GETTABLEKS                       R20 R3 K40 ["Url"]
      134 GETTABLEKS                       R21 R20 K31 ["new"]
      136 LOADNIL                          R22
      137 CALL                             R21 1 1
      138 LOADK                            R22 K41 ["%*/studio-assistant/v1/conversation"]
      139 GETTABLEKS                       R24 R21 K42 ["APIS_URL"]
      141 NAMECALL                         R22 R22 K43 ["format"]
      143 CALL                             R22 2 1
      144 LOADK                            R23 K44 ["%*/studio-assistant/v1/subagent-conversation"]
      145 GETTABLEKS                       R25 R21 K42 ["APIS_URL"]
      147 NAMECALL                         R23 R23 K43 ["format"]
      149 CALL                             R23 2 1
      150 DUPCLOSURE                       R24 K45 [PROTO_0]
      151 CAPTURE                          VAL R23
      152 CAPTURE                          VAL R22
      153 DUPCLOSURE                       R25 K46 [PROTO_3]
      154 CAPTURE                          VAL R9
      155 CAPTURE                          VAL R7
      156 DUPCLOSURE                       R26 K47 [PROTO_5]
      157 CAPTURE                          VAL R11
      158 CAPTURE                          VAL R12
      159 CAPTURE                          VAL R13
      160 CAPTURE                          VAL R18
      161 CAPTURE                          VAL R5
      162 CAPTURE                          VAL R17
      163 CAPTURE                          VAL R8
      164 CAPTURE                          VAL R25
      165 CAPTURE                          VAL R9
      166 CAPTURE                          VAL R23
      167 CAPTURE                          VAL R22
      168 DUPTABLE                         R27 K54 [{["QUOTA_EXCEEDED"] = "quota_exceeded", ["TOO_MANY_REQUESTS"] = "too_many_request", ["REQUEST_FAILED"] = "request_failed"}]
      169 DUPCLOSURE                       R28 K55 [PROTO_6]
      170 CAPTURE                          VAL R12
      171 DUPCLOSURE                       R29 K56 [PROTO_14]
      172 CAPTURE                          VAL R18
      173 CAPTURE                          VAL R15
      174 CAPTURE                          VAL R5
      175 CAPTURE                          VAL R6
      176 CAPTURE                          VAL R1
      177 CAPTURE                          VAL R14
      178 CAPTURE                          VAL R26
      179 CAPTURE                          VAL R12
      180 CAPTURE                          VAL R23
      181 CAPTURE                          VAL R22
      182 CAPTURE                          VAL R21
      183 CAPTURE                          VAL R11
      184 CAPTURE                          VAL R28
      185 DUPCLOSURE                       R30 K57 [PROTO_15]
      186 CAPTURE                          VAL R29
      187 DUPTABLE                         R31 K59 [{"createRequestHandler"}]
      188 SETTABLEKS                       R30 R31 K58 ["createRequestHandler"]
      190 RETURN                           R31 1
