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
       22 JUMPIFNOT                        R3 ; [+50]
       23 GETUPVAL                         R3 4
       24 CALL                             R3 0 1
       25 JUMPIFNOT                        R3 ; [+47]
       26 GETUPVAL                         R3 5
       27 GETTABLEKS                       R3 R3 K7 ["get"]
       29 CALL                             R3 0 1
       30 GETTABLEKS                       R3 R3 K8 ["EventLogger"]
       32 GETTABLEKS                       R3 R3 K9 ["logToolStarted"]
       34 DUPTABLE                         R4 K16 [{"messageGuid", "sessionId", "toolId", "toolName", "input", "currentSubagent", "parentMessageGuid", "parentToolId"}]
       35 GETUPVAL                         R5 6
       36 GETTABLEKS                       R5 R5 K10 ["messageGuid"]
       38 SETTABLEKS                       R5 R4 K10 ["messageGuid"]
       40 GETUPVAL                         R5 6
       41 GETTABLEKS                       R5 R5 K11 ["sessionId"]
       43 SETTABLEKS                       R5 R4 K11 ["sessionId"]
       45 GETTABLEKS                       R5 R1 K5 ["id"]
       47 SETTABLEKS                       R5 R4 K12 ["toolId"]
       49 GETTABLEKS                       R5 R1 K6 ["name"]
       51 SETTABLEKS                       R5 R4 K2 ["toolName"]
       53 GETTABLEKS                       R5 R1 K3 ["input"]
       55 SETTABLEKS                       R5 R4 K3 ["input"]
       57 GETUPVAL                         R5 6
       58 GETTABLEKS                       R5 R5 K17 ["subagentName"]
       60 SETTABLEKS                       R5 R4 K13 ["currentSubagent"]
       62 GETUPVAL                         R5 6
       63 GETTABLEKS                       R5 R5 K14 ["parentMessageGuid"]
       65 SETTABLEKS                       R5 R4 K14 ["parentMessageGuid"]
       67 GETUPVAL                         R5 6
       68 GETTABLEKS                       R5 R5 K15 ["parentToolId"]
       70 SETTABLEKS                       R5 R4 K15 ["parentToolId"]
       72 CALL                             R3 1 0
       73 RETURN                           R0 0

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
       19 CALL                             R3 0 1
       20 JUMPIFNOT                        R3 ; [+60]
       21 GETUPVAL                         R3 4
       22 GETTABLEKS                       R3 R3 K7 ["get"]
       24 CALL                             R3 0 1
       25 GETTABLEKS                       R3 R3 K8 ["EventLogger"]
       27 GETTABLEKS                       R3 R3 K9 ["logToolEnded"]
       29 DUPTABLE                         R4 K20 [{"messageGuid", "toolId", "toolName", "startTime", "startTimeAfterConfirmation", "endTime", "isError", "toolResultContent", "currentSubagent", "parentMessageGuid", "parentToolId"}]
       30 GETUPVAL                         R5 5
       31 GETTABLEKS                       R5 R5 K10 ["messageGuid"]
       33 SETTABLEKS                       R5 R4 K10 ["messageGuid"]
       35 GETTABLEKS                       R5 R1 K5 ["id"]
       37 SETTABLEKS                       R5 R4 K11 ["toolId"]
       39 GETTABLEKS                       R5 R1 K6 ["name"]
       41 SETTABLEKS                       R5 R4 K2 ["toolName"]
       43 GETTABLEKS                       R5 R1 K12 ["startTime"]
       45 SETTABLEKS                       R5 R4 K12 ["startTime"]
       47 GETTABLEKS                       R5 R1 K13 ["startTimeAfterConfirmation"]
       49 SETTABLEKS                       R5 R4 K13 ["startTimeAfterConfirmation"]
       51 GETUPVAL                         R5 6
       52 GETTABLEKS                       R5 R5 K21 ["getTimestampMilliseconds"]
       54 CALL                             R5 0 1
       55 SETTABLEKS                       R5 R4 K14 ["endTime"]
       57 GETTABLEKS                       R5 R1 K15 ["isError"]
       59 SETTABLEKS                       R5 R4 K15 ["isError"]
       61 GETTABLEKS                       R5 R1 K22 ["content"]
       63 SETTABLEKS                       R5 R4 K16 ["toolResultContent"]
       65 GETUPVAL                         R5 5
       66 GETTABLEKS                       R5 R5 K23 ["subagentName"]
       68 SETTABLEKS                       R5 R4 K17 ["currentSubagent"]
       70 GETUPVAL                         R5 5
       71 GETTABLEKS                       R5 R5 K18 ["parentMessageGuid"]
       73 SETTABLEKS                       R5 R4 K18 ["parentMessageGuid"]
       75 GETUPVAL                         R5 5
       76 GETTABLEKS                       R5 R5 K19 ["parentToolId"]
       78 SETTABLEKS                       R5 R4 K19 ["parentToolId"]
       80 CALL                             R3 1 0
       81 RETURN                           R0 0

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
       34 CAPTURE                          UPVAL U4
       35 CAPTURE                          VAL R2
       36 SETTABLEKS                       R6 R5 K4 ["onPreExecuteToolUse"]
       38 NEWCLOSURE                       R6 P5
       39 CAPTURE                          VAL R3
       40 CAPTURE                          UPVAL U1
       41 CAPTURE                          VAL R1
       42 CAPTURE                          UPVAL U2
       43 CAPTURE                          UPVAL U4
       44 CAPTURE                          VAL R2
       45 CAPTURE                          UPVAL U5
       46 SETTABLEKS                       R6 R5 K5 ["onToolResult"]
       48 DUPCLOSURE                       R6 K10 [PROTO_6]
       49 SETTABLEKS                       R6 R5 K6 ["checkToolConfirmationRequestAsync"]
       51 DUPCLOSURE                       R6 K11 [PROTO_7]
       52 SETTABLEKS                       R6 R5 K7 ["getToolCallOptions"]
       54 CLOSEUPVALS                      R4
       55 RETURN                           R5 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["name"]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["arguments"]
        7 CALL                             R0 2 -1
        8 RETURN                           R0 -1

PROTO_10:
        0 GETIMPORT                        R2 K1 [pcall]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R2 1 2
        6 JUMPIFNOT                        R2 ; [+4]
        7 MOVE                             R4 R0
        8 MOVE                             R5 R3
        9 CALL                             R4 1 0
       10 RETURN                           R0 0
       11 MOVE                             R4 R1
       12 MOVE                             R5 R3
       13 CALL                             R4 1 0
       14 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CALL                             R1 1 -1
        7 RETURN                           R1 -1

PROTO_12:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 RETURN                           R1 1

PROTO_13:
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

PROTO_14:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Fire"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_15:
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

PROTO_16:
        0 RETURN                           R0 0

PROTO_17:
        0 RETURN                           R0 0

PROTO_18:
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

PROTO_19:
        0 GETTABLEKS                       R2 R0 K0 ["definition"]
        2 DUPTABLE                         R3 K2 [{"finalText"}]
        3 LOADK                            R4 K3 [""]
        4 SETTABLEKS                       R4 R3 K1 ["finalText"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K4 ["new"]
        9 CALL                             R4 0 1
       10 LOADB                            R5 0
       11 LOADNIL                          R6
       12 GETUPVAL                         R7 1
       13 LOADB                            R9 0
       14 NAMECALL                         R7 R7 K5 ["GenerateGUID"]
       16 CALL                             R7 2 1
       17 GETUPVAL                         R8 1
       18 LOADB                            R10 0
       19 NAMECALL                         R8 R8 K5 ["GenerateGUID"]
       21 CALL                             R8 2 1
       22 GETUPVAL                         R9 1
       23 LOADB                            R11 0
       24 NAMECALL                         R9 R9 K5 ["GenerateGUID"]
       26 CALL                             R9 2 1
       27 GETUPVAL                         R10 1
       28 LOADB                            R12 0
       29 NAMECALL                         R10 R10 K5 ["GenerateGUID"]
       31 CALL                             R10 2 1
       32 GETUPVAL                         R11 2
       33 MOVE                             R12 R3
       34 GETTABLEKS                       R13 R0 K6 ["contentId"]
       36 DUPTABLE                         R14 K12 [{"subagentName", "messageGuid", "sessionId", "parentMessageGuid", "parentToolId"}]
       37 GETTABLEKS                       R15 R2 K13 ["name"]
       39 SETTABLEKS                       R15 R14 K7 ["subagentName"]
       41 SETTABLEKS                       R7 R14 K8 ["messageGuid"]
       43 SETTABLEKS                       R8 R14 K9 ["sessionId"]
       45 GETTABLEKS                       R15 R0 K10 ["parentMessageGuid"]
       47 SETTABLEKS                       R15 R14 K10 ["parentMessageGuid"]
       49 GETTABLEKS                       R15 R0 K11 ["parentToolId"]
       51 SETTABLEKS                       R15 R14 K11 ["parentToolId"]
       53 CALL                             R11 3 1
       54 NEWTABLE                         R12 0 1
       56 DUPTABLE                         R13 K16 [{"role", "content"}]
       57 LOADK                            R14 K17 ["user"]
       58 SETTABLEKS                       R14 R13 K14 ["role"]
       60 NEWTABLE                         R14 0 1
       62 DUPTABLE                         R15 K20 [{"type", "text"}]
       63 LOADK                            R16 K19 ["text"]
       64 SETTABLEKS                       R16 R15 K18 ["type"]
       66 GETTABLEKS                       R16 R0 K21 ["prompt"]
       68 SETTABLEKS                       R16 R15 K19 ["text"]
       70 SETLIST                          R14 R15 1 [1]
       72 SETTABLEKS                       R14 R13 K15 ["content"]
       74 SETLIST                          R12 R13 1 [1]
       76 DUPTABLE                         R13 K44 [{"showError", "requestLLM", "setInputEnabled", "onToolCall", "observer", "setModelQuality", "onPacketReceived", "maxToolCalls", "timeoutMs", "messageGuid", "conversationSessionId", "threadId", "systemMessage", "initialMessages", "requestStartTime", "tools", "apiKeys", "selectedModel", "conversationUrl", "isSubagent", "currentSubagent", "parentMessageGuid", "parentToolId", "messageId", "logRequestStop"}]
       77 NEWCLOSURE                       R14 P0
       78 CAPTURE                          REF R6
       79 CAPTURE                          REF R5
       80 CAPTURE                          VAL R4
       81 SETTABLEKS                       R14 R13 K22 ["showError"]
       83 GETTABLEKS                       R14 R0 K23 ["requestLLM"]
       85 SETTABLEKS                       R14 R13 K23 ["requestLLM"]
       87 NEWCLOSURE                       R14 P1
       88 CAPTURE                          REF R5
       89 CAPTURE                          VAL R4
       90 SETTABLEKS                       R14 R13 K24 ["setInputEnabled"]
       92 GETTABLEKS                       R15 R0 K45 ["callTool"]
       94 NEWCLOSURE                       R14 P2
       95 CAPTURE                          UPVAL U3
       96 CAPTURE                          VAL R15
       97 SETTABLEKS                       R14 R13 K25 ["onToolCall"]
       99 SETTABLEKS                       R11 R13 K26 ["observer"]
      101 DUPCLOSURE                       R14 K46 [PROTO_16]
      102 SETTABLEKS                       R14 R13 K27 ["setModelQuality"]
      104 GETTABLEKS                       R14 R0 K28 ["onPacketReceived"]
      106 SETTABLEKS                       R14 R13 K28 ["onPacketReceived"]
      108 GETTABLEKS                       R14 R2 K29 ["maxToolCalls"]
      110 SETTABLEKS                       R14 R13 K29 ["maxToolCalls"]
      112 GETUPVAL                         R14 4
      113 CALL                             R14 0 1
      114 SETTABLEKS                       R14 R13 K30 ["timeoutMs"]
      116 SETTABLEKS                       R7 R13 K8 ["messageGuid"]
      118 SETTABLEKS                       R8 R13 K31 ["conversationSessionId"]
      120 SETTABLEKS                       R9 R13 K32 ["threadId"]
      122 GETTABLEKS                       R14 R2 K33 ["systemMessage"]
      124 SETTABLEKS                       R14 R13 K33 ["systemMessage"]
      126 SETTABLEKS                       R12 R13 K34 ["initialMessages"]
      128 GETIMPORT                        R14 K49 [os.clock]
      130 CALL                             R14 0 1
      131 SETTABLEKS                       R14 R13 K35 ["requestStartTime"]
      133 GETTABLEKS                       R14 R0 K50 ["formattedTools"]
      135 SETTABLEKS                       R14 R13 K36 ["tools"]
      137 LOADNIL                          R14
      138 SETTABLEKS                       R14 R13 K37 ["apiKeys"]
      140 GETTABLEKS                       R14 R2 K51 ["model"]
      142 SETTABLEKS                       R14 R13 K38 ["selectedModel"]
      144 GETTABLEKS                       R14 R2 K39 ["conversationUrl"]
      146 SETTABLEKS                       R14 R13 K39 ["conversationUrl"]
      148 LOADB                            R14 1
      149 SETTABLEKS                       R14 R13 K40 ["isSubagent"]
      151 GETTABLEKS                       R14 R2 K13 ["name"]
      153 SETTABLEKS                       R14 R13 K41 ["currentSubagent"]
      155 GETTABLEKS                       R14 R0 K10 ["parentMessageGuid"]
      157 SETTABLEKS                       R14 R13 K10 ["parentMessageGuid"]
      159 GETTABLEKS                       R14 R0 K11 ["parentToolId"]
      161 SETTABLEKS                       R14 R13 K11 ["parentToolId"]
      163 SETTABLEKS                       R10 R13 K42 ["messageId"]
      165 DUPCLOSURE                       R14 K52 [PROTO_17]
      166 SETTABLEKS                       R14 R13 K43 ["logRequestStop"]
      168 GETUPVAL                         R14 5
      169 GETTABLEKS                       R14 R14 K53 ["createProcessEventHandler"]
      171 CALL                             R14 0 3
      172 JUMPIFNOT                        R1 ; [+7]
      173 NEWCLOSURE                       R17 P5
      174 CAPTURE                          VAL R16
      175 CAPTURE                          REF R5
      176 CAPTURE                          REF R6
      177 CAPTURE                          VAL R4
      178 SETTABLEKS                       R17 R1 K54 ["cancel"]
      180 MOVE                             R17 R15
      181 MOVE                             R18 R13
      182 CALL                             R17 1 1
      183 DUPTABLE                         R18 K59 [{"threadId", "messages", "tools", "system", "messageGuid", "isFirstMessage", "isAgenticMode", "selectedModel", "conversationUrl", "isSubagent"}]
      184 SETTABLEKS                       R9 R18 K32 ["threadId"]
      186 SETTABLEKS                       R12 R18 K55 ["messages"]
      188 GETTABLEKS                       R19 R0 K50 ["formattedTools"]
      190 SETTABLEKS                       R19 R18 K36 ["tools"]
      192 GETTABLEKS                       R19 R2 K33 ["systemMessage"]
      194 SETTABLEKS                       R19 R18 K56 ["system"]
      196 SETTABLEKS                       R7 R18 K8 ["messageGuid"]
      198 LOADB                            R19 1
      199 SETTABLEKS                       R19 R18 K57 ["isFirstMessage"]
      201 LOADB                            R19 0
      202 SETTABLEKS                       R19 R18 K58 ["isAgenticMode"]
      204 GETTABLEKS                       R19 R2 K51 ["model"]
      206 SETTABLEKS                       R19 R18 K38 ["selectedModel"]
      208 GETTABLEKS                       R19 R2 K39 ["conversationUrl"]
      210 SETTABLEKS                       R19 R18 K39 ["conversationUrl"]
      212 GETTABLEKS                       R20 R0 K40 ["isSubagent"]
      214 JUMPIFEQKNIL                     R20 ; [+4]
      216 GETTABLEKS                       R19 R0 K40 ["isSubagent"]
      218 JUMP                             ; [+1]
      219 LOADB                            R19 1
      220 SETTABLEKS                       R19 R18 K40 ["isSubagent"]
      222 GETTABLEKS                       R19 R0 K23 ["requestLLM"]
      224 MOVE                             R20 R18
      225 GETTABLEKS                       R21 R17 K60 ["processEvent"]
      227 CALL                             R19 2 0
      228 JUMPIF                           R5 ; [+3]
      229 NAMECALL                         R19 R4 K61 ["Wait"]
      231 CALL                             R19 1 0
      232 MOVE                             R19 R16
      233 CALL                             R19 0 0
      234 GETTABLEKS                       R19 R0 K6 ["contentId"]
      236 JUMPIFNOT                        R19 ; [+6]
      237 GETUPVAL                         R19 6
      238 GETTABLEKS                       R19 R19 K62 ["cleanup"]
      240 GETTABLEKS                       R20 R0 K6 ["contentId"]
      242 CALL                             R19 1 0
      243 DUPTABLE                         R19 K65 [{"finalAnswer", "error"}]
      244 GETTABLEKS                       R21 R3 K1 ["finalText"]
      246 JUMPIFEQKS                       R21 K3 [""] ; [+4]
      248 GETTABLEKS                       R20 R3 K1 ["finalText"]
      250 JUMP                             ; [+1]
      251 LOADK                            R20 K66 ["Empty result from subagent."]
      252 SETTABLEKS                       R20 R19 K63 ["finalAnswer"]
      254 SETTABLEKS                       R6 R19 K64 ["error"]
      256 CLOSEUPVALS                      R5
      257 RETURN                           R19 1

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
       84 GETTABLEKS                       R12 R12 K26 ["FFlagEnhanceSubagentSkillTelemetry"]
       86 CALL                             R11 1 1
       87 GETIMPORT                        R12 K9 [require]
       89 GETTABLEKS                       R13 R0 K24 ["Flags"]
       91 GETTABLEKS                       R13 R13 K27 ["FIntAssistantProcessEventTimeoutMS"]
       93 CALL                             R12 1 1
       94 GETIMPORT                        R13 K9 [require]
       96 GETIMPORT                        R14 K1 [script]
       98 GETTABLEKS                       R14 R14 K16 ["Parent"]
      100 GETTABLEKS                       R14 R14 K28 ["SubagentDefinition"]
      102 CALL                             R13 1 1
      103 DUPCLOSURE                       R14 K29 [PROTO_8]
      104 CAPTURE                          VAL R1
      105 CAPTURE                          VAL R7
      106 CAPTURE                          VAL R11
      107 CAPTURE                          VAL R10
      108 CAPTURE                          VAL R2
      109 CAPTURE                          VAL R8
      110 DUPCLOSURE                       R15 K30 [PROTO_12]
      111 CAPTURE                          VAL R5
      112 DUPCLOSURE                       R16 K31 [PROTO_19]
      113 CAPTURE                          VAL R6
      114 CAPTURE                          VAL R1
      115 CAPTURE                          VAL R14
      116 CAPTURE                          VAL R5
      117 CAPTURE                          VAL R12
      118 CAPTURE                          VAL R3
      119 CAPTURE                          VAL R7
      120 DUPTABLE                         R17 K33 [{"execute"}]
      121 SETTABLEKS                       R16 R17 K32 ["execute"]
      123 RETURN                           R17 1
