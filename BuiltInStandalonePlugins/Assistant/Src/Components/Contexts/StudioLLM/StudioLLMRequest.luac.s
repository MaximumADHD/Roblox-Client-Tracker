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
       44 DUPTABLE                         R6 K21 [{"threadId", "messageId", "requestId", "conversation", "firstMessage", "useAgenticMode", "isDebugMode", "assistantMode"}]
       45 GETTABLEKS                       R7 R1 K13 ["threadId"]
       47 SETTABLEKS                       R7 R6 K13 ["threadId"]
       49 GETTABLEKS                       R7 R1 K22 ["messageGuid"]
       51 SETTABLEKS                       R7 R6 K14 ["messageId"]
       53 SETTABLEKS                       R2 R6 K15 ["requestId"]
       55 SETTABLEKS                       R5 R6 K16 ["conversation"]
       57 GETTABLEKS                       R7 R1 K23 ["isFirstMessage"]
       59 SETTABLEKS                       R7 R6 K17 ["firstMessage"]
       61 GETTABLEKS                       R7 R1 K24 ["isAgenticMode"]
       63 SETTABLEKS                       R7 R6 K18 ["useAgenticMode"]
       65 LOADB                            R7 1
       66 SETTABLEKS                       R7 R6 K19 ["isDebugMode"]
       68 GETUPVAL                         R8 4
       69 CALL                             R8 0 1
       70 JUMPIFNOT                        R8 ; [+3]
       71 GETTABLEKS                       R7 R1 K20 ["assistantMode"]
       73 JUMPIF                           R7 ; [+1]
       74 LOADNIL                          R7
       75 SETTABLEKS                       R7 R6 K20 ["assistantMode"]
       77 GETUPVAL                         R7 5
       78 CALL                             R7 0 1
       79 JUMPIFNOT                        R7 ; [+139]
       80 GETTABLEKS                       R8 R1 K0 ["isSubagent"]
       82 JUMPIFEQKB                       R8 TRUE ; [+2]
       84 LOADB                            R7 0 +1
       85 LOADB                            R7 1
       86 JUMPIFNOT                        R7 ; [+3]
       87 GETUPVAL                         R8 6
       88 CALL                             R8 0 1
       89 JUMP                             ; [+2]
       90 GETUPVAL                         R8 7
       91 CALL                             R8 0 1
       92 GETUPVAL                         R9 0
       93 MOVE                             R10 R8
       94 GETTABLEKS                       R11 R1 K25 ["conversationUrl"]
       96 CALL                             R9 2 1
       97 JUMPIFNOT                        R9 ; [+48]
       98 JUMPIFEQKS                       R9 K26 [""] ; [+47]
      100 NEWTABLE                         R10 1 0
      102 LOADK                            R11 K27 ["application/json"]
      103 SETTABLEKS                       R11 R10 K28 ["Content-Type"]
      105 JUMPIFEQKS                       R8 K26 [""] ; [+25]
      107 LOADNIL                          R11
      108 GETUPVAL                         R12 8
      109 CALL                             R12 0 1
      110 JUMPIFNOT                        R12 ; [+9]
      111 GETUPVAL                         R12 9
      112 GETTABLEKS                       R12 R12 K29 ["get"]
      114 CALL                             R12 0 1
      115 GETTABLEKS                       R13 R12 K30 ["getUserId"]
      117 CALL                             R13 0 1
      118 MOVE                             R11 R13
      119 JUMP                             ; [+4]
      120 NAMECALL                         R12 R0 K31 ["GetUserId"]
      122 CALL                             R12 1 1
      123 MOVE                             R11 R12
      124 FASTCALL1                        TOSTRING R11 ; [+3]
      125 MOVE                             R13 R11
      126 GETIMPORT                        R12 K33 [tostring]
      128 CALL                             R12 1 1
      129 SETTABLEKS                       R12 R10 K34 ["robloxctx-authenticated-userid"]
      131 GETUPVAL                         R11 10
      132 GETTABLEKS                       R11 R11 K35 ["Json"]
      134 GETTABLEKS                       R11 R11 K36 ["encode"]
      136 MOVE                             R12 R6
      137 CALL                             R11 1 1
      138 GETUPVAL                         R12 11
      139 MOVE                             R14 R9
      140 MOVE                             R15 R11
      141 MOVE                             R16 R10
      142 NAMECALL                         R12 R12 K37 ["post"]
      144 CALL                             R12 4 -1
      145 RETURN                           R12 -1
      146 DUPTABLE                         R10 K38 [{"threadId", "requestId", "messageId", "conversation", "firstMessage", "useAgenticMode", "isDebugMode", "assistantMode"}]
      147 GETTABLEKS                       R11 R1 K13 ["threadId"]
      149 SETTABLEKS                       R11 R10 K13 ["threadId"]
      151 SETTABLEKS                       R2 R10 K15 ["requestId"]
      153 GETTABLEKS                       R11 R1 K22 ["messageGuid"]
      155 SETTABLEKS                       R11 R10 K14 ["messageId"]
      157 DUPTABLE                         R11 K40 [{"system", "llmConfig", "messages", "tools"}]
      158 GETTABLEKS                       R12 R1 K3 ["system"]
      160 SETTABLEKS                       R12 R11 K3 ["system"]
      162 DUPTABLE                         R12 K45 [{"model", "thinkingMode", "parallelToolCalls", "maxTokens", "temperature"}]
      163 SETTABLEKS                       R3 R12 K8 ["model"]
      165 SETTABLEKS                       R4 R12 K41 ["thinkingMode"]
      167 LOADB                            R13 1
      168 SETTABLEKS                       R13 R12 K42 ["parallelToolCalls"]
      170 GETUPVAL                         R13 3
      171 CALL                             R13 0 1
      172 SETTABLEKS                       R13 R12 K43 ["maxTokens"]
      174 LOADNIL                          R13
      175 SETTABLEKS                       R13 R12 K44 ["temperature"]
      177 SETTABLEKS                       R12 R11 K39 ["llmConfig"]
      179 GETTABLEKS                       R12 R1 K5 ["messages"]
      181 SETTABLEKS                       R12 R11 K5 ["messages"]
      183 GETTABLEKS                       R12 R1 K6 ["tools"]
      185 SETTABLEKS                       R12 R11 K6 ["tools"]
      187 SETTABLEKS                       R11 R10 K16 ["conversation"]
      189 GETTABLEKS                       R11 R1 K23 ["isFirstMessage"]
      191 SETTABLEKS                       R11 R10 K17 ["firstMessage"]
      193 GETTABLEKS                       R11 R1 K24 ["isAgenticMode"]
      195 SETTABLEKS                       R11 R10 K18 ["useAgenticMode"]
      197 LOADB                            R11 1
      198 SETTABLEKS                       R11 R10 K19 ["isDebugMode"]
      200 GETUPVAL                         R12 4
      201 CALL                             R12 0 1
      202 JUMPIFNOT                        R12 ; [+3]
      203 GETTABLEKS                       R11 R1 K20 ["assistantMode"]
      205 JUMPIF                           R11 ; [+1]
      206 LOADNIL                          R11
      207 SETTABLEKS                       R11 R10 K20 ["assistantMode"]
      209 GETUPVAL                         R11 12
      210 GETTABLEKS                       R11 R11 K46 ["new"]
      212 NEWCLOSURE                       R12 P0
      213 CAPTURE                          UPVAL U13
      214 CAPTURE                          VAL R10
      215 CAPTURE                          VAL R7
      216 CAPTURE                          UPVAL U14
      217 CALL                             R11 1 -1
      218 RETURN                           R11 -1
      219 GETTABLEKS                       R8 R1 K0 ["isSubagent"]
      221 JUMPIFEQKB                       R8 TRUE ; [+2]
      223 LOADB                            R7 0 +1
      224 LOADB                            R7 1
      225 JUMPIFNOT                        R7 ; [+3]
      226 GETUPVAL                         R8 6
      227 CALL                             R8 0 1
      228 JUMP                             ; [+2]
      229 GETUPVAL                         R8 7
      230 CALL                             R8 0 1
      231 GETTABLEKS                       R10 R1 K25 ["conversationUrl"]
      233 JUMPIFNOT                        R10 ; [+4]
      234 JUMPIFEQKS                       R10 K26 [""] ; [+3]
      236 MOVE                             R9 R10
      237 JUMP                             ; [+4]
      238 JUMPIFNOT                        R7 ; [+2]
      239 GETUPVAL                         R9 15
      240 JUMP                             ; [+1]
      241 GETUPVAL                         R9 16
      242 GETUPVAL                         R10 0
      243 MOVE                             R11 R8
      244 MOVE                             R12 R9
      245 CALL                             R10 2 1
      246 NEWTABLE                         R11 1 0
      248 LOADK                            R12 K27 ["application/json"]
      249 SETTABLEKS                       R12 R11 K28 ["Content-Type"]
      251 JUMPIFEQKS                       R8 K26 [""] ; [+25]
      253 LOADNIL                          R12
      254 GETUPVAL                         R13 8
      255 CALL                             R13 0 1
      256 JUMPIFNOT                        R13 ; [+9]
      257 GETUPVAL                         R13 9
      258 GETTABLEKS                       R13 R13 K29 ["get"]
      260 CALL                             R13 0 1
      261 GETTABLEKS                       R14 R13 K30 ["getUserId"]
      263 CALL                             R14 0 1
      264 MOVE                             R12 R14
      265 JUMP                             ; [+4]
      266 NAMECALL                         R13 R0 K31 ["GetUserId"]
      268 CALL                             R13 1 1
      269 MOVE                             R12 R13
      270 FASTCALL1                        TOSTRING R12 ; [+3]
      271 MOVE                             R14 R12
      272 GETIMPORT                        R13 K33 [tostring]
      274 CALL                             R13 1 1
      275 SETTABLEKS                       R13 R11 K34 ["robloxctx-authenticated-userid"]
      277 GETUPVAL                         R12 10
      278 GETTABLEKS                       R12 R12 K35 ["Json"]
      280 GETTABLEKS                       R12 R12 K36 ["encode"]
      282 MOVE                             R13 R6
      283 CALL                             R12 1 1
      284 GETUPVAL                         R13 11
      285 MOVE                             R15 R10
      286 MOVE                             R16 R12
      287 MOVE                             R17 R11
      288 NAMECALL                         R13 R13 K37 ["post"]
      290 CALL                             R13 4 -1
      291 RETURN                           R13 -1

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
      158 GETTABLEKS                       R20 R20 K35 ["getAssistantModeEnabled"]
      160 GETTABLEKS                       R21 R2 K25 ["Flags"]
      162 GETTABLEKS                       R21 R21 K31 ["Shared"]
      164 GETTABLEKS                       R21 R21 K36 ["FStringSubagentURLOverride"]
      166 GETTABLEKS                       R22 R2 K37 ["Utils"]
      168 GETTABLEKS                       R22 R22 K38 ["ServerStreamIdStore"]
      170 GETTABLEKS                       R23 R2 K37 ["Utils"]
      172 GETTABLEKS                       R23 R23 K39 ["StreamEventUtils"]
      174 GETTABLEKS                       R24 R3 K40 ["Http"]
      176 GETTABLEKS                       R24 R24 K41 ["Networking"]
      178 GETTABLEKS                       R25 R24 K42 ["new"]
      180 DUPTABLE                         R26 K45 [{"isInternal", "loggingLevel"}]
      181 LOADB                            R27 1
      182 SETTABLEKS                       R27 R26 K43 ["isInternal"]
      184 MOVE                             R28 R17
      185 CALL                             R28 0 1
      186 JUMPIFNOT                        R28 ; [+2]
      187 LOADN                            R27 4
      188 JUMP                             ; [+1]
      189 LOADN                            R27 0
      190 SETTABLEKS                       R27 R26 K44 ["loggingLevel"]
      192 CALL                             R25 1 1
      193 GETTABLEKS                       R26 R2 K46 ["Guest"]
      195 GETTABLEKS                       R26 R26 K47 ["Environment"]
      197 GETTABLEKS                       R27 R3 K40 ["Http"]
      199 GETTABLEKS                       R27 R27 K48 ["HttpResponse"]
      201 GETTABLEKS                       R28 R3 K49 ["Url"]
      203 GETTABLEKS                       R29 R28 K42 ["new"]
      205 LOADNIL                          R30
      206 CALL                             R29 1 1
      207 LOADK                            R31 K50 ["%*/studio-assistant/v1/conversation"]
      208 GETTABLEKS                       R33 R29 K51 ["APIS_URL"]
      210 NAMECALL                         R31 R31 K52 ["format"]
      212 CALL                             R31 2 1
      213 MOVE                             R30 R31
      214 LOADK                            R32 K53 ["%*/studio-assistant/v1/subagent-conversation"]
      215 GETTABLEKS                       R34 R29 K51 ["APIS_URL"]
      217 NAMECALL                         R32 R32 K52 ["format"]
      219 CALL                             R32 2 1
      220 MOVE                             R31 R32
      221 DUPCLOSURE                       R32 K54 [PROTO_0]
      222 CAPTURE                          VAL R31
      223 CAPTURE                          VAL R30
      224 DUPCLOSURE                       R33 K55 [PROTO_3]
      225 CAPTURE                          VAL R9
      226 CAPTURE                          VAL R5
      227 DUPCLOSURE                       R34 K56 [PROTO_5]
      228 CAPTURE                          VAL R11
      229 CAPTURE                          VAL R18
      230 CAPTURE                          VAL R16
      231 CAPTURE                          VAL R15
      232 CAPTURE                          VAL R20
      233 CAPTURE                          VAL R13
      234 CAPTURE                          VAL R21
      235 CAPTURE                          VAL R19
      236 CAPTURE                          VAL R12
      237 CAPTURE                          VAL R26
      238 CAPTURE                          VAL R6
      239 CAPTURE                          VAL R25
      240 CAPTURE                          VAL R8
      241 CAPTURE                          VAL R33
      242 CAPTURE                          VAL R9
      243 CAPTURE                          VAL R31
      244 CAPTURE                          VAL R30
      245 DUPTABLE                         R35 K60 [{"QUOTA_EXCEEDED", "TOO_MANY_REQUESTS", "REQUEST_FAILED"}]
      246 LOADK                            R36 K61 ["quota_exceeded"]
      247 SETTABLEKS                       R36 R35 K57 ["QUOTA_EXCEEDED"]
      249 LOADK                            R36 K62 ["too_many_request"]
      250 SETTABLEKS                       R36 R35 K58 ["TOO_MANY_REQUESTS"]
      252 LOADK                            R36 K63 ["request_failed"]
      253 SETTABLEKS                       R36 R35 K59 ["REQUEST_FAILED"]
      255 DUPCLOSURE                       R36 K64 [PROTO_6]
      256 CAPTURE                          VAL R14
      257 CAPTURE                          VAL R35
      258 DUPCLOSURE                       R37 K65 [PROTO_15]
      259 CAPTURE                          VAL R12
      260 CAPTURE                          VAL R26
      261 CAPTURE                          VAL R23
      262 CAPTURE                          VAL R6
      263 CAPTURE                          VAL R7
      264 CAPTURE                          VAL R1
      265 CAPTURE                          VAL R22
      266 CAPTURE                          VAL R34
      267 CAPTURE                          VAL R36
      268 DUPCLOSURE                       R38 K66 [PROTO_16]
      269 CAPTURE                          VAL R37
      270 DUPTABLE                         R39 K68 [{"createRequestHandler"}]
      271 SETTABLEKS                       R38 R39 K67 ["createRequestHandler"]
      273 RETURN                           R39 1
