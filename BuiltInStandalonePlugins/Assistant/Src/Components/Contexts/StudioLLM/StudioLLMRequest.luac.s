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
       44 DUPTABLE                         R5 K25 [{["threadId"], ["messageId"], ["requestId"], ["conversation"], ["firstMessage"], ["useAgenticMode"], ["isDebugMode"] = True, ["assistantMode"]}]
       45 GETTABLEKS                       R6 R0 K17 ["threadId"]
       47 SETTABLEKS                       R6 R5 K17 ["threadId"]
       49 GETTABLEKS                       R6 R0 K26 ["messageGuid"]
       51 SETTABLEKS                       R6 R5 K18 ["messageId"]
       53 SETTABLEKS                       R1 R5 K19 ["requestId"]
       55 SETTABLEKS                       R4 R5 K20 ["conversation"]
       57 GETTABLEKS                       R6 R0 K27 ["isFirstMessage"]
       59 SETTABLEKS                       R6 R5 K21 ["firstMessage"]
       61 GETTABLEKS                       R6 R0 K28 ["isAgenticMode"]
       63 SETTABLEKS                       R6 R5 K22 ["useAgenticMode"]
       65 GETTABLEKS                       R6 R0 K24 ["assistantMode"]
       67 SETTABLEKS                       R6 R5 K24 ["assistantMode"]
       69 GETUPVAL                         R6 1
       70 GETTABLEKS                       R6 R6 K29 ["FFlagAssistantUseNewOpenAPIClients"]
       72 JUMPIFNOT                        R6 ; [+118]
       73 GETTABLEKS                       R7 R0 K0 ["isSubagent"]
       75 JUMPIFEQKB                       R7 TRUE ; [+2]
       77 LOADB                            R6 0 +1
       78 LOADB                            R6 1
       79 JUMPIFNOT                        R6 ; [+4]
       80 GETUPVAL                         R7 1
       81 GETTABLEKS                       R7 R7 K30 ["FStringSubagentURLOverride"]
       83 JUMP                             ; [+3]
       84 GETUPVAL                         R7 1
       85 GETTABLEKS                       R7 R7 K31 ["FStringMCPAssistantURLOverride"]
       87 GETUPVAL                         R8 0
       88 MOVE                             R9 R7
       89 GETTABLEKS                       R10 R0 K32 ["conversationUrl"]
       91 CALL                             R8 2 1
       92 JUMPIFNOT                        R8 ; [+38]
       93 JUMPIFEQKS                       R8 K33 [""] ; [+37]
       95 NEWTABLE                         R9 1 0
       97 LOADK                            R10 K34 ["application/json"]
       98 SETTABLEKS                       R10 R9 K35 ["Content-Type"]
      100 JUMPIFEQKS                       R7 K33 [""] ; [+15]
      102 GETUPVAL                         R10 2
      103 GETTABLEKS                       R10 R10 K36 ["get"]
      105 CALL                             R10 0 1
      106 GETTABLEKS                       R10 R10 K37 ["getUserId"]
      108 CALL                             R10 0 1
      109 FASTCALL1                        TOSTRING R10 ; [+3]
      110 MOVE                             R12 R10
      111 GETIMPORT                        R11 K39 [tostring]
      113 CALL                             R11 1 1
      114 SETTABLEKS                       R11 R9 K40 ["robloxctx-authenticated-userid"]
      116 GETUPVAL                         R10 3
      117 GETTABLEKS                       R10 R10 K41 ["Json"]
      119 GETTABLEKS                       R10 R10 K42 ["encode"]
      121 MOVE                             R11 R5
      122 CALL                             R10 1 1
      123 GETUPVAL                         R11 4
      124 MOVE                             R13 R8
      125 MOVE                             R14 R10
      126 MOVE                             R15 R9
      127 NAMECALL                         R11 R11 K43 ["post"]
      129 CALL                             R11 4 -1
      130 RETURN                           R11 -1
      131 DUPTABLE                         R9 K44 [{["threadId"], ["requestId"], ["messageId"], ["conversation"], ["firstMessage"], ["useAgenticMode"], ["isDebugMode"] = True, ["assistantMode"]}]
      132 GETTABLEKS                       R10 R0 K17 ["threadId"]
      134 SETTABLEKS                       R10 R9 K17 ["threadId"]
      136 SETTABLEKS                       R1 R9 K19 ["requestId"]
      138 GETTABLEKS                       R10 R0 K26 ["messageGuid"]
      140 SETTABLEKS                       R10 R9 K18 ["messageId"]
      142 DUPTABLE                         R10 K46 [{"system", "llmConfig", "messages", "tools"}]
      143 GETTABLEKS                       R11 R0 K5 ["system"]
      145 SETTABLEKS                       R11 R10 K5 ["system"]
      147 DUPTABLE                         R11 K52 [{["model"], ["thinkingMode"], ["parallelToolCalls"] = True, ["maxTokens"], ["temperature"] = }]
      148 SETTABLEKS                       R2 R11 K10 ["model"]
      150 SETTABLEKS                       R3 R11 K47 ["thinkingMode"]
      152 GETUPVAL                         R12 1
      153 GETTABLEKS                       R12 R12 K16 ["FIntConvAIAssistantMaxTokens"]
      155 SETTABLEKS                       R12 R11 K49 ["maxTokens"]
      157 SETTABLEKS                       R11 R10 K45 ["llmConfig"]
      159 GETTABLEKS                       R11 R0 K7 ["messages"]
      161 SETTABLEKS                       R11 R10 K7 ["messages"]
      163 GETTABLEKS                       R11 R0 K8 ["tools"]
      165 SETTABLEKS                       R11 R10 K8 ["tools"]
      167 SETTABLEKS                       R10 R9 K20 ["conversation"]
      169 GETTABLEKS                       R10 R0 K27 ["isFirstMessage"]
      171 SETTABLEKS                       R10 R9 K21 ["firstMessage"]
      173 GETTABLEKS                       R10 R0 K28 ["isAgenticMode"]
      175 SETTABLEKS                       R10 R9 K22 ["useAgenticMode"]
      177 GETTABLEKS                       R10 R0 K24 ["assistantMode"]
      179 SETTABLEKS                       R10 R9 K24 ["assistantMode"]
      181 GETUPVAL                         R10 5
      182 GETTABLEKS                       R10 R10 K53 ["new"]
      184 NEWCLOSURE                       R11 P0
      185 CAPTURE                          UPVAL U6
      186 CAPTURE                          VAL R9
      187 CAPTURE                          VAL R6
      188 CAPTURE                          UPVAL U7
      189 CALL                             R10 1 -1
      190 RETURN                           R10 -1
      191 GETTABLEKS                       R7 R0 K0 ["isSubagent"]
      193 JUMPIFEQKB                       R7 TRUE ; [+2]
      195 LOADB                            R6 0 +1
      196 LOADB                            R6 1
      197 JUMPIFNOT                        R6 ; [+4]
      198 GETUPVAL                         R7 1
      199 GETTABLEKS                       R7 R7 K30 ["FStringSubagentURLOverride"]
      201 JUMP                             ; [+3]
      202 GETUPVAL                         R7 1
      203 GETTABLEKS                       R7 R7 K31 ["FStringMCPAssistantURLOverride"]
      205 GETTABLEKS                       R9 R0 K32 ["conversationUrl"]
      207 JUMPIFNOT                        R9 ; [+4]
      208 JUMPIFEQKS                       R9 K33 [""] ; [+3]
      210 MOVE                             R8 R9
      211 JUMP                             ; [+4]
      212 JUMPIFNOT                        R6 ; [+2]
      213 GETUPVAL                         R8 8
      214 JUMP                             ; [+1]
      215 GETUPVAL                         R8 9
      216 GETUPVAL                         R9 0
      217 MOVE                             R10 R7
      218 MOVE                             R11 R8
      219 CALL                             R9 2 1
      220 NEWTABLE                         R10 1 0
      222 LOADK                            R11 K34 ["application/json"]
      223 SETTABLEKS                       R11 R10 K35 ["Content-Type"]
      225 JUMPIFEQKS                       R7 K33 [""] ; [+15]
      227 GETUPVAL                         R11 2
      228 GETTABLEKS                       R11 R11 K36 ["get"]
      230 CALL                             R11 0 1
      231 GETTABLEKS                       R11 R11 K37 ["getUserId"]
      233 CALL                             R11 0 1
      234 FASTCALL1                        TOSTRING R11 ; [+3]
      235 MOVE                             R13 R11
      236 GETIMPORT                        R12 K39 [tostring]
      238 CALL                             R12 1 1
      239 SETTABLEKS                       R12 R10 K40 ["robloxctx-authenticated-userid"]
      241 GETUPVAL                         R11 3
      242 GETTABLEKS                       R11 R11 K41 ["Json"]
      244 GETTABLEKS                       R11 R11 K42 ["encode"]
      246 MOVE                             R12 R5
      247 CALL                             R11 1 1
      248 GETUPVAL                         R12 4
      249 MOVE                             R14 R9
      250 MOVE                             R15 R11
      251 MOVE                             R16 R10
      252 NAMECALL                         R12 R12 K43 ["post"]
      254 CALL                             R12 4 -1
      255 RETURN                           R12 -1

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
      134 LOADK                            R21 K39 ["%*/studio-assistant/v1/conversation"]
      135 GETTABLEKS                       R23 R20 K40 ["APIS_URL"]
      137 NAMECALL                         R21 R21 K41 ["format"]
      139 CALL                             R21 2 1
      140 LOADK                            R22 K42 ["%*/studio-assistant/v1/subagent-conversation"]
      141 GETTABLEKS                       R24 R20 K40 ["APIS_URL"]
      143 NAMECALL                         R22 R22 K41 ["format"]
      145 CALL                             R22 2 1
      146 DUPCLOSURE                       R23 K43 [PROTO_0]
      147 CAPTURE                          VAL R22
      148 CAPTURE                          VAL R21
      149 DUPCLOSURE                       R24 K44 [PROTO_3]
      150 CAPTURE                          VAL R9
      151 CAPTURE                          VAL R7
      152 DUPCLOSURE                       R25 K45 [PROTO_5]
      153 CAPTURE                          VAL R11
      154 CAPTURE                          VAL R12
      155 CAPTURE                          VAL R17
      156 CAPTURE                          VAL R5
      157 CAPTURE                          VAL R16
      158 CAPTURE                          VAL R8
      159 CAPTURE                          VAL R24
      160 CAPTURE                          VAL R9
      161 CAPTURE                          VAL R22
      162 CAPTURE                          VAL R21
      163 DUPTABLE                         R26 K52 [{["QUOTA_EXCEEDED"] = "quota_exceeded", ["TOO_MANY_REQUESTS"] = "too_many_request", ["REQUEST_FAILED"] = "request_failed"}]
      164 DUPCLOSURE                       R27 K53 [PROTO_6]
      165 CAPTURE                          VAL R12
      166 DUPCLOSURE                       R28 K54 [PROTO_14]
      167 CAPTURE                          VAL R17
      168 CAPTURE                          VAL R14
      169 CAPTURE                          VAL R5
      170 CAPTURE                          VAL R6
      171 CAPTURE                          VAL R1
      172 CAPTURE                          VAL R13
      173 CAPTURE                          VAL R25
      174 CAPTURE                          VAL R12
      175 CAPTURE                          VAL R22
      176 CAPTURE                          VAL R21
      177 CAPTURE                          VAL R20
      178 CAPTURE                          VAL R11
      179 CAPTURE                          VAL R27
      180 DUPCLOSURE                       R29 K55 [PROTO_15]
      181 CAPTURE                          VAL R28
      182 DUPTABLE                         R30 K57 [{"createRequestHandler"}]
      183 SETTABLEKS                       R29 R30 K56 ["createRequestHandler"]
      185 RETURN                           R30 1
