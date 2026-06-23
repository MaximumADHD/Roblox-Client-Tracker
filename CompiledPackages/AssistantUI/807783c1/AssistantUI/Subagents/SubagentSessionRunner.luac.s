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
       21 CALL                             R3 0 1
       22 JUMPIFNOT                        R3 ; [+47]
       23 GETUPVAL                         R3 4
       24 GETTABLEKS                       R3 R3 K7 ["get"]
       26 CALL                             R3 0 1
       27 GETTABLEKS                       R3 R3 K8 ["EventLogger"]
       29 GETTABLEKS                       R3 R3 K9 ["logToolStarted"]
       31 DUPTABLE                         R4 K16 [{"messageGuid", "sessionId", "toolId", "toolName", "input", "currentSubagent", "parentMessageGuid", "parentToolId"}]
       32 GETUPVAL                         R5 5
       33 GETTABLEKS                       R5 R5 K10 ["messageGuid"]
       35 SETTABLEKS                       R5 R4 K10 ["messageGuid"]
       37 GETUPVAL                         R5 5
       38 GETTABLEKS                       R5 R5 K11 ["sessionId"]
       40 SETTABLEKS                       R5 R4 K11 ["sessionId"]
       42 GETTABLEKS                       R5 R1 K5 ["id"]
       44 SETTABLEKS                       R5 R4 K12 ["toolId"]
       46 GETTABLEKS                       R5 R1 K6 ["name"]
       48 SETTABLEKS                       R5 R4 K2 ["toolName"]
       50 GETTABLEKS                       R5 R1 K3 ["input"]
       52 SETTABLEKS                       R5 R4 K3 ["input"]
       54 GETUPVAL                         R5 5
       55 GETTABLEKS                       R5 R5 K17 ["subagentName"]
       57 SETTABLEKS                       R5 R4 K13 ["currentSubagent"]
       59 GETUPVAL                         R5 5
       60 GETTABLEKS                       R5 R5 K14 ["parentMessageGuid"]
       62 SETTABLEKS                       R5 R4 K14 ["parentMessageGuid"]
       64 GETUPVAL                         R5 5
       65 GETTABLEKS                       R5 R5 K15 ["parentToolId"]
       67 SETTABLEKS                       R5 R4 K15 ["parentToolId"]
       69 CALL                             R3 1 0
       70 RETURN                           R0 0

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
       49 DUPTABLE                         R6 K12 [{"type", "text"}]
       50 LOADK                            R7 K11 ["text"]
       51 SETTABLEKS                       R7 R6 K0 ["type"]
       53 SETTABLEKS                       R3 R6 K11 ["text"]
       55 FASTCALL2                        TABLE_INSERT R5 R6 ; [+3]
       57 GETIMPORT                        R4 K14 [table.insert]
       59 CALL                             R4 2 0
       60 RETURN                           R0 0

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
        2 DUPTABLE                         R3 K3 [{"used", "budget"}]
        3 LOADN                            R4 0
        4 SETTABLEKS                       R4 R3 K1 ["used"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K4 ["getToolBudget"]
        9 GETTABLEKS                       R5 R2 K5 ["maxToolCalls"]
       11 CALL                             R4 1 1
       12 SETTABLEKS                       R4 R3 K2 ["budget"]
       14 DUPTABLE                         R4 K7 [{"finalText"}]
       15 LOADK                            R5 K8 [""]
       16 SETTABLEKS                       R5 R4 K6 ["finalText"]
       18 GETUPVAL                         R5 1
       19 GETTABLEKS                       R5 R5 K9 ["new"]
       21 CALL                             R5 0 1
       22 LOADB                            R6 0
       23 LOADNIL                          R7
       24 GETUPVAL                         R8 2
       25 LOADB                            R10 0
       26 NAMECALL                         R8 R8 K10 ["GenerateGUID"]
       28 CALL                             R8 2 1
       29 GETUPVAL                         R9 2
       30 LOADB                            R11 0
       31 NAMECALL                         R9 R9 K10 ["GenerateGUID"]
       33 CALL                             R9 2 1
       34 GETUPVAL                         R10 2
       35 LOADB                            R12 0
       36 NAMECALL                         R10 R10 K10 ["GenerateGUID"]
       38 CALL                             R10 2 1
       39 GETUPVAL                         R11 2
       40 LOADB                            R13 0
       41 NAMECALL                         R11 R11 K10 ["GenerateGUID"]
       43 CALL                             R11 2 1
       44 GETUPVAL                         R12 3
       45 MOVE                             R13 R4
       46 GETTABLEKS                       R14 R0 K11 ["contentId"]
       48 DUPTABLE                         R15 K17 [{"subagentName", "messageGuid", "sessionId", "parentMessageGuid", "parentToolId"}]
       49 GETTABLEKS                       R16 R2 K18 ["name"]
       51 SETTABLEKS                       R16 R15 K12 ["subagentName"]
       53 SETTABLEKS                       R8 R15 K13 ["messageGuid"]
       55 SETTABLEKS                       R9 R15 K14 ["sessionId"]
       57 GETTABLEKS                       R16 R0 K15 ["parentMessageGuid"]
       59 SETTABLEKS                       R16 R15 K15 ["parentMessageGuid"]
       61 GETTABLEKS                       R16 R0 K16 ["parentToolId"]
       63 SETTABLEKS                       R16 R15 K16 ["parentToolId"]
       65 CALL                             R12 3 1
       66 NEWTABLE                         R13 0 1
       68 DUPTABLE                         R14 K21 [{"role", "content"}]
       69 LOADK                            R15 K22 ["user"]
       70 SETTABLEKS                       R15 R14 K19 ["role"]
       72 NEWTABLE                         R15 0 1
       74 DUPTABLE                         R16 K25 [{"type", "text"}]
       75 LOADK                            R17 K24 ["text"]
       76 SETTABLEKS                       R17 R16 K23 ["type"]
       78 GETTABLEKS                       R17 R0 K26 ["prompt"]
       80 SETTABLEKS                       R17 R16 K24 ["text"]
       82 SETLIST                          R15 R16 1 [1]
       84 SETTABLEKS                       R15 R14 K20 ["content"]
       86 SETLIST                          R13 R14 1 [1]
       88 DUPTABLE                         R14 K48 [{"showError", "requestLLM", "setInputEnabled", "onToolCall", "observer", "setModelQuality", "onPacketReceived", "maxToolCalls", "timeoutMs", "messageGuid", "conversationSessionId", "threadId", "systemMessage", "initialMessages", "requestStartTime", "tools", "apiKeys", "selectedModel", "conversationUrl", "isSubagent", "currentSubagent", "parentMessageGuid", "parentToolId", "messageId", "logRequestStop"}]
       89 NEWCLOSURE                       R15 P0
       90 CAPTURE                          REF R7
       91 CAPTURE                          REF R6
       92 CAPTURE                          VAL R5
       93 SETTABLEKS                       R15 R14 K27 ["showError"]
       95 GETTABLEKS                       R15 R0 K28 ["requestLLM"]
       97 SETTABLEKS                       R15 R14 K28 ["requestLLM"]
       99 NEWCLOSURE                       R15 P1
      100 CAPTURE                          REF R6
      101 CAPTURE                          VAL R5
      102 SETTABLEKS                       R15 R14 K29 ["setInputEnabled"]
      104 GETTABLEKS                       R16 R0 K49 ["callTool"]
      106 NEWCLOSURE                       R15 P2
      107 CAPTURE                          UPVAL U4
      108 CAPTURE                          VAL R16
      109 CAPTURE                          VAL R3
      110 CAPTURE                          UPVAL U5
      111 SETTABLEKS                       R15 R14 K30 ["onToolCall"]
      113 SETTABLEKS                       R12 R14 K31 ["observer"]
      115 DUPCLOSURE                       R15 K50 [PROTO_17]
      116 SETTABLEKS                       R15 R14 K32 ["setModelQuality"]
      118 GETTABLEKS                       R15 R0 K33 ["onPacketReceived"]
      120 SETTABLEKS                       R15 R14 K33 ["onPacketReceived"]
      122 GETTABLEKS                       R15 R2 K5 ["maxToolCalls"]
      124 SETTABLEKS                       R15 R14 K5 ["maxToolCalls"]
      126 GETUPVAL                         R15 6
      127 CALL                             R15 0 1
      128 SETTABLEKS                       R15 R14 K34 ["timeoutMs"]
      130 SETTABLEKS                       R8 R14 K13 ["messageGuid"]
      132 SETTABLEKS                       R9 R14 K35 ["conversationSessionId"]
      134 SETTABLEKS                       R10 R14 K36 ["threadId"]
      136 GETTABLEKS                       R15 R2 K37 ["systemMessage"]
      138 SETTABLEKS                       R15 R14 K37 ["systemMessage"]
      140 SETTABLEKS                       R13 R14 K38 ["initialMessages"]
      142 GETIMPORT                        R15 K53 [os.clock]
      144 CALL                             R15 0 1
      145 SETTABLEKS                       R15 R14 K39 ["requestStartTime"]
      147 GETTABLEKS                       R15 R0 K54 ["formattedTools"]
      149 SETTABLEKS                       R15 R14 K40 ["tools"]
      151 LOADNIL                          R15
      152 SETTABLEKS                       R15 R14 K41 ["apiKeys"]
      154 GETTABLEKS                       R15 R2 K55 ["model"]
      156 SETTABLEKS                       R15 R14 K42 ["selectedModel"]
      158 GETTABLEKS                       R15 R2 K43 ["conversationUrl"]
      160 SETTABLEKS                       R15 R14 K43 ["conversationUrl"]
      162 LOADB                            R15 1
      163 SETTABLEKS                       R15 R14 K44 ["isSubagent"]
      165 GETTABLEKS                       R15 R2 K18 ["name"]
      167 SETTABLEKS                       R15 R14 K45 ["currentSubagent"]
      169 GETTABLEKS                       R15 R0 K15 ["parentMessageGuid"]
      171 SETTABLEKS                       R15 R14 K15 ["parentMessageGuid"]
      173 GETTABLEKS                       R15 R0 K16 ["parentToolId"]
      175 SETTABLEKS                       R15 R14 K16 ["parentToolId"]
      177 SETTABLEKS                       R11 R14 K46 ["messageId"]
      179 DUPCLOSURE                       R15 K56 [PROTO_18]
      180 SETTABLEKS                       R15 R14 K47 ["logRequestStop"]
      182 GETUPVAL                         R15 7
      183 GETTABLEKS                       R15 R15 K57 ["createProcessEventHandler"]
      185 CALL                             R15 0 3
      186 JUMPIFNOT                        R1 ; [+7]
      187 NEWCLOSURE                       R18 P5
      188 CAPTURE                          VAL R17
      189 CAPTURE                          REF R6
      190 CAPTURE                          REF R7
      191 CAPTURE                          VAL R5
      192 SETTABLEKS                       R18 R1 K58 ["cancel"]
      194 MOVE                             R18 R16
      195 MOVE                             R19 R14
      196 CALL                             R18 1 1
      197 DUPTABLE                         R19 K63 [{"threadId", "messages", "tools", "system", "messageGuid", "isFirstMessage", "isAgenticMode", "selectedModel", "conversationUrl", "isSubagent"}]
      198 SETTABLEKS                       R10 R19 K36 ["threadId"]
      200 SETTABLEKS                       R13 R19 K59 ["messages"]
      202 GETTABLEKS                       R20 R0 K54 ["formattedTools"]
      204 SETTABLEKS                       R20 R19 K40 ["tools"]
      206 GETTABLEKS                       R20 R2 K37 ["systemMessage"]
      208 SETTABLEKS                       R20 R19 K60 ["system"]
      210 SETTABLEKS                       R8 R19 K13 ["messageGuid"]
      212 LOADB                            R20 1
      213 SETTABLEKS                       R20 R19 K61 ["isFirstMessage"]
      215 LOADB                            R20 0
      216 SETTABLEKS                       R20 R19 K62 ["isAgenticMode"]
      218 GETTABLEKS                       R20 R2 K55 ["model"]
      220 SETTABLEKS                       R20 R19 K42 ["selectedModel"]
      222 GETTABLEKS                       R20 R2 K43 ["conversationUrl"]
      224 SETTABLEKS                       R20 R19 K43 ["conversationUrl"]
      226 GETTABLEKS                       R21 R0 K44 ["isSubagent"]
      228 JUMPIFEQKNIL                     R21 ; [+4]
      230 GETTABLEKS                       R20 R0 K44 ["isSubagent"]
      232 JUMP                             ; [+1]
      233 LOADB                            R20 1
      234 SETTABLEKS                       R20 R19 K44 ["isSubagent"]
      236 GETTABLEKS                       R20 R0 K28 ["requestLLM"]
      238 MOVE                             R21 R19
      239 GETTABLEKS                       R22 R18 K64 ["processEvent"]
      241 CALL                             R20 2 0
      242 JUMPIF                           R6 ; [+3]
      243 NAMECALL                         R20 R5 K65 ["Wait"]
      245 CALL                             R20 1 0
      246 MOVE                             R20 R17
      247 CALL                             R20 0 0
      248 GETTABLEKS                       R20 R0 K11 ["contentId"]
      250 JUMPIFNOT                        R20 ; [+6]
      251 GETUPVAL                         R20 8
      252 GETTABLEKS                       R20 R20 K66 ["cleanup"]
      254 GETTABLEKS                       R21 R0 K11 ["contentId"]
      256 CALL                             R20 1 0
      257 DUPTABLE                         R20 K69 [{"finalAnswer", "error"}]
      258 GETTABLEKS                       R22 R4 K6 ["finalText"]
      260 JUMPIFEQKS                       R22 K8 [""] ; [+4]
      262 GETTABLEKS                       R21 R4 K6 ["finalText"]
      264 JUMP                             ; [+1]
      265 LOADK                            R21 K70 ["Empty result from subagent."]
      266 SETTABLEKS                       R21 R20 K67 ["finalAnswer"]
      268 SETTABLEKS                       R7 R20 K68 ["error"]
      270 CLOSEUPVALS                      R6
      271 RETURN                           R20 1

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
       15 GETTABLEKS                       R3 R0 K10 ["Guest"]
       17 GETTABLEKS                       R3 R3 K11 ["Environment"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R0 K12 ["Components"]
       24 GETTABLEKS                       R4 R4 K13 ["Contexts"]
       26 GETTABLEKS                       R4 R4 K14 ["DefaultLLMProvider"]
       28 GETTABLEKS                       R4 R4 K15 ["LLMProcessEvent"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R4 K9 [require]
       33 GETTABLEKS                       R5 R0 K16 ["Parent"]
       35 GETTABLEKS                       R5 R5 K17 ["ModelContextProtocol"]
       37 CALL                             R4 1 1
       38 GETIMPORT                        R5 K9 [require]
       40 GETTABLEKS                       R6 R0 K16 ["Parent"]
       42 GETTABLEKS                       R6 R6 K18 ["Promise"]
       44 CALL                             R5 1 1
       45 GETIMPORT                        R6 K9 [require]
       47 GETTABLEKS                       R7 R0 K16 ["Parent"]
       49 GETTABLEKS                       R7 R7 K19 ["Signal"]
       51 CALL                             R6 1 1
       52 GETIMPORT                        R7 K9 [require]
       54 GETIMPORT                        R8 K1 [script]
       56 GETTABLEKS                       R8 R8 K16 ["Parent"]
       58 GETTABLEKS                       R8 R8 K20 ["SubagentProgressEvents"]
       60 CALL                             R7 1 1
       61 GETIMPORT                        R8 K9 [require]
       63 GETTABLEKS                       R9 R0 K21 ["Util"]
       65 GETTABLEKS                       R9 R9 K22 ["Time"]
       67 CALL                             R8 1 1
       68 GETIMPORT                        R9 K9 [require]
       70 GETTABLEKS                       R10 R0 K23 ["Types"]
       72 CALL                             R9 1 1
       73 GETIMPORT                        R10 K9 [require]
       75 GETTABLEKS                       R11 R0 K24 ["Flags"]
       77 GETTABLEKS                       R11 R11 K25 ["FFlagAssistantToolExistenceRefactor"]
       79 CALL                             R10 1 1
       80 GETIMPORT                        R11 K9 [require]
       82 GETTABLEKS                       R12 R0 K24 ["Flags"]
       84 GETTABLEKS                       R12 R12 K26 ["FIntAssistantProcessEventTimeoutMS"]
       86 CALL                             R11 1 1
       87 GETIMPORT                        R12 K9 [require]
       89 GETIMPORT                        R13 K1 [script]
       91 GETTABLEKS                       R13 R13 K16 ["Parent"]
       93 GETTABLEKS                       R13 R13 K27 ["SubagentDefinition"]
       95 CALL                             R12 1 1
       96 DUPCLOSURE                       R13 K28 [PROTO_8]
       97 CAPTURE                          VAL R1
       98 CAPTURE                          VAL R7
       99 CAPTURE                          VAL R10
      100 CAPTURE                          VAL R2
      101 CAPTURE                          VAL R8
      102 DUPCLOSURE                       R14 K29 [PROTO_9]
      103 DUPCLOSURE                       R15 K30 [PROTO_13]
      104 CAPTURE                          VAL R5
      105 CAPTURE                          VAL R14
      106 DUPCLOSURE                       R16 K31 [PROTO_20]
      107 CAPTURE                          VAL R12
      108 CAPTURE                          VAL R6
      109 CAPTURE                          VAL R1
      110 CAPTURE                          VAL R13
      111 CAPTURE                          VAL R5
      112 CAPTURE                          VAL R14
      113 CAPTURE                          VAL R11
      114 CAPTURE                          VAL R3
      115 CAPTURE                          VAL R7
      116 DUPTABLE                         R17 K35 [{"execute", "appendBudgetNote", "wrapCallToolAsOnToolCall"}]
      117 SETTABLEKS                       R16 R17 K32 ["execute"]
      119 SETTABLEKS                       R14 R17 K33 ["appendBudgetNote"]
      121 SETTABLEKS                       R15 R17 K34 ["wrapCallToolAsOnToolCall"]
      123 RETURN                           R17 1
