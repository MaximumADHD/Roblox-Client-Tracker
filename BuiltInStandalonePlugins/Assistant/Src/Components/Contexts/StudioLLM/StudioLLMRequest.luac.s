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
       46 JUMPIFNOT                        R6 ; [+5]
       47 GETUPVAL                         R6 3
       48 CALL                             R6 0 1
       49 JUMPIFNOT                        R6 ; [+2]
       50 LOADB                            R5 1
       51 JUMP                             ; [+1]
       52 LOADNIL                          R5
       53 DUPTABLE                         R6 K26 [{["threadId"], ["messageId"], ["requestId"], ["conversation"], ["firstMessage"], ["useAgenticMode"], ["isDebugMode"] = True, ["assistantMode"], ["newQuotaChecking"]}]
       54 GETTABLEKS                       R7 R0 K17 ["threadId"]
       56 SETTABLEKS                       R7 R6 K17 ["threadId"]
       58 GETTABLEKS                       R7 R0 K27 ["messageGuid"]
       60 SETTABLEKS                       R7 R6 K18 ["messageId"]
       62 SETTABLEKS                       R1 R6 K19 ["requestId"]
       64 SETTABLEKS                       R4 R6 K20 ["conversation"]
       66 GETTABLEKS                       R7 R0 K28 ["isFirstMessage"]
       68 SETTABLEKS                       R7 R6 K21 ["firstMessage"]
       70 GETTABLEKS                       R7 R0 K29 ["isAgenticMode"]
       72 SETTABLEKS                       R7 R6 K22 ["useAgenticMode"]
       74 GETTABLEKS                       R7 R0 K24 ["assistantMode"]
       76 SETTABLEKS                       R7 R6 K24 ["assistantMode"]
       78 SETTABLEKS                       R5 R6 K25 ["newQuotaChecking"]
       80 GETTABLEKS                       R7 R0 K30 ["acceptsPlaceContext"]
       82 JUMPIFNOT                        R7 ; [+24]
       83 GETIMPORT                        R7 K32 [pcall]
       85 GETUPVAL                         R8 4
       86 GETTABLEKS                       R8 R8 K33 ["getGameMetadata"]
       88 CALL                             R7 1 2
       89 JUMPIFNOT                        R7 ; [+17]
       90 JUMPIFNOT                        R8 ; [+16]
       91 GETTABLEKS                       R9 R8 K34 ["placeId"]
       93 JUMPIFEQKN                       R9 K35 [0] ; [+13]
       95 GETTABLEKS                       R9 R8 K36 ["universeId"]
       97 JUMPIFEQKN                       R9 K35 [0] ; [+9]
       99 GETTABLEKS                       R9 R8 K34 ["placeId"]
      101 SETTABLEKS                       R9 R6 K34 ["placeId"]
      103 GETTABLEKS                       R9 R8 K36 ["universeId"]
      105 SETTABLEKS                       R9 R6 K36 ["universeId"]
      107 GETUPVAL                         R7 1
      108 GETTABLEKS                       R7 R7 K37 ["FFlagAssistantUseNewOpenAPIClients"]
      110 JUMPIFNOT                        R7 ; [+120]
      111 GETTABLEKS                       R8 R0 K0 ["isSubagent"]
      113 JUMPIFEQKB                       R8 TRUE ; [+2]
      115 LOADB                            R7 0 +1
      116 LOADB                            R7 1
      117 JUMPIFNOT                        R7 ; [+4]
      118 GETUPVAL                         R8 1
      119 GETTABLEKS                       R8 R8 K38 ["FStringSubagentURLOverride"]
      121 JUMP                             ; [+3]
      122 GETUPVAL                         R8 1
      123 GETTABLEKS                       R8 R8 K39 ["FStringMCPAssistantURLOverride"]
      125 GETUPVAL                         R9 0
      126 MOVE                             R10 R8
      127 GETTABLEKS                       R11 R0 K40 ["conversationUrl"]
      129 CALL                             R9 2 1
      130 JUMPIFNOT                        R9 ; [+38]
      131 JUMPIFEQKS                       R9 K41 [""] ; [+37]
      133 NEWTABLE                         R10 1 0
      135 LOADK                            R11 K42 ["application/json"]
      136 SETTABLEKS                       R11 R10 K43 ["Content-Type"]
      138 JUMPIFEQKS                       R8 K41 [""] ; [+15]
      140 GETUPVAL                         R11 5
      141 GETTABLEKS                       R11 R11 K44 ["get"]
      143 CALL                             R11 0 1
      144 GETTABLEKS                       R11 R11 K45 ["getUserId"]
      146 CALL                             R11 0 1
      147 FASTCALL1                        TOSTRING R11 ; [+3]
      148 MOVE                             R13 R11
      149 GETIMPORT                        R12 K47 [tostring]
      151 CALL                             R12 1 1
      152 SETTABLEKS                       R12 R10 K48 ["robloxctx-authenticated-userid"]
      154 GETUPVAL                         R11 6
      155 GETTABLEKS                       R11 R11 K49 ["Json"]
      157 GETTABLEKS                       R11 R11 K50 ["encode"]
      159 MOVE                             R12 R6
      160 CALL                             R11 1 1
      161 GETUPVAL                         R12 7
      162 MOVE                             R14 R9
      163 MOVE                             R15 R11
      164 MOVE                             R16 R10
      165 NAMECALL                         R12 R12 K51 ["post"]
      167 CALL                             R12 4 -1
      168 RETURN                           R12 -1
      169 DUPTABLE                         R10 K52 [{["threadId"], ["requestId"], ["messageId"], ["conversation"], ["firstMessage"], ["useAgenticMode"], ["isDebugMode"] = True, ["assistantMode"], ["newQuotaChecking"]}]
      170 GETTABLEKS                       R11 R0 K17 ["threadId"]
      172 SETTABLEKS                       R11 R10 K17 ["threadId"]
      174 SETTABLEKS                       R1 R10 K19 ["requestId"]
      176 GETTABLEKS                       R11 R0 K27 ["messageGuid"]
      178 SETTABLEKS                       R11 R10 K18 ["messageId"]
      180 DUPTABLE                         R11 K54 [{"system", "llmConfig", "messages", "tools"}]
      181 GETTABLEKS                       R12 R0 K5 ["system"]
      183 SETTABLEKS                       R12 R11 K5 ["system"]
      185 DUPTABLE                         R12 K60 [{["model"], ["thinkingMode"], ["parallelToolCalls"] = True, ["maxTokens"], ["temperature"] = }]
      186 SETTABLEKS                       R2 R12 K10 ["model"]
      188 SETTABLEKS                       R3 R12 K55 ["thinkingMode"]
      190 GETUPVAL                         R13 1
      191 GETTABLEKS                       R13 R13 K16 ["FIntConvAIAssistantMaxTokens"]
      193 SETTABLEKS                       R13 R12 K57 ["maxTokens"]
      195 SETTABLEKS                       R12 R11 K53 ["llmConfig"]
      197 GETTABLEKS                       R12 R0 K7 ["messages"]
      199 SETTABLEKS                       R12 R11 K7 ["messages"]
      201 GETTABLEKS                       R12 R0 K8 ["tools"]
      203 SETTABLEKS                       R12 R11 K8 ["tools"]
      205 SETTABLEKS                       R11 R10 K20 ["conversation"]
      207 GETTABLEKS                       R11 R0 K28 ["isFirstMessage"]
      209 SETTABLEKS                       R11 R10 K21 ["firstMessage"]
      211 GETTABLEKS                       R11 R0 K29 ["isAgenticMode"]
      213 SETTABLEKS                       R11 R10 K22 ["useAgenticMode"]
      215 GETTABLEKS                       R11 R0 K24 ["assistantMode"]
      217 SETTABLEKS                       R11 R10 K24 ["assistantMode"]
      219 SETTABLEKS                       R5 R10 K25 ["newQuotaChecking"]
      221 GETUPVAL                         R11 8
      222 GETTABLEKS                       R11 R11 K61 ["new"]
      224 NEWCLOSURE                       R12 P0
      225 CAPTURE                          UPVAL U9
      226 CAPTURE                          VAL R10
      227 CAPTURE                          VAL R7
      228 CAPTURE                          UPVAL U10
      229 CALL                             R11 1 -1
      230 RETURN                           R11 -1
      231 GETTABLEKS                       R8 R0 K0 ["isSubagent"]
      233 JUMPIFEQKB                       R8 TRUE ; [+2]
      235 LOADB                            R7 0 +1
      236 LOADB                            R7 1
      237 JUMPIFNOT                        R7 ; [+4]
      238 GETUPVAL                         R8 1
      239 GETTABLEKS                       R8 R8 K38 ["FStringSubagentURLOverride"]
      241 JUMP                             ; [+3]
      242 GETUPVAL                         R8 1
      243 GETTABLEKS                       R8 R8 K39 ["FStringMCPAssistantURLOverride"]
      245 GETTABLEKS                       R10 R0 K40 ["conversationUrl"]
      247 JUMPIFNOT                        R10 ; [+4]
      248 JUMPIFEQKS                       R10 K41 [""] ; [+3]
      250 MOVE                             R9 R10
      251 JUMP                             ; [+4]
      252 JUMPIFNOT                        R7 ; [+2]
      253 GETUPVAL                         R9 11
      254 JUMP                             ; [+1]
      255 GETUPVAL                         R9 12
      256 GETUPVAL                         R10 0
      257 MOVE                             R11 R8
      258 MOVE                             R12 R9
      259 CALL                             R10 2 1
      260 NEWTABLE                         R11 1 0
      262 LOADK                            R12 K42 ["application/json"]
      263 SETTABLEKS                       R12 R11 K43 ["Content-Type"]
      265 JUMPIFEQKS                       R8 K41 [""] ; [+15]
      267 GETUPVAL                         R12 5
      268 GETTABLEKS                       R12 R12 K44 ["get"]
      270 CALL                             R12 0 1
      271 GETTABLEKS                       R12 R12 K45 ["getUserId"]
      273 CALL                             R12 0 1
      274 FASTCALL1                        TOSTRING R12 ; [+3]
      275 MOVE                             R14 R12
      276 GETIMPORT                        R13 K47 [tostring]
      278 CALL                             R13 1 1
      279 SETTABLEKS                       R13 R11 K48 ["robloxctx-authenticated-userid"]
      281 GETUPVAL                         R12 6
      282 GETTABLEKS                       R12 R12 K49 ["Json"]
      284 GETTABLEKS                       R12 R12 K50 ["encode"]
      286 MOVE                             R13 R6
      287 CALL                             R12 1 1
      288 GETUPVAL                         R13 7
      289 MOVE                             R15 R10
      290 MOVE                             R16 R12
      291 MOVE                             R17 R11
      292 NAMECALL                         R13 R13 K51 ["post"]
      294 CALL                             R13 4 -1
      295 RETURN                           R13 -1

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
        0 GETTABLEKS                       R1 R0 K0 ["receivedResponses"]
        2 LOADNIL                          R2
        3 LOADNIL                          R3
        4 FORGPREP                         R1
        5 GETTABLEKS                       R6 R0 K1 ["currentSequenceNumber"]
        7 JUMPIFNOTLT                      R6 R4 ; [+3]
        9 LOADB                            R6 1
       10 RETURN                           R6 1
       11 FORGLOOP                         R1 1 ; [-7]
       13 LOADB                            R1 0
       14 RETURN                           R1 1

PROTO_8:
        0 LOADNIL                          R1
        1 GETTABLEKS                       R2 R0 K0 ["receivedResponses"]
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 GETTABLEKS                       R7 R0 K1 ["currentSequenceNumber"]
        8 JUMPIFNOTLT                      R7 R5 ; [+6]
       10 JUMPIFEQKNIL                     R1 ; [+3]
       12 JUMPIFNOTLT                      R5 R1 ; [+2]
       14 MOVE                             R1 R5
       15 FORGLOOP                         R2 1 ; [-10]
       17 RETURN                           R1 1

PROTO_9:
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
       74 GETUPVAL                         R2 3
       75 GETTABLEKS                       R2 R2 K18 ["FFlagAssistantLLMNotificationGapRecovery"]
       77 JUMPIFNOT                        R2 ; [+28]
       78 GETTABLEKS                       R3 R0 K1 ["receivedResponses"]
       80 LOADNIL                          R4
       81 LOADNIL                          R5
       82 FORGPREP                         R3
       83 GETTABLEKS                       R8 R0 K2 ["currentSequenceNumber"]
       85 JUMPIFNOTLT                      R8 R6 ; [+3]
       87 LOADB                            R2 1
       88 JUMP                             ; [+3]
       89 FORGLOOP                         R3 1 ; [-7]
       91 LOADB                            R2 0
       92 JUMPIFNOT                        R2 ; [+10]
       93 GETTABLEKS                       R2 R0 K19 ["gapAwaiting"]
       95 GETTABLEKS                       R3 R0 K2 ["currentSequenceNumber"]
       97 JUMPIFEQ                         R2 R3 ; [+8]
       99 GETUPVAL                         R2 4
      100 MOVE                             R3 R0
      101 CALL                             R2 1 0
      102 RETURN                           R0 0
      103 LOADNIL                          R2
      104 SETTABLEKS                       R2 R0 K19 ["gapAwaiting"]
      106 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["requestId"]
        4 GETTABLE                         R0 R1 R2
        5 GETUPVAL                         R1 1
        6 JUMPIFNOTEQ                      R0 R1 ; [+7]
        8 GETUPVAL                         R0 1
        9 GETTABLEKS                       R0 R0 K1 ["currentSequenceNumber"]
       11 GETUPVAL                         R1 2
       12 JUMPIFEQ                         R0 R1 ; [+2]
       14 RETURN                           R0 0
       15 GETUPVAL                         R1 1
       16 LOADNIL                          R2
       17 GETTABLEKS                       R3 R1 K2 ["receivedResponses"]
       19 LOADNIL                          R4
       20 LOADNIL                          R5
       21 FORGPREP                         R3
       22 GETTABLEKS                       R8 R1 K1 ["currentSequenceNumber"]
       24 JUMPIFNOTLT                      R8 R6 ; [+6]
       26 JUMPIFEQKNIL                     R2 ; [+3]
       28 JUMPIFNOTLT                      R6 R2 ; [+2]
       30 MOVE                             R2 R6
       31 FORGLOOP                         R3 1 ; [-10]
       33 MOVE                             R0 R2
       34 JUMPIFNOTEQKNIL                  R0 ; [+6]
       36 GETUPVAL                         R1 1
       37 LOADNIL                          R2
       38 SETTABLEKS                       R2 R1 K3 ["gapAwaiting"]
       40 RETURN                           R0 0
       41 GETIMPORT                        R1 K5 [warn]
       43 LOADK                            R5 K6 ["[StudioLLMRequest] notification seq=%* never arrived after %*s; "]
       44 GETUPVAL                         R7 2
       45 GETUPVAL                         R8 3
       46 NAMECALL                         R5 R5 K7 ["format"]
       48 CALL                             R5 3 1
       49 MOVE                             R3 R5
       50 LOADK                            R4 K8 ["resuming at seq=%* (%* event(s) lost)"]
       51 MOVE                             R6 R0
       52 GETUPVAL                         R8 2
       53 SUB                              R7 R0 R8
       54 NAMECALL                         R4 R4 K7 ["format"]
       56 CALL                             R4 3 1
       57 CONCAT                           R2 R3 R4
       58 CALL                             R1 1 0
       59 GETUPVAL                         R1 4
       60 GETTABLEKS                       R1 R1 K9 ["logNotificationGapSkipped"]
       62 CALL                             R1 0 0
       63 GETUPVAL                         R1 1
       64 SETTABLEKS                       R0 R1 K1 ["currentSequenceNumber"]
       66 GETUPVAL                         R1 1
       67 LOADNIL                          R2
       68 SETTABLEKS                       R2 R1 K3 ["gapAwaiting"]
       70 GETUPVAL                         R1 5
       71 GETUPVAL                         R2 1
       72 CALL                             R1 1 0
       73 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["currentSequenceNumber"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["FIntAssistantLLMNotificationGapRecoverySeconds"]
        5 SETTABLEKS                       R1 R0 K2 ["gapAwaiting"]
        7 GETIMPORT                        R3 K5 [task.delay]
        9 MOVE                             R4 R2
       10 NEWCLOSURE                       R5 P0
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          VAL R0
       13 CAPTURE                          VAL R1
       14 CAPTURE                          VAL R2
       15 CAPTURE                          UPVAL U2
       16 CAPTURE                          UPVAL U3
       17 CALL                             R3 2 0
       18 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Json"]
        3 GETTABLEKS                       R0 R0 K1 ["decode"]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K2 ["detail"]
        8 CALL                             R0 1 1
        9 RETURN                           R0 1

PROTO_13:
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

PROTO_14:
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

PROTO_15:
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

PROTO_16:
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

PROTO_17:
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
       30 DUPTABLE                         R4 K16 [{["callback"], ["receivedResponses"], ["currentSequenceNumber"] = 0, ["startTime"], ["isProcessing"] = False, ["requestId"], ["gapAwaiting"] = }]
       31 SETTABLEKS                       R1 R4 K6 ["callback"]
       33 NEWTABLE                         R5 0 0
       35 SETTABLEKS                       R5 R4 K7 ["receivedResponses"]
       37 GETIMPORT                        R5 K19 [os.clock]
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
       60 NAMECALL                         R3 R3 K20 ["catch"]
       62 CALL                             R3 2 0
       63 RETURN                           R0 0

PROTO_18:
        0 NEWTABLE                         R1 0 0
        2 LOADNIL                          R2
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K0 ["makeStudioTelemetryEvents"]
        6 CALL                             R3 0 1
        7 DUPCLOSURE                       R4 K1 [PROTO_7]
        8 DUPCLOSURE                       R5 K2 [PROTO_8]
        9 LOADNIL                          R6
       10 NEWCLOSURE                       R7 P2
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          VAL R1
       14 CAPTURE                          UPVAL U3
       15 CAPTURE                          REF R6
       16 NEWCLOSURE                       R6 P3
       17 CAPTURE                          UPVAL U3
       18 CAPTURE                          VAL R1
       19 CAPTURE                          VAL R3
       20 CAPTURE                          VAL R7
       21 NEWCLOSURE                       R8 P4
       22 CAPTURE                          REF R2
       23 CAPTURE                          UPVAL U4
       24 CAPTURE                          VAL R1
       25 CAPTURE                          VAL R7
       26 CAPTURE                          UPVAL U5
       27 JUMPIFNOT                        R0 ; [+8]
       28 GETTABLEKS                       R9 R0 K3 ["Unloading"]
       30 NEWCLOSURE                       R11 P5
       31 CAPTURE                          REF R2
       32 CAPTURE                          VAL R1
       33 NAMECALL                         R9 R9 K4 ["Connect"]
       35 CALL                             R9 2 0
       36 NEWCLOSURE                       R9 P6
       37 CAPTURE                          UPVAL U6
       38 CAPTURE                          UPVAL U7
       39 CAPTURE                          REF R2
       40 CAPTURE                          UPVAL U4
       41 CAPTURE                          VAL R1
       42 CAPTURE                          VAL R7
       43 CAPTURE                          UPVAL U5
       44 CAPTURE                          UPVAL U8
       45 CAPTURE                          UPVAL U3
       46 CAPTURE                          UPVAL U9
       47 CAPTURE                          UPVAL U10
       48 CAPTURE                          UPVAL U11
       49 CAPTURE                          UPVAL U12
       50 CAPTURE                          UPVAL U13
       51 CLOSEUPVALS                      R2
       52 RETURN                           R9 1

PROTO_19:
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
       77 GETTABLEKS                       R11 R11 K21 ["Host"]
       79 GETTABLEKS                       R11 R11 K22 ["Resources"]
       81 GETTABLEKS                       R11 R11 K23 ["StudioEventLogger"]
       83 CALL                             R10 1 1
       84 GETIMPORT                        R11 K9 [require]
       86 GETTABLEKS                       R12 R0 K15 ["Src"]
       88 GETTABLEKS                       R12 R12 K16 ["Util"]
       90 GETTABLEKS                       R12 R12 K24 ["StudioGameMetadata"]
       92 CALL                             R11 1 1
       93 GETIMPORT                        R12 K9 [require]
       95 GETTABLEKS                       R13 R0 K15 ["Src"]
       97 GETTABLEKS                       R13 R13 K25 ["Types"]
       99 CALL                             R12 1 1
      100 GETIMPORT                        R13 K9 [require]
      102 GETTABLEKS                       R14 R0 K15 ["Src"]
      104 GETTABLEKS                       R14 R14 K16 ["Util"]
      106 GETTABLEKS                       R14 R14 K26 ["stringCoalesce"]
      108 CALL                             R13 1 1
      109 GETIMPORT                        R14 K9 [require]
      111 GETTABLEKS                       R15 R0 K15 ["Src"]
      113 GETTABLEKS                       R15 R15 K27 ["Flags"]
      115 CALL                             R14 1 1
      116 GETTABLEKS                       R15 R2 K28 ["FlagUtils"]
      118 GETTABLEKS                       R15 R15 K29 ["getIsCreditMeteringEnabled"]
      120 GETTABLEKS                       R16 R2 K28 ["FlagUtils"]
      122 GETTABLEKS                       R16 R16 K30 ["getIsCreditMeteringLocalBackend"]
      124 GETTABLEKS                       R16 R16 K31 ["get"]
      126 GETTABLEKS                       R17 R2 K32 ["Utils"]
      128 GETTABLEKS                       R17 R17 K33 ["ServerStreamIdStore"]
      130 GETTABLEKS                       R18 R2 K32 ["Utils"]
      132 GETTABLEKS                       R18 R18 K34 ["StreamEventUtils"]
      134 GETTABLEKS                       R19 R3 K35 ["Http"]
      136 GETTABLEKS                       R19 R19 K36 ["Networking"]
      138 GETTABLEKS                       R19 R19 K37 ["new"]
      140 DUPTABLE                         R20 K41 [{["isInternal"] = True, ["loggingLevel"]}]
      141 GETTABLEKS                       R22 R14 K42 ["FFlagDebugLogAssistantUI"]
      143 JUMPIFNOT                        R22 ; [+2]
      144 LOADN                            R21 4
      145 JUMP                             ; [+1]
      146 LOADN                            R21 0
      147 SETTABLEKS                       R21 R20 K40 ["loggingLevel"]
      149 CALL                             R19 1 1
      150 GETTABLEKS                       R20 R2 K43 ["Guest"]
      152 GETTABLEKS                       R20 R20 K44 ["Environment"]
      154 GETTABLEKS                       R21 R3 K35 ["Http"]
      156 GETTABLEKS                       R21 R21 K45 ["HttpResponse"]
      158 GETTABLEKS                       R22 R3 K46 ["Url"]
      160 GETTABLEKS                       R23 R22 K37 ["new"]
      162 LOADNIL                          R24
      163 CALL                             R23 1 1
      164 LOADK                            R24 K47 ["%*/studio-assistant/v1/conversation"]
      165 GETTABLEKS                       R26 R23 K48 ["APIS_URL"]
      167 NAMECALL                         R24 R24 K49 ["format"]
      169 CALL                             R24 2 1
      170 LOADK                            R25 K50 ["%*/studio-assistant/v1/subagent-conversation"]
      171 GETTABLEKS                       R27 R23 K48 ["APIS_URL"]
      173 NAMECALL                         R25 R25 K49 ["format"]
      175 CALL                             R25 2 1
      176 DUPCLOSURE                       R26 K51 [PROTO_0]
      177 CAPTURE                          VAL R25
      178 CAPTURE                          VAL R24
      179 DUPCLOSURE                       R27 K52 [PROTO_3]
      180 CAPTURE                          VAL R9
      181 CAPTURE                          VAL R7
      182 DUPCLOSURE                       R28 K53 [PROTO_5]
      183 CAPTURE                          VAL R13
      184 CAPTURE                          VAL R14
      185 CAPTURE                          VAL R15
      186 CAPTURE                          VAL R16
      187 CAPTURE                          VAL R11
      188 CAPTURE                          VAL R20
      189 CAPTURE                          VAL R5
      190 CAPTURE                          VAL R19
      191 CAPTURE                          VAL R8
      192 CAPTURE                          VAL R27
      193 CAPTURE                          VAL R9
      194 CAPTURE                          VAL R25
      195 CAPTURE                          VAL R24
      196 DUPTABLE                         R29 K60 [{["QUOTA_EXCEEDED"] = "quota_exceeded", ["TOO_MANY_REQUESTS"] = "too_many_request", ["REQUEST_FAILED"] = "request_failed"}]
      197 DUPCLOSURE                       R30 K61 [PROTO_6]
      198 CAPTURE                          VAL R14
      199 DUPCLOSURE                       R31 K62 [PROTO_18]
      200 CAPTURE                          VAL R10
      201 CAPTURE                          VAL R20
      202 CAPTURE                          VAL R18
      203 CAPTURE                          VAL R14
      204 CAPTURE                          VAL R5
      205 CAPTURE                          VAL R6
      206 CAPTURE                          VAL R1
      207 CAPTURE                          VAL R17
      208 CAPTURE                          VAL R28
      209 CAPTURE                          VAL R25
      210 CAPTURE                          VAL R24
      211 CAPTURE                          VAL R23
      212 CAPTURE                          VAL R13
      213 CAPTURE                          VAL R30
      214 DUPCLOSURE                       R32 K63 [PROTO_19]
      215 CAPTURE                          VAL R31
      216 DUPTABLE                         R33 K65 [{"createRequestHandler"}]
      217 SETTABLEKS                       R32 R33 K64 ["createRequestHandler"]
      219 RETURN                           R33 1
