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
       68 GETTABLEKS                       R7 R1 K20 ["assistantMode"]
       70 SETTABLEKS                       R7 R6 K20 ["assistantMode"]
       72 GETUPVAL                         R7 4
       73 CALL                             R7 0 1
       74 JUMPIFNOT                        R7 ; [+134]
       75 GETTABLEKS                       R8 R1 K0 ["isSubagent"]
       77 JUMPIFEQKB                       R8 TRUE ; [+2]
       79 LOADB                            R7 0 +1
       80 LOADB                            R7 1
       81 JUMPIFNOT                        R7 ; [+3]
       82 GETUPVAL                         R8 5
       83 CALL                             R8 0 1
       84 JUMP                             ; [+2]
       85 GETUPVAL                         R8 6
       86 CALL                             R8 0 1
       87 GETUPVAL                         R9 0
       88 MOVE                             R10 R8
       89 GETTABLEKS                       R11 R1 K25 ["conversationUrl"]
       91 CALL                             R9 2 1
       92 JUMPIFNOT                        R9 ; [+48]
       93 JUMPIFEQKS                       R9 K26 [""] ; [+47]
       95 NEWTABLE                         R10 1 0
       97 LOADK                            R11 K27 ["application/json"]
       98 SETTABLEKS                       R11 R10 K28 ["Content-Type"]
      100 JUMPIFEQKS                       R8 K26 [""] ; [+25]
      102 LOADNIL                          R11
      103 GETUPVAL                         R12 7
      104 CALL                             R12 0 1
      105 JUMPIFNOT                        R12 ; [+9]
      106 GETUPVAL                         R12 8
      107 GETTABLEKS                       R12 R12 K29 ["get"]
      109 CALL                             R12 0 1
      110 GETTABLEKS                       R13 R12 K30 ["getUserId"]
      112 CALL                             R13 0 1
      113 MOVE                             R11 R13
      114 JUMP                             ; [+4]
      115 NAMECALL                         R12 R0 K31 ["GetUserId"]
      117 CALL                             R12 1 1
      118 MOVE                             R11 R12
      119 FASTCALL1                        TOSTRING R11 ; [+3]
      120 MOVE                             R13 R11
      121 GETIMPORT                        R12 K33 [tostring]
      123 CALL                             R12 1 1
      124 SETTABLEKS                       R12 R10 K34 ["robloxctx-authenticated-userid"]
      126 GETUPVAL                         R11 9
      127 GETTABLEKS                       R11 R11 K35 ["Json"]
      129 GETTABLEKS                       R11 R11 K36 ["encode"]
      131 MOVE                             R12 R6
      132 CALL                             R11 1 1
      133 GETUPVAL                         R12 10
      134 MOVE                             R14 R9
      135 MOVE                             R15 R11
      136 MOVE                             R16 R10
      137 NAMECALL                         R12 R12 K37 ["post"]
      139 CALL                             R12 4 -1
      140 RETURN                           R12 -1
      141 DUPTABLE                         R10 K38 [{"threadId", "requestId", "messageId", "conversation", "firstMessage", "useAgenticMode", "isDebugMode", "assistantMode"}]
      142 GETTABLEKS                       R11 R1 K13 ["threadId"]
      144 SETTABLEKS                       R11 R10 K13 ["threadId"]
      146 SETTABLEKS                       R2 R10 K15 ["requestId"]
      148 GETTABLEKS                       R11 R1 K22 ["messageGuid"]
      150 SETTABLEKS                       R11 R10 K14 ["messageId"]
      152 DUPTABLE                         R11 K40 [{"system", "llmConfig", "messages", "tools"}]
      153 GETTABLEKS                       R12 R1 K3 ["system"]
      155 SETTABLEKS                       R12 R11 K3 ["system"]
      157 DUPTABLE                         R12 K45 [{"model", "thinkingMode", "parallelToolCalls", "maxTokens", "temperature"}]
      158 SETTABLEKS                       R3 R12 K8 ["model"]
      160 SETTABLEKS                       R4 R12 K41 ["thinkingMode"]
      162 LOADB                            R13 1
      163 SETTABLEKS                       R13 R12 K42 ["parallelToolCalls"]
      165 GETUPVAL                         R13 3
      166 CALL                             R13 0 1
      167 SETTABLEKS                       R13 R12 K43 ["maxTokens"]
      169 LOADNIL                          R13
      170 SETTABLEKS                       R13 R12 K44 ["temperature"]
      172 SETTABLEKS                       R12 R11 K39 ["llmConfig"]
      174 GETTABLEKS                       R12 R1 K5 ["messages"]
      176 SETTABLEKS                       R12 R11 K5 ["messages"]
      178 GETTABLEKS                       R12 R1 K6 ["tools"]
      180 SETTABLEKS                       R12 R11 K6 ["tools"]
      182 SETTABLEKS                       R11 R10 K16 ["conversation"]
      184 GETTABLEKS                       R11 R1 K23 ["isFirstMessage"]
      186 SETTABLEKS                       R11 R10 K17 ["firstMessage"]
      188 GETTABLEKS                       R11 R1 K24 ["isAgenticMode"]
      190 SETTABLEKS                       R11 R10 K18 ["useAgenticMode"]
      192 LOADB                            R11 1
      193 SETTABLEKS                       R11 R10 K19 ["isDebugMode"]
      195 GETTABLEKS                       R11 R1 K20 ["assistantMode"]
      197 SETTABLEKS                       R11 R10 K20 ["assistantMode"]
      199 GETUPVAL                         R11 11
      200 GETTABLEKS                       R11 R11 K46 ["new"]
      202 NEWCLOSURE                       R12 P0
      203 CAPTURE                          UPVAL U12
      204 CAPTURE                          VAL R10
      205 CAPTURE                          VAL R7
      206 CAPTURE                          UPVAL U13
      207 CALL                             R11 1 -1
      208 RETURN                           R11 -1
      209 GETTABLEKS                       R8 R1 K0 ["isSubagent"]
      211 JUMPIFEQKB                       R8 TRUE ; [+2]
      213 LOADB                            R7 0 +1
      214 LOADB                            R7 1
      215 JUMPIFNOT                        R7 ; [+3]
      216 GETUPVAL                         R8 5
      217 CALL                             R8 0 1
      218 JUMP                             ; [+2]
      219 GETUPVAL                         R8 6
      220 CALL                             R8 0 1
      221 GETTABLEKS                       R10 R1 K25 ["conversationUrl"]
      223 JUMPIFNOT                        R10 ; [+4]
      224 JUMPIFEQKS                       R10 K26 [""] ; [+3]
      226 MOVE                             R9 R10
      227 JUMP                             ; [+4]
      228 JUMPIFNOT                        R7 ; [+2]
      229 GETUPVAL                         R9 14
      230 JUMP                             ; [+1]
      231 GETUPVAL                         R9 15
      232 GETUPVAL                         R10 0
      233 MOVE                             R11 R8
      234 MOVE                             R12 R9
      235 CALL                             R10 2 1
      236 NEWTABLE                         R11 1 0
      238 LOADK                            R12 K27 ["application/json"]
      239 SETTABLEKS                       R12 R11 K28 ["Content-Type"]
      241 JUMPIFEQKS                       R8 K26 [""] ; [+25]
      243 LOADNIL                          R12
      244 GETUPVAL                         R13 7
      245 CALL                             R13 0 1
      246 JUMPIFNOT                        R13 ; [+9]
      247 GETUPVAL                         R13 8
      248 GETTABLEKS                       R13 R13 K29 ["get"]
      250 CALL                             R13 0 1
      251 GETTABLEKS                       R14 R13 K30 ["getUserId"]
      253 CALL                             R14 0 1
      254 MOVE                             R12 R14
      255 JUMP                             ; [+4]
      256 NAMECALL                         R13 R0 K31 ["GetUserId"]
      258 CALL                             R13 1 1
      259 MOVE                             R12 R13
      260 FASTCALL1                        TOSTRING R12 ; [+3]
      261 MOVE                             R14 R12
      262 GETIMPORT                        R13 K33 [tostring]
      264 CALL                             R13 1 1
      265 SETTABLEKS                       R13 R11 K34 ["robloxctx-authenticated-userid"]
      267 GETUPVAL                         R12 9
      268 GETTABLEKS                       R12 R12 K35 ["Json"]
      270 GETTABLEKS                       R12 R12 K36 ["encode"]
      272 MOVE                             R13 R6
      273 CALL                             R12 1 1
      274 GETUPVAL                         R13 10
      275 MOVE                             R15 R10
      276 MOVE                             R16 R12
      277 MOVE                             R17 R11
      278 NAMECALL                         R13 R13 K37 ["post"]
      280 CALL                             R13 4 -1
      281 RETURN                           R13 -1

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
      158 GETTABLEKS                       R20 R20 K35 ["FStringSubagentURLOverride"]
      160 GETTABLEKS                       R21 R2 K36 ["Utils"]
      162 GETTABLEKS                       R21 R21 K37 ["ServerStreamIdStore"]
      164 GETTABLEKS                       R22 R2 K36 ["Utils"]
      166 GETTABLEKS                       R22 R22 K38 ["StreamEventUtils"]
      168 GETTABLEKS                       R23 R3 K39 ["Http"]
      170 GETTABLEKS                       R23 R23 K40 ["Networking"]
      172 GETTABLEKS                       R24 R23 K41 ["new"]
      174 DUPTABLE                         R25 K44 [{"isInternal", "loggingLevel"}]
      175 LOADB                            R26 1
      176 SETTABLEKS                       R26 R25 K42 ["isInternal"]
      178 MOVE                             R27 R17
      179 CALL                             R27 0 1
      180 JUMPIFNOT                        R27 ; [+2]
      181 LOADN                            R26 4
      182 JUMP                             ; [+1]
      183 LOADN                            R26 0
      184 SETTABLEKS                       R26 R25 K43 ["loggingLevel"]
      186 CALL                             R24 1 1
      187 GETTABLEKS                       R25 R2 K45 ["Guest"]
      189 GETTABLEKS                       R25 R25 K46 ["Environment"]
      191 GETTABLEKS                       R26 R3 K39 ["Http"]
      193 GETTABLEKS                       R26 R26 K47 ["HttpResponse"]
      195 GETTABLEKS                       R27 R3 K48 ["Url"]
      197 GETTABLEKS                       R28 R27 K41 ["new"]
      199 LOADNIL                          R29
      200 CALL                             R28 1 1
      201 LOADK                            R30 K49 ["%*/studio-assistant/v1/conversation"]
      202 GETTABLEKS                       R32 R28 K50 ["APIS_URL"]
      204 NAMECALL                         R30 R30 K51 ["format"]
      206 CALL                             R30 2 1
      207 MOVE                             R29 R30
      208 LOADK                            R31 K52 ["%*/studio-assistant/v1/subagent-conversation"]
      209 GETTABLEKS                       R33 R28 K50 ["APIS_URL"]
      211 NAMECALL                         R31 R31 K51 ["format"]
      213 CALL                             R31 2 1
      214 MOVE                             R30 R31
      215 DUPCLOSURE                       R31 K53 [PROTO_0]
      216 CAPTURE                          VAL R30
      217 CAPTURE                          VAL R29
      218 DUPCLOSURE                       R32 K54 [PROTO_3]
      219 CAPTURE                          VAL R9
      220 CAPTURE                          VAL R5
      221 DUPCLOSURE                       R33 K55 [PROTO_5]
      222 CAPTURE                          VAL R11
      223 CAPTURE                          VAL R18
      224 CAPTURE                          VAL R16
      225 CAPTURE                          VAL R15
      226 CAPTURE                          VAL R13
      227 CAPTURE                          VAL R20
      228 CAPTURE                          VAL R19
      229 CAPTURE                          VAL R12
      230 CAPTURE                          VAL R25
      231 CAPTURE                          VAL R6
      232 CAPTURE                          VAL R24
      233 CAPTURE                          VAL R8
      234 CAPTURE                          VAL R32
      235 CAPTURE                          VAL R9
      236 CAPTURE                          VAL R30
      237 CAPTURE                          VAL R29
      238 DUPTABLE                         R34 K59 [{"QUOTA_EXCEEDED", "TOO_MANY_REQUESTS", "REQUEST_FAILED"}]
      239 LOADK                            R35 K60 ["quota_exceeded"]
      240 SETTABLEKS                       R35 R34 K56 ["QUOTA_EXCEEDED"]
      242 LOADK                            R35 K61 ["too_many_request"]
      243 SETTABLEKS                       R35 R34 K57 ["TOO_MANY_REQUESTS"]
      245 LOADK                            R35 K62 ["request_failed"]
      246 SETTABLEKS                       R35 R34 K58 ["REQUEST_FAILED"]
      248 DUPCLOSURE                       R35 K63 [PROTO_6]
      249 CAPTURE                          VAL R14
      250 CAPTURE                          VAL R34
      251 DUPCLOSURE                       R36 K64 [PROTO_15]
      252 CAPTURE                          VAL R12
      253 CAPTURE                          VAL R25
      254 CAPTURE                          VAL R22
      255 CAPTURE                          VAL R6
      256 CAPTURE                          VAL R7
      257 CAPTURE                          VAL R1
      258 CAPTURE                          VAL R21
      259 CAPTURE                          VAL R33
      260 CAPTURE                          VAL R35
      261 DUPCLOSURE                       R37 K65 [PROTO_16]
      262 CAPTURE                          VAL R36
      263 DUPTABLE                         R38 K67 [{"createRequestHandler"}]
      264 SETTABLEKS                       R37 R38 K66 ["createRequestHandler"]
      266 RETURN                           R38 1
