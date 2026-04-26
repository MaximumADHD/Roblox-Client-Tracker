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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["SubagentConversation"]
        3 GETTABLEKS                       R0 R1 K1 ["postCreateSubagentConversationV1SubagentConversationPostAsync"]
        5 GETUPVAL                         R1 1
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["Conversation"]
        3 GETTABLEKS                       R0 R1 K1 ["postCreateConversationV1ConversationPostAsync"]
        5 GETUPVAL                         R1 1
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_3:
        0 NEWTABLE                         R2 0 0
        2 JUMPIFNOT                        R1 ; [+9]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R3 R4 K0 ["callWithOptions"]
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          VAL R0
        9 MOVE                             R5 R2
       10 CALL                             R3 2 -1
       11 RETURN                           R3 -1
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R3 R4 K0 ["callWithOptions"]
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
        7 GETUPVAL                         R3 3
        8 GETTABLEKS                       R2 R3 K1 ["throwError"]
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
       22 DUPTABLE                         R6 K12 [{"model", "thinking_mode", "max_tokens", "parallel_tool_calls"}]
       23 SETTABLEKS                       R3 R6 K8 ["model"]
       25 SETTABLEKS                       R4 R6 K9 ["thinking_mode"]
       27 GETUPVAL                         R7 3
       28 CALL                             R7 0 1
       29 SETTABLEKS                       R7 R6 K10 ["max_tokens"]
       31 LOADB                            R7 1
       32 SETTABLEKS                       R7 R6 K11 ["parallel_tool_calls"]
       34 SETTABLEKS                       R6 R5 K4 ["llm_config"]
       36 GETTABLEKS                       R6 R1 K5 ["messages"]
       38 SETTABLEKS                       R6 R5 K5 ["messages"]
       40 GETTABLEKS                       R6 R1 K6 ["tools"]
       42 SETTABLEKS                       R6 R5 K6 ["tools"]
       44 GETUPVAL                         R8 4
       45 GETTABLEKS                       R7 R8 K14 ["isTestAutomationEnabled"]
       47 CALL                             R7 0 1
       48 ORK                              R6 R7 K13 []
       49 GETUPVAL                         R7 5
       50 CALL                             R7 0 1
       51 JUMPIFNOT                        R7 ; [+14]
       52 LOADB                            R7 1
       53 GETTABLEKS                       R8 R1 K15 ["assistantMode"]
       55 GETUPVAL                         R12 6
       56 GETTABLEKS                       R11 R12 K16 ["Types"]
       58 GETTABLEKS                       R10 R11 K17 ["AssistantMode"]
       60 GETTABLEKS                       R9 R10 K18 ["Test"]
       62 JUMPIFEQ                         R8 R9 ; [+2]
       64 LOADNIL                          R7
       65 MOVE                             R6 R7
       66 DUPTABLE                         R7 K26 [{"threadId", "messageId", "requestId", "conversation", "firstMessage", "useAgenticMode", "isDebugMode", "assistantMode"}]
       67 GETTABLEKS                       R8 R1 K19 ["threadId"]
       69 SETTABLEKS                       R8 R7 K19 ["threadId"]
       71 GETTABLEKS                       R8 R1 K27 ["messageGuid"]
       73 SETTABLEKS                       R8 R7 K20 ["messageId"]
       75 SETTABLEKS                       R2 R7 K21 ["requestId"]
       77 SETTABLEKS                       R5 R7 K22 ["conversation"]
       79 GETTABLEKS                       R8 R1 K28 ["isFirstMessage"]
       81 SETTABLEKS                       R8 R7 K23 ["firstMessage"]
       83 GETTABLEKS                       R8 R1 K29 ["isAgenticMode"]
       85 SETTABLEKS                       R8 R7 K24 ["useAgenticMode"]
       87 SETTABLEKS                       R6 R7 K25 ["isDebugMode"]
       89 GETUPVAL                         R9 7
       90 CALL                             R9 0 1
       91 JUMPIFNOT                        R9 ; [+3]
       92 GETTABLEKS                       R8 R1 K15 ["assistantMode"]
       94 JUMPIF                           R8 ; [+1]
       95 LOADNIL                          R8
       96 SETTABLEKS                       R8 R7 K15 ["assistantMode"]
       98 GETUPVAL                         R8 8
       99 CALL                             R8 0 1
      100 JUMPIFNOT                        R8 ; [+138]
      101 GETTABLEKS                       R9 R1 K0 ["isSubagent"]
      103 JUMPIFEQKB                       R9 TRUE ; [+2]
      105 LOADB                            R8 0 +1
      106 LOADB                            R8 1
      107 JUMPIFNOT                        R8 ; [+3]
      108 GETUPVAL                         R9 9
      109 CALL                             R9 0 1
      110 JUMP                             ; [+2]
      111 GETUPVAL                         R9 10
      112 CALL                             R9 0 1
      113 GETUPVAL                         R10 0
      114 MOVE                             R11 R9
      115 GETTABLEKS                       R12 R1 K30 ["conversationUrl"]
      117 CALL                             R10 2 1
      118 JUMPIFNOT                        R10 ; [+48]
      119 JUMPIFEQKS                       R10 K31 [""] ; [+47]
      121 NEWTABLE                         R11 1 0
      123 LOADK                            R12 K32 ["application/json"]
      124 SETTABLEKS                       R12 R11 K33 ["Content-Type"]
      126 JUMPIFEQKS                       R9 K31 [""] ; [+25]
      128 LOADNIL                          R12
      129 GETUPVAL                         R13 11
      130 CALL                             R13 0 1
      131 JUMPIFNOT                        R13 ; [+9]
      132 GETUPVAL                         R14 12
      133 GETTABLEKS                       R13 R14 K34 ["get"]
      135 CALL                             R13 0 1
      136 GETTABLEKS                       R14 R13 K35 ["getUserId"]
      138 CALL                             R14 0 1
      139 MOVE                             R12 R14
      140 JUMP                             ; [+4]
      141 NAMECALL                         R13 R0 K36 ["GetUserId"]
      143 CALL                             R13 1 1
      144 MOVE                             R12 R13
      145 FASTCALL1                        TOSTRING R12 ; [+3]
      146 MOVE                             R14 R12
      147 GETIMPORT                        R13 K38 [tostring]
      149 CALL                             R13 1 1
      150 SETTABLEKS                       R13 R11 K39 ["robloxctx-authenticated-userid"]
      152 GETUPVAL                         R14 13
      153 GETTABLEKS                       R13 R14 K40 ["Json"]
      155 GETTABLEKS                       R12 R13 K41 ["encode"]
      157 MOVE                             R13 R7
      158 CALL                             R12 1 1
      159 GETUPVAL                         R13 14
      160 MOVE                             R15 R10
      161 MOVE                             R16 R12
      162 MOVE                             R17 R11
      163 NAMECALL                         R13 R13 K42 ["post"]
      165 CALL                             R13 4 -1
      166 RETURN                           R13 -1
      167 DUPTABLE                         R11 K43 [{"threadId", "requestId", "messageId", "conversation", "firstMessage", "useAgenticMode", "isDebugMode", "assistantMode"}]
      168 GETTABLEKS                       R12 R1 K19 ["threadId"]
      170 SETTABLEKS                       R12 R11 K19 ["threadId"]
      172 SETTABLEKS                       R2 R11 K21 ["requestId"]
      174 GETTABLEKS                       R12 R1 K27 ["messageGuid"]
      176 SETTABLEKS                       R12 R11 K20 ["messageId"]
      178 DUPTABLE                         R12 K45 [{"system", "llmConfig", "messages", "tools"}]
      179 GETTABLEKS                       R13 R1 K3 ["system"]
      181 SETTABLEKS                       R13 R12 K3 ["system"]
      183 DUPTABLE                         R13 K50 [{"model", "thinkingMode", "parallelToolCalls", "maxTokens", "temperature"}]
      184 SETTABLEKS                       R3 R13 K8 ["model"]
      186 SETTABLEKS                       R4 R13 K46 ["thinkingMode"]
      188 LOADB                            R14 1
      189 SETTABLEKS                       R14 R13 K47 ["parallelToolCalls"]
      191 GETUPVAL                         R14 3
      192 CALL                             R14 0 1
      193 SETTABLEKS                       R14 R13 K48 ["maxTokens"]
      195 LOADNIL                          R14
      196 SETTABLEKS                       R14 R13 K49 ["temperature"]
      198 SETTABLEKS                       R13 R12 K44 ["llmConfig"]
      200 GETTABLEKS                       R13 R1 K5 ["messages"]
      202 SETTABLEKS                       R13 R12 K5 ["messages"]
      204 GETTABLEKS                       R13 R1 K6 ["tools"]
      206 SETTABLEKS                       R13 R12 K6 ["tools"]
      208 SETTABLEKS                       R12 R11 K22 ["conversation"]
      210 GETTABLEKS                       R12 R1 K28 ["isFirstMessage"]
      212 SETTABLEKS                       R12 R11 K23 ["firstMessage"]
      214 GETTABLEKS                       R12 R1 K29 ["isAgenticMode"]
      216 SETTABLEKS                       R12 R11 K24 ["useAgenticMode"]
      218 SETTABLEKS                       R6 R11 K25 ["isDebugMode"]
      220 GETUPVAL                         R13 7
      221 CALL                             R13 0 1
      222 JUMPIFNOT                        R13 ; [+3]
      223 GETTABLEKS                       R12 R1 K15 ["assistantMode"]
      225 JUMPIF                           R12 ; [+1]
      226 LOADNIL                          R12
      227 SETTABLEKS                       R12 R11 K15 ["assistantMode"]
      229 GETUPVAL                         R13 15
      230 GETTABLEKS                       R12 R13 K51 ["new"]
      232 NEWCLOSURE                       R13 P0
      233 CAPTURE                          UPVAL U16
      234 CAPTURE                          VAL R11
      235 CAPTURE                          VAL R8
      236 CAPTURE                          UPVAL U17
      237 CALL                             R12 1 -1
      238 RETURN                           R12 -1
      239 GETTABLEKS                       R9 R1 K0 ["isSubagent"]
      241 JUMPIFEQKB                       R9 TRUE ; [+2]
      243 LOADB                            R8 0 +1
      244 LOADB                            R8 1
      245 JUMPIFNOT                        R8 ; [+3]
      246 GETUPVAL                         R9 9
      247 CALL                             R9 0 1
      248 JUMP                             ; [+2]
      249 GETUPVAL                         R9 10
      250 CALL                             R9 0 1
      251 GETTABLEKS                       R11 R1 K30 ["conversationUrl"]
      253 JUMPIFNOT                        R11 ; [+4]
      254 JUMPIFEQKS                       R11 K31 [""] ; [+3]
      256 MOVE                             R10 R11
      257 JUMP                             ; [+4]
      258 JUMPIFNOT                        R8 ; [+2]
      259 GETUPVAL                         R10 18
      260 JUMP                             ; [+1]
      261 GETUPVAL                         R10 19
      262 GETUPVAL                         R11 0
      263 MOVE                             R12 R9
      264 MOVE                             R13 R10
      265 CALL                             R11 2 1
      266 NEWTABLE                         R12 1 0
      268 LOADK                            R13 K32 ["application/json"]
      269 SETTABLEKS                       R13 R12 K33 ["Content-Type"]
      271 JUMPIFEQKS                       R9 K31 [""] ; [+25]
      273 LOADNIL                          R13
      274 GETUPVAL                         R14 11
      275 CALL                             R14 0 1
      276 JUMPIFNOT                        R14 ; [+9]
      277 GETUPVAL                         R15 12
      278 GETTABLEKS                       R14 R15 K34 ["get"]
      280 CALL                             R14 0 1
      281 GETTABLEKS                       R15 R14 K35 ["getUserId"]
      283 CALL                             R15 0 1
      284 MOVE                             R13 R15
      285 JUMP                             ; [+4]
      286 NAMECALL                         R14 R0 K36 ["GetUserId"]
      288 CALL                             R14 1 1
      289 MOVE                             R13 R14
      290 FASTCALL1                        TOSTRING R13 ; [+3]
      291 MOVE                             R15 R13
      292 GETIMPORT                        R14 K38 [tostring]
      294 CALL                             R14 1 1
      295 SETTABLEKS                       R14 R12 K39 ["robloxctx-authenticated-userid"]
      297 GETUPVAL                         R15 13
      298 GETTABLEKS                       R14 R15 K40 ["Json"]
      300 GETTABLEKS                       R13 R14 K41 ["encode"]
      302 MOVE                             R14 R7
      303 CALL                             R13 1 1
      304 GETUPVAL                         R14 14
      305 MOVE                             R16 R11
      306 MOVE                             R17 R13
      307 MOVE                             R18 R12
      308 NAMECALL                         R14 R14 K42 ["post"]
      310 CALL                             R14 4 -1
      311 RETURN                           R14 -1

PROTO_6:
        0 LOADNIL                          R2
        1 GETTABLEKS                       R3 R0 K0 ["responseCode"]
        3 JUMPIFNOTEQKN                    R3 K1 [429] ; [+24]
        5 GETUPVAL                         R3 0
        6 CALL                             R3 0 1
        7 JUMPIFNOT                        R3 ; [+16]
        8 GETTABLEKS                       R3 R0 K2 ["responseBody"]
       10 JUMPIFEQKS                       R3 K3 ["\"Quota Exceeded\""] ; [+5]
       12 GETTABLEKS                       R3 R0 K2 ["responseBody"]
       14 JUMPIFNOTEQKS                    R3 K4 ["\"Quota Checking Failed\""] ; [+5]
       16 GETUPVAL                         R3 1
       17 GETTABLEKS                       R2 R3 K5 ["QUOTA_EXCEEDED"]
       19 JUMP                             ; [+11]
       20 GETUPVAL                         R3 1
       21 GETTABLEKS                       R2 R3 K6 ["TOO_MANY_REQUESTS"]
       23 JUMP                             ; [+7]
       24 GETUPVAL                         R3 1
       25 GETTABLEKS                       R2 R3 K5 ["QUOTA_EXCEEDED"]
       27 JUMP                             ; [+3]
       28 GETUPVAL                         R3 1
       29 GETTABLEKS                       R2 R3 K7 ["REQUEST_FAILED"]
       31 MOVE                             R3 R1
       32 DUPTABLE                         R4 K10 [{"type", "error"}]
       33 LOADK                            R5 K9 ["error"]
       34 SETTABLEKS                       R5 R4 K8 ["type"]
       36 SETTABLEKS                       R2 R4 K9 ["error"]
       38 CALL                             R3 1 0
       39 RETURN                           R0 0

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
       31 GETUPVAL                         R5 0
       32 GETTABLEKS                       R4 R5 K12 ["get"]
       34 CALL                             R4 0 1
       35 GETTABLEKS                       R3 R4 K13 ["EventLogger"]
       37 GETTABLEKS                       R4 R3 K14 ["logInitialResponseLatency"]
       39 MOVE                             R5 R2
       40 CALL                             R4 1 0
       41 GETTABLEKS                       R2 R1 K6 ["event"]
       43 JUMPIFNOT                        R2 ; [+16]
       44 GETUPVAL                         R3 1
       45 GETTABLEKS                       R2 R3 K15 ["isTerminalEventType"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["Json"]
        3 GETTABLEKS                       R0 R1 K1 ["decode"]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R1 R2 K2 ["detail"]
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
       10 GETUPVAL                         R2 5
       11 GETTABLEKS                       R1 R2 K0 ["get"]
       13 CALL                             R1 0 1
       14 GETTABLEKS                       R2 R1 K1 ["listen"]
       16 LOADK                            R3 K2 ["AssistantPlugin"]
       17 MOVE                             R4 R0
       18 CALL                             R2 2 1
       19 SETUPVAL                         R2 0
       20 RETURN                           R0 0
       21 GETUPVAL                         R2 6
       22 GETTABLEKS                       R1 R2 K3 ["RobloxEventReceived"]
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
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R3 R4 K1 ["set"]
        8 GETTABLEKS                       R4 R0 K2 ["messageGuid"]
       10 MOVE                             R5 R2
       11 CALL                             R3 2 0
       12 GETUPVAL                         R3 2
       13 CALL                             R3 0 0
       14 GETUPVAL                         R3 3
       15 DUPTABLE                         R4 K9 [{"callback", "receivedResponses", "currentSequenceNumber", "startTime", "isProcessing", "requestId"}]
       16 SETTABLEKS                       R1 R4 K3 ["callback"]
       18 NEWTABLE                         R5 0 0
       20 SETTABLEKS                       R5 R4 K4 ["receivedResponses"]
       22 LOADN                            R5 0
       23 SETTABLEKS                       R5 R4 K5 ["currentSequenceNumber"]
       25 GETIMPORT                        R5 K12 [os.clock]
       27 CALL                             R5 0 1
       28 SETTABLEKS                       R5 R4 K6 ["startTime"]
       30 LOADB                            R5 0
       31 SETTABLEKS                       R5 R4 K7 ["isProcessing"]
       33 SETTABLEKS                       R2 R4 K8 ["requestId"]
       35 SETTABLE                         R4 R3 R2
       36 GETUPVAL                         R3 4
       37 GETUPVAL                         R4 5
       38 MOVE                             R5 R0
       39 MOVE                             R6 R2
       40 CALL                             R3 3 1
       41 NEWCLOSURE                       R5 P0
       42 CAPTURE                          UPVAL U3
       43 CAPTURE                          VAL R2
       44 CAPTURE                          UPVAL U6
       45 CAPTURE                          VAL R1
       46 NAMECALL                         R3 R3 K13 ["catch"]
       48 CALL                             R3 2 0
       49 RETURN                           R0 0

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
       15 GETTABLEKS                       R4 R0 K10 ["Packages"]
       17 GETTABLEKS                       R3 R4 K11 ["AssistantUI"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R6 R0 K12 ["Src"]
       24 GETTABLEKS                       R5 R6 K13 ["Util"]
       26 GETTABLEKS                       R4 R5 K14 ["ExperimentFeature"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K9 [require]
       31 GETTABLEKS                       R6 R0 K10 ["Packages"]
       33 GETTABLEKS                       R5 R6 K15 ["Framework"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K9 [require]
       38 GETTABLEKS                       R7 R0 K10 ["Packages"]
       40 GETTABLEKS                       R6 R7 K16 ["LuauPolyfill"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K9 [require]
       45 GETTABLEKS                       R9 R0 K17 ["Generated"]
       47 GETTABLEKS                       R8 R9 K18 ["OpenAPI"]
       49 GETTABLEKS                       R7 R8 K19 ["McpAssistantApi"]
       51 CALL                             R6 1 1
       52 GETIMPORT                        R7 K9 [require]
       54 GETTABLEKS                       R9 R0 K10 ["Packages"]
       56 GETTABLEKS                       R8 R9 K20 ["ModelContextProtocol"]
       58 CALL                             R7 1 1
       59 GETIMPORT                        R8 K9 [require]
       61 GETTABLEKS                       R11 R0 K12 ["Src"]
       63 GETTABLEKS                       R10 R11 K13 ["Util"]
       65 GETTABLEKS                       R9 R10 K21 ["NotificationManagerStore"]
       67 CALL                             R8 1 1
       68 GETIMPORT                        R9 K9 [require]
       70 GETTABLEKS                       R11 R0 K10 ["Packages"]
       72 GETTABLEKS                       R10 R11 K22 ["Promise"]
       74 CALL                             R9 1 1
       75 GETIMPORT                        R10 K9 [require]
       77 GETTABLEKS                       R13 R0 K12 ["Src"]
       79 GETTABLEKS                       R12 R13 K13 ["Util"]
       81 GETTABLEKS                       R11 R12 K23 ["StudioEndpointUtil"]
       83 CALL                             R10 1 1
       84 GETIMPORT                        R11 K9 [require]
       86 GETTABLEKS                       R13 R0 K12 ["Src"]
       88 GETTABLEKS                       R12 R13 K24 ["Types"]
       90 CALL                             R11 1 1
       91 GETIMPORT                        R12 K9 [require]
       93 GETTABLEKS                       R15 R0 K12 ["Src"]
       95 GETTABLEKS                       R14 R15 K13 ["Util"]
       97 GETTABLEKS                       R13 R14 K25 ["stringCoalesce"]
       99 CALL                             R12 1 1
      100 GETIMPORT                        R13 K9 [require]
      102 GETTABLEKS                       R16 R0 K12 ["Src"]
      104 GETTABLEKS                       R15 R16 K26 ["Flags"]
      106 GETTABLEKS                       R14 R15 K27 ["FFlagAssistantNotificationManager"]
      108 CALL                             R13 1 1
      109 GETIMPORT                        R14 K9 [require]
      111 GETTABLEKS                       R17 R0 K12 ["Src"]
      113 GETTABLEKS                       R16 R17 K26 ["Flags"]
      115 GETTABLEKS                       R15 R16 K28 ["FFlagAssistantUseNewOpenAPIClients"]
      117 CALL                             R14 1 1
      118 GETIMPORT                        R15 K9 [require]
      120 GETTABLEKS                       R18 R0 K12 ["Src"]
      122 GETTABLEKS                       R17 R18 K26 ["Flags"]
      124 GETTABLEKS                       R16 R17 K29 ["FFlagMCPAssistantTooManyRequestLog"]
      126 CALL                             R15 1 1
      127 GETIMPORT                        R16 K9 [require]
      129 GETTABLEKS                       R19 R0 K12 ["Src"]
      131 GETTABLEKS                       R18 R19 K26 ["Flags"]
      133 GETTABLEKS                       R17 R18 K30 ["FIntConvAIAssistantMaxTokens"]
      135 CALL                             R16 1 1
      136 GETIMPORT                        R17 K9 [require]
      138 GETTABLEKS                       R20 R0 K12 ["Src"]
      140 GETTABLEKS                       R19 R20 K26 ["Flags"]
      142 GETTABLEKS                       R18 R19 K31 ["FStringMCPAssistantThinkingMode"]
      144 CALL                             R17 1 1
      145 GETTABLEKS                       R20 R2 K26 ["Flags"]
      147 GETTABLEKS                       R19 R20 K32 ["Shared"]
      149 GETTABLEKS                       R18 R19 K33 ["FFlagDebugLogAssistantUI"]
      151 GETTABLEKS                       R21 R2 K26 ["Flags"]
      153 GETTABLEKS                       R20 R21 K32 ["Shared"]
      155 GETTABLEKS                       R19 R20 K34 ["FStringMCPAssistantCustomModelName"]
      157 GETTABLEKS                       R22 R2 K26 ["Flags"]
      159 GETTABLEKS                       R21 R22 K32 ["Shared"]
      161 GETTABLEKS                       R20 R21 K35 ["FStringMCPAssistantURLOverride"]
      163 GETTABLEKS                       R23 R2 K26 ["Flags"]
      165 GETTABLEKS                       R22 R23 K32 ["Shared"]
      167 GETTABLEKS                       R21 R22 K36 ["getAssistantModeEnabled"]
      169 GETTABLEKS                       R24 R2 K26 ["Flags"]
      171 GETTABLEKS                       R23 R24 K32 ["Shared"]
      173 GETTABLEKS                       R22 R23 K37 ["FFlagAssistantTestModeDropdown"]
      175 GETTABLEKS                       R25 R2 K26 ["Flags"]
      177 GETTABLEKS                       R24 R25 K32 ["Shared"]
      179 GETTABLEKS                       R23 R24 K38 ["FStringSubagentURLOverride"]
      181 GETTABLEKS                       R25 R2 K39 ["Utils"]
      183 GETTABLEKS                       R24 R25 K40 ["ServerStreamIdStore"]
      185 GETTABLEKS                       R26 R2 K39 ["Utils"]
      187 GETTABLEKS                       R25 R26 K41 ["StreamEventUtils"]
      189 GETTABLEKS                       R27 R4 K42 ["Http"]
      191 GETTABLEKS                       R26 R27 K43 ["Networking"]
      193 GETTABLEKS                       R27 R26 K44 ["new"]
      195 DUPTABLE                         R28 K47 [{"isInternal", "loggingLevel"}]
      196 LOADB                            R29 1
      197 SETTABLEKS                       R29 R28 K45 ["isInternal"]
      199 MOVE                             R30 R18
      200 CALL                             R30 0 1
      201 JUMPIFNOT                        R30 ; [+2]
      202 LOADN                            R29 4
      203 JUMP                             ; [+1]
      204 LOADN                            R29 0
      205 SETTABLEKS                       R29 R28 K46 ["loggingLevel"]
      207 CALL                             R27 1 1
      208 GETTABLEKS                       R29 R2 K48 ["Guest"]
      210 GETTABLEKS                       R28 R29 K49 ["Environment"]
      212 GETTABLEKS                       R30 R4 K42 ["Http"]
      214 GETTABLEKS                       R29 R30 K50 ["HttpResponse"]
      216 GETTABLEKS                       R30 R4 K51 ["Url"]
      218 GETTABLEKS                       R31 R30 K44 ["new"]
      220 LOADNIL                          R32
      221 CALL                             R31 1 1
      222 LOADK                            R33 K52 ["%*/studio-assistant/v1/conversation"]
      223 GETTABLEKS                       R35 R31 K53 ["APIS_URL"]
      225 NAMECALL                         R33 R33 K54 ["format"]
      227 CALL                             R33 2 1
      228 MOVE                             R32 R33
      229 LOADK                            R34 K55 ["%*/studio-assistant/v1/subagent-conversation"]
      230 GETTABLEKS                       R36 R31 K53 ["APIS_URL"]
      232 NAMECALL                         R34 R34 K54 ["format"]
      234 CALL                             R34 2 1
      235 MOVE                             R33 R34
      236 DUPCLOSURE                       R34 K56 [PROTO_0]
      237 CAPTURE                          VAL R33
      238 CAPTURE                          VAL R32
      239 DUPCLOSURE                       R35 K57 [PROTO_3]
      240 CAPTURE                          VAL R10
      241 CAPTURE                          VAL R6
      242 DUPCLOSURE                       R36 K58 [PROTO_5]
      243 CAPTURE                          VAL R12
      244 CAPTURE                          VAL R19
      245 CAPTURE                          VAL R17
      246 CAPTURE                          VAL R16
      247 CAPTURE                          VAL R3
      248 CAPTURE                          VAL R22
      249 CAPTURE                          VAL R2
      250 CAPTURE                          VAL R21
      251 CAPTURE                          VAL R14
      252 CAPTURE                          VAL R23
      253 CAPTURE                          VAL R20
      254 CAPTURE                          VAL R13
      255 CAPTURE                          VAL R28
      256 CAPTURE                          VAL R7
      257 CAPTURE                          VAL R27
      258 CAPTURE                          VAL R9
      259 CAPTURE                          VAL R35
      260 CAPTURE                          VAL R10
      261 CAPTURE                          VAL R33
      262 CAPTURE                          VAL R32
      263 DUPTABLE                         R37 K62 [{"QUOTA_EXCEEDED", "TOO_MANY_REQUESTS", "REQUEST_FAILED"}]
      264 LOADK                            R38 K63 ["quota_exceeded"]
      265 SETTABLEKS                       R38 R37 K59 ["QUOTA_EXCEEDED"]
      267 LOADK                            R38 K64 ["too_many_request"]
      268 SETTABLEKS                       R38 R37 K60 ["TOO_MANY_REQUESTS"]
      270 LOADK                            R38 K65 ["request_failed"]
      271 SETTABLEKS                       R38 R37 K61 ["REQUEST_FAILED"]
      273 DUPCLOSURE                       R38 K66 [PROTO_6]
      274 CAPTURE                          VAL R15
      275 CAPTURE                          VAL R37
      276 DUPCLOSURE                       R39 K67 [PROTO_15]
      277 CAPTURE                          VAL R13
      278 CAPTURE                          VAL R28
      279 CAPTURE                          VAL R25
      280 CAPTURE                          VAL R7
      281 CAPTURE                          VAL R8
      282 CAPTURE                          VAL R1
      283 CAPTURE                          VAL R24
      284 CAPTURE                          VAL R36
      285 CAPTURE                          VAL R38
      286 DUPCLOSURE                       R40 K68 [PROTO_16]
      287 CAPTURE                          VAL R39
      288 DUPTABLE                         R41 K70 [{"createRequestHandler"}]
      289 SETTABLEKS                       R40 R41 K69 ["createRequestHandler"]
      291 RETURN                           R41 1
