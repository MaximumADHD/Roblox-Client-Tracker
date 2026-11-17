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
       82 JUMPIFNOT                        R7 ; [+25]
       83 GETUPVAL                         R8 4
       84 GETTABLEKS                       R8 R8 K31 ["getGameMetadata"]
       86 FASTPCALL                        pcall 1 ; [+2]
       87 GETIMPORT                        R7 K33 [pcall]
       89 CALL                             R7 1 2
       90 JUMPIFNOT                        R7 ; [+17]
       91 JUMPIFNOT                        R8 ; [+16]
       92 GETTABLEKS                       R9 R8 K34 ["placeId"]
       94 JUMPIFEQKN                       R9 K35 [0] ; [+13]
       96 GETTABLEKS                       R9 R8 K36 ["universeId"]
       98 JUMPIFEQKN                       R9 K35 [0] ; [+9]
      100 GETTABLEKS                       R9 R8 K34 ["placeId"]
      102 SETTABLEKS                       R9 R6 K34 ["placeId"]
      104 GETTABLEKS                       R9 R8 K36 ["universeId"]
      106 SETTABLEKS                       R9 R6 K36 ["universeId"]
      108 GETUPVAL                         R7 1
      109 GETTABLEKS                       R7 R7 K37 ["FFlagAssistantUseNewOpenAPIClients"]
      111 JUMPIFNOT                        R7 ; [+120]
      112 GETTABLEKS                       R8 R0 K0 ["isSubagent"]
      114 JUMPIFEQKB                       R8 TRUE ; [+2]
      116 LOADB                            R7 0 +1
      117 LOADB                            R7 1
      118 JUMPIFNOT                        R7 ; [+4]
      119 GETUPVAL                         R8 1
      120 GETTABLEKS                       R8 R8 K38 ["FStringSubagentURLOverride"]
      122 JUMP                             ; [+3]
      123 GETUPVAL                         R8 1
      124 GETTABLEKS                       R8 R8 K39 ["FStringMCPAssistantURLOverride"]
      126 GETUPVAL                         R9 0
      127 MOVE                             R10 R8
      128 GETTABLEKS                       R11 R0 K40 ["conversationUrl"]
      130 CALL                             R9 2 1
      131 JUMPIFNOT                        R9 ; [+38]
      132 JUMPIFEQKS                       R9 K41 [""] ; [+37]
      134 NEWTABLE                         R10 1 0
      136 LOADK                            R11 K42 ["application/json"]
      137 SETTABLEKS                       R11 R10 K43 ["Content-Type"]
      139 JUMPIFEQKS                       R8 K41 [""] ; [+15]
      141 GETUPVAL                         R11 5
      142 GETTABLEKS                       R11 R11 K44 ["get"]
      144 CALL                             R11 0 1
      145 GETTABLEKS                       R11 R11 K45 ["getUserId"]
      147 CALL                             R11 0 1
      148 FASTCALL1                        TOSTRING R11 ; [+3]
      149 MOVE                             R13 R11
      150 GETIMPORT                        R12 K47 [tostring]
      152 CALL                             R12 1 1
      153 SETTABLEKS                       R12 R10 K48 ["robloxctx-authenticated-userid"]
      155 GETUPVAL                         R11 6
      156 GETTABLEKS                       R11 R11 K49 ["Json"]
      158 GETTABLEKS                       R11 R11 K50 ["encode"]
      160 MOVE                             R12 R6
      161 CALL                             R11 1 1
      162 GETUPVAL                         R12 7
      163 MOVE                             R14 R9
      164 MOVE                             R15 R11
      165 MOVE                             R16 R10
      166 NAMECALL                         R12 R12 K51 ["post"]
      168 CALL                             R12 4 -1
      169 RETURN                           R12 -1
      170 DUPTABLE                         R10 K52 [{["threadId"], ["requestId"], ["messageId"], ["conversation"], ["firstMessage"], ["useAgenticMode"], ["isDebugMode"] = True, ["assistantMode"], ["newQuotaChecking"]}]
      171 GETTABLEKS                       R11 R0 K17 ["threadId"]
      173 SETTABLEKS                       R11 R10 K17 ["threadId"]
      175 SETTABLEKS                       R1 R10 K19 ["requestId"]
      177 GETTABLEKS                       R11 R0 K27 ["messageGuid"]
      179 SETTABLEKS                       R11 R10 K18 ["messageId"]
      181 DUPTABLE                         R11 K54 [{"system", "llmConfig", "messages", "tools"}]
      182 GETTABLEKS                       R12 R0 K5 ["system"]
      184 SETTABLEKS                       R12 R11 K5 ["system"]
      186 DUPTABLE                         R12 K60 [{["model"], ["thinkingMode"], ["parallelToolCalls"] = True, ["maxTokens"], ["temperature"] = }]
      187 SETTABLEKS                       R2 R12 K10 ["model"]
      189 SETTABLEKS                       R3 R12 K55 ["thinkingMode"]
      191 GETUPVAL                         R13 1
      192 GETTABLEKS                       R13 R13 K16 ["FIntConvAIAssistantMaxTokens"]
      194 SETTABLEKS                       R13 R12 K57 ["maxTokens"]
      196 SETTABLEKS                       R12 R11 K53 ["llmConfig"]
      198 GETTABLEKS                       R12 R0 K7 ["messages"]
      200 SETTABLEKS                       R12 R11 K7 ["messages"]
      202 GETTABLEKS                       R12 R0 K8 ["tools"]
      204 SETTABLEKS                       R12 R11 K8 ["tools"]
      206 SETTABLEKS                       R11 R10 K20 ["conversation"]
      208 GETTABLEKS                       R11 R0 K28 ["isFirstMessage"]
      210 SETTABLEKS                       R11 R10 K21 ["firstMessage"]
      212 GETTABLEKS                       R11 R0 K29 ["isAgenticMode"]
      214 SETTABLEKS                       R11 R10 K22 ["useAgenticMode"]
      216 GETTABLEKS                       R11 R0 K24 ["assistantMode"]
      218 SETTABLEKS                       R11 R10 K24 ["assistantMode"]
      220 SETTABLEKS                       R5 R10 K25 ["newQuotaChecking"]
      222 GETUPVAL                         R11 8
      223 GETTABLEKS                       R11 R11 K61 ["new"]
      225 NEWCLOSURE                       R12 P0
      226 CAPTURE                          UPVAL U9
      227 CAPTURE                          VAL R10
      228 CAPTURE                          VAL R7
      229 CAPTURE                          UPVAL U10
      230 CALL                             R11 1 -1
      231 RETURN                           R11 -1
      232 GETTABLEKS                       R8 R0 K0 ["isSubagent"]
      234 JUMPIFEQKB                       R8 TRUE ; [+2]
      236 LOADB                            R7 0 +1
      237 LOADB                            R7 1
      238 JUMPIFNOT                        R7 ; [+4]
      239 GETUPVAL                         R8 1
      240 GETTABLEKS                       R8 R8 K38 ["FStringSubagentURLOverride"]
      242 JUMP                             ; [+3]
      243 GETUPVAL                         R8 1
      244 GETTABLEKS                       R8 R8 K39 ["FStringMCPAssistantURLOverride"]
      246 GETTABLEKS                       R10 R0 K40 ["conversationUrl"]
      248 JUMPIFNOT                        R10 ; [+4]
      249 JUMPIFEQKS                       R10 K41 [""] ; [+3]
      251 MOVE                             R9 R10
      252 JUMP                             ; [+4]
      253 JUMPIFNOT                        R7 ; [+2]
      254 GETUPVAL                         R9 11
      255 JUMP                             ; [+1]
      256 GETUPVAL                         R9 12
      257 GETUPVAL                         R10 0
      258 MOVE                             R11 R8
      259 MOVE                             R12 R9
      260 CALL                             R10 2 1
      261 NEWTABLE                         R11 1 0
      263 LOADK                            R12 K42 ["application/json"]
      264 SETTABLEKS                       R12 R11 K43 ["Content-Type"]
      266 JUMPIFEQKS                       R8 K41 [""] ; [+15]
      268 GETUPVAL                         R12 5
      269 GETTABLEKS                       R12 R12 K44 ["get"]
      271 CALL                             R12 0 1
      272 GETTABLEKS                       R12 R12 K45 ["getUserId"]
      274 CALL                             R12 0 1
      275 FASTCALL1                        TOSTRING R12 ; [+3]
      276 MOVE                             R14 R12
      277 GETIMPORT                        R13 K47 [tostring]
      279 CALL                             R13 1 1
      280 SETTABLEKS                       R13 R11 K48 ["robloxctx-authenticated-userid"]
      282 GETUPVAL                         R12 6
      283 GETTABLEKS                       R12 R12 K49 ["Json"]
      285 GETTABLEKS                       R12 R12 K50 ["encode"]
      287 MOVE                             R13 R6
      288 CALL                             R12 1 1
      289 GETUPVAL                         R13 7
      290 MOVE                             R15 R10
      291 MOVE                             R16 R12
      292 MOVE                             R17 R11
      293 NAMECALL                         R13 R13 K51 ["post"]
      295 CALL                             R13 4 -1
      296 RETURN                           R13 -1

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
       12 JUMPIFEQKNIL                     R1 ; [+59]
       14 GETTABLEKS                       R3 R0 K3 ["callback"]
       16 GETTABLEKS                       R4 R1 K4 ["event"]
       18 FASTPCALL                        pcall 2 ; [+2]
       19 GETIMPORT                        R2 K6 [pcall]
       21 CALL                             R2 2 0
       22 GETTABLEKS                       R2 R0 K2 ["currentSequenceNumber"]
       24 JUMPIFNOTEQKN                    R2 K7 [0] ; [+17]
       26 GETIMPORT                        R3 K10 [os.clock]
       28 CALL                             R3 0 1
       29 GETTABLEKS                       R4 R0 K11 ["startTime"]
       31 SUB                              R2 R3 R4
       32 GETUPVAL                         R3 0
       33 GETTABLEKS                       R3 R3 K12 ["get"]
       35 CALL                             R3 0 1
       36 GETTABLEKS                       R3 R3 K13 ["EventLogger"]
       38 GETTABLEKS                       R4 R3 K14 ["logInitialResponseLatency"]
       40 MOVE                             R5 R2
       41 CALL                             R4 1 0
       42 GETTABLEKS                       R2 R1 K4 ["event"]
       44 JUMPIFNOT                        R2 ; [+16]
       45 GETUPVAL                         R2 1
       46 GETTABLEKS                       R2 R2 K15 ["isTerminalEventType"]
       48 GETTABLEKS                       R3 R1 K4 ["event"]
       50 CALL                             R2 1 1
       51 JUMPIFNOT                        R2 ; [+9]
       52 GETUPVAL                         R2 2
       53 GETTABLEKS                       R3 R0 K16 ["requestId"]
       55 LOADNIL                          R4
       56 SETTABLE                         R4 R2 R3
       57 LOADB                            R2 0
       58 SETTABLEKS                       R2 R0 K0 ["isProcessing"]
       60 RETURN                           R0 0
       61 GETTABLEKS                       R2 R0 K2 ["currentSequenceNumber"]
       63 ADDK                             R2 R2 K17 [1]
       64 SETTABLEKS                       R2 R0 K2 ["currentSequenceNumber"]
       66 GETTABLEKS                       R2 R0 K1 ["receivedResponses"]
       68 GETTABLEKS                       R3 R0 K2 ["currentSequenceNumber"]
       70 GETTABLE                         R1 R2 R3
       71 JUMPBACK                         ; [-60]
       72 LOADB                            R2 0
       73 SETTABLEKS                       R2 R0 K0 ["isProcessing"]
       75 GETUPVAL                         R2 3
       76 GETTABLEKS                       R2 R2 K18 ["FFlagAssistantLLMNotificationGapRecovery"]
       78 JUMPIFNOT                        R2 ; [+28]
       79 GETTABLEKS                       R3 R0 K1 ["receivedResponses"]
       81 LOADNIL                          R4
       82 LOADNIL                          R5
       83 FORGPREP                         R3
       84 GETTABLEKS                       R8 R0 K2 ["currentSequenceNumber"]
       86 JUMPIFNOTLT                      R8 R6 ; [+3]
       88 LOADB                            R2 1
       89 JUMP                             ; [+3]
       90 FORGLOOP                         R3 1 ; [-7]
       92 LOADB                            R2 0
       93 JUMPIFNOT                        R2 ; [+10]
       94 GETTABLEKS                       R2 R0 K19 ["gapAwaiting"]
       96 GETTABLEKS                       R3 R0 K2 ["currentSequenceNumber"]
       98 JUMPIFEQ                         R2 R3 ; [+8]
      100 GETUPVAL                         R2 4
      101 MOVE                             R3 R0
      102 CALL                             R2 1 0
      103 RETURN                           R0 0
      104 LOADNIL                          R2
      105 SETTABLEKS                       R2 R0 K19 ["gapAwaiting"]
      107 RETURN                           R0 0

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
       16 LOADNIL                          R0
       17 GETTABLEKS                       R2 R1 K2 ["receivedResponses"]
       19 LOADNIL                          R3
       20 LOADNIL                          R4
       21 FORGPREP                         R2
       22 GETTABLEKS                       R7 R1 K1 ["currentSequenceNumber"]
       24 JUMPIFNOTLT                      R7 R5 ; [+6]
       26 JUMPIFEQKNIL                     R0 ; [+3]
       28 JUMPIFNOTLT                      R5 R0 ; [+2]
       30 MOVE                             R0 R5
       31 FORGLOOP                         R2 1 ; [-10]
       33 JUMPIFNOTEQKNIL                  R0 ; [+6]
       35 GETUPVAL                         R1 1
       36 LOADNIL                          R2
       37 SETTABLEKS                       R2 R1 K3 ["gapAwaiting"]
       39 RETURN                           R0 0
       40 GETIMPORT                        R1 K5 [warn]
       42 LOADK                            R3 K6 ["[StudioLLMRequest] notification seq=%* never arrived after %*s; "]
       43 GETUPVAL                         R5 2
       44 GETUPVAL                         R6 3
       45 NAMECALL                         R3 R3 K7 ["format"]
       47 CALL                             R3 3 1
       48 LOADK                            R4 K8 ["resuming at seq=%* (%* event(s) lost)"]
       49 MOVE                             R6 R0
       50 GETUPVAL                         R8 2
       51 SUB                              R7 R0 R8
       52 NAMECALL                         R4 R4 K7 ["format"]
       54 CALL                             R4 3 1
       55 CONCAT                           R2 R3 R4
       56 CALL                             R1 1 0
       57 GETUPVAL                         R1 4
       58 GETTABLEKS                       R1 R1 K9 ["logNotificationGapSkipped"]
       60 CALL                             R1 0 0
       61 GETUPVAL                         R1 1
       62 SETTABLEKS                       R0 R1 K1 ["currentSequenceNumber"]
       64 GETUPVAL                         R1 1
       65 LOADNIL                          R2
       66 SETTABLEKS                       R2 R1 K3 ["gapAwaiting"]
       68 GETUPVAL                         R1 5
       69 GETUPVAL                         R2 1
       70 CALL                             R1 1 0
       71 RETURN                           R0 0

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
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 FASTPCALL                        pcall 1 ; [+2]
        4 GETIMPORT                        R1 K1 [pcall]
        6 CALL                             R1 1 2
        7 JUMPIF                           R1 ; [+7]
        8 GETIMPORT                        R3 K3 [warn]
       10 LOADK                            R4 K4 ["Failed to parse notification event detail:"]
       11 GETTABLEKS                       R5 R0 K5 ["detail"]
       13 CALL                             R3 2 0
       14 RETURN                           R0 0
       15 GETUPVAL                         R4 1
       16 GETTABLEKS                       R5 R2 K6 ["requestId"]
       18 GETTABLE                         R3 R4 R5
       19 JUMPIF                           R3 ; [+1]
       20 RETURN                           R0 0
       21 GETTABLEKS                       R4 R3 K7 ["receivedResponses"]
       23 GETTABLEKS                       R5 R2 K8 ["sequenceNumber"]
       25 SETTABLE                         R2 R4 R5
       26 GETTABLEKS                       R4 R3 K9 ["isProcessing"]
       28 JUMPIF                           R4 ; [+5]
       29 GETIMPORT                        R4 K12 [task.spawn]
       31 GETUPVAL                         R5 2
       32 MOVE                             R6 R3
       33 CALL                             R4 2 0
       34 RETURN                           R0 0

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
