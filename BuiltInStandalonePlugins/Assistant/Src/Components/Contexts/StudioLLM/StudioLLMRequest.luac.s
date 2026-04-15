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
        6 GETUPVAL                         R4 2
        7 GETTABLEKS                       R3 R4 K2 ["Json"]
        9 GETTABLEKS                       R2 R3 K3 ["encode"]
       11 CALL                             R0 2 -1
       12 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["Conversation"]
        3 GETTABLEKS                       R0 R1 K1 ["postCreateConversationV1ConversationPostAsync"]
        5 GETUPVAL                         R1 1
        6 GETUPVAL                         R4 2
        7 GETTABLEKS                       R3 R4 K2 ["Json"]
        9 GETTABLEKS                       R2 R3 K3 ["encode"]
       11 CALL                             R0 2 -1
       12 RETURN                           R0 -1

PROTO_3:
        0 NEWTABLE                         R2 0 0
        2 JUMPIFNOT                        R1 ; [+10]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R3 R4 K0 ["callWithOptions"]
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          VAL R0
        9 CAPTURE                          UPVAL U2
       10 MOVE                             R5 R2
       11 CALL                             R3 2 -1
       12 RETURN                           R3 -1
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R3 R4 K0 ["callWithOptions"]
       16 NEWCLOSURE                       R4 P1
       17 CAPTURE                          UPVAL U1
       18 CAPTURE                          VAL R0
       19 CAPTURE                          UPVAL U2
       20 MOVE                             R5 R2
       21 CALL                             R3 2 -1
       22 RETURN                           R3 -1

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
       31 GETUPVAL                         R8 4
       32 CALL                             R8 0 1
       33 JUMPIFNOT                        R8 ; [+2]
       34 LOADB                            R7 1
       35 JUMP                             ; [+1]
       36 LOADB                            R7 0
       37 SETTABLEKS                       R7 R6 K11 ["parallel_tool_calls"]
       39 SETTABLEKS                       R6 R5 K4 ["llm_config"]
       41 GETTABLEKS                       R6 R1 K5 ["messages"]
       43 SETTABLEKS                       R6 R5 K5 ["messages"]
       45 GETTABLEKS                       R6 R1 K6 ["tools"]
       47 SETTABLEKS                       R6 R5 K6 ["tools"]
       49 GETUPVAL                         R8 5
       50 GETTABLEKS                       R7 R8 K14 ["isTestAutomationEnabled"]
       52 CALL                             R7 0 1
       53 ORK                              R6 R7 K13 []
       54 GETUPVAL                         R7 6
       55 CALL                             R7 0 1
       56 JUMPIFNOT                        R7 ; [+14]
       57 LOADB                            R7 1
       58 GETTABLEKS                       R8 R1 K15 ["assistantMode"]
       60 GETUPVAL                         R12 7
       61 GETTABLEKS                       R11 R12 K16 ["Types"]
       63 GETTABLEKS                       R10 R11 K17 ["AssistantMode"]
       65 GETTABLEKS                       R9 R10 K18 ["Test"]
       67 JUMPIFEQ                         R8 R9 ; [+2]
       69 LOADNIL                          R7
       70 MOVE                             R6 R7
       71 DUPTABLE                         R7 K26 [{"threadId", "messageId", "requestId", "conversation", "firstMessage", "useAgenticMode", "isDebugMode", "assistantMode"}]
       72 GETTABLEKS                       R8 R1 K19 ["threadId"]
       74 SETTABLEKS                       R8 R7 K19 ["threadId"]
       76 GETTABLEKS                       R8 R1 K27 ["messageGuid"]
       78 SETTABLEKS                       R8 R7 K20 ["messageId"]
       80 SETTABLEKS                       R2 R7 K21 ["requestId"]
       82 SETTABLEKS                       R5 R7 K22 ["conversation"]
       84 GETTABLEKS                       R8 R1 K28 ["isFirstMessage"]
       86 SETTABLEKS                       R8 R7 K23 ["firstMessage"]
       88 GETTABLEKS                       R8 R1 K29 ["isAgenticMode"]
       90 SETTABLEKS                       R8 R7 K24 ["useAgenticMode"]
       92 SETTABLEKS                       R6 R7 K25 ["isDebugMode"]
       94 GETUPVAL                         R9 8
       95 CALL                             R9 0 1
       96 JUMPIFNOT                        R9 ; [+3]
       97 GETTABLEKS                       R8 R1 K15 ["assistantMode"]
       99 JUMPIF                           R8 ; [+1]
      100 LOADNIL                          R8
      101 SETTABLEKS                       R8 R7 K15 ["assistantMode"]
      103 GETUPVAL                         R8 9
      104 CALL                             R8 0 1
      105 JUMPIFNOT                        R8 ; [+146]
      106 GETUPVAL                         R8 4
      107 CALL                             R8 0 1
      108 JUMPIFNOT                        R8 ; [+6]
      109 GETTABLEKS                       R9 R1 K0 ["isSubagent"]
      111 JUMPIFEQKB                       R9 TRUE ; [+2]
      113 LOADB                            R8 0 +1
      114 LOADB                            R8 1
      115 JUMPIFNOT                        R8 ; [+3]
      116 GETUPVAL                         R9 10
      117 CALL                             R9 0 1
      118 JUMP                             ; [+2]
      119 GETUPVAL                         R9 11
      120 CALL                             R9 0 1
      121 GETUPVAL                         R10 0
      122 MOVE                             R11 R9
      123 GETTABLEKS                       R12 R1 K30 ["conversationUrl"]
      125 CALL                             R10 2 1
      126 JUMPIFNOT                        R10 ; [+48]
      127 JUMPIFEQKS                       R10 K31 [""] ; [+47]
      129 NEWTABLE                         R11 1 0
      131 LOADK                            R12 K32 ["application/json"]
      132 SETTABLEKS                       R12 R11 K33 ["Content-Type"]
      134 JUMPIFEQKS                       R9 K31 [""] ; [+25]
      136 LOADNIL                          R12
      137 GETUPVAL                         R13 12
      138 CALL                             R13 0 1
      139 JUMPIFNOT                        R13 ; [+9]
      140 GETUPVAL                         R14 13
      141 GETTABLEKS                       R13 R14 K34 ["get"]
      143 CALL                             R13 0 1
      144 GETTABLEKS                       R14 R13 K35 ["getUserId"]
      146 CALL                             R14 0 1
      147 MOVE                             R12 R14
      148 JUMP                             ; [+4]
      149 NAMECALL                         R13 R0 K36 ["GetUserId"]
      151 CALL                             R13 1 1
      152 MOVE                             R12 R13
      153 FASTCALL1                        TOSTRING R12 ; [+3]
      154 MOVE                             R14 R12
      155 GETIMPORT                        R13 K38 [tostring]
      157 CALL                             R13 1 1
      158 SETTABLEKS                       R13 R11 K39 ["robloxctx-authenticated-userid"]
      160 GETUPVAL                         R14 14
      161 GETTABLEKS                       R13 R14 K40 ["Json"]
      163 GETTABLEKS                       R12 R13 K41 ["encode"]
      165 MOVE                             R13 R7
      166 CALL                             R12 1 1
      167 GETUPVAL                         R13 15
      168 MOVE                             R15 R10
      169 MOVE                             R16 R12
      170 MOVE                             R17 R11
      171 NAMECALL                         R13 R13 K42 ["post"]
      173 CALL                             R13 4 -1
      174 RETURN                           R13 -1
      175 DUPTABLE                         R11 K43 [{"threadId", "requestId", "messageId", "conversation", "firstMessage", "useAgenticMode", "isDebugMode", "assistantMode"}]
      176 GETTABLEKS                       R12 R1 K19 ["threadId"]
      178 SETTABLEKS                       R12 R11 K19 ["threadId"]
      180 SETTABLEKS                       R2 R11 K21 ["requestId"]
      182 GETTABLEKS                       R12 R1 K27 ["messageGuid"]
      184 SETTABLEKS                       R12 R11 K20 ["messageId"]
      186 DUPTABLE                         R12 K45 [{"system", "llmConfig", "messages", "tools"}]
      187 GETTABLEKS                       R13 R1 K3 ["system"]
      189 SETTABLEKS                       R13 R12 K3 ["system"]
      191 DUPTABLE                         R13 K50 [{"model", "thinkingMode", "parallelToolCalls", "maxTokens", "temperature"}]
      192 SETTABLEKS                       R3 R13 K8 ["model"]
      194 SETTABLEKS                       R4 R13 K46 ["thinkingMode"]
      196 GETUPVAL                         R15 4
      197 CALL                             R15 0 1
      198 JUMPIFNOT                        R15 ; [+2]
      199 LOADB                            R14 1
      200 JUMP                             ; [+1]
      201 LOADB                            R14 0
      202 SETTABLEKS                       R14 R13 K47 ["parallelToolCalls"]
      204 GETUPVAL                         R14 3
      205 CALL                             R14 0 1
      206 SETTABLEKS                       R14 R13 K48 ["maxTokens"]
      208 LOADNIL                          R14
      209 SETTABLEKS                       R14 R13 K49 ["temperature"]
      211 SETTABLEKS                       R13 R12 K44 ["llmConfig"]
      213 GETTABLEKS                       R13 R1 K5 ["messages"]
      215 SETTABLEKS                       R13 R12 K5 ["messages"]
      217 GETTABLEKS                       R13 R1 K6 ["tools"]
      219 SETTABLEKS                       R13 R12 K6 ["tools"]
      221 SETTABLEKS                       R12 R11 K22 ["conversation"]
      223 GETTABLEKS                       R12 R1 K28 ["isFirstMessage"]
      225 SETTABLEKS                       R12 R11 K23 ["firstMessage"]
      227 GETTABLEKS                       R12 R1 K29 ["isAgenticMode"]
      229 SETTABLEKS                       R12 R11 K24 ["useAgenticMode"]
      231 SETTABLEKS                       R6 R11 K25 ["isDebugMode"]
      233 GETUPVAL                         R13 8
      234 CALL                             R13 0 1
      235 JUMPIFNOT                        R13 ; [+3]
      236 GETTABLEKS                       R12 R1 K15 ["assistantMode"]
      238 JUMPIF                           R12 ; [+1]
      239 LOADNIL                          R12
      240 SETTABLEKS                       R12 R11 K15 ["assistantMode"]
      242 GETUPVAL                         R13 16
      243 GETTABLEKS                       R12 R13 K51 ["new"]
      245 NEWCLOSURE                       R13 P0
      246 CAPTURE                          UPVAL U17
      247 CAPTURE                          VAL R11
      248 CAPTURE                          VAL R8
      249 CAPTURE                          UPVAL U18
      250 CALL                             R12 1 -1
      251 RETURN                           R12 -1
      252 GETUPVAL                         R8 4
      253 CALL                             R8 0 1
      254 JUMPIFNOT                        R8 ; [+6]
      255 GETTABLEKS                       R9 R1 K0 ["isSubagent"]
      257 JUMPIFEQKB                       R9 TRUE ; [+2]
      259 LOADB                            R8 0 +1
      260 LOADB                            R8 1
      261 JUMPIFNOT                        R8 ; [+3]
      262 GETUPVAL                         R9 10
      263 CALL                             R9 0 1
      264 JUMP                             ; [+2]
      265 GETUPVAL                         R9 11
      266 CALL                             R9 0 1
      267 GETTABLEKS                       R11 R1 K30 ["conversationUrl"]
      269 JUMPIFNOT                        R11 ; [+4]
      270 JUMPIFEQKS                       R11 K31 [""] ; [+3]
      272 MOVE                             R10 R11
      273 JUMP                             ; [+4]
      274 JUMPIFNOT                        R8 ; [+2]
      275 GETUPVAL                         R10 19
      276 JUMP                             ; [+1]
      277 GETUPVAL                         R10 20
      278 GETUPVAL                         R11 0
      279 MOVE                             R12 R9
      280 MOVE                             R13 R10
      281 CALL                             R11 2 1
      282 NEWTABLE                         R12 1 0
      284 LOADK                            R13 K32 ["application/json"]
      285 SETTABLEKS                       R13 R12 K33 ["Content-Type"]
      287 JUMPIFEQKS                       R9 K31 [""] ; [+25]
      289 LOADNIL                          R13
      290 GETUPVAL                         R14 12
      291 CALL                             R14 0 1
      292 JUMPIFNOT                        R14 ; [+9]
      293 GETUPVAL                         R15 13
      294 GETTABLEKS                       R14 R15 K34 ["get"]
      296 CALL                             R14 0 1
      297 GETTABLEKS                       R15 R14 K35 ["getUserId"]
      299 CALL                             R15 0 1
      300 MOVE                             R13 R15
      301 JUMP                             ; [+4]
      302 NAMECALL                         R14 R0 K36 ["GetUserId"]
      304 CALL                             R14 1 1
      305 MOVE                             R13 R14
      306 FASTCALL1                        TOSTRING R13 ; [+3]
      307 MOVE                             R15 R13
      308 GETIMPORT                        R14 K38 [tostring]
      310 CALL                             R14 1 1
      311 SETTABLEKS                       R14 R12 K39 ["robloxctx-authenticated-userid"]
      313 GETUPVAL                         R15 14
      314 GETTABLEKS                       R14 R15 K40 ["Json"]
      316 GETTABLEKS                       R13 R14 K41 ["encode"]
      318 MOVE                             R14 R7
      319 CALL                             R13 1 1
      320 GETUPVAL                         R14 15
      321 MOVE                             R16 R11
      322 MOVE                             R17 R13
      323 MOVE                             R18 R12
      324 NAMECALL                         R14 R14 K42 ["post"]
      326 CALL                             R14 4 -1
      327 RETURN                           R14 -1

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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["Json"]
        3 GETTABLEKS                       R0 R1 K1 ["decode"]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R1 R2 K2 ["detail"]
        8 CALL                             R0 1 1
        9 RETURN                           R0 1

PROTO_8:
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
       14 GETTABLEKS                       R3 R2 K6 ["requestId"]
       16 GETUPVAL                         R4 1
       17 JUMPIFEQ                         R3 R4 ; [+2]
       19 RETURN                           R0 0
       20 GETUPVAL                         R3 2
       21 GETTABLEKS                       R4 R2 K7 ["sequenceNumber"]
       23 SETTABLE                         R2 R3 R4
       24 GETUPVAL                         R4 2
       25 GETUPVAL                         R5 3
       26 GETTABLE                         R3 R4 R5
       27 JUMPIFEQKNIL                     R3 ; [+32]
       29 GETIMPORT                        R4 K1 [pcall]
       31 GETUPVAL                         R5 4
       32 GETTABLEKS                       R6 R3 K8 ["event"]
       34 CALL                             R4 2 0
       35 GETUPVAL                         R4 3
       36 JUMPIFNOTEQKN                    R4 K9 [0] ; [+16]
       38 GETIMPORT                        R5 K12 [os.clock]
       40 CALL                             R5 0 1
       41 GETUPVAL                         R6 5
       42 SUB                              R4 R5 R6
       43 GETUPVAL                         R7 6
       44 GETTABLEKS                       R6 R7 K13 ["get"]
       46 CALL                             R6 0 1
       47 GETTABLEKS                       R5 R6 K14 ["EventLogger"]
       49 GETTABLEKS                       R6 R5 K15 ["logInitialResponseLatency"]
       51 MOVE                             R7 R4
       52 CALL                             R6 1 0
       53 GETUPVAL                         R4 3
       54 ADDK                             R4 R4 K16 [1]
       55 SETUPVAL                         R4 3
       56 GETUPVAL                         R4 2
       57 GETUPVAL                         R5 3
       58 GETTABLE                         R3 R4 R5
       59 JUMPBACK                         ; [-33]
       60 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+1]
        2 RETURN                           R0 0
        3 LOADB                            R0 1
        4 SETUPVAL                         R0 0
        5 GETUPVAL                         R1 1
        6 LENGTH                           R0 R1
        7 LOADN                            R1 0
        8 JUMPIFNOTLT                      R1 R0 ; [+12]
       10 GETIMPORT                        R0 K2 [table.remove]
       12 GETUPVAL                         R1 1
       13 LOADN                            R2 1
       14 CALL                             R0 2 1
       15 GETIMPORT                        R1 K4 [pcall]
       17 GETUPVAL                         R2 2
       18 MOVE                             R3 R0
       19 CALL                             R1 2 0
       20 JUMPBACK                         ; [-16]
       21 LOADB                            R0 0
       22 SETUPVAL                         R0 0
       23 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R2 0
        1 FASTCALL2                        TABLE_INSERT R2 R0 ; [+4]
        3 MOVE                             R3 R0
        4 GETIMPORT                        R1 K2 [table.insert]
        6 CALL                             R1 2 0
        7 GETUPVAL                         R1 1
        8 JUMPIF                           R1 ; [+4]
        9 GETIMPORT                        R1 K5 [task.spawn]
       11 GETUPVAL                         R2 2
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["namespace"]
        2 JUMPIFEQKS                       R1 K1 ["AssistantPlugin"] ; [+2]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 0
        6 MOVE                             R2 R0
        7 CALL                             R1 1 -1
        8 RETURN                           R1 -1

PROTO_12:
        0 GETIMPORT                        R1 K2 [os.clock]
        2 CALL                             R1 0 1
        3 NEWTABLE                         R2 0 0
        5 LOADB                            R3 0
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          UPVAL U0
        8 CAPTURE                          VAL R0
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          UPVAL U3
       12 CAPTURE                          VAL R1
       13 CAPTURE                          UPVAL U4
       14 NEWCLOSURE                       R5 P1
       15 CAPTURE                          REF R3
       16 CAPTURE                          VAL R2
       17 CAPTURE                          VAL R4
       18 NEWCLOSURE                       R6 P2
       19 CAPTURE                          VAL R2
       20 CAPTURE                          REF R3
       21 CAPTURE                          VAL R5
       22 GETUPVAL                         R7 5
       23 CALL                             R7 0 1
       24 JUMPIFNOT                        R7 ; [+11]
       25 GETUPVAL                         R8 6
       26 GETTABLEKS                       R7 R8 K3 ["get"]
       28 CALL                             R7 0 1
       29 GETTABLEKS                       R8 R7 K4 ["listen"]
       31 LOADK                            R9 K5 ["AssistantPlugin"]
       32 MOVE                             R10 R6
       33 CALL                             R8 2 -1
       34 CLOSEUPVALS                      R3
       35 RETURN                           R8 -1
       36 GETUPVAL                         R8 7
       37 GETTABLEKS                       R7 R8 K6 ["RobloxEventReceived"]
       39 NEWCLOSURE                       R9 P3
       40 CAPTURE                          VAL R6
       41 NAMECALL                         R7 R7 K7 ["Connect"]
       43 CALL                             R7 2 1
       44 CLOSEUPVALS                      R3
       45 RETURN                           R7 1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 LOADNIL                          R0
        7 SETUPVAL                         R0 0
        8 RETURN                           R0 0

PROTO_14:
        0 LOADNIL                          R1
        1 GETTABLEKS                       R2 R0 K0 ["responseCode"]
        3 JUMPIFNOTEQKN                    R2 K1 [429] ; [+18]
        5 GETUPVAL                         R2 0
        6 CALL                             R2 0 1
        7 JUMPIFNOT                        R2 ; [+12]
        8 GETTABLEKS                       R2 R0 K2 ["responseBody"]
       10 JUMPIFEQKS                       R2 K3 ["\"Quota Exceeded\""] ; [+5]
       12 GETTABLEKS                       R2 R0 K2 ["responseBody"]
       14 JUMPIFNOTEQKS                    R2 K4 ["\"Quota Checking Failed\""] ; [+3]
       16 LOADK                            R1 K5 ["quota_exceeded"]
       17 JUMP                             ; [+5]
       18 LOADK                            R1 K6 ["too_many_request"]
       19 JUMP                             ; [+3]
       20 LOADK                            R1 K5 ["quota_exceeded"]
       21 JUMP                             ; [+1]
       22 LOADK                            R1 K7 ["request_failed"]
       23 DUPTABLE                         R2 K10 [{"type", "error"}]
       24 LOADK                            R3 K9 ["error"]
       25 SETTABLEKS                       R3 R2 K8 ["type"]
       27 SETTABLEKS                       R1 R2 K9 ["error"]
       29 GETUPVAL                         R3 1
       30 MOVE                             R4 R2
       31 CALL                             R3 1 0
       32 RETURN                           R0 0

PROTO_15:
        0 NEWTABLE                         R2 0 0
        2 LOADN                            R3 0
        3 GETUPVAL                         R4 0
        4 LOADB                            R6 0
        5 NAMECALL                         R4 R4 K0 ["GenerateGUID"]
        7 CALL                             R4 2 1
        8 GETUPVAL                         R6 1
        9 GETTABLEKS                       R5 R6 K1 ["set"]
       11 GETTABLEKS                       R6 R0 K2 ["messageGuid"]
       13 MOVE                             R7 R4
       14 CALL                             R5 2 0
       15 NEWCLOSURE                       R5 P0
       16 CAPTURE                          UPVAL U2
       17 CAPTURE                          VAL R2
       18 CAPTURE                          REF R3
       19 CAPTURE                          VAL R1
       20 CAPTURE                          UPVAL U3
       21 CAPTURE                          UPVAL U4
       22 CAPTURE                          UPVAL U5
       23 CAPTURE                          UPVAL U6
       24 GETUPVAL                         R6 7
       25 JUMPIFNOT                        R6 ; [+4]
       26 GETUPVAL                         R6 7
       27 NAMECALL                         R6 R6 K3 ["Disconnect"]
       29 CALL                             R6 1 0
       30 MOVE                             R6 R5
       31 MOVE                             R7 R4
       32 CALL                             R6 1 1
       33 SETUPVAL                         R6 7
       34 GETUPVAL                         R6 8
       35 JUMPIFNOT                        R6 ; [+8]
       36 GETUPVAL                         R7 8
       37 GETTABLEKS                       R6 R7 K4 ["Unloading"]
       39 NEWCLOSURE                       R8 P1
       40 CAPTURE                          UPVAL U7
       41 NAMECALL                         R6 R6 K5 ["Connect"]
       43 CALL                             R6 2 0
       44 GETUPVAL                         R6 9
       45 GETUPVAL                         R7 10
       46 MOVE                             R8 R0
       47 MOVE                             R9 R4
       48 CALL                             R6 3 1
       49 NEWCLOSURE                       R8 P2
       50 CAPTURE                          UPVAL U11
       51 CAPTURE                          VAL R1
       52 NAMECALL                         R6 R6 K6 ["catch"]
       54 CALL                             R6 2 0
       55 CLOSEUPVALS                      R3
       56 RETURN                           R0 0

PROTO_16:
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
       15 NEWCLOSURE                       R4 P0
       16 CAPTURE                          UPVAL U1
       17 CAPTURE                          UPVAL U2
       18 CAPTURE                          UPVAL U3
       19 CAPTURE                          UPVAL U4
       20 CAPTURE                          UPVAL U0
       21 CAPTURE                          UPVAL U5
       22 CAPTURE                          REF R2
       23 CAPTURE                          UPVAL U6
       24 CAPTURE                          VAL R1
       25 CAPTURE                          UPVAL U7
       26 CAPTURE                          REF R3
       27 CAPTURE                          UPVAL U8
       28 CLOSEUPVALS                      R2
       29 RETURN                           R4 1

PROTO_17:
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

PROTO_18:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["Json"]
        3 GETTABLEKS                       R0 R1 K1 ["decode"]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R1 R2 K2 ["detail"]
        8 CALL                             R0 1 1
        9 RETURN                           R0 1

PROTO_19:
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

PROTO_20:
        0 GETTABLEKS                       R1 R0 K0 ["namespace"]
        2 JUMPIFEQKS                       R1 K1 ["AssistantPlugin"] ; [+2]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 0
        6 MOVE                             R2 R0
        7 CALL                             R1 1 -1
        8 RETURN                           R1 -1

PROTO_21:
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

PROTO_22:
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

PROTO_23:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 LOADNIL                          R3
        3 SETTABLE                         R3 R1 R2
        4 GETUPVAL                         R1 2
        5 MOVE                             R2 R0
        6 GETUPVAL                         R3 3
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_24:
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

PROTO_25:
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

PROTO_26:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+5]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 MOVE                             R4 R1
        6 CALL                             R2 2 1
        7 RETURN                           R2 1
        8 LOADNIL                          R3
        9 LOADNIL                          R4
       10 GETUPVAL                         R5 2
       11 CALL                             R5 0 1
       12 JUMPIF                           R5 ; [+10]
       13 LOADK                            R7 K0 ["NotificationService"]
       14 NAMECALL                         R5 R0 K1 ["GetService"]
       16 CALL                             R5 2 1
       17 MOVE                             R3 R5
       18 LOADK                            R7 K2 ["StudioService"]
       19 NAMECALL                         R5 R0 K1 ["GetService"]
       21 CALL                             R5 2 1
       22 MOVE                             R4 R5
       23 NEWCLOSURE                       R2 P0
       24 CAPTURE                          UPVAL U3
       25 CAPTURE                          UPVAL U4
       26 CAPTURE                          UPVAL U5
       27 CAPTURE                          UPVAL U6
       28 CAPTURE                          UPVAL U2
       29 CAPTURE                          UPVAL U7
       30 CAPTURE                          REF R3
       31 CAPTURE                          UPVAL U8
       32 CAPTURE                          VAL R1
       33 CAPTURE                          UPVAL U9
       34 CAPTURE                          REF R4
       35 CAPTURE                          UPVAL U10
       36 CLOSEUPVALS                      R3
       37 RETURN                           R2 1

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
      161 GETTABLEKS                       R20 R21 K35 ["FFlagEnableSubagents"]
      163 GETTABLEKS                       R23 R2 K26 ["Flags"]
      165 GETTABLEKS                       R22 R23 K32 ["Shared"]
      167 GETTABLEKS                       R21 R22 K36 ["FStringMCPAssistantURLOverride"]
      169 GETTABLEKS                       R24 R2 K26 ["Flags"]
      171 GETTABLEKS                       R23 R24 K32 ["Shared"]
      173 GETTABLEKS                       R22 R23 K37 ["getAssistantModeEnabled"]
      175 GETTABLEKS                       R25 R2 K26 ["Flags"]
      177 GETTABLEKS                       R24 R25 K32 ["Shared"]
      179 GETTABLEKS                       R23 R24 K38 ["FFlagAssistantTestModeDropdown"]
      181 GETTABLEKS                       R26 R2 K26 ["Flags"]
      183 GETTABLEKS                       R25 R26 K32 ["Shared"]
      185 GETTABLEKS                       R24 R25 K39 ["FStringSubagentURLOverride"]
      187 GETTABLEKS                       R26 R2 K40 ["Utils"]
      189 GETTABLEKS                       R25 R26 K41 ["ServerStreamIdStore"]
      191 GETTABLEKS                       R27 R2 K40 ["Utils"]
      193 GETTABLEKS                       R26 R27 K42 ["StreamEventUtils"]
      195 GETTABLEKS                       R28 R4 K43 ["Http"]
      197 GETTABLEKS                       R27 R28 K44 ["Networking"]
      199 GETTABLEKS                       R28 R27 K45 ["new"]
      201 DUPTABLE                         R29 K48 [{"isInternal", "loggingLevel"}]
      202 LOADB                            R30 1
      203 SETTABLEKS                       R30 R29 K46 ["isInternal"]
      205 MOVE                             R31 R18
      206 CALL                             R31 0 1
      207 JUMPIFNOT                        R31 ; [+2]
      208 LOADN                            R30 4
      209 JUMP                             ; [+1]
      210 LOADN                            R30 0
      211 SETTABLEKS                       R30 R29 K47 ["loggingLevel"]
      213 CALL                             R28 1 1
      214 GETTABLEKS                       R30 R2 K49 ["Guest"]
      216 GETTABLEKS                       R29 R30 K50 ["Environment"]
      218 GETTABLEKS                       R31 R4 K43 ["Http"]
      220 GETTABLEKS                       R30 R31 K51 ["HttpResponse"]
      222 LOADNIL                          R31
      223 GETTABLEKS                       R32 R4 K52 ["Url"]
      225 GETTABLEKS                       R33 R32 K45 ["new"]
      227 LOADNIL                          R34
      228 CALL                             R33 1 1
      229 LOADK                            R35 K53 ["%*/studio-assistant/v1/conversation"]
      230 GETTABLEKS                       R37 R33 K54 ["APIS_URL"]
      232 NAMECALL                         R35 R35 K55 ["format"]
      234 CALL                             R35 2 1
      235 MOVE                             R34 R35
      236 LOADK                            R36 K56 ["%*/studio-assistant/v1/subagent-conversation"]
      237 GETTABLEKS                       R38 R33 K54 ["APIS_URL"]
      239 NAMECALL                         R36 R36 K55 ["format"]
      241 CALL                             R36 2 1
      242 MOVE                             R35 R36
      243 DUPCLOSURE                       R36 K57 [PROTO_0]
      244 CAPTURE                          VAL R35
      245 CAPTURE                          VAL R34
      246 DUPCLOSURE                       R37 K58 [PROTO_3]
      247 CAPTURE                          VAL R10
      248 CAPTURE                          VAL R6
      249 CAPTURE                          VAL R7
      250 DUPCLOSURE                       R38 K59 [PROTO_5]
      251 CAPTURE                          VAL R12
      252 CAPTURE                          VAL R19
      253 CAPTURE                          VAL R17
      254 CAPTURE                          VAL R16
      255 CAPTURE                          VAL R20
      256 CAPTURE                          VAL R3
      257 CAPTURE                          VAL R23
      258 CAPTURE                          VAL R2
      259 CAPTURE                          VAL R22
      260 CAPTURE                          VAL R14
      261 CAPTURE                          VAL R24
      262 CAPTURE                          VAL R21
      263 CAPTURE                          VAL R13
      264 CAPTURE                          VAL R29
      265 CAPTURE                          VAL R7
      266 CAPTURE                          VAL R28
      267 CAPTURE                          VAL R9
      268 CAPTURE                          VAL R37
      269 CAPTURE                          VAL R10
      270 CAPTURE                          VAL R35
      271 CAPTURE                          VAL R34
      272 DUPTABLE                         R39 K63 [{"QUOTA_EXCEEDED", "TOO_MANY_REQUESTS", "REQUEST_FAILED"}]
      273 LOADK                            R40 K64 ["quota_exceeded"]
      274 SETTABLEKS                       R40 R39 K60 ["QUOTA_EXCEEDED"]
      276 LOADK                            R40 K65 ["too_many_request"]
      277 SETTABLEKS                       R40 R39 K61 ["TOO_MANY_REQUESTS"]
      279 LOADK                            R40 K66 ["request_failed"]
      280 SETTABLEKS                       R40 R39 K62 ["REQUEST_FAILED"]
      282 DUPCLOSURE                       R40 K67 [PROTO_6]
      283 CAPTURE                          VAL R15
      284 CAPTURE                          VAL R39
      285 NEWCLOSURE                       R41 P4
      286 CAPTURE                          VAL R13
      287 CAPTURE                          VAL R1
      288 CAPTURE                          VAL R25
      289 CAPTURE                          VAL R7
      290 CAPTURE                          VAL R29
      291 CAPTURE                          VAL R8
      292 CAPTURE                          REF R31
      293 CAPTURE                          VAL R38
      294 CAPTURE                          VAL R15
      295 DUPCLOSURE                       R42 K68 [PROTO_25]
      296 CAPTURE                          VAL R13
      297 CAPTURE                          VAL R29
      298 CAPTURE                          VAL R26
      299 CAPTURE                          VAL R7
      300 CAPTURE                          VAL R8
      301 CAPTURE                          VAL R1
      302 CAPTURE                          VAL R25
      303 CAPTURE                          VAL R38
      304 CAPTURE                          VAL R40
      305 NEWCLOSURE                       R43 P6
      306 CAPTURE                          VAL R20
      307 CAPTURE                          VAL R42
      308 CAPTURE                          VAL R13
      309 CAPTURE                          VAL R1
      310 CAPTURE                          VAL R25
      311 CAPTURE                          VAL R7
      312 CAPTURE                          VAL R29
      313 CAPTURE                          VAL R8
      314 CAPTURE                          REF R31
      315 CAPTURE                          VAL R38
      316 CAPTURE                          VAL R15
      317 DUPTABLE                         R44 K70 [{"createRequestHandler"}]
      318 SETTABLEKS                       R43 R44 K69 ["createRequestHandler"]
      320 CLOSEUPVALS                      R31
      321 RETURN                           R44 1
