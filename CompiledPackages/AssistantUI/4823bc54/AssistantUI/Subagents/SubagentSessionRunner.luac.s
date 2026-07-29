PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["type"]
        2 JUMPIFNOTEQKS                    R1 K1 ["text"] ; [+14]
        4 GETUPVAL                         R1 0
        5 LOADK                            R2 K2 [""]
        6 SETTABLEKS                       R2 R1 K3 ["finalText"]
        8 GETUPVAL                         R1 1
        9 LOADB                            R3 0
       10 NAMECALL                         R1 R1 K4 ["GenerateGUID"]
       12 CALL                             R1 2 1
       13 GETUPVAL                         R2 2
       14 JUMPIFNOT                        R2 ; [+1]
       15 SETUPVAL                         R1 3
       16 RETURN                           R1 1
       17 GETTABLEKS                       R1 R0 K0 ["type"]
       19 JUMPIFNOTEQKS                    R1 K5 ["tool_use"] ; [+7]
       21 GETUPVAL                         R1 1
       22 LOADB                            R3 0
       23 NAMECALL                         R1 R1 K4 ["GenerateGUID"]
       25 CALL                             R1 2 -1
       26 RETURN                           R1 -1
       27 LOADNIL                          R1
       28 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R3 R1 K0 ["type"]
        2 JUMPIFNOTEQKS                    R3 K1 ["text_delta"] ; [+23]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R4 R1 K2 ["text"]
        7 SETTABLEKS                       R4 R3 K3 ["finalText"]
        9 GETUPVAL                         R3 1
       10 JUMPIFNOT                        R3 ; [+15]
       11 GETUPVAL                         R3 2
       12 JUMPIFNOT                        R3 ; [+13]
       13 GETUPVAL                         R3 3
       14 GETTABLEKS                       R3 R3 K4 ["fireTextDelta"]
       16 GETUPVAL                         R4 4
       17 DUPTABLE                         R5 K6 [{"textContentId", "text"}]
       18 GETUPVAL                         R6 2
       19 SETTABLEKS                       R6 R5 K5 ["textContentId"]
       21 GETTABLEKS                       R6 R1 K2 ["text"]
       23 SETTABLEKS                       R6 R5 K2 ["text"]
       25 CALL                             R3 2 0
       26 RETURN                           R0 0

PROTO_3:
        0 LOADNIL                          R1
        1 SETUPVAL                         R1 0
        2 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 JUMPIFNOT                        R3 ; [+18]
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K0 ["fireToolStart"]
        5 GETUPVAL                         R4 2
        6 DUPTABLE                         R5 K4 [{"toolUseId", "toolName", "input"}]
        7 GETTABLEKS                       R6 R1 K5 ["id"]
        9 SETTABLEKS                       R6 R5 K1 ["toolUseId"]
       11 GETTABLEKS                       R6 R1 K6 ["name"]
       13 SETTABLEKS                       R6 R5 K2 ["toolName"]
       15 GETTABLEKS                       R6 R1 K3 ["input"]
       17 SETTABLEKS                       R6 R5 K3 ["input"]
       19 CALL                             R3 2 0
       20 GETUPVAL                         R3 3
       21 GETTABLEKS                       R3 R3 K7 ["FFlagAssistantToolExistenceRefactor"]
       23 JUMPIFNOT                        R3 ; [+47]
       24 GETUPVAL                         R3 4
       25 GETTABLEKS                       R3 R3 K8 ["get"]
       27 CALL                             R3 0 1
       28 GETTABLEKS                       R3 R3 K9 ["EventLogger"]
       30 GETTABLEKS                       R3 R3 K10 ["logToolStarted"]
       32 DUPTABLE                         R4 K17 [{"messageGuid", "sessionId", "toolId", "toolName", "input", "currentSubagent", "parentMessageGuid", "parentToolId"}]
       33 GETUPVAL                         R5 5
       34 GETTABLEKS                       R5 R5 K11 ["messageGuid"]
       36 SETTABLEKS                       R5 R4 K11 ["messageGuid"]
       38 GETUPVAL                         R5 5
       39 GETTABLEKS                       R5 R5 K12 ["sessionId"]
       41 SETTABLEKS                       R5 R4 K12 ["sessionId"]
       43 GETTABLEKS                       R5 R1 K5 ["id"]
       45 SETTABLEKS                       R5 R4 K13 ["toolId"]
       47 GETTABLEKS                       R5 R1 K6 ["name"]
       49 SETTABLEKS                       R5 R4 K2 ["toolName"]
       51 GETTABLEKS                       R5 R1 K3 ["input"]
       53 SETTABLEKS                       R5 R4 K3 ["input"]
       55 GETUPVAL                         R5 5
       56 GETTABLEKS                       R5 R5 K18 ["subagentName"]
       58 SETTABLEKS                       R5 R4 K14 ["currentSubagent"]
       60 GETUPVAL                         R5 5
       61 GETTABLEKS                       R5 R5 K15 ["parentMessageGuid"]
       63 SETTABLEKS                       R5 R4 K15 ["parentMessageGuid"]
       65 GETUPVAL                         R5 5
       66 GETTABLEKS                       R5 R5 K16 ["parentToolId"]
       68 SETTABLEKS                       R5 R4 K16 ["parentToolId"]
       70 CALL                             R3 1 0
       71 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R3 0
        1 JUMPIFNOT                        R3 ; [+16]
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K0 ["fireToolComplete"]
        5 GETUPVAL                         R4 2
        6 DUPTABLE                         R5 K4 [{"toolUseId", "toolName", "toolResult"}]
        7 GETTABLEKS                       R6 R1 K5 ["id"]
        9 SETTABLEKS                       R6 R5 K1 ["toolUseId"]
       11 GETTABLEKS                       R6 R1 K6 ["name"]
       13 SETTABLEKS                       R6 R5 K2 ["toolName"]
       15 SETTABLEKS                       R1 R5 K3 ["toolResult"]
       17 CALL                             R3 2 0
       18 GETUPVAL                         R3 3
       19 GETTABLEKS                       R3 R3 K7 ["get"]
       21 CALL                             R3 0 1
       22 GETTABLEKS                       R3 R3 K8 ["EventLogger"]
       24 GETTABLEKS                       R3 R3 K9 ["logToolEnded"]
       26 DUPTABLE                         R4 K20 [{"messageGuid", "toolId", "toolName", "startTime", "startTimeAfterConfirmation", "endTime", "isError", "toolResultContent", "currentSubagent", "parentMessageGuid", "parentToolId"}]
       27 GETUPVAL                         R5 4
       28 GETTABLEKS                       R5 R5 K10 ["messageGuid"]
       30 SETTABLEKS                       R5 R4 K10 ["messageGuid"]
       32 GETTABLEKS                       R5 R1 K5 ["id"]
       34 SETTABLEKS                       R5 R4 K11 ["toolId"]
       36 GETTABLEKS                       R5 R1 K6 ["name"]
       38 SETTABLEKS                       R5 R4 K2 ["toolName"]
       40 GETTABLEKS                       R5 R1 K12 ["startTime"]
       42 SETTABLEKS                       R5 R4 K12 ["startTime"]
       44 GETTABLEKS                       R5 R1 K13 ["startTimeAfterConfirmation"]
       46 SETTABLEKS                       R5 R4 K13 ["startTimeAfterConfirmation"]
       48 GETUPVAL                         R5 5
       49 GETTABLEKS                       R5 R5 K21 ["getTimestampMilliseconds"]
       51 CALL                             R5 0 1
       52 SETTABLEKS                       R5 R4 K14 ["endTime"]
       54 GETTABLEKS                       R5 R1 K15 ["isError"]
       56 SETTABLEKS                       R5 R4 K15 ["isError"]
       58 GETTABLEKS                       R5 R1 K22 ["content"]
       60 SETTABLEKS                       R5 R4 K16 ["toolResultContent"]
       62 GETUPVAL                         R5 4
       63 GETTABLEKS                       R5 R5 K23 ["subagentName"]
       65 SETTABLEKS                       R5 R4 K17 ["currentSubagent"]
       67 GETUPVAL                         R5 4
       68 GETTABLEKS                       R5 R5 K18 ["parentMessageGuid"]
       70 SETTABLEKS                       R5 R4 K18 ["parentMessageGuid"]
       72 GETUPVAL                         R5 4
       73 GETTABLEKS                       R5 R5 K19 ["parentToolId"]
       75 SETTABLEKS                       R5 R4 K19 ["parentToolId"]
       77 CALL                             R3 1 0
       78 RETURN                           R0 0

PROTO_6:
        0 LOADB                            R2 1
        1 RETURN                           R2 1

PROTO_7:
        0 LOADNIL                          R1
        1 RETURN                           R1 1

PROTO_8:
        0 JUMPIFNOTEQKNIL                  R1 ; [+2]
        2 LOADB                            R3 0 +1
        3 LOADB                            R3 1
        4 LOADNIL                          R4
        5 DUPTABLE                         R5 K8 [{"onNewMessage", "onContentStart", "onContentDelta", "onContentFinished", "onPreExecuteToolUse", "onToolResult", "checkToolConfirmationRequestAsync", "getToolCallOptions"}]
        6 DUPCLOSURE                       R6 K9 [PROTO_0]
        7 SETTABLEKS                       R6 R5 K0 ["onNewMessage"]
        9 NEWCLOSURE                       R6 P1
       10 CAPTURE                          VAL R0
       11 CAPTURE                          UPVAL U0
       12 CAPTURE                          VAL R3
       13 CAPTURE                          REF R4
       14 SETTABLEKS                       R6 R5 K1 ["onContentStart"]
       16 NEWCLOSURE                       R6 P2
       17 CAPTURE                          VAL R0
       18 CAPTURE                          VAL R3
       19 CAPTURE                          REF R4
       20 CAPTURE                          UPVAL U1
       21 CAPTURE                          VAL R1
       22 SETTABLEKS                       R6 R5 K2 ["onContentDelta"]
       24 NEWCLOSURE                       R6 P3
       25 CAPTURE                          REF R4
       26 SETTABLEKS                       R6 R5 K3 ["onContentFinished"]
       28 NEWCLOSURE                       R6 P4
       29 CAPTURE                          VAL R3
       30 CAPTURE                          UPVAL U1
       31 CAPTURE                          VAL R1
       32 CAPTURE                          UPVAL U2
       33 CAPTURE                          UPVAL U3
       34 CAPTURE                          VAL R2
       35 SETTABLEKS                       R6 R5 K4 ["onPreExecuteToolUse"]
       37 NEWCLOSURE                       R6 P5
       38 CAPTURE                          VAL R3
       39 CAPTURE                          UPVAL U1
       40 CAPTURE                          VAL R1
       41 CAPTURE                          UPVAL U3
       42 CAPTURE                          VAL R2
       43 CAPTURE                          UPVAL U4
       44 SETTABLEKS                       R6 R5 K5 ["onToolResult"]
       46 DUPCLOSURE                       R6 K10 [PROTO_6]
       47 SETTABLEKS                       R6 R5 K6 ["checkToolConfirmationRequestAsync"]
       49 DUPCLOSURE                       R6 K11 [PROTO_7]
       50 SETTABLEKS                       R6 R5 K7 ["getToolCallOptions"]
       52 CLOSEUPVALS                      R4
       53 RETURN                           R5 1

PROTO_9:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [type]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["table"] ; [+2]
        7 RETURN                           R0 0
        8 GETIMPORT                        R3 K5 [string.format]
       10 LOADK                            R4 K6 ["[Tool budget: %d of %d tool calls used."]
       11 MOVE                             R5 R1
       12 MOVE                             R6 R2
       13 CALL                             R3 3 1
       14 JUMPIFNOTLE                      R2 R1 ; [+5]
       16 MOVE                             R4 R3
       17 LOADK                            R5 K7 [" You have reached your limit. STOP calling tools now and write your final summary immediately.]"]
       18 CONCAT                           R3 R4 R5
       19 JUMP                             ; [+15]
       20 SUB                              R4 R2 R1
       21 LOADN                            R5 5
       22 JUMPIFNOTLE                      R4 R5 ; [+9]
       24 MOVE                             R4 R3
       25 GETIMPORT                        R5 K5 [string.format]
       27 LOADK                            R6 K8 [" Only %d left -- begin wrapping up now and prepare your final summary.]"]
       28 SUB                              R7 R2 R1
       29 CALL                             R5 2 1
       30 CONCAT                           R3 R4 R5
       31 JUMP                             ; [+3]
       32 MOVE                             R4 R3
       33 LOADK                            R5 K9 ["]"]
       34 CONCAT                           R3 R4 R5
       35 GETTABLEKS                       R5 R0 K10 ["content"]
       37 FASTCALL1                        TYPE R5 ; [+2]
       38 GETIMPORT                        R4 K1 [type]
       40 CALL                             R4 1 1
       41 JUMPIFEQKS                       R4 K2 ["table"] ; [+5]
       43 NEWTABLE                         R4 0 0
       45 SETTABLEKS                       R4 R0 K10 ["content"]
       47 GETTABLEKS                       R5 R0 K10 ["content"]
       49 DUPTABLE                         R6 K12 [{[1] = "text", ["text"]}]
       50 SETTABLEKS                       R3 R6 K11 ["text"]
       52 FASTCALL2                        TABLE_INSERT R5 R6 ; [+3]
       54 GETIMPORT                        R4 K14 [table.insert]
       56 CALL                             R4 2 0
       57 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["name"]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["arguments"]
        7 CALL                             R0 2 -1
        8 RETURN                           R0 -1

PROTO_11:
        0 GETIMPORT                        R2 K1 [pcall]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R2 1 2
        6 JUMPIFNOT                        R2 ; [+25]
        7 GETUPVAL                         R4 2
        8 JUMPIFNOT                        R4 ; [+19]
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R4 R4 K2 ["budget"]
       12 JUMPIFNOT                        R4 ; [+15]
       13 GETUPVAL                         R4 2
       14 GETTABLEKS                       R5 R4 K3 ["used"]
       16 ADDK                             R5 R5 K4 [1]
       17 SETTABLEKS                       R5 R4 K3 ["used"]
       19 GETUPVAL                         R4 3
       20 MOVE                             R5 R3
       21 GETUPVAL                         R6 2
       22 GETTABLEKS                       R6 R6 K3 ["used"]
       24 GETUPVAL                         R7 2
       25 GETTABLEKS                       R7 R7 K2 ["budget"]
       27 CALL                             R4 3 0
       28 MOVE                             R4 R0
       29 MOVE                             R5 R3
       30 CALL                             R4 1 0
       31 RETURN                           R0 0
       32 MOVE                             R4 R1
       33 MOVE                             R5 R3
       34 CALL                             R4 1 0
       35 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CALL                             R1 1 -1
        9 RETURN                           R1 -1

PROTO_13:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          UPVAL U1
        5 RETURN                           R2 1

PROTO_14:
        0 FASTCALL1                        TOSTRING R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [tostring]
        4 CALL                             R1 1 1
        5 SETUPVAL                         R1 0
        6 GETUPVAL                         R1 1
        7 JUMPIF                           R1 ; [+6]
        8 LOADB                            R1 1
        9 SETUPVAL                         R1 1
       10 GETUPVAL                         R1 2
       11 NAMECALL                         R1 R1 K2 ["Fire"]
       13 CALL                             R1 1 0
       14 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Fire"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_16:
        0 JUMPIFNOT                        R0 ; [+9]
        1 GETUPVAL                         R1 0
        2 JUMPIF                           R1 ; [+7]
        3 LOADB                            R1 1
        4 SETUPVAL                         R1 0
        5 GETIMPORT                        R1 K2 [task.defer]
        7 NEWCLOSURE                       R2 P0
        8 CAPTURE                          UPVAL U1
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_17:
        0 RETURN                           R0 0

PROTO_18:
        0 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 GETUPVAL                         R0 1
        3 JUMPIF                           R0 ; [+8]
        4 LOADB                            R0 1
        5 SETUPVAL                         R0 1
        6 LOADK                            R0 K0 ["cancelled"]
        7 SETUPVAL                         R0 2
        8 GETUPVAL                         R0 3
        9 NAMECALL                         R0 R0 K1 ["Fire"]
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_20:
        0 GETTABLEKS                       R2 R0 K0 ["definition"]
        2 DUPTABLE                         R3 K4 [{["used"] = 0, ["budget"]}]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R4 R4 K5 ["getToolBudget"]
        6 GETTABLEKS                       R5 R2 K6 ["maxToolCalls"]
        8 CALL                             R4 1 1
        9 SETTABLEKS                       R4 R3 K3 ["budget"]
       11 DUPTABLE                         R4 K9 [{["finalText"] = ""}]
       12 GETUPVAL                         R5 1
       13 GETTABLEKS                       R5 R5 K10 ["new"]
       15 CALL                             R5 0 1
       16 LOADB                            R6 0
       17 LOADNIL                          R7
       18 GETUPVAL                         R8 2
       19 LOADB                            R10 0
       20 NAMECALL                         R8 R8 K11 ["GenerateGUID"]
       22 CALL                             R8 2 1
       23 GETUPVAL                         R9 2
       24 LOADB                            R11 0
       25 NAMECALL                         R9 R9 K11 ["GenerateGUID"]
       27 CALL                             R9 2 1
       28 GETUPVAL                         R10 2
       29 LOADB                            R12 0
       30 NAMECALL                         R10 R10 K11 ["GenerateGUID"]
       32 CALL                             R10 2 1
       33 GETUPVAL                         R11 2
       34 LOADB                            R13 0
       35 NAMECALL                         R11 R11 K11 ["GenerateGUID"]
       37 CALL                             R11 2 1
       38 GETUPVAL                         R12 3
       39 MOVE                             R13 R4
       40 GETTABLEKS                       R14 R0 K12 ["contentId"]
       42 DUPTABLE                         R15 K18 [{"subagentName", "messageGuid", "sessionId", "parentMessageGuid", "parentToolId"}]
       43 GETTABLEKS                       R16 R2 K19 ["name"]
       45 SETTABLEKS                       R16 R15 K13 ["subagentName"]
       47 SETTABLEKS                       R8 R15 K14 ["messageGuid"]
       49 SETTABLEKS                       R9 R15 K15 ["sessionId"]
       51 GETTABLEKS                       R16 R0 K16 ["parentMessageGuid"]
       53 SETTABLEKS                       R16 R15 K16 ["parentMessageGuid"]
       55 GETTABLEKS                       R16 R0 K17 ["parentToolId"]
       57 SETTABLEKS                       R16 R15 K17 ["parentToolId"]
       59 CALL                             R12 3 1
       60 NEWTABLE                         R13 0 1
       62 DUPTABLE                         R14 K23 [{["role"] = "user", ["content"]}]
       63 NEWTABLE                         R15 0 1
       65 DUPTABLE                         R16 K26 [{["type"] = "text", ["text"]}]
       66 GETTABLEKS                       R17 R0 K27 ["prompt"]
       68 SETTABLEKS                       R17 R16 K25 ["text"]
       70 SETLIST                          R15 R16 1 [1]
       72 SETTABLEKS                       R15 R14 K22 ["content"]
       74 SETLIST                          R13 R14 1 [1]
       76 DUPTABLE                         R14 K51 [{["showError"], ["requestLLM"], ["setInputEnabled"], ["onToolCall"], ["observer"], ["setModelQuality"], ["onPacketReceived"], ["maxToolCalls"], ["timeoutMs"], ["messageGuid"], ["conversationSessionId"], ["threadId"], ["systemMessage"], ["initialMessages"], ["requestStartTime"], ["tools"], ["apiKeys"] = , ["selectedModel"], ["conversationUrl"], ["isSubagent"] = True, ["currentSubagent"], ["parentMessageGuid"], ["parentToolId"], ["messageId"], ["logRequestStop"]}]
       77 NEWCLOSURE                       R15 P0
       78 CAPTURE                          REF R7
       79 CAPTURE                          REF R6
       80 CAPTURE                          VAL R5
       81 SETTABLEKS                       R15 R14 K28 ["showError"]
       83 GETTABLEKS                       R15 R0 K29 ["requestLLM"]
       85 SETTABLEKS                       R15 R14 K29 ["requestLLM"]
       87 NEWCLOSURE                       R15 P1
       88 CAPTURE                          REF R6
       89 CAPTURE                          VAL R5
       90 SETTABLEKS                       R15 R14 K30 ["setInputEnabled"]
       92 GETTABLEKS                       R16 R0 K52 ["callTool"]
       94 NEWCLOSURE                       R15 P2
       95 CAPTURE                          UPVAL U4
       96 CAPTURE                          VAL R16
       97 CAPTURE                          VAL R3
       98 CAPTURE                          UPVAL U5
       99 SETTABLEKS                       R15 R14 K31 ["onToolCall"]
      101 SETTABLEKS                       R12 R14 K32 ["observer"]
      103 DUPCLOSURE                       R15 K53 [PROTO_17]
      104 SETTABLEKS                       R15 R14 K33 ["setModelQuality"]
      106 GETTABLEKS                       R15 R0 K34 ["onPacketReceived"]
      108 SETTABLEKS                       R15 R14 K34 ["onPacketReceived"]
      110 GETTABLEKS                       R15 R2 K6 ["maxToolCalls"]
      112 SETTABLEKS                       R15 R14 K6 ["maxToolCalls"]
      114 GETUPVAL                         R15 6
      115 GETTABLEKS                       R15 R15 K54 ["FIntAssistantProcessEventTimeoutMS"]
      117 SETTABLEKS                       R15 R14 K35 ["timeoutMs"]
      119 SETTABLEKS                       R8 R14 K14 ["messageGuid"]
      121 SETTABLEKS                       R9 R14 K36 ["conversationSessionId"]
      123 SETTABLEKS                       R10 R14 K37 ["threadId"]
      125 GETTABLEKS                       R15 R2 K38 ["systemMessage"]
      127 SETTABLEKS                       R15 R14 K38 ["systemMessage"]
      129 SETTABLEKS                       R13 R14 K39 ["initialMessages"]
      131 GETIMPORT                        R15 K57 [os.clock]
      133 CALL                             R15 0 1
      134 SETTABLEKS                       R15 R14 K40 ["requestStartTime"]
      136 GETTABLEKS                       R15 R0 K58 ["formattedTools"]
      138 SETTABLEKS                       R15 R14 K41 ["tools"]
      140 GETTABLEKS                       R15 R2 K59 ["model"]
      142 SETTABLEKS                       R15 R14 K44 ["selectedModel"]
      144 GETTABLEKS                       R15 R2 K45 ["conversationUrl"]
      146 SETTABLEKS                       R15 R14 K45 ["conversationUrl"]
      148 GETTABLEKS                       R15 R2 K19 ["name"]
      150 SETTABLEKS                       R15 R14 K48 ["currentSubagent"]
      152 GETTABLEKS                       R15 R0 K16 ["parentMessageGuid"]
      154 SETTABLEKS                       R15 R14 K16 ["parentMessageGuid"]
      156 GETTABLEKS                       R15 R0 K17 ["parentToolId"]
      158 SETTABLEKS                       R15 R14 K17 ["parentToolId"]
      160 SETTABLEKS                       R11 R14 K49 ["messageId"]
      162 DUPCLOSURE                       R15 K60 [PROTO_18]
      163 SETTABLEKS                       R15 R14 K50 ["logRequestStop"]
      165 GETUPVAL                         R15 7
      166 GETTABLEKS                       R15 R15 K61 ["createProcessEventHandler"]
      168 CALL                             R15 0 3
      169 JUMPIFNOT                        R1 ; [+7]
      170 NEWCLOSURE                       R18 P5
      171 CAPTURE                          VAL R17
      172 CAPTURE                          REF R6
      173 CAPTURE                          REF R7
      174 CAPTURE                          VAL R5
      175 SETTABLEKS                       R18 R1 K62 ["cancel"]
      177 MOVE                             R18 R16
      178 MOVE                             R19 R14
      179 CALL                             R18 1 1
      180 DUPTABLE                         R19 K68 [{["threadId"], ["messages"], ["tools"], ["system"], ["messageGuid"], ["isFirstMessage"] = True, ["isAgenticMode"] = False, ["selectedModel"], ["conversationUrl"], ["isSubagent"]}]
      181 SETTABLEKS                       R10 R19 K37 ["threadId"]
      183 SETTABLEKS                       R13 R19 K63 ["messages"]
      185 GETTABLEKS                       R20 R0 K58 ["formattedTools"]
      187 SETTABLEKS                       R20 R19 K41 ["tools"]
      189 GETTABLEKS                       R20 R2 K38 ["systemMessage"]
      191 SETTABLEKS                       R20 R19 K64 ["system"]
      193 SETTABLEKS                       R8 R19 K14 ["messageGuid"]
      195 GETTABLEKS                       R20 R2 K59 ["model"]
      197 SETTABLEKS                       R20 R19 K44 ["selectedModel"]
      199 GETTABLEKS                       R20 R2 K45 ["conversationUrl"]
      201 SETTABLEKS                       R20 R19 K45 ["conversationUrl"]
      203 GETTABLEKS                       R21 R0 K46 ["isSubagent"]
      205 JUMPIFEQKNIL                     R21 ; [+4]
      207 GETTABLEKS                       R20 R0 K46 ["isSubagent"]
      209 JUMP                             ; [+1]
      210 LOADB                            R20 1
      211 SETTABLEKS                       R20 R19 K46 ["isSubagent"]
      213 GETTABLEKS                       R20 R0 K29 ["requestLLM"]
      215 MOVE                             R21 R19
      216 GETTABLEKS                       R22 R18 K69 ["processEvent"]
      218 CALL                             R20 2 0
      219 JUMPIF                           R6 ; [+3]
      220 NAMECALL                         R20 R5 K70 ["Wait"]
      222 CALL                             R20 1 0
      223 MOVE                             R20 R17
      224 CALL                             R20 0 0
      225 GETTABLEKS                       R20 R0 K12 ["contentId"]
      227 JUMPIFNOT                        R20 ; [+6]
      228 GETUPVAL                         R20 8
      229 GETTABLEKS                       R20 R20 K71 ["cleanup"]
      231 GETTABLEKS                       R21 R0 K12 ["contentId"]
      233 CALL                             R20 1 0
      234 DUPTABLE                         R20 K74 [{"finalAnswer", "error"}]
      235 GETTABLEKS                       R22 R4 K7 ["finalText"]
      237 JUMPIFEQKS                       R22 K8 [""] ; [+4]
      239 GETTABLEKS                       R21 R4 K7 ["finalText"]
      241 JUMP                             ; [+1]
      242 LOADK                            R21 K75 ["Empty result from subagent."]
      243 SETTABLEKS                       R21 R20 K72 ["finalAnswer"]
      245 SETTABLEKS                       R7 R20 K73 ["error"]
      247 CLOSEUPVALS                      R6
      248 RETURN                           R20 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["HttpService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R0 K10 ["Parent"]
       17 GETTABLEKS                       R3 R3 K11 ["AssistantHarness"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R0 K12 ["Guest"]
       24 GETTABLEKS                       R4 R4 K13 ["Environment"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R0 K14 ["Flags"]
       31 CALL                             R4 1 1
       32 GETTABLEKS                       R5 R2 K15 ["Engine"]
       34 GETTABLEKS                       R5 R5 K16 ["LLMProcessEvent"]
       36 GETIMPORT                        R6 K9 [require]
       38 GETTABLEKS                       R7 R0 K10 ["Parent"]
       40 GETTABLEKS                       R7 R7 K17 ["ModelContextProtocol"]
       42 CALL                             R6 1 1
       43 GETIMPORT                        R7 K9 [require]
       45 GETTABLEKS                       R8 R0 K10 ["Parent"]
       47 GETTABLEKS                       R8 R8 K18 ["Promise"]
       49 CALL                             R7 1 1
       50 GETIMPORT                        R8 K9 [require]
       52 GETTABLEKS                       R9 R0 K10 ["Parent"]
       54 GETTABLEKS                       R9 R9 K19 ["Signal"]
       56 CALL                             R8 1 1
       57 GETIMPORT                        R9 K9 [require]
       59 GETIMPORT                        R10 K1 [script]
       61 GETTABLEKS                       R10 R10 K10 ["Parent"]
       63 GETTABLEKS                       R10 R10 K20 ["SubagentProgressEvents"]
       65 CALL                             R9 1 1
       66 GETTABLEKS                       R10 R2 K15 ["Engine"]
       68 GETTABLEKS                       R10 R10 K21 ["Time"]
       70 GETIMPORT                        R11 K9 [require]
       72 GETTABLEKS                       R12 R0 K22 ["Types"]
       74 CALL                             R11 1 1
       75 GETIMPORT                        R12 K9 [require]
       77 GETIMPORT                        R13 K1 [script]
       79 GETTABLEKS                       R13 R13 K10 ["Parent"]
       81 GETTABLEKS                       R13 R13 K23 ["SubagentDefinition"]
       83 CALL                             R12 1 1
       84 DUPCLOSURE                       R13 K24 [PROTO_8]
       85 CAPTURE                          VAL R1
       86 CAPTURE                          VAL R9
       87 CAPTURE                          VAL R4
       88 CAPTURE                          VAL R3
       89 CAPTURE                          VAL R10
       90 DUPCLOSURE                       R14 K25 [PROTO_9]
       91 DUPCLOSURE                       R15 K26 [PROTO_13]
       92 CAPTURE                          VAL R7
       93 CAPTURE                          VAL R14
       94 DUPCLOSURE                       R16 K27 [PROTO_20]
       95 CAPTURE                          VAL R12
       96 CAPTURE                          VAL R8
       97 CAPTURE                          VAL R1
       98 CAPTURE                          VAL R13
       99 CAPTURE                          VAL R7
      100 CAPTURE                          VAL R14
      101 CAPTURE                          VAL R4
      102 CAPTURE                          VAL R5
      103 CAPTURE                          VAL R9
      104 DUPTABLE                         R17 K31 [{"execute", "appendBudgetNote", "wrapCallToolAsOnToolCall"}]
      105 SETTABLEKS                       R16 R17 K28 ["execute"]
      107 SETTABLEKS                       R14 R17 K29 ["appendBudgetNote"]
      109 SETTABLEKS                       R15 R17 K30 ["wrapCallToolAsOnToolCall"]
      111 RETURN                           R17 1
