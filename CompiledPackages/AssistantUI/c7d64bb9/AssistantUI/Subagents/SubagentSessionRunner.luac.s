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
       20 RETURN                           R0 0

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
       18 RETURN                           R0 0

PROTO_6:
        0 LOADB                            R2 1
        1 RETURN                           R2 1

PROTO_7:
        0 LOADNIL                          R1
        1 RETURN                           R1 1

PROTO_8:
        0 JUMPIFNOTEQKNIL                  R1 ; [+2]
        2 LOADB                            R2 0 +1
        3 LOADB                            R2 1
        4 LOADNIL                          R3
        5 DUPTABLE                         R4 K8 [{"onNewMessage", "onContentStart", "onContentDelta", "onContentFinished", "onPreExecuteToolUse", "onToolResult", "checkToolConfirmationRequestAsync", "getToolCallOptions"}]
        6 DUPCLOSURE                       R5 K9 [PROTO_0]
        7 SETTABLEKS                       R5 R4 K0 ["onNewMessage"]
        9 NEWCLOSURE                       R5 P1
       10 CAPTURE                          VAL R0
       11 CAPTURE                          UPVAL U0
       12 CAPTURE                          VAL R2
       13 CAPTURE                          REF R3
       14 SETTABLEKS                       R5 R4 K1 ["onContentStart"]
       16 NEWCLOSURE                       R5 P2
       17 CAPTURE                          VAL R0
       18 CAPTURE                          VAL R2
       19 CAPTURE                          REF R3
       20 CAPTURE                          UPVAL U1
       21 CAPTURE                          VAL R1
       22 SETTABLEKS                       R5 R4 K2 ["onContentDelta"]
       24 NEWCLOSURE                       R5 P3
       25 CAPTURE                          REF R3
       26 SETTABLEKS                       R5 R4 K3 ["onContentFinished"]
       28 NEWCLOSURE                       R5 P4
       29 CAPTURE                          VAL R2
       30 CAPTURE                          UPVAL U1
       31 CAPTURE                          VAL R1
       32 SETTABLEKS                       R5 R4 K4 ["onPreExecuteToolUse"]
       34 NEWCLOSURE                       R5 P5
       35 CAPTURE                          VAL R2
       36 CAPTURE                          UPVAL U1
       37 CAPTURE                          VAL R1
       38 SETTABLEKS                       R5 R4 K5 ["onToolResult"]
       40 DUPCLOSURE                       R5 K10 [PROTO_6]
       41 SETTABLEKS                       R5 R4 K6 ["checkToolConfirmationRequestAsync"]
       43 DUPCLOSURE                       R5 K11 [PROTO_7]
       44 SETTABLEKS                       R5 R4 K7 ["getToolCallOptions"]
       46 CLOSEUPVALS                      R3
       47 RETURN                           R4 1

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
        7 MOVE                             R5 R3
        8 GETTABLEKS                       R6 R0 K4 ["contentId"]
       10 CALL                             R4 2 1
       11 GETUPVAL                         R5 1
       12 GETTABLEKS                       R5 R5 K5 ["new"]
       14 CALL                             R5 0 1
       15 LOADB                            R6 0
       16 LOADNIL                          R7
       17 GETUPVAL                         R8 2
       18 LOADB                            R10 0
       19 NAMECALL                         R8 R8 K6 ["GenerateGUID"]
       21 CALL                             R8 2 1
       22 GETUPVAL                         R9 2
       23 LOADB                            R11 0
       24 NAMECALL                         R9 R9 K6 ["GenerateGUID"]
       26 CALL                             R9 2 1
       27 GETUPVAL                         R10 2
       28 LOADB                            R12 0
       29 NAMECALL                         R10 R10 K6 ["GenerateGUID"]
       31 CALL                             R10 2 1
       32 GETUPVAL                         R11 2
       33 LOADB                            R13 0
       34 NAMECALL                         R11 R11 K6 ["GenerateGUID"]
       36 CALL                             R11 2 1
       37 NEWTABLE                         R12 0 1
       39 DUPTABLE                         R13 K9 [{"role", "content"}]
       40 LOADK                            R14 K10 ["user"]
       41 SETTABLEKS                       R14 R13 K7 ["role"]
       43 NEWTABLE                         R14 0 1
       45 DUPTABLE                         R15 K13 [{"type", "text"}]
       46 LOADK                            R16 K12 ["text"]
       47 SETTABLEKS                       R16 R15 K11 ["type"]
       49 GETTABLEKS                       R16 R0 K14 ["prompt"]
       51 SETTABLEKS                       R16 R15 K12 ["text"]
       53 SETLIST                          R14 R15 1 [1]
       55 SETTABLEKS                       R14 R13 K8 ["content"]
       57 SETLIST                          R12 R13 1 [1]
       59 DUPTABLE                         R13 K37 [{"showError", "requestLLM", "setInputEnabled", "onToolCall", "observer", "setModelQuality", "onPacketReceived", "maxToolCalls", "timeoutMs", "messageGuid", "conversationSessionId", "threadId", "systemMessage", "initialMessages", "requestStartTime", "tools", "apiKeys", "selectedModel", "conversationUrl", "isSubagent", "messageId", "logRequestStop"}]
       60 NEWCLOSURE                       R14 P0
       61 CAPTURE                          REF R7
       62 CAPTURE                          REF R6
       63 CAPTURE                          VAL R5
       64 SETTABLEKS                       R14 R13 K15 ["showError"]
       66 GETTABLEKS                       R14 R0 K16 ["requestLLM"]
       68 SETTABLEKS                       R14 R13 K16 ["requestLLM"]
       70 NEWCLOSURE                       R14 P1
       71 CAPTURE                          REF R6
       72 CAPTURE                          VAL R5
       73 SETTABLEKS                       R14 R13 K17 ["setInputEnabled"]
       75 GETTABLEKS                       R15 R0 K38 ["callTool"]
       77 NEWCLOSURE                       R14 P2
       78 CAPTURE                          UPVAL U3
       79 CAPTURE                          VAL R15
       80 SETTABLEKS                       R14 R13 K18 ["onToolCall"]
       82 SETTABLEKS                       R4 R13 K19 ["observer"]
       84 DUPCLOSURE                       R14 K39 [PROTO_16]
       85 SETTABLEKS                       R14 R13 K20 ["setModelQuality"]
       87 GETTABLEKS                       R14 R0 K21 ["onPacketReceived"]
       89 SETTABLEKS                       R14 R13 K21 ["onPacketReceived"]
       91 GETTABLEKS                       R14 R2 K22 ["maxToolCalls"]
       93 SETTABLEKS                       R14 R13 K22 ["maxToolCalls"]
       95 GETUPVAL                         R14 4
       96 CALL                             R14 0 1
       97 SETTABLEKS                       R14 R13 K23 ["timeoutMs"]
       99 SETTABLEKS                       R8 R13 K24 ["messageGuid"]
      101 SETTABLEKS                       R9 R13 K25 ["conversationSessionId"]
      103 SETTABLEKS                       R10 R13 K26 ["threadId"]
      105 GETTABLEKS                       R14 R2 K27 ["systemMessage"]
      107 SETTABLEKS                       R14 R13 K27 ["systemMessage"]
      109 SETTABLEKS                       R12 R13 K28 ["initialMessages"]
      111 GETIMPORT                        R14 K42 [os.clock]
      113 CALL                             R14 0 1
      114 SETTABLEKS                       R14 R13 K29 ["requestStartTime"]
      116 GETTABLEKS                       R14 R0 K43 ["formattedTools"]
      118 SETTABLEKS                       R14 R13 K30 ["tools"]
      120 LOADNIL                          R14
      121 SETTABLEKS                       R14 R13 K31 ["apiKeys"]
      123 GETTABLEKS                       R14 R2 K44 ["model"]
      125 SETTABLEKS                       R14 R13 K32 ["selectedModel"]
      127 GETTABLEKS                       R14 R2 K33 ["conversationUrl"]
      129 SETTABLEKS                       R14 R13 K33 ["conversationUrl"]
      131 LOADB                            R14 1
      132 SETTABLEKS                       R14 R13 K34 ["isSubagent"]
      134 SETTABLEKS                       R11 R13 K35 ["messageId"]
      136 DUPCLOSURE                       R14 K45 [PROTO_17]
      137 SETTABLEKS                       R14 R13 K36 ["logRequestStop"]
      139 GETUPVAL                         R14 5
      140 GETTABLEKS                       R14 R14 K46 ["createProcessEventHandler"]
      142 CALL                             R14 0 3
      143 JUMPIFNOT                        R1 ; [+7]
      144 NEWCLOSURE                       R17 P5
      145 CAPTURE                          VAL R16
      146 CAPTURE                          REF R6
      147 CAPTURE                          REF R7
      148 CAPTURE                          VAL R5
      149 SETTABLEKS                       R17 R1 K47 ["cancel"]
      151 MOVE                             R17 R15
      152 MOVE                             R18 R13
      153 CALL                             R17 1 1
      154 DUPTABLE                         R18 K52 [{"threadId", "messages", "tools", "system", "messageGuid", "isFirstMessage", "isAgenticMode", "selectedModel", "conversationUrl", "isSubagent"}]
      155 SETTABLEKS                       R10 R18 K26 ["threadId"]
      157 SETTABLEKS                       R12 R18 K48 ["messages"]
      159 GETTABLEKS                       R19 R0 K43 ["formattedTools"]
      161 SETTABLEKS                       R19 R18 K30 ["tools"]
      163 GETTABLEKS                       R19 R2 K27 ["systemMessage"]
      165 SETTABLEKS                       R19 R18 K49 ["system"]
      167 SETTABLEKS                       R8 R18 K24 ["messageGuid"]
      169 LOADB                            R19 1
      170 SETTABLEKS                       R19 R18 K50 ["isFirstMessage"]
      172 LOADB                            R19 0
      173 SETTABLEKS                       R19 R18 K51 ["isAgenticMode"]
      175 GETTABLEKS                       R19 R2 K44 ["model"]
      177 SETTABLEKS                       R19 R18 K32 ["selectedModel"]
      179 GETTABLEKS                       R19 R2 K33 ["conversationUrl"]
      181 SETTABLEKS                       R19 R18 K33 ["conversationUrl"]
      183 LOADB                            R19 1
      184 SETTABLEKS                       R19 R18 K34 ["isSubagent"]
      186 GETTABLEKS                       R19 R0 K16 ["requestLLM"]
      188 MOVE                             R20 R18
      189 GETTABLEKS                       R21 R17 K53 ["processEvent"]
      191 CALL                             R19 2 0
      192 JUMPIF                           R6 ; [+3]
      193 NAMECALL                         R19 R5 K54 ["Wait"]
      195 CALL                             R19 1 0
      196 MOVE                             R19 R16
      197 CALL                             R19 0 0
      198 GETTABLEKS                       R19 R0 K4 ["contentId"]
      200 JUMPIFNOT                        R19 ; [+6]
      201 GETUPVAL                         R19 6
      202 GETTABLEKS                       R19 R19 K55 ["cleanup"]
      204 GETTABLEKS                       R20 R0 K4 ["contentId"]
      206 CALL                             R19 1 0
      207 DUPTABLE                         R19 K58 [{"finalAnswer", "error"}]
      208 GETTABLEKS                       R21 R3 K1 ["finalText"]
      210 JUMPIFEQKS                       R21 K3 [""] ; [+4]
      212 GETTABLEKS                       R20 R3 K1 ["finalText"]
      214 JUMP                             ; [+1]
      215 LOADK                            R20 K59 ["Empty result from subagent."]
      216 SETTABLEKS                       R20 R19 K56 ["finalAnswer"]
      218 SETTABLEKS                       R7 R19 K57 ["error"]
      220 CLOSEUPVALS                      R6
      221 RETURN                           R19 1

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
       15 GETTABLEKS                       R3 R0 K10 ["Components"]
       17 GETTABLEKS                       R3 R3 K11 ["Contexts"]
       19 GETTABLEKS                       R3 R3 K12 ["DefaultLLMProvider"]
       21 GETTABLEKS                       R3 R3 K13 ["LLMProcessEvent"]
       23 CALL                             R2 1 1
       24 GETIMPORT                        R3 K9 [require]
       26 GETTABLEKS                       R4 R0 K14 ["Parent"]
       28 GETTABLEKS                       R4 R4 K15 ["ModelContextProtocol"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R4 K9 [require]
       33 GETTABLEKS                       R5 R0 K14 ["Parent"]
       35 GETTABLEKS                       R5 R5 K16 ["Promise"]
       37 CALL                             R4 1 1
       38 GETIMPORT                        R5 K9 [require]
       40 GETTABLEKS                       R6 R0 K14 ["Parent"]
       42 GETTABLEKS                       R6 R6 K17 ["Signal"]
       44 CALL                             R5 1 1
       45 GETIMPORT                        R6 K9 [require]
       47 GETIMPORT                        R7 K1 [script]
       49 GETTABLEKS                       R7 R7 K14 ["Parent"]
       51 GETTABLEKS                       R7 R7 K18 ["SubagentProgressEvents"]
       53 CALL                             R6 1 1
       54 GETIMPORT                        R7 K9 [require]
       56 GETTABLEKS                       R8 R0 K19 ["Types"]
       58 CALL                             R7 1 1
       59 GETIMPORT                        R8 K9 [require]
       61 GETTABLEKS                       R9 R0 K20 ["Flags"]
       63 GETTABLEKS                       R9 R9 K21 ["FIntAssistantProcessEventTimeoutMS"]
       65 CALL                             R8 1 1
       66 GETIMPORT                        R9 K9 [require]
       68 GETIMPORT                        R10 K1 [script]
       70 GETTABLEKS                       R10 R10 K14 ["Parent"]
       72 GETTABLEKS                       R10 R10 K22 ["SubagentDefinition"]
       74 CALL                             R9 1 1
       75 DUPCLOSURE                       R10 K23 [PROTO_8]
       76 CAPTURE                          VAL R1
       77 CAPTURE                          VAL R6
       78 DUPCLOSURE                       R11 K24 [PROTO_12]
       79 CAPTURE                          VAL R4
       80 DUPCLOSURE                       R12 K25 [PROTO_19]
       81 CAPTURE                          VAL R10
       82 CAPTURE                          VAL R5
       83 CAPTURE                          VAL R1
       84 CAPTURE                          VAL R4
       85 CAPTURE                          VAL R8
       86 CAPTURE                          VAL R2
       87 CAPTURE                          VAL R6
       88 DUPTABLE                         R13 K27 [{"execute"}]
       89 SETTABLEKS                       R12 R13 K26 ["execute"]
       91 RETURN                           R13 1
