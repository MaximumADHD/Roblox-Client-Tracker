PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["type"]
        2 JUMPIFNOTEQKS                    R1 K1 ["text"] ; [+11]
        4 GETUPVAL                         R1 0
        5 LOADK                            R2 K2 [""]
        6 SETTABLEKS                       R2 R1 K3 ["finalText"]
        8 GETUPVAL                         R1 1
        9 LOADB                            R3 0
       10 NAMECALL                         R1 R1 K4 ["GenerateGUID"]
       12 CALL                             R1 2 -1
       13 RETURN                           R1 -1
       14 GETTABLEKS                       R1 R0 K0 ["type"]
       16 JUMPIFNOTEQKS                    R1 K5 ["tool_use"] ; [+7]
       18 GETUPVAL                         R1 1
       19 LOADB                            R3 0
       20 NAMECALL                         R1 R1 K4 ["GenerateGUID"]
       22 CALL                             R1 2 -1
       23 RETURN                           R1 -1
       24 LOADNIL                          R1
       25 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R3 R1 K0 ["type"]
        2 JUMPIFNOTEQKS                    R3 K1 ["text_delta"] ; [+6]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R4 R1 K2 ["text"]
        7 SETTABLEKS                       R4 R3 K3 ["finalText"]
        9 RETURN                           R0 0

PROTO_3:
        0 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+18]
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R2 R3 K0 ["fireToolStart"]
        5 GETUPVAL                         R3 2
        6 DUPTABLE                         R4 K4 [{"toolUseId", "toolName", "input"}]
        7 GETTABLEKS                       R5 R1 K5 ["id"]
        9 SETTABLEKS                       R5 R4 K1 ["toolUseId"]
       11 GETTABLEKS                       R5 R1 K6 ["name"]
       13 SETTABLEKS                       R5 R4 K2 ["toolName"]
       15 GETTABLEKS                       R5 R1 K3 ["input"]
       17 SETTABLEKS                       R5 R4 K3 ["input"]
       19 CALL                             R2 2 0
       20 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+16]
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R2 R3 K0 ["fireToolComplete"]
        5 GETUPVAL                         R3 2
        6 DUPTABLE                         R4 K4 [{"toolUseId", "toolName", "toolResult"}]
        7 GETTABLEKS                       R5 R1 K5 ["id"]
        9 SETTABLEKS                       R5 R4 K1 ["toolUseId"]
       11 GETTABLEKS                       R5 R1 K6 ["name"]
       13 SETTABLEKS                       R5 R4 K2 ["toolName"]
       15 SETTABLEKS                       R1 R4 K3 ["toolResult"]
       17 CALL                             R2 2 0
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
        4 DUPTABLE                         R3 K8 [{"onNewMessage", "onContentStart", "onContentDelta", "onContentFinished", "onPreExecuteToolUse", "onToolResult", "checkToolConfirmationRequestAsync", "getToolCallOptions"}]
        5 DUPCLOSURE                       R4 K9 [PROTO_0]
        6 SETTABLEKS                       R4 R3 K0 ["onNewMessage"]
        8 NEWCLOSURE                       R4 P1
        9 CAPTURE                          VAL R0
       10 CAPTURE                          UPVAL U0
       11 SETTABLEKS                       R4 R3 K1 ["onContentStart"]
       13 NEWCLOSURE                       R4 P2
       14 CAPTURE                          VAL R0
       15 SETTABLEKS                       R4 R3 K2 ["onContentDelta"]
       17 DUPCLOSURE                       R4 K10 [PROTO_3]
       18 SETTABLEKS                       R4 R3 K3 ["onContentFinished"]
       20 NEWCLOSURE                       R4 P4
       21 CAPTURE                          VAL R2
       22 CAPTURE                          UPVAL U1
       23 CAPTURE                          VAL R1
       24 SETTABLEKS                       R4 R3 K4 ["onPreExecuteToolUse"]
       26 NEWCLOSURE                       R4 P5
       27 CAPTURE                          VAL R2
       28 CAPTURE                          UPVAL U1
       29 CAPTURE                          VAL R1
       30 SETTABLEKS                       R4 R3 K5 ["onToolResult"]
       32 DUPCLOSURE                       R4 K11 [PROTO_6]
       33 SETTABLEKS                       R4 R3 K6 ["checkToolConfirmationRequestAsync"]
       35 DUPCLOSURE                       R4 K12 [PROTO_7]
       36 SETTABLEKS                       R4 R3 K7 ["getToolCallOptions"]
       38 RETURN                           R3 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["name"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K1 ["arguments"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["new"]
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
        2 DUPTABLE                         R3 K2 [{"finalText"}]
        3 LOADK                            R4 K3 [""]
        4 SETTABLEKS                       R4 R3 K1 ["finalText"]
        6 GETUPVAL                         R4 0
        7 MOVE                             R5 R3
        8 GETTABLEKS                       R6 R0 K4 ["contentId"]
       10 CALL                             R4 2 1
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R5 R6 K5 ["new"]
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
       59 DUPTABLE                         R13 K36 [{"showError", "requestLLM", "setInputEnabled", "onToolCall", "observer", "setModelQuality", "onPacketReceived", "maxToolCalls", "timeoutMs", "messageGuid", "conversationSessionId", "threadId", "systemMessage", "initialMessages", "requestStartTime", "tools", "apiKeys", "selectedModel", "isSubagent", "messageId", "logRequestStop"}]
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
       75 GETTABLEKS                       R15 R0 K37 ["callTool"]
       77 NEWCLOSURE                       R14 P2
       78 CAPTURE                          UPVAL U3
       79 CAPTURE                          VAL R15
       80 SETTABLEKS                       R14 R13 K18 ["onToolCall"]
       82 SETTABLEKS                       R4 R13 K19 ["observer"]
       84 DUPCLOSURE                       R14 K38 [PROTO_16]
       85 SETTABLEKS                       R14 R13 K20 ["setModelQuality"]
       87 DUPCLOSURE                       R14 K39 [PROTO_17]
       88 SETTABLEKS                       R14 R13 K21 ["onPacketReceived"]
       90 GETTABLEKS                       R14 R2 K22 ["maxToolCalls"]
       92 SETTABLEKS                       R14 R13 K22 ["maxToolCalls"]
       94 GETUPVAL                         R14 4
       95 CALL                             R14 0 1
       96 SETTABLEKS                       R14 R13 K23 ["timeoutMs"]
       98 SETTABLEKS                       R8 R13 K24 ["messageGuid"]
      100 SETTABLEKS                       R9 R13 K25 ["conversationSessionId"]
      102 SETTABLEKS                       R10 R13 K26 ["threadId"]
      104 GETTABLEKS                       R14 R2 K27 ["systemMessage"]
      106 SETTABLEKS                       R14 R13 K27 ["systemMessage"]
      108 SETTABLEKS                       R12 R13 K28 ["initialMessages"]
      110 GETIMPORT                        R14 K42 [os.clock]
      112 CALL                             R14 0 1
      113 SETTABLEKS                       R14 R13 K29 ["requestStartTime"]
      115 GETTABLEKS                       R14 R0 K43 ["formattedTools"]
      117 SETTABLEKS                       R14 R13 K30 ["tools"]
      119 LOADNIL                          R14
      120 SETTABLEKS                       R14 R13 K31 ["apiKeys"]
      122 GETTABLEKS                       R14 R2 K44 ["model"]
      124 SETTABLEKS                       R14 R13 K32 ["selectedModel"]
      126 LOADB                            R14 1
      127 SETTABLEKS                       R14 R13 K33 ["isSubagent"]
      129 SETTABLEKS                       R11 R13 K34 ["messageId"]
      131 DUPCLOSURE                       R14 K45 [PROTO_18]
      132 SETTABLEKS                       R14 R13 K35 ["logRequestStop"]
      134 GETUPVAL                         R15 5
      135 GETTABLEKS                       R14 R15 K46 ["createProcessEventHandler"]
      137 CALL                             R14 0 3
      138 JUMPIFNOT                        R1 ; [+7]
      139 NEWCLOSURE                       R17 P6
      140 CAPTURE                          VAL R16
      141 CAPTURE                          REF R6
      142 CAPTURE                          REF R7
      143 CAPTURE                          VAL R5
      144 SETTABLEKS                       R17 R1 K47 ["cancel"]
      146 MOVE                             R17 R15
      147 MOVE                             R18 R13
      148 CALL                             R17 1 1
      149 DUPTABLE                         R18 K52 [{"threadId", "messages", "tools", "system", "messageGuid", "isFirstMessage", "isAgenticMode", "selectedModel", "isSubagent"}]
      150 SETTABLEKS                       R10 R18 K26 ["threadId"]
      152 SETTABLEKS                       R12 R18 K48 ["messages"]
      154 GETTABLEKS                       R19 R0 K43 ["formattedTools"]
      156 SETTABLEKS                       R19 R18 K30 ["tools"]
      158 GETTABLEKS                       R19 R2 K27 ["systemMessage"]
      160 SETTABLEKS                       R19 R18 K49 ["system"]
      162 SETTABLEKS                       R8 R18 K24 ["messageGuid"]
      164 LOADB                            R19 1
      165 SETTABLEKS                       R19 R18 K50 ["isFirstMessage"]
      167 LOADB                            R19 0
      168 SETTABLEKS                       R19 R18 K51 ["isAgenticMode"]
      170 GETTABLEKS                       R19 R2 K44 ["model"]
      172 SETTABLEKS                       R19 R18 K32 ["selectedModel"]
      174 LOADB                            R19 1
      175 SETTABLEKS                       R19 R18 K33 ["isSubagent"]
      177 GETTABLEKS                       R19 R0 K16 ["requestLLM"]
      179 MOVE                             R20 R18
      180 GETTABLEKS                       R21 R17 K53 ["processEvent"]
      182 CALL                             R19 2 0
      183 JUMPIF                           R6 ; [+3]
      184 NAMECALL                         R19 R5 K54 ["Wait"]
      186 CALL                             R19 1 0
      187 MOVE                             R19 R16
      188 CALL                             R19 0 0
      189 GETTABLEKS                       R19 R0 K4 ["contentId"]
      191 JUMPIFNOT                        R19 ; [+6]
      192 GETUPVAL                         R20 6
      193 GETTABLEKS                       R19 R20 K55 ["cleanup"]
      195 GETTABLEKS                       R20 R0 K4 ["contentId"]
      197 CALL                             R19 1 0
      198 DUPTABLE                         R19 K58 [{"finalAnswer", "error"}]
      199 GETTABLEKS                       R21 R3 K1 ["finalText"]
      201 JUMPIFEQKS                       R21 K3 [""] ; [+4]
      203 GETTABLEKS                       R20 R3 K1 ["finalText"]
      205 JUMP                             ; [+1]
      206 LOADK                            R20 K59 ["Empty result from subagent."]
      207 SETTABLEKS                       R20 R19 K56 ["finalAnswer"]
      209 SETTABLEKS                       R7 R19 K57 ["error"]
      211 CLOSEUPVALS                      R6
      212 RETURN                           R19 1

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
       15 GETTABLEKS                       R6 R0 K10 ["Components"]
       17 GETTABLEKS                       R5 R6 K11 ["Contexts"]
       19 GETTABLEKS                       R4 R5 K12 ["DefaultLLMProvider"]
       21 GETTABLEKS                       R3 R4 K13 ["LLMProcessEvent"]
       23 CALL                             R2 1 1
       24 GETIMPORT                        R3 K9 [require]
       26 GETTABLEKS                       R5 R0 K14 ["Parent"]
       28 GETTABLEKS                       R4 R5 K15 ["ModelContextProtocol"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R4 K9 [require]
       33 GETTABLEKS                       R6 R0 K14 ["Parent"]
       35 GETTABLEKS                       R5 R6 K16 ["Promise"]
       37 CALL                             R4 1 1
       38 GETIMPORT                        R5 K9 [require]
       40 GETTABLEKS                       R7 R0 K14 ["Parent"]
       42 GETTABLEKS                       R6 R7 K17 ["Signal"]
       44 CALL                             R5 1 1
       45 GETIMPORT                        R6 K9 [require]
       47 GETIMPORT                        R9 K1 [script]
       49 GETTABLEKS                       R8 R9 K14 ["Parent"]
       51 GETTABLEKS                       R7 R8 K18 ["SubagentProgressEvents"]
       53 CALL                             R6 1 1
       54 GETIMPORT                        R7 K9 [require]
       56 GETTABLEKS                       R8 R0 K19 ["Types"]
       58 CALL                             R7 1 1
       59 GETIMPORT                        R8 K9 [require]
       61 GETTABLEKS                       R10 R0 K20 ["Flags"]
       63 GETTABLEKS                       R9 R10 K21 ["FIntAssistantProcessEventTimeoutMS"]
       65 CALL                             R8 1 1
       66 GETIMPORT                        R9 K9 [require]
       68 GETIMPORT                        R12 K1 [script]
       70 GETTABLEKS                       R11 R12 K14 ["Parent"]
       72 GETTABLEKS                       R10 R11 K22 ["SubagentDefinition"]
       74 CALL                             R9 1 1
       75 DUPCLOSURE                       R10 K23 [PROTO_8]
       76 CAPTURE                          VAL R1
       77 CAPTURE                          VAL R6
       78 DUPCLOSURE                       R11 K24 [PROTO_12]
       79 CAPTURE                          VAL R4
       80 DUPCLOSURE                       R12 K25 [PROTO_20]
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
