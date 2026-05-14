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
       44 LOADB                            R6 1
       45 GETUPVAL                         R7 4
       46 CALL                             R7 0 1
       47 JUMPIFNOT                        R7 ; [+14]
       48 LOADB                            R7 1
       49 GETTABLEKS                       R8 R1 K13 ["assistantMode"]
       51 GETUPVAL                         R9 5
       52 GETTABLEKS                       R9 R9 K14 ["Types"]
       54 GETTABLEKS                       R9 R9 K15 ["AssistantMode"]
       56 GETTABLEKS                       R9 R9 K16 ["Test"]
       58 JUMPIFEQ                         R8 R9 ; [+2]
       60 LOADNIL                          R7
       61 MOVE                             R6 R7
       62 DUPTABLE                         R7 K24 [{"threadId", "messageId", "requestId", "conversation", "firstMessage", "useAgenticMode", "isDebugMode", "assistantMode"}]
       63 GETTABLEKS                       R8 R1 K17 ["threadId"]
       65 SETTABLEKS                       R8 R7 K17 ["threadId"]
       67 GETTABLEKS                       R8 R1 K25 ["messageGuid"]
       69 SETTABLEKS                       R8 R7 K18 ["messageId"]
       71 SETTABLEKS                       R2 R7 K19 ["requestId"]
       73 SETTABLEKS                       R5 R7 K20 ["conversation"]
       75 GETTABLEKS                       R8 R1 K26 ["isFirstMessage"]
       77 SETTABLEKS                       R8 R7 K21 ["firstMessage"]
       79 GETTABLEKS                       R8 R1 K27 ["isAgenticMode"]
       81 SETTABLEKS                       R8 R7 K22 ["useAgenticMode"]
       83 SETTABLEKS                       R6 R7 K23 ["isDebugMode"]
       85 GETUPVAL                         R9 6
       86 CALL                             R9 0 1
       87 JUMPIFNOT                        R9 ; [+3]
       88 GETTABLEKS                       R8 R1 K13 ["assistantMode"]
       90 JUMPIF                           R8 ; [+1]
       91 LOADNIL                          R8
       92 SETTABLEKS                       R8 R7 K13 ["assistantMode"]
       94 GETUPVAL                         R8 7
       95 CALL                             R8 0 1
       96 JUMPIFNOT                        R8 ; [+138]
       97 GETTABLEKS                       R9 R1 K0 ["isSubagent"]
       99 JUMPIFEQKB                       R9 TRUE ; [+2]
      101 LOADB                            R8 0 +1
      102 LOADB                            R8 1
      103 JUMPIFNOT                        R8 ; [+3]
      104 GETUPVAL                         R9 8
      105 CALL                             R9 0 1
      106 JUMP                             ; [+2]
      107 GETUPVAL                         R9 9
      108 CALL                             R9 0 1
      109 GETUPVAL                         R10 0
      110 MOVE                             R11 R9
      111 GETTABLEKS                       R12 R1 K28 ["conversationUrl"]
      113 CALL                             R10 2 1
      114 JUMPIFNOT                        R10 ; [+48]
      115 JUMPIFEQKS                       R10 K29 [""] ; [+47]
      117 NEWTABLE                         R11 1 0
      119 LOADK                            R12 K30 ["application/json"]
      120 SETTABLEKS                       R12 R11 K31 ["Content-Type"]
      122 JUMPIFEQKS                       R9 K29 [""] ; [+25]
      124 LOADNIL                          R12
      125 GETUPVAL                         R13 10
      126 CALL                             R13 0 1
      127 JUMPIFNOT                        R13 ; [+9]
      128 GETUPVAL                         R13 11
      129 GETTABLEKS                       R13 R13 K32 ["get"]
      131 CALL                             R13 0 1
      132 GETTABLEKS                       R14 R13 K33 ["getUserId"]
      134 CALL                             R14 0 1
      135 MOVE                             R12 R14
      136 JUMP                             ; [+4]
      137 NAMECALL                         R13 R0 K34 ["GetUserId"]
      139 CALL                             R13 1 1
      140 MOVE                             R12 R13
      141 FASTCALL1                        TOSTRING R12 ; [+3]
      142 MOVE                             R14 R12
      143 GETIMPORT                        R13 K36 [tostring]
      145 CALL                             R13 1 1
      146 SETTABLEKS                       R13 R11 K37 ["robloxctx-authenticated-userid"]
      148 GETUPVAL                         R12 12
      149 GETTABLEKS                       R12 R12 K38 ["Json"]
      151 GETTABLEKS                       R12 R12 K39 ["encode"]
      153 MOVE                             R13 R7
      154 CALL                             R12 1 1
      155 GETUPVAL                         R13 13
      156 MOVE                             R15 R10
      157 MOVE                             R16 R12
      158 MOVE                             R17 R11
      159 NAMECALL                         R13 R13 K40 ["post"]
      161 CALL                             R13 4 -1
      162 RETURN                           R13 -1
      163 DUPTABLE                         R11 K41 [{"threadId", "requestId", "messageId", "conversation", "firstMessage", "useAgenticMode", "isDebugMode", "assistantMode"}]
      164 GETTABLEKS                       R12 R1 K17 ["threadId"]
      166 SETTABLEKS                       R12 R11 K17 ["threadId"]
      168 SETTABLEKS                       R2 R11 K19 ["requestId"]
      170 GETTABLEKS                       R12 R1 K25 ["messageGuid"]
      172 SETTABLEKS                       R12 R11 K18 ["messageId"]
      174 DUPTABLE                         R12 K43 [{"system", "llmConfig", "messages", "tools"}]
      175 GETTABLEKS                       R13 R1 K3 ["system"]
      177 SETTABLEKS                       R13 R12 K3 ["system"]
      179 DUPTABLE                         R13 K48 [{"model", "thinkingMode", "parallelToolCalls", "maxTokens", "temperature"}]
      180 SETTABLEKS                       R3 R13 K8 ["model"]
      182 SETTABLEKS                       R4 R13 K44 ["thinkingMode"]
      184 LOADB                            R14 1
      185 SETTABLEKS                       R14 R13 K45 ["parallelToolCalls"]
      187 GETUPVAL                         R14 3
      188 CALL                             R14 0 1
      189 SETTABLEKS                       R14 R13 K46 ["maxTokens"]
      191 LOADNIL                          R14
      192 SETTABLEKS                       R14 R13 K47 ["temperature"]
      194 SETTABLEKS                       R13 R12 K42 ["llmConfig"]
      196 GETTABLEKS                       R13 R1 K5 ["messages"]
      198 SETTABLEKS                       R13 R12 K5 ["messages"]
      200 GETTABLEKS                       R13 R1 K6 ["tools"]
      202 SETTABLEKS                       R13 R12 K6 ["tools"]
      204 SETTABLEKS                       R12 R11 K20 ["conversation"]
      206 GETTABLEKS                       R12 R1 K26 ["isFirstMessage"]
      208 SETTABLEKS                       R12 R11 K21 ["firstMessage"]
      210 GETTABLEKS                       R12 R1 K27 ["isAgenticMode"]
      212 SETTABLEKS                       R12 R11 K22 ["useAgenticMode"]
      214 SETTABLEKS                       R6 R11 K23 ["isDebugMode"]
      216 GETUPVAL                         R13 6
      217 CALL                             R13 0 1
      218 JUMPIFNOT                        R13 ; [+3]
      219 GETTABLEKS                       R12 R1 K13 ["assistantMode"]
      221 JUMPIF                           R12 ; [+1]
      222 LOADNIL                          R12
      223 SETTABLEKS                       R12 R11 K13 ["assistantMode"]
      225 GETUPVAL                         R12 14
      226 GETTABLEKS                       R12 R12 K49 ["new"]
      228 NEWCLOSURE                       R13 P0
      229 CAPTURE                          UPVAL U15
      230 CAPTURE                          VAL R11
      231 CAPTURE                          VAL R8
      232 CAPTURE                          UPVAL U16
      233 CALL                             R12 1 -1
      234 RETURN                           R12 -1
      235 GETTABLEKS                       R9 R1 K0 ["isSubagent"]
      237 JUMPIFEQKB                       R9 TRUE ; [+2]
      239 LOADB                            R8 0 +1
      240 LOADB                            R8 1
      241 JUMPIFNOT                        R8 ; [+3]
      242 GETUPVAL                         R9 8
      243 CALL                             R9 0 1
      244 JUMP                             ; [+2]
      245 GETUPVAL                         R9 9
      246 CALL                             R9 0 1
      247 GETTABLEKS                       R11 R1 K28 ["conversationUrl"]
      249 JUMPIFNOT                        R11 ; [+4]
      250 JUMPIFEQKS                       R11 K29 [""] ; [+3]
      252 MOVE                             R10 R11
      253 JUMP                             ; [+4]
      254 JUMPIFNOT                        R8 ; [+2]
      255 GETUPVAL                         R10 17
      256 JUMP                             ; [+1]
      257 GETUPVAL                         R10 18
      258 GETUPVAL                         R11 0
      259 MOVE                             R12 R9
      260 MOVE                             R13 R10
      261 CALL                             R11 2 1
      262 NEWTABLE                         R12 1 0
      264 LOADK                            R13 K30 ["application/json"]
      265 SETTABLEKS                       R13 R12 K31 ["Content-Type"]
      267 JUMPIFEQKS                       R9 K29 [""] ; [+25]
      269 LOADNIL                          R13
      270 GETUPVAL                         R14 10
      271 CALL                             R14 0 1
      272 JUMPIFNOT                        R14 ; [+9]
      273 GETUPVAL                         R14 11
      274 GETTABLEKS                       R14 R14 K32 ["get"]
      276 CALL                             R14 0 1
      277 GETTABLEKS                       R15 R14 K33 ["getUserId"]
      279 CALL                             R15 0 1
      280 MOVE                             R13 R15
      281 JUMP                             ; [+4]
      282 NAMECALL                         R14 R0 K34 ["GetUserId"]
      284 CALL                             R14 1 1
      285 MOVE                             R13 R14
      286 FASTCALL1                        TOSTRING R13 ; [+3]
      287 MOVE                             R15 R13
      288 GETIMPORT                        R14 K36 [tostring]
      290 CALL                             R14 1 1
      291 SETTABLEKS                       R14 R12 K37 ["robloxctx-authenticated-userid"]
      293 GETUPVAL                         R13 12
      294 GETTABLEKS                       R13 R13 K38 ["Json"]
      296 GETTABLEKS                       R13 R13 K39 ["encode"]
      298 MOVE                             R14 R7
      299 CALL                             R13 1 1
      300 GETUPVAL                         R14 13
      301 MOVE                             R16 R11
      302 MOVE                             R17 R13
      303 MOVE                             R18 R12
      304 NAMECALL                         R14 R14 K40 ["post"]
      306 CALL                             R14 4 -1
      307 RETURN                           R14 -1

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
      164 GETTABLEKS                       R21 R21 K36 ["FFlagAssistantTestModeDropdown"]
      166 GETTABLEKS                       R22 R2 K25 ["Flags"]
      168 GETTABLEKS                       R22 R22 K31 ["Shared"]
      170 GETTABLEKS                       R22 R22 K37 ["FStringSubagentURLOverride"]
      172 GETTABLEKS                       R23 R2 K38 ["Utils"]
      174 GETTABLEKS                       R23 R23 K39 ["ServerStreamIdStore"]
      176 GETTABLEKS                       R24 R2 K38 ["Utils"]
      178 GETTABLEKS                       R24 R24 K40 ["StreamEventUtils"]
      180 GETTABLEKS                       R25 R3 K41 ["Http"]
      182 GETTABLEKS                       R25 R25 K42 ["Networking"]
      184 GETTABLEKS                       R26 R25 K43 ["new"]
      186 DUPTABLE                         R27 K46 [{"isInternal", "loggingLevel"}]
      187 LOADB                            R28 1
      188 SETTABLEKS                       R28 R27 K44 ["isInternal"]
      190 MOVE                             R29 R17
      191 CALL                             R29 0 1
      192 JUMPIFNOT                        R29 ; [+2]
      193 LOADN                            R28 4
      194 JUMP                             ; [+1]
      195 LOADN                            R28 0
      196 SETTABLEKS                       R28 R27 K45 ["loggingLevel"]
      198 CALL                             R26 1 1
      199 GETTABLEKS                       R27 R2 K47 ["Guest"]
      201 GETTABLEKS                       R27 R27 K48 ["Environment"]
      203 GETTABLEKS                       R28 R3 K41 ["Http"]
      205 GETTABLEKS                       R28 R28 K49 ["HttpResponse"]
      207 GETTABLEKS                       R29 R3 K50 ["Url"]
      209 GETTABLEKS                       R30 R29 K43 ["new"]
      211 LOADNIL                          R31
      212 CALL                             R30 1 1
      213 LOADK                            R32 K51 ["%*/studio-assistant/v1/conversation"]
      214 GETTABLEKS                       R34 R30 K52 ["APIS_URL"]
      216 NAMECALL                         R32 R32 K53 ["format"]
      218 CALL                             R32 2 1
      219 MOVE                             R31 R32
      220 LOADK                            R33 K54 ["%*/studio-assistant/v1/subagent-conversation"]
      221 GETTABLEKS                       R35 R30 K52 ["APIS_URL"]
      223 NAMECALL                         R33 R33 K53 ["format"]
      225 CALL                             R33 2 1
      226 MOVE                             R32 R33
      227 DUPCLOSURE                       R33 K55 [PROTO_0]
      228 CAPTURE                          VAL R32
      229 CAPTURE                          VAL R31
      230 DUPCLOSURE                       R34 K56 [PROTO_3]
      231 CAPTURE                          VAL R9
      232 CAPTURE                          VAL R5
      233 DUPCLOSURE                       R35 K57 [PROTO_5]
      234 CAPTURE                          VAL R11
      235 CAPTURE                          VAL R18
      236 CAPTURE                          VAL R16
      237 CAPTURE                          VAL R15
      238 CAPTURE                          VAL R21
      239 CAPTURE                          VAL R2
      240 CAPTURE                          VAL R20
      241 CAPTURE                          VAL R13
      242 CAPTURE                          VAL R22
      243 CAPTURE                          VAL R19
      244 CAPTURE                          VAL R12
      245 CAPTURE                          VAL R27
      246 CAPTURE                          VAL R6
      247 CAPTURE                          VAL R26
      248 CAPTURE                          VAL R8
      249 CAPTURE                          VAL R34
      250 CAPTURE                          VAL R9
      251 CAPTURE                          VAL R32
      252 CAPTURE                          VAL R31
      253 DUPTABLE                         R36 K61 [{"QUOTA_EXCEEDED", "TOO_MANY_REQUESTS", "REQUEST_FAILED"}]
      254 LOADK                            R37 K62 ["quota_exceeded"]
      255 SETTABLEKS                       R37 R36 K58 ["QUOTA_EXCEEDED"]
      257 LOADK                            R37 K63 ["too_many_request"]
      258 SETTABLEKS                       R37 R36 K59 ["TOO_MANY_REQUESTS"]
      260 LOADK                            R37 K64 ["request_failed"]
      261 SETTABLEKS                       R37 R36 K60 ["REQUEST_FAILED"]
      263 DUPCLOSURE                       R37 K65 [PROTO_6]
      264 CAPTURE                          VAL R14
      265 CAPTURE                          VAL R36
      266 DUPCLOSURE                       R38 K66 [PROTO_15]
      267 CAPTURE                          VAL R12
      268 CAPTURE                          VAL R27
      269 CAPTURE                          VAL R24
      270 CAPTURE                          VAL R6
      271 CAPTURE                          VAL R7
      272 CAPTURE                          VAL R1
      273 CAPTURE                          VAL R23
      274 CAPTURE                          VAL R35
      275 CAPTURE                          VAL R37
      276 DUPCLOSURE                       R39 K67 [PROTO_16]
      277 CAPTURE                          VAL R38
      278 DUPTABLE                         R40 K69 [{"createRequestHandler"}]
      279 SETTABLEKS                       R39 R40 K68 ["createRequestHandler"]
      281 RETURN                           R40 1
