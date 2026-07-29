PROTO_0:
        0 JUMPIFNOTEQKS                    R0 K0 ["max_tool_calls"] ; [+5]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K1 ["MaxTurnRequests"]
        5 RETURN                           R1 1
        6 JUMPIFEQKS                       R0 K2 ["token_limit"] ; [+3]
        8 JUMPIFNOTEQKS                    R0 K3 ["input_token_limit_error"] ; [+5]
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K4 ["MaxTokens"]
       13 RETURN                           R1 1
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R1 R1 K5 ["Refusal"]
       17 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+1]
        2 RETURN                           R0 0
        3 LOADB                            R0 1
        4 SETUPVAL                         R0 0
        5 GETUPVAL                         R0 1
        6 JUMPIFNOT                        R0 ; [+5]
        7 GETUPVAL                         R0 3
        8 GETTABLEKS                       R0 R0 K0 ["Cancelled"]
       10 SETUPVAL                         R0 2
       11 JUMP                             ; [+26]
       12 GETUPVAL                         R0 4
       13 JUMPIFNOT                        R0 ; [+20]
       14 GETUPVAL                         R1 4
       15 JUMPIFNOTEQKS                    R1 K1 ["max_tool_calls"] ; [+5]
       17 GETUPVAL                         R0 3
       18 GETTABLEKS                       R0 R0 K2 ["MaxTurnRequests"]
       20 JUMP                             ; [+11]
       21 JUMPIFEQKS                       R1 K3 ["token_limit"] ; [+3]
       23 JUMPIFNOTEQKS                    R1 K4 ["input_token_limit_error"] ; [+5]
       25 GETUPVAL                         R0 3
       26 GETTABLEKS                       R0 R0 K5 ["MaxTokens"]
       28 JUMP                             ; [+3]
       29 GETUPVAL                         R0 3
       30 GETTABLEKS                       R0 R0 K6 ["Refusal"]
       32 SETUPVAL                         R0 2
       33 JUMP                             ; [+4]
       34 GETUPVAL                         R0 3
       35 GETTABLEKS                       R0 R0 K7 ["EndTurn"]
       37 SETUPVAL                         R0 2
       38 GETUPVAL                         R0 5
       39 NAMECALL                         R0 R0 K8 ["Fire"]
       41 CALL                             R0 1 0
       42 RETURN                           R0 0

PROTO_2:
        0 FASTCALL1                        TOSTRING R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [tostring]
        4 CALL                             R1 1 1
        5 SETUPVAL                         R1 0
        6 RETURN                           R0 0

PROTO_3:
        0 JUMPIFNOT                        R0 ; [+4]
        1 GETIMPORT                        R1 K2 [task.defer]
        3 GETUPVAL                         R2 0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 JUMPIF                           R2 ; [+4]
        2 MOVE                             R2 R1
        3 LOADK                            R3 K0 ["no tool transport injected"]
        4 CALL                             R2 1 0
        5 RETURN                           R0 0
        6 GETIMPORT                        R2 K2 [pcall]
        8 GETUPVAL                         R3 0
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R4 R4 K3 ["name"]
       12 GETUPVAL                         R5 1
       13 GETTABLEKS                       R5 R5 K4 ["arguments"]
       15 GETUPVAL                         R6 1
       16 GETTABLEKS                       R6 R6 K5 ["toolCallOptions"]
       18 GETUPVAL                         R7 1
       19 GETTABLEKS                       R7 R7 K6 ["toolId"]
       21 CALL                             R2 5 2
       22 JUMPIFNOT                        R2 ; [+4]
       23 MOVE                             R4 R0
       24 MOVE                             R5 R3
       25 CALL                             R4 1 0
       26 RETURN                           R0 0
       27 MOVE                             R4 R1
       28 MOVE                             R5 R3
       29 CALL                             R4 1 0
       30 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CALL                             R1 1 -1
        7 RETURN                           R1 -1

PROTO_6:
        0 RETURN                           R0 0

PROTO_7:
        0 RETURN                           R0 0

PROTO_8:
        0 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+1]
        2 RETURN                           R0 0
        3 LOADB                            R0 1
        4 SETUPVAL                         R0 1
        5 GETUPVAL                         R0 2
        6 GETTABLEKS                       R0 R0 K0 ["cancelPending"]
        8 CALL                             R0 0 0
        9 GETUPVAL                         R0 3
       10 CALL                             R0 0 0
       11 GETUPVAL                         R0 0
       12 JUMPIFNOT                        R0 ; [+1]
       13 RETURN                           R0 0
       14 LOADB                            R0 1
       15 SETUPVAL                         R0 0
       16 GETUPVAL                         R0 1
       17 JUMPIFNOT                        R0 ; [+5]
       18 GETUPVAL                         R0 5
       19 GETTABLEKS                       R0 R0 K1 ["Cancelled"]
       21 SETUPVAL                         R0 4
       22 JUMP                             ; [+26]
       23 GETUPVAL                         R0 6
       24 JUMPIFNOT                        R0 ; [+20]
       25 GETUPVAL                         R1 6
       26 JUMPIFNOTEQKS                    R1 K2 ["max_tool_calls"] ; [+5]
       28 GETUPVAL                         R0 5
       29 GETTABLEKS                       R0 R0 K3 ["MaxTurnRequests"]
       31 JUMP                             ; [+11]
       32 JUMPIFEQKS                       R1 K4 ["token_limit"] ; [+3]
       34 JUMPIFNOTEQKS                    R1 K5 ["input_token_limit_error"] ; [+5]
       36 GETUPVAL                         R0 5
       37 GETTABLEKS                       R0 R0 K6 ["MaxTokens"]
       39 JUMP                             ; [+3]
       40 GETUPVAL                         R0 5
       41 GETTABLEKS                       R0 R0 K7 ["Refusal"]
       43 SETUPVAL                         R0 4
       44 JUMP                             ; [+4]
       45 GETUPVAL                         R0 5
       46 GETTABLEKS                       R0 R0 K8 ["EndTurn"]
       48 SETUPVAL                         R0 4
       49 GETUPVAL                         R0 7
       50 NAMECALL                         R0 R0 K9 ["Fire"]
       52 CALL                             R0 1 0
       53 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 CALL                             R1 0 1
        4 LOADB                            R2 0
        5 LOADB                            R3 0
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R4 R4 K1 ["EndTurn"]
        9 LOADNIL                          R5
       10 NEWCLOSURE                       R6 P0
       11 CAPTURE                          REF R2
       12 CAPTURE                          REF R3
       13 CAPTURE                          REF R4
       14 CAPTURE                          UPVAL U1
       15 CAPTURE                          REF R5
       16 CAPTURE                          VAL R1
       17 GETUPVAL                         R7 2
       18 GETTABLEKS                       R7 R7 K2 ["create"]
       20 DUPTABLE                         R8 K5 [{"sendUpdate", "getToolCallOptions"}]
       21 GETTABLEKS                       R9 R0 K3 ["sendUpdate"]
       23 SETTABLEKS                       R9 R8 K3 ["sendUpdate"]
       25 GETTABLEKS                       R9 R0 K4 ["getToolCallOptions"]
       27 SETTABLEKS                       R9 R8 K4 ["getToolCallOptions"]
       29 CALL                             R7 1 1
       30 GETTABLEKS                       R8 R0 K6 ["tools"]
       32 JUMPIF                           R8 ; [+2]
       33 NEWTABLE                         R8 0 0
       35 GETTABLEKS                       R10 R0 K8 ["systemMessage"]
       37 ORK                              R9 R10 K7 [""]
       38 GETTABLEKS                       R10 R0 K9 ["messageGuid"]
       40 JUMPIF                           R10 ; [+5]
       41 GETUPVAL                         R10 3
       42 LOADB                            R12 0
       43 NAMECALL                         R10 R10 K10 ["GenerateGUID"]
       45 CALL                             R10 2 1
       46 GETTABLEKS                       R11 R0 K11 ["callTool"]
       48 GETUPVAL                         R12 4
       49 GETTABLEKS                       R12 R12 K12 ["inPlace"]
       51 GETTABLEKS                       R13 R0 K13 ["messages"]
       53 CALL                             R12 1 0
       54 DUPTABLE                         R12 K32 [{"showError", "requestLLM", "setInputEnabled", "onToolCall", "observer", "setModelQuality", "onPacketReceived", "maxToolCalls", "timeoutMs", "messageGuid", "conversationSessionId", "threadId", "systemMessage", "initialMessages", "requestStartTime", "tools", "apiKeys", "selectedModel", "messageId", "logRequestStop", "assistantMode"}]
       55 NEWCLOSURE                       R13 P1
       56 CAPTURE                          REF R5
       57 SETTABLEKS                       R13 R12 K14 ["showError"]
       59 GETTABLEKS                       R13 R0 K15 ["requestLLM"]
       61 SETTABLEKS                       R13 R12 K15 ["requestLLM"]
       63 NEWCLOSURE                       R13 P2
       64 CAPTURE                          VAL R6
       65 SETTABLEKS                       R13 R12 K16 ["setInputEnabled"]
       67 NEWCLOSURE                       R13 P3
       68 CAPTURE                          UPVAL U5
       69 CAPTURE                          VAL R11
       70 SETTABLEKS                       R13 R12 K17 ["onToolCall"]
       72 SETTABLEKS                       R7 R12 K18 ["observer"]
       74 DUPCLOSURE                       R13 K33 [PROTO_6]
       75 SETTABLEKS                       R13 R12 K19 ["setModelQuality"]
       77 DUPCLOSURE                       R13 K34 [PROTO_7]
       78 SETTABLEKS                       R13 R12 K20 ["onPacketReceived"]
       80 GETTABLEKS                       R14 R0 K21 ["maxToolCalls"]
       82 ORK                              R13 R14 K35 [0]
       83 SETTABLEKS                       R13 R12 K21 ["maxToolCalls"]
       85 GETTABLEKS                       R14 R0 K22 ["timeoutMs"]
       87 ORK                              R13 R14 K36 [120000]
       88 SETTABLEKS                       R13 R12 K22 ["timeoutMs"]
       90 SETTABLEKS                       R10 R12 K9 ["messageGuid"]
       92 GETTABLEKS                       R13 R0 K37 ["sessionId"]
       94 SETTABLEKS                       R13 R12 K23 ["conversationSessionId"]
       96 GETTABLEKS                       R13 R0 K37 ["sessionId"]
       98 SETTABLEKS                       R13 R12 K24 ["threadId"]
      100 SETTABLEKS                       R9 R12 K8 ["systemMessage"]
      102 GETTABLEKS                       R13 R0 K13 ["messages"]
      104 SETTABLEKS                       R13 R12 K25 ["initialMessages"]
      106 GETIMPORT                        R13 K40 [os.clock]
      108 CALL                             R13 0 1
      109 SETTABLEKS                       R13 R12 K26 ["requestStartTime"]
      111 SETTABLEKS                       R8 R12 K6 ["tools"]
      113 GETTABLEKS                       R13 R0 K27 ["apiKeys"]
      115 SETTABLEKS                       R13 R12 K27 ["apiKeys"]
      117 GETTABLEKS                       R13 R0 K28 ["selectedModel"]
      119 SETTABLEKS                       R13 R12 K28 ["selectedModel"]
      121 GETUPVAL                         R13 3
      122 LOADB                            R15 0
      123 NAMECALL                         R13 R13 K10 ["GenerateGUID"]
      125 CALL                             R13 2 1
      126 SETTABLEKS                       R13 R12 K29 ["messageId"]
      128 DUPCLOSURE                       R13 K41 [PROTO_8]
      129 SETTABLEKS                       R13 R12 K30 ["logRequestStop"]
      131 GETTABLEKS                       R13 R0 K31 ["assistantMode"]
      133 SETTABLEKS                       R13 R12 K31 ["assistantMode"]
      135 GETUPVAL                         R13 6
      136 GETTABLEKS                       R13 R13 K42 ["LLMProcessEvent"]
      138 GETTABLEKS                       R13 R13 K43 ["createProcessEventHandler"]
      140 CALL                             R13 0 3
      141 MOVE                             R16 R14
      142 MOVE                             R17 R12
      143 CALL                             R16 1 1
      144 GETTABLEKS                       R17 R0 K44 ["registerCancel"]
      146 JUMPIFNOT                        R17 ; [+12]
      147 GETTABLEKS                       R17 R0 K44 ["registerCancel"]
      149 NEWCLOSURE                       R18 P7
      150 CAPTURE                          REF R2
      151 CAPTURE                          REF R3
      152 CAPTURE                          VAL R7
      153 CAPTURE                          VAL R15
      154 CAPTURE                          REF R4
      155 CAPTURE                          UPVAL U1
      156 CAPTURE                          REF R5
      157 CAPTURE                          VAL R1
      158 CALL                             R17 1 0
      159 DUPTABLE                         R17 K50 [{["threadId"], ["messageGuid"], ["system"], ["messages"], ["tools"], ["isFirstMessage"] = True, ["isAgenticMode"] = False, ["apiKeys"], ["selectedModel"], ["assistantMode"]}]
      160 GETTABLEKS                       R18 R0 K37 ["sessionId"]
      162 SETTABLEKS                       R18 R17 K24 ["threadId"]
      164 SETTABLEKS                       R10 R17 K9 ["messageGuid"]
      166 SETTABLEKS                       R9 R17 K45 ["system"]
      168 GETTABLEKS                       R18 R0 K13 ["messages"]
      170 SETTABLEKS                       R18 R17 K13 ["messages"]
      172 SETTABLEKS                       R8 R17 K6 ["tools"]
      174 GETTABLEKS                       R18 R0 K27 ["apiKeys"]
      176 SETTABLEKS                       R18 R17 K27 ["apiKeys"]
      178 GETTABLEKS                       R18 R0 K28 ["selectedModel"]
      180 SETTABLEKS                       R18 R17 K28 ["selectedModel"]
      182 GETTABLEKS                       R18 R0 K31 ["assistantMode"]
      184 SETTABLEKS                       R18 R17 K31 ["assistantMode"]
      186 GETTABLEKS                       R18 R0 K15 ["requestLLM"]
      188 MOVE                             R19 R17
      189 GETTABLEKS                       R20 R16 K51 ["processEvent"]
      191 CALL                             R18 2 0
      192 JUMPIF                           R2 ; [+3]
      193 NAMECALL                         R18 R1 K52 ["Wait"]
      195 CALL                             R18 1 0
      196 MOVE                             R18 R15
      197 CALL                             R18 0 0
      198 CLOSEUPVALS                      R2
      199 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantHarness"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["HttpService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R0 K10 ["Engine"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K9 [require]
       20 GETIMPORT                        R4 K1 [script]
       22 GETTABLEKS                       R4 R4 K11 ["Parent"]
       24 GETTABLEKS                       R4 R4 K12 ["HarnessObserver"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R0 K11 ["Parent"]
       31 GETTABLEKS                       R5 R5 K13 ["Promise"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETTABLEKS                       R6 R0 K11 ["Parent"]
       38 GETTABLEKS                       R6 R6 K14 ["Signal"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K9 [require]
       43 GETTABLEKS                       R7 R0 K11 ["Parent"]
       45 GETTABLEKS                       R7 R7 K15 ["AgentClientProtocol"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K9 [require]
       50 GETIMPORT                        R8 K1 [script]
       52 GETTABLEKS                       R8 R8 K11 ["Parent"]
       54 GETTABLEKS                       R8 R8 K16 ["sanitizeMessages"]
       56 CALL                             R7 1 1
       57 GETTABLEKS                       R8 R6 K17 ["StopReason"]
       59 DUPCLOSURE                       R9 K18 [PROTO_0]
       60 CAPTURE                          VAL R8
       61 DUPCLOSURE                       R10 K19 [PROTO_10]
       62 CAPTURE                          VAL R5
       63 CAPTURE                          VAL R8
       64 CAPTURE                          VAL R3
       65 CAPTURE                          VAL R1
       66 CAPTURE                          VAL R7
       67 CAPTURE                          VAL R4
       68 CAPTURE                          VAL R2
       69 DUPTABLE                         R11 K22 [{"run", "mapErrorToStopReason"}]
       70 SETTABLEKS                       R10 R11 K20 ["run"]
       72 SETTABLEKS                       R9 R11 K21 ["mapErrorToStopReason"]
       74 RETURN                           R11 1
