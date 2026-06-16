PROTO_0:
        0 MOVE                             R1 R0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 GETTABLEKS                       R6 R5 K0 ["inputSchema"]
        6 JUMPIFNOT                        R6 ; [+24]
        7 GETTABLEKS                       R6 R5 K0 ["inputSchema"]
        9 GETTABLEKS                       R6 R6 K1 ["properties"]
       11 JUMPIFNOT                        R6 ; [+19]
       12 GETIMPORT                        R6 K3 [next]
       14 GETTABLEKS                       R7 R5 K0 ["inputSchema"]
       16 GETTABLEKS                       R7 R7 K1 ["properties"]
       18 CALL                             R6 1 1
       19 JUMPIFNOTEQKNIL                  R6 ; [+11]
       21 GETTABLEKS                       R6 R5 K0 ["inputSchema"]
       23 GETUPVAL                         R7 0
       24 GETTABLEKS                       R7 R7 K4 ["Types"]
       26 GETTABLEKS                       R7 R7 K5 ["emptyObject"]
       28 CALL                             R7 0 1
       29 SETTABLEKS                       R7 R6 K1 ["properties"]
       31 FORGLOOP                         R1 2 ; [-28]
       33 RETURN                           R0 1

PROTO_1:
        0 GETTABLEKS                       R3 R0 K0 ["failures"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K1 ["getMcpClientIdentifier"]
        5 CALL                             R4 0 1
        6 GETTABLE                         R2 R3 R4
        7 JUMPIFNOTEQKNIL                  R2 ; [+2]
        9 LOADB                            R1 0 +1
       10 LOADB                            R1 1
       11 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+2]
        2 GETUPVAL                         R1 0
        3 CALL                             R1 0 0
        4 GETUPVAL                         R1 1
        5 JUMPIFNOT                        R1 ; [+3]
        6 GETUPVAL                         R1 1
        7 MOVE                             R2 R0
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["user_requested_cancellation"]
        2 NAMECALL                         R0 R0 K1 ["Fire"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_4:
        0 MOVE                             R3 R2
        1 NEWCLOSURE                       R4 P0
        2 CAPTURE                          UPVAL U0
        3 CALL                             R3 1 0
        4 GETUPVAL                         R3 1
        5 GETUPVAL                         R5 2
        6 GETTABLEKS                       R5 R5 K0 ["name"]
        8 GETUPVAL                         R6 2
        9 GETTABLEKS                       R6 R6 K1 ["arguments"]
       11 GETUPVAL                         R7 3
       12 GETUPVAL                         R8 4
       13 NAMECALL                         R3 R3 K2 ["callTool"]
       15 CALL                             R3 5 1
       16 MOVE                             R5 R0
       17 NAMECALL                         R3 R3 K3 ["andThen"]
       19 CALL                             R3 2 1
       20 MOVE                             R5 R1
       21 NAMECALL                         R3 R3 K4 ["catch"]
       23 CALL                             R3 2 0
       24 RETURN                           R0 0

PROTO_5:
        0 LOADNIL                          R1
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R4 R0 K0 ["name"]
        4 NAMECALL                         R2 R2 K1 ["getClientForStaticTool"]
        6 CALL                             R2 2 1
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K2 ["getMcpClientIdentifier"]
       10 CALL                             R3 0 1
       11 JUMPIFNOTEQ                      R2 R3 ; [+13]
       13 GETUPVAL                         R1 2
       14 GETTABLEKS                       R2 R0 K3 ["contentId"]
       16 SETTABLEKS                       R2 R1 K3 ["contentId"]
       18 GETUPVAL                         R2 3
       19 CALL                             R2 0 1
       20 JUMPIFNOT                        R2 ; [+4]
       21 GETTABLEKS                       R2 R0 K4 ["toolId"]
       23 SETTABLEKS                       R2 R1 K4 ["toolId"]
       25 GETTABLEKS                       R3 R0 K5 ["toolCallOptions"]
       27 JUMPIFNOT                        R3 ; [+6]
       28 GETIMPORT                        R2 K8 [table.clone]
       30 GETTABLEKS                       R3 R0 K5 ["toolCallOptions"]
       32 CALL                             R2 1 1
       33 JUMPIF                           R2 ; [+2]
       34 NEWTABLE                         R2 0 0
       36 LOADK                            R3 K9 [200000000]
       37 SETTABLEKS                       R3 R2 K10 ["timeout"]
       39 GETTABLEKS                       R3 R2 K11 ["onprogress"]
       41 GETTABLEKS                       R4 R2 K12 ["resetTimeoutOnProgress"]
       43 JUMPIFNOT                        R4 ; [+5]
       44 NEWCLOSURE                       R4 P0
       45 CAPTURE                          UPVAL U4
       46 CAPTURE                          VAL R3
       47 SETTABLEKS                       R4 R2 K11 ["onprogress"]
       49 GETUPVAL                         R4 5
       50 GETTABLEKS                       R4 R4 K13 ["new"]
       52 CALL                             R4 0 1
       53 SETTABLEKS                       R4 R2 K14 ["signal"]
       55 GETUPVAL                         R5 6
       56 GETTABLEKS                       R5 R5 K13 ["new"]
       58 NEWCLOSURE                       R6 P1
       59 CAPTURE                          VAL R4
       60 CAPTURE                          UPVAL U0
       61 CAPTURE                          VAL R0
       62 CAPTURE                          VAL R2
       63 CAPTURE                          REF R1
       64 CALL                             R5 1 -1
       65 CLOSEUPVALS                      R1
       66 RETURN                           R5 -1

PROTO_6:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R2
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 RETURN                           R3 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+5]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["popTeamCommunicationAsSystemReminders"]
        5 CALL                             R0 0 -1
        6 RETURN                           R0 -1
        7 NEWTABLE                         R0 0 0
        9 RETURN                           R0 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 NEWTABLE                         R2 0 1
        3 MOVE                             R3 R0
        4 SETLIST                          R2 R3 1 [1]
        6 CALL                             R1 1 0
        7 RETURN                           R0 1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["setInputEnabled"]
        3 MOVE                             R2 R0
        4 DUPTABLE                         R3 K2 [{"focus"}]
        5 LOADB                            R4 1
        6 SETTABLEKS                       R4 R3 K1 ["focus"]
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["Compaction"]
        2 LOADK                            R4 K1 ["Complete"]
        3 NAMECALL                         R1 R1 K2 ["getText"]
        5 CALL                             R1 3 1
        6 SETTABLEKS                       R1 R0 K3 ["summary"]
        8 LOADB                            R1 0
        9 SETTABLEKS                       R1 R0 K4 ["generating"]
       11 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getSetting"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+4]
        6 JUMPIFEQKS                       R1 K1 [""] ; [+3]
        8 GETUPVAL                         R2 1
        9 SETTABLE                         R1 R2 R0
       10 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R2 K2 [{"errorType", "messageGuid"}]
        2 SETTABLEKS                       R0 R2 K0 ["errorType"]
        4 GETUPVAL                         R3 1
        5 SETTABLEKS                       R3 R2 K1 ["messageGuid"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setLastPacketTime"]
        3 GETIMPORT                        R1 K3 [os.clock]
        5 CALL                             R1 0 -1
        6 CALL                             R0 -1 0
        7 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setLastPacketTime"]
        3 GETIMPORT                        R1 K3 [os.clock]
        5 CALL                             R1 0 -1
        6 CALL                             R0 -1 0
        7 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["setInputEnabled"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 0
        6 GETUPVAL                         R2 1
        7 CALL                             R2 0 1
        8 JUMPIFNOT                        R2 ; [+17]
        9 JUMPIFNOT                        R0 ; [+16]
       10 GETUPVAL                         R2 2
       11 JUMPIF                           R2 ; [+14]
       12 LOADB                            R2 1
       13 SETUPVAL                         R2 2
       14 GETUPVAL                         R2 3
       15 DUPTABLE                         R3 K4 [{"sessionId", "threadId", "messageId"}]
       16 GETUPVAL                         R4 4
       17 SETTABLEKS                       R4 R3 K1 ["sessionId"]
       19 GETUPVAL                         R4 5
       20 SETTABLEKS                       R4 R3 K2 ["threadId"]
       22 GETUPVAL                         R4 6
       23 SETTABLEKS                       R4 R3 K3 ["messageId"]
       25 CALL                             R2 1 0
       26 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETTABLEKS                       R2 R1 K0 ["onNewMessage"]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 0
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K1 ["get"]
        9 CALL                             R2 0 1
       10 GETTABLEKS                       R2 R2 K2 ["EventLogger"]
       12 GETUPVAL                         R4 2
       13 CALL                             R4 0 1
       14 JUMPIFNOT                        R4 ; [+2]
       15 MOVE                             R3 R0
       16 JUMP                             ; [+4]
       17 GETTABLEKS                       R3 R2 K3 ["getMessageGuid"]
       19 MOVE                             R4 R0
       20 CALL                             R3 1 1
       21 NEWTABLE                         R4 0 0
       23 NEWCLOSURE                       R5 P0
       24 CAPTURE                          UPVAL U3
       25 CAPTURE                          VAL R4
       26 GETUPVAL                         R6 4
       27 GETTABLEKS                       R6 R6 K4 ["CLAUDE_API_KEY"]
       29 GETUPVAL                         R7 3
       30 GETTABLEKS                       R7 R7 K5 ["getSetting"]
       32 MOVE                             R8 R6
       33 CALL                             R7 1 1
       34 JUMPIFNOT                        R7 ; [+3]
       35 JUMPIFEQKS                       R7 K6 [""] ; [+2]
       37 SETTABLE                         R7 R4 R6
       38 GETUPVAL                         R6 4
       39 GETTABLEKS                       R6 R6 K7 ["GEMINI_API_KEY"]
       41 GETUPVAL                         R7 3
       42 GETTABLEKS                       R7 R7 K5 ["getSetting"]
       44 MOVE                             R8 R6
       45 CALL                             R7 1 1
       46 JUMPIFNOT                        R7 ; [+3]
       47 JUMPIFEQKS                       R7 K6 [""] ; [+2]
       49 SETTABLE                         R7 R4 R6
       50 GETUPVAL                         R6 4
       51 GETTABLEKS                       R6 R6 K8 ["OPENAI_API_KEY"]
       53 GETUPVAL                         R7 3
       54 GETTABLEKS                       R7 R7 K5 ["getSetting"]
       56 MOVE                             R8 R6
       57 CALL                             R7 1 1
       58 JUMPIFNOT                        R7 ; [+3]
       59 JUMPIFEQKS                       R7 K6 [""] ; [+2]
       61 SETTABLE                         R7 R4 R6
       62 GETUPVAL                         R6 5
       63 GETTABLEKS                       R6 R6 K9 ["selectedModel"]
       65 DUPTABLE                         R7 K17 [{"messageGuid", "sessionId", "threadId", "message", "model", "assistantMode", "attachments"}]
       66 SETTABLEKS                       R3 R7 K10 ["messageGuid"]
       68 GETUPVAL                         R8 6
       69 SETTABLEKS                       R8 R7 K11 ["sessionId"]
       71 GETUPVAL                         R9 2
       72 CALL                             R9 0 1
       73 JUMPIFNOT                        R9 ; [+2]
       74 GETUPVAL                         R8 7
       75 JUMP                             ; [+1]
       76 LOADNIL                          R8
       77 SETTABLEKS                       R8 R7 K12 ["threadId"]
       79 GETUPVAL                         R8 8
       80 SETTABLEKS                       R8 R7 K13 ["message"]
       82 SETTABLEKS                       R6 R7 K14 ["model"]
       84 GETUPVAL                         R9 9
       85 CALL                             R9 0 1
       86 JUMPIFNOT                        R9 ; [+2]
       87 GETUPVAL                         R8 10
       88 JUMPIF                           R8 ; [+1]
       89 LOADNIL                          R8
       90 SETTABLEKS                       R8 R7 K15 ["assistantMode"]
       92 GETUPVAL                         R10 11
       93 LENGTH                           R9 R10
       94 LOADN                            R10 0
       95 JUMPIFNOTLT                      R10 R9 ; [+3]
       97 GETUPVAL                         R8 11
       98 JUMP                             ; [+1]
       99 LOADNIL                          R8
      100 SETTABLEKS                       R8 R7 K16 ["attachments"]
      102 GETTABLEKS                       R8 R2 K18 ["logUserMessageSent"]
      104 MOVE                             R9 R7
      105 CALL                             R8 1 0
      106 NEWCLOSURE                       R8 P1
      107 CAPTURE                          UPVAL U12
      108 CAPTURE                          VAL R3
      109 NEWCLOSURE                       R9 P2
      110 CAPTURE                          UPVAL U13
      111 NEWCLOSURE                       R10 P3
      112 CAPTURE                          UPVAL U13
      113 DUPTABLE                         R11 K22 [{"messageGuid", "sessionId", "threadId", "messageId", "contentId", "toolId", "assistantMode"}]
      114 SETTABLEKS                       R3 R11 K10 ["messageGuid"]
      116 GETUPVAL                         R12 6
      117 SETTABLEKS                       R12 R11 K11 ["sessionId"]
      119 GETUPVAL                         R12 7
      120 SETTABLEKS                       R12 R11 K12 ["threadId"]
      122 SETTABLEKS                       R0 R11 K19 ["messageId"]
      124 LOADNIL                          R12
      125 SETTABLEKS                       R12 R11 K20 ["contentId"]
      127 LOADNIL                          R12
      128 SETTABLEKS                       R12 R11 K21 ["toolId"]
      130 GETUPVAL                         R13 9
      131 CALL                             R13 0 1
      132 JUMPIFNOT                        R13 ; [+2]
      133 GETUPVAL                         R12 10
      134 JUMPIF                           R12 ; [+1]
      135 LOADNIL                          R12
      136 SETTABLEKS                       R12 R11 K15 ["assistantMode"]
      138 LOADB                            R12 0
      139 NEWCLOSURE                       R13 P4
      140 CAPTURE                          UPVAL U14
      141 CAPTURE                          UPVAL U2
      142 CAPTURE                          REF R12
      143 CAPTURE                          UPVAL U15
      144 CAPTURE                          UPVAL U6
      145 CAPTURE                          UPVAL U7
      146 CAPTURE                          VAL R0
      147 GETUPVAL                         R14 16
      148 GETTABLEKS                       R14 R14 K23 ["createLLMSession"]
      150 DUPTABLE                         R15 K44 [{"showError", "messageGuid", "conversationSessionId", "threadId", "requestLLM", "systemMessage", "observer", "setInputEnabled", "onToolCall", "setModelQuality", "onPacketReceived", "maxToolCalls", "timeoutMs", "initialMessages", "requestStartTime", "tools", "apiKeys", "selectedModel", "messageId", "logRequestStop", "assistantMode", "compactedStore", "selectedProvider", "uiMessageCount", "getInterruptionMessages"}]
      151 SETTABLEKS                       R8 R15 K24 ["showError"]
      153 SETTABLEKS                       R3 R15 K10 ["messageGuid"]
      155 GETUPVAL                         R16 6
      156 SETTABLEKS                       R16 R15 K25 ["conversationSessionId"]
      158 GETUPVAL                         R16 7
      159 SETTABLEKS                       R16 R15 K12 ["threadId"]
      161 GETUPVAL                         R16 17
      162 SETTABLEKS                       R16 R15 K26 ["requestLLM"]
      164 GETUPVAL                         R16 18
      165 SETTABLEKS                       R16 R15 K27 ["systemMessage"]
      167 SETTABLEKS                       R1 R15 K28 ["observer"]
      169 SETTABLEKS                       R13 R15 K29 ["setInputEnabled"]
      171 GETUPVAL                         R17 19
      172 NEWCLOSURE                       R16 P5
      173 CAPTURE                          VAL R17
      174 CAPTURE                          UPVAL U4
      175 CAPTURE                          VAL R11
      176 CAPTURE                          UPVAL U20
      177 CAPTURE                          VAL R10
      178 CAPTURE                          UPVAL U21
      179 CAPTURE                          UPVAL U22
      180 SETTABLEKS                       R16 R15 K30 ["onToolCall"]
      182 GETUPVAL                         R16 23
      183 GETTABLEKS                       R16 R16 K31 ["setModelQuality"]
      185 SETTABLEKS                       R16 R15 K31 ["setModelQuality"]
      187 SETTABLEKS                       R9 R15 K32 ["onPacketReceived"]
      189 GETUPVAL                         R16 24
      190 CALL                             R16 0 1
      191 SETTABLEKS                       R16 R15 K33 ["maxToolCalls"]
      193 GETUPVAL                         R16 25
      194 CALL                             R16 0 1
      195 SETTABLEKS                       R16 R15 K34 ["timeoutMs"]
      197 GETUPVAL                         R16 26
      198 SETTABLEKS                       R16 R15 K35 ["initialMessages"]
      200 GETUPVAL                         R16 27
      201 SETTABLEKS                       R16 R15 K36 ["requestStartTime"]
      203 GETUPVAL                         R16 28
      204 SETTABLEKS                       R16 R15 K37 ["tools"]
      206 SETTABLEKS                       R4 R15 K38 ["apiKeys"]
      208 SETTABLEKS                       R6 R15 K9 ["selectedModel"]
      210 SETTABLEKS                       R0 R15 K19 ["messageId"]
      212 GETUPVAL                         R16 29
      213 SETTABLEKS                       R16 R15 K39 ["logRequestStop"]
      215 GETUPVAL                         R17 9
      216 CALL                             R17 0 1
      217 JUMPIFNOT                        R17 ; [+2]
      218 GETUPVAL                         R16 10
      219 JUMPIF                           R16 ; [+1]
      220 LOADNIL                          R16
      221 SETTABLEKS                       R16 R15 K15 ["assistantMode"]
      223 GETUPVAL                         R16 30
      224 SETTABLEKS                       R16 R15 K40 ["compactedStore"]
      226 GETUPVAL                         R16 5
      227 GETTABLEKS                       R16 R16 K41 ["selectedProvider"]
      229 SETTABLEKS                       R16 R15 K41 ["selectedProvider"]
      231 GETUPVAL                         R16 31
      232 SETTABLEKS                       R16 R15 K42 ["uiMessageCount"]
      234 GETUPVAL                         R17 32
      235 CALL                             R17 0 1
      236 JUMPIFNOT                        R17 ; [+2]
      237 GETUPVAL                         R16 33
      238 JUMP                             ; [+1]
      239 LOADNIL                          R16
      240 SETTABLEKS                       R16 R15 K43 ["getInterruptionMessages"]
      242 CALL                             R14 1 1
      243 DUPTABLE                         R15 K49 [{"threadId", "messages", "tools", "system", "messageGuid", "isFirstMessage", "isAgenticMode", "apiKeys", "selectedModel", "assistantMode"}]
      244 GETUPVAL                         R16 7
      245 SETTABLEKS                       R16 R15 K12 ["threadId"]
      247 GETUPVAL                         R16 26
      248 SETTABLEKS                       R16 R15 K45 ["messages"]
      250 GETUPVAL                         R16 28
      251 SETTABLEKS                       R16 R15 K37 ["tools"]
      253 GETUPVAL                         R16 18
      254 SETTABLEKS                       R16 R15 K46 ["system"]
      256 SETTABLEKS                       R3 R15 K10 ["messageGuid"]
      258 LOADB                            R16 1
      259 SETTABLEKS                       R16 R15 K47 ["isFirstMessage"]
      261 LOADB                            R16 0
      262 SETTABLEKS                       R16 R15 K48 ["isAgenticMode"]
      264 SETTABLEKS                       R4 R15 K38 ["apiKeys"]
      266 SETTABLEKS                       R6 R15 K9 ["selectedModel"]
      268 GETUPVAL                         R17 9
      269 CALL                             R17 0 1
      270 JUMPIFNOT                        R17 ; [+2]
      271 GETUPVAL                         R16 10
      272 JUMPIF                           R16 ; [+1]
      273 LOADNIL                          R16
      274 SETTABLEKS                       R16 R15 K15 ["assistantMode"]
      276 GETUPVAL                         R16 17
      277 MOVE                             R17 R15
      278 GETTABLEKS                       R18 R14 K50 ["processEvent"]
      280 CALL                             R16 2 0
      281 CLOSEUPVALS                      R12
      282 RETURN                           R0 0

PROTO_17:
        0 LOADNIL                          R1
        1 GETUPVAL                         R2 0
        2 CALL                             R2 0 1
        3 JUMPIFNOT                        R2 ; [+15]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["selectedProvider"]
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R3 R3 K1 ["LLMProviderTypes"]
       10 GETTABLEKS                       R3 R3 K2 ["Studio"]
       12 JUMPIFEQ                         R2 R3 ; [+6]
       14 DUPTABLE                         R2 K4 [{"attachRawImageContent"}]
       15 LOADB                            R3 1
       16 SETTABLEKS                       R3 R2 K3 ["attachRawImageContent"]
       18 MOVE                             R1 R2
       19 LOADNIL                          R2
       20 LOADNIL                          R3
       21 LOADN                            R4 0
       22 GETUPVAL                         R5 3
       23 GETTABLEKS                       R5 R5 K5 ["get"]
       25 GETUPVAL                         R6 4
       26 CALL                             R5 1 1
       27 JUMPIFNOT                        R5 ; [+54]
       28 GETTABLEKS                       R6 R5 K6 ["summary"]
       30 JUMPIFNOT                        R6 ; [+51]
       31 GETTABLEKS                       R6 R5 K7 ["compactedUIMessageCount"]
       33 LOADN                            R7 0
       34 JUMPIFNOTLT                      R7 R6 ; [+47]
       36 GETUPVAL                         R6 5
       37 MOVE                             R7 R0
       38 GETTABLEKS                       R8 R5 K7 ["compactedUIMessageCount"]
       40 MOVE                             R9 R1
       41 CALL                             R6 3 1
       42 MOVE                             R3 R6
       43 GETTABLEKS                       R4 R3 K8 ["uiMessageCount"]
       45 GETUPVAL                         R6 6
       46 GETTABLEKS                       R6 R6 K9 ["reconstructFromStore"]
       48 GETTABLEKS                       R7 R3 K10 ["messages"]
       50 MOVE                             R8 R5
       51 DUPTABLE                         R9 K13 [{"threadId", "selectedModel"}]
       52 GETUPVAL                         R10 4
       53 SETTABLEKS                       R10 R9 K11 ["threadId"]
       55 GETUPVAL                         R10 1
       56 GETTABLEKS                       R10 R10 K12 ["selectedModel"]
       58 SETTABLEKS                       R10 R9 K12 ["selectedModel"]
       60 CALL                             R6 3 1
       61 JUMPIFNOT                        R6 ; [+11]
       62 GETTABLEKS                       R2 R6 K14 ["compactedStore"]
       64 DUPTABLE                         R7 K15 [{"messages", "uiMessageCount"}]
       65 GETTABLEKS                       R8 R6 K10 ["messages"]
       67 SETTABLEKS                       R8 R7 K10 ["messages"]
       69 SETTABLEKS                       R4 R7 K8 ["uiMessageCount"]
       71 MOVE                             R3 R7
       72 JUMP                             ; [+17]
       73 GETUPVAL                         R7 5
       74 MOVE                             R8 R0
       75 LOADNIL                          R9
       76 MOVE                             R10 R1
       77 CALL                             R7 3 1
       78 MOVE                             R3 R7
       79 GETTABLEKS                       R4 R3 K8 ["uiMessageCount"]
       81 JUMP                             ; [+8]
       82 GETUPVAL                         R6 5
       83 MOVE                             R7 R0
       84 LOADNIL                          R8
       85 MOVE                             R9 R1
       86 CALL                             R6 3 1
       87 MOVE                             R3 R6
       88 GETTABLEKS                       R4 R3 K8 ["uiMessageCount"]
       90 JUMPIF                           R2 ; [+140]
       91 GETUPVAL                         R6 6
       92 GETTABLEKS                       R6 R6 K16 ["shouldCompact"]
       94 GETTABLEKS                       R7 R3 K10 ["messages"]
       96 DUPTABLE                         R8 K18 [{"isSubagent", "selectedModel"}]
       97 LOADB                            R9 0
       98 SETTABLEKS                       R9 R8 K17 ["isSubagent"]
      100 GETUPVAL                         R9 1
      101 GETTABLEKS                       R9 R9 K12 ["selectedModel"]
      103 SETTABLEKS                       R9 R8 K12 ["selectedModel"]
      105 CALL                             R6 2 1
      106 JUMPIFNOT                        R6 ; [+124]
      107 GETUPVAL                         R6 7
      108 GETTABLEKS                       R6 R6 K19 ["setLastPacketTime"]
      110 GETIMPORT                        R7 K22 [os.clock]
      112 CALL                             R7 0 -1
      113 CALL                             R6 -1 0
      114 GETUPVAL                         R6 8
      115 DUPTABLE                         R7 K24 [{"role"}]
      116 LOADK                            R8 K25 ["assistant"]
      117 SETTABLEKS                       R8 R7 K23 ["role"]
      119 CALL                             R6 1 1
      120 GETUPVAL                         R7 9
      121 DUPTABLE                         R8 K28 [{"messageId", "content"}]
      122 SETTABLEKS                       R6 R8 K26 ["messageId"]
      124 DUPTABLE                         R9 K31 [{"type", "summary", "generating"}]
      125 GETUPVAL                         R10 10
      126 GETTABLEKS                       R10 R10 K32 ["Type"]
      128 SETTABLEKS                       R10 R9 K29 ["type"]
      130 GETUPVAL                         R10 11
      131 LOADK                            R12 K33 ["Compaction"]
      132 LOADK                            R13 K34 ["InProgress"]
      133 NAMECALL                         R10 R10 K35 ["getText"]
      135 CALL                             R10 3 1
      136 SETTABLEKS                       R10 R9 K6 ["summary"]
      138 LOADB                            R10 1
      139 SETTABLEKS                       R10 R9 K30 ["generating"]
      141 SETTABLEKS                       R9 R8 K27 ["content"]
      143 CALL                             R7 1 1
      144 NEWTABLE                         R8 0 0
      146 NEWTABLE                         R9 0 3
      148 GETUPVAL                         R12 2
      149 GETTABLEKS                       R12 R12 K36 ["CLAUDE_API_KEY"]
      151 GETUPVAL                         R13 2
      152 GETTABLEKS                       R13 R13 K37 ["GEMINI_API_KEY"]
      154 GETUPVAL                         R14 2
      155 GETTABLEKS                       R14 R14 K38 ["OPENAI_API_KEY"]
      157 SETLIST                          R9 R12 3 [1]
      159 LOADNIL                          R10
      160 LOADNIL                          R11
      161 FORGPREP                         R9
      162 GETUPVAL                         R14 12
      163 GETTABLEKS                       R14 R14 K39 ["getSetting"]
      165 MOVE                             R15 R13
      166 CALL                             R14 1 1
      167 JUMPIFNOT                        R14 ; [+3]
      168 JUMPIFEQKS                       R14 K40 [""] ; [+2]
      170 SETTABLE                         R14 R8 R13
      171 FORGLOOP                         R9 2 ; [-10]
      173 GETUPVAL                         R9 6
      174 GETTABLEKS                       R9 R9 K41 ["compact"]
      176 GETTABLEKS                       R10 R3 K10 ["messages"]
      178 DUPTABLE                         R11 K44 [{"requestLLM", "threadId", "compactedStore", "selectedModel", "selectedProvider", "apiKeys", "uiMessageCount"}]
      179 GETUPVAL                         R12 13
      180 SETTABLEKS                       R12 R11 K42 ["requestLLM"]
      182 GETUPVAL                         R12 4
      183 SETTABLEKS                       R12 R11 K11 ["threadId"]
      185 SETTABLEKS                       R5 R11 K14 ["compactedStore"]
      187 GETUPVAL                         R12 1
      188 GETTABLEKS                       R12 R12 K12 ["selectedModel"]
      190 SETTABLEKS                       R12 R11 K12 ["selectedModel"]
      192 GETUPVAL                         R12 1
      193 GETTABLEKS                       R12 R12 K0 ["selectedProvider"]
      195 SETTABLEKS                       R12 R11 K0 ["selectedProvider"]
      197 SETTABLEKS                       R8 R11 K43 ["apiKeys"]
      199 SETTABLEKS                       R4 R11 K8 ["uiMessageCount"]
      201 CALL                             R9 2 1
      202 DUPTABLE                         R10 K15 [{"messages", "uiMessageCount"}]
      203 GETTABLEKS                       R11 R9 K10 ["messages"]
      205 SETTABLEKS                       R11 R10 K10 ["messages"]
      207 SETTABLEKS                       R4 R10 K8 ["uiMessageCount"]
      209 MOVE                             R3 R10
      210 GETTABLEKS                       R2 R9 K14 ["compactedStore"]
      212 JUMPIFNOT                        R7 ; [+11]
      213 GETUPVAL                         R10 14
      214 DUPTABLE                         R11 K47 [{"messageId", "contentId", "transformFn"}]
      215 SETTABLEKS                       R6 R11 K26 ["messageId"]
      217 SETTABLEKS                       R7 R11 K45 ["contentId"]
      219 DUPCLOSURE                       R12 K48 [PROTO_10]
      220 CAPTURE                          UPVAL U11
      221 SETTABLEKS                       R12 R11 K46 ["transformFn"]
      223 CALL                             R10 1 0
      224 GETUPVAL                         R10 7
      225 GETTABLEKS                       R10 R10 K19 ["setLastPacketTime"]
      227 GETIMPORT                        R11 K22 [os.clock]
      229 CALL                             R11 0 -1
      230 CALL                             R10 -1 0
      231 GETTABLEKS                       R6 R3 K10 ["messages"]
      233 GETUPVAL                         R7 15
      234 CALL                             R7 0 1
      235 JUMPIFNOT                        R7 ; [+4]
      236 GETIMPORT                        R7 K50 [print]
      238 LOADK                            R8 K51 ["Preparing message for response contents..."]
      239 CALL                             R7 1 0
      240 GETUPVAL                         R7 16
      241 GETUPVAL                         R8 2
      242 GETTABLEKS                       R8 R8 K52 ["ROLE"]
      244 GETTABLEKS                       R8 R8 K53 ["Assistant"]
      246 NEWCLOSURE                       R9 P1
      247 CAPTURE                          UPVAL U17
      248 CAPTURE                          UPVAL U18
      249 CAPTURE                          UPVAL U19
      250 CAPTURE                          UPVAL U12
      251 CAPTURE                          UPVAL U2
      252 CAPTURE                          UPVAL U1
      253 CAPTURE                          UPVAL U20
      254 CAPTURE                          UPVAL U4
      255 CAPTURE                          UPVAL U21
      256 CAPTURE                          UPVAL U22
      257 CAPTURE                          UPVAL U23
      258 CAPTURE                          UPVAL U24
      259 CAPTURE                          UPVAL U25
      260 CAPTURE                          UPVAL U7
      261 CAPTURE                          UPVAL U26
      262 CAPTURE                          UPVAL U27
      263 CAPTURE                          UPVAL U28
      264 CAPTURE                          UPVAL U13
      265 CAPTURE                          UPVAL U29
      266 CAPTURE                          UPVAL U30
      267 CAPTURE                          UPVAL U31
      268 CAPTURE                          UPVAL U32
      269 CAPTURE                          UPVAL U33
      270 CAPTURE                          UPVAL U34
      271 CAPTURE                          UPVAL U35
      272 CAPTURE                          UPVAL U36
      273 CAPTURE                          VAL R6
      274 CAPTURE                          UPVAL U37
      275 CAPTURE                          UPVAL U38
      276 CAPTURE                          UPVAL U39
      277 CAPTURE                          REF R2
      278 CAPTURE                          REF R4
      279 CAPTURE                          UPVAL U40
      280 CAPTURE                          UPVAL U41
      281 CALL                             R7 2 0
      282 CLOSEUPVALS                      R2
      283 RETURN                           R0 0

PROTO_18:
        0 DUPTABLE                         R1 K1 [{"useInternalToolDefinitions"}]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R3 R3 K2 ["selectedProvider"]
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R4 R4 K3 ["LLMProviderTypes"]
        7 GETTABLEKS                       R4 R4 K4 ["Studio"]
        9 JUMPIFEQ                         R3 R4 ; [+2]
       11 LOADB                            R2 0 +1
       12 LOADB                            R2 1
       13 SETTABLEKS                       R2 R1 K0 ["useInternalToolDefinitions"]
       15 GETUPVAL                         R2 2
       16 CALL                             R2 0 1
       17 JUMPIFNOT                        R2 ; [+3]
       18 GETUPVAL                         R2 3
       19 SETTABLEKS                       R2 R1 K5 ["assistantMode"]
       21 GETUPVAL                         R2 4
       22 CALL                             R2 0 1
       23 JUMPIFNOT                        R2 ; [+6]
       24 GETUPVAL                         R2 5
       25 SETTABLEKS                       R2 R1 K6 ["isMultiPlayerClientAgent"]
       27 GETUPVAL                         R2 6
       28 SETTABLEKS                       R2 R1 K7 ["isMultiPlayerClientAgentRunning"]
       30 GETUPVAL                         R2 7
       31 CALL                             R2 0 1
       32 JUMPIFNOT                        R2 ; [+4]
       33 DUPTABLE                         R2 K9 [{"_meta"}]
       34 SETTABLEKS                       R1 R2 K8 ["_meta"]
       36 MOVE                             R1 R2
       37 MOVE                             R4 R1
       38 NAMECALL                         R2 R0 K10 ["listTools"]
       40 CALL                             R2 2 1
       41 NAMECALL                         R2 R2 K11 ["await"]
       43 CALL                             R2 1 2
       44 JUMPIFNOT                        R2 ; [+12]
       45 GETTABLEKS                       R6 R3 K12 ["failures"]
       47 GETUPVAL                         R7 1
       48 GETTABLEKS                       R7 R7 K13 ["getMcpClientIdentifier"]
       50 CALL                             R7 0 1
       51 GETTABLE                         R5 R6 R7
       52 JUMPIFNOTEQKNIL                  R5 ; [+2]
       54 LOADB                            R4 0 +1
       55 LOADB                            R4 1
       56 JUMPIFNOT                        R4 ; [+25]
       57 GETUPVAL                         R4 8
       58 DUPTABLE                         R5 K15 [{"errorType"}]
       59 LOADK                            R6 K16 ["client_error"]
       60 SETTABLEKS                       R6 R5 K14 ["errorType"]
       62 CALL                             R4 1 0
       63 GETUPVAL                         R4 9
       64 GETTABLEKS                       R4 R4 K17 ["setInputEnabled"]
       66 LOADB                            R5 1
       67 CALL                             R4 1 0
       68 GETIMPORT                        R4 K19 [error]
       70 LOADK                            R6 K20 ["Failed to get tools list with error: %*"]
       71 GETUPVAL                         R8 10
       72 MOVE                             R10 R3
       73 NAMECALL                         R8 R8 K21 ["JSONEncode"]
       75 CALL                             R8 2 1
       76 NAMECALL                         R6 R6 K22 ["format"]
       78 CALL                             R6 2 1
       79 MOVE                             R5 R6
       80 CALL                             R4 1 0
       81 RETURN                           R0 0
       82 LOADNIL                          R4
       83 GETUPVAL                         R5 11
       84 GETTABLEKS                       R6 R3 K23 ["result"]
       86 GETTABLEKS                       R6 R6 K24 ["tools"]
       88 CALL                             R5 1 1
       89 GETUPVAL                         R6 12
       90 MOVE                             R7 R5
       91 CALL                             R6 1 1
       92 MOVE                             R4 R6
       93 GETUPVAL                         R6 13
       94 GETUPVAL                         R8 0
       95 GETTABLEKS                       R8 R8 K2 ["selectedProvider"]
       97 GETUPVAL                         R9 1
       98 GETTABLEKS                       R9 R9 K3 ["LLMProviderTypes"]
      100 GETTABLEKS                       R9 R9 K4 ["Studio"]
      102 JUMPIFNOTEQ                      R8 R9 ; [+2]
      104 LOADB                            R7 0 +1
      105 LOADB                            R7 1
      106 JUMPIFNOT                        R7 ; [+34]
      107 GETUPVAL                         R8 14
      108 DUPTABLE                         R9 K28 [{"environment", "tools", "model", "assistantMode", "isDebugMode"}]
      109 GETUPVAL                         R10 15
      110 GETTABLEKS                       R10 R10 K29 ["get"]
      112 CALL                             R10 0 1
      113 SETTABLEKS                       R10 R9 K25 ["environment"]
      115 GETTABLEKS                       R10 R3 K23 ["result"]
      117 GETTABLEKS                       R10 R10 K24 ["tools"]
      119 SETTABLEKS                       R10 R9 K24 ["tools"]
      121 GETUPVAL                         R10 0
      122 GETTABLEKS                       R10 R10 K30 ["selectedModel"]
      124 SETTABLEKS                       R10 R9 K26 ["model"]
      126 GETUPVAL                         R10 3
      127 SETTABLEKS                       R10 R9 K5 ["assistantMode"]
      129 LOADB                            R10 1
      130 SETTABLEKS                       R10 R9 K27 ["isDebugMode"]
      132 CALL                             R8 1 2
      133 JUMPIFNOT                        R8 ; [+2]
      134 MOVE                             R6 R9
      135 JUMP                             ; [+5]
      136 GETIMPORT                        R10 K32 [warn]
      138 LOADK                            R11 K33 ["Failed to fetch BYOK system prompt, using fallback:"]
      139 MOVE                             R12 R9
      140 CALL                             R10 2 0
      141 GETUPVAL                         R8 16
      142 JUMPIFNOT                        R8 ; [+40]
      143 DUPTABLE                         R8 K34 [{"tools"}]
      144 GETTABLEKS                       R9 R3 K23 ["result"]
      146 GETTABLEKS                       R9 R9 K24 ["tools"]
      148 SETTABLEKS                       R9 R8 K24 ["tools"]
      150 GETUPVAL                         R9 16
      151 MOVE                             R10 R8
      152 CALL                             R9 1 3
      153 FORGPREP                         R9
      154 GETUPVAL                         R14 17
      155 DUPTABLE                         R15 K37 [{"role", "hidden"}]
      156 LOADK                            R16 K38 ["user"]
      157 SETTABLEKS                       R16 R15 K35 ["role"]
      159 LOADB                            R16 1
      160 SETTABLEKS                       R16 R15 K36 ["hidden"]
      162 CALL                             R14 1 1
      163 GETUPVAL                         R15 18
      164 DUPTABLE                         R16 K41 [{"messageId", "content"}]
      165 SETTABLEKS                       R14 R16 K39 ["messageId"]
      167 DUPTABLE                         R17 K44 [{"type", "text"}]
      168 GETUPVAL                         R18 19
      169 GETTABLEKS                       R18 R18 K45 ["Type"]
      171 SETTABLEKS                       R18 R17 K42 ["type"]
      173 GETUPVAL                         R18 20
      174 MOVE                             R19 R13
      175 CALL                             R18 1 1
      176 SETTABLEKS                       R18 R17 K43 ["text"]
      178 SETTABLEKS                       R17 R16 K40 ["content"]
      180 CALL                             R15 1 0
      181 FORGLOOP                         R9 2 ; [-28]
      183 GETUPVAL                         R8 21
      184 CALL                             R8 0 1
      185 JUMPIFNOT                        R8 ; [+4]
      186 GETIMPORT                        R8 K47 [print]
      188 LOADK                            R9 K48 ["Reading conversation history..."]
      189 CALL                             R8 1 0
      190 GETUPVAL                         R8 22
      191 NEWCLOSURE                       R9 P0
      192 CAPTURE                          UPVAL U23
      193 CAPTURE                          UPVAL U0
      194 CAPTURE                          UPVAL U1
      195 CAPTURE                          UPVAL U24
      196 CAPTURE                          UPVAL U25
      197 CAPTURE                          UPVAL U26
      198 CAPTURE                          UPVAL U27
      199 CAPTURE                          UPVAL U28
      200 CAPTURE                          UPVAL U17
      201 CAPTURE                          UPVAL U18
      202 CAPTURE                          UPVAL U29
      203 CAPTURE                          UPVAL U30
      204 CAPTURE                          UPVAL U31
      205 CAPTURE                          UPVAL U32
      206 CAPTURE                          UPVAL U33
      207 CAPTURE                          UPVAL U21
      208 CAPTURE                          UPVAL U34
      209 CAPTURE                          UPVAL U35
      210 CAPTURE                          UPVAL U15
      211 CAPTURE                          UPVAL U36
      212 CAPTURE                          UPVAL U37
      213 CAPTURE                          UPVAL U38
      214 CAPTURE                          UPVAL U2
      215 CAPTURE                          UPVAL U3
      216 CAPTURE                          UPVAL U39
      217 CAPTURE                          UPVAL U8
      218 CAPTURE                          UPVAL U9
      219 CAPTURE                          UPVAL U40
      220 CAPTURE                          UPVAL U41
      221 CAPTURE                          REF R6
      222 CAPTURE                          VAL R0
      223 CAPTURE                          UPVAL U42
      224 CAPTURE                          UPVAL U43
      225 CAPTURE                          UPVAL U44
      226 CAPTURE                          UPVAL U45
      227 CAPTURE                          UPVAL U46
      228 CAPTURE                          UPVAL U47
      229 CAPTURE                          UPVAL U48
      230 CAPTURE                          REF R4
      231 CAPTURE                          UPVAL U49
      232 CAPTURE                          UPVAL U4
      233 CAPTURE                          UPVAL U50
      234 CALL                             R8 1 0
      235 CLOSEUPVALS                      R4
      236 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 NEWCLOSURE                       R1 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 CAPTURE                          UPVAL U5
        7 CAPTURE                          UPVAL U6
        8 CAPTURE                          UPVAL U7
        9 CAPTURE                          UPVAL U8
       10 CAPTURE                          UPVAL U9
       11 CAPTURE                          UPVAL U10
       12 CAPTURE                          UPVAL U11
       13 CAPTURE                          UPVAL U12
       14 CAPTURE                          UPVAL U13
       15 CAPTURE                          UPVAL U14
       16 CAPTURE                          UPVAL U15
       17 CAPTURE                          UPVAL U16
       18 CAPTURE                          UPVAL U17
       19 CAPTURE                          UPVAL U18
       20 CAPTURE                          UPVAL U19
       21 CAPTURE                          UPVAL U20
       22 CAPTURE                          UPVAL U21
       23 CAPTURE                          UPVAL U22
       24 CAPTURE                          UPVAL U23
       25 CAPTURE                          UPVAL U24
       26 CAPTURE                          UPVAL U25
       27 CAPTURE                          UPVAL U26
       28 CAPTURE                          UPVAL U27
       29 CAPTURE                          UPVAL U28
       30 CAPTURE                          UPVAL U29
       31 CAPTURE                          UPVAL U30
       32 CAPTURE                          UPVAL U31
       33 CAPTURE                          UPVAL U32
       34 CAPTURE                          UPVAL U33
       35 CAPTURE                          UPVAL U34
       36 CAPTURE                          UPVAL U35
       37 CAPTURE                          UPVAL U36
       38 CAPTURE                          UPVAL U37
       39 CAPTURE                          UPVAL U38
       40 CAPTURE                          UPVAL U39
       41 CAPTURE                          UPVAL U40
       42 CAPTURE                          UPVAL U41
       43 CAPTURE                          UPVAL U42
       44 CAPTURE                          UPVAL U43
       45 CAPTURE                          UPVAL U44
       46 CAPTURE                          UPVAL U45
       47 CAPTURE                          UPVAL U46
       48 CAPTURE                          UPVAL U47
       49 CAPTURE                          UPVAL U48
       50 CAPTURE                          UPVAL U49
       51 CAPTURE                          UPVAL U50
       52 CAPTURE                          UPVAL U51
       53 CALL                             R0 1 0
       54 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["inputEnabled"]
        3 JUMPIF                           R1 ; [+18]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K1 ["reasonDisabled"]
        7 JUMPIFNOT                        R1 ; [+13]
        8 GETIMPORT                        R1 K3 [warn]
       10 LOADK                            R3 K4 ["Input is disabled: %*"]
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R5 R5 K1 ["reasonDisabled"]
       14 GETTABLEKS                       R5 R5 K1 ["reasonDisabled"]
       16 NAMECALL                         R3 R3 K5 ["format"]
       18 CALL                             R3 2 1
       19 MOVE                             R2 R3
       20 CALL                             R1 1 0
       21 RETURN                           R0 0
       22 GETUPVAL                         R1 1
       23 CALL                             R1 0 1
       24 JUMPIFNOT                        R1 ; [+7]
       25 GETUPVAL                         R1 2
       26 GETTABLEKS                       R1 R1 K6 ["setLastPacketTime"]
       28 GETIMPORT                        R2 K9 [os.clock]
       30 CALL                             R2 0 -1
       31 CALL                             R1 -1 0
       32 GETUPVAL                         R1 3
       33 GETTABLEKS                       R1 R1 K10 ["setInputEnabled"]
       35 LOADB                            R2 0
       36 CALL                             R1 1 0
       37 GETTABLEKS                       R1 R0 K11 ["text"]
       39 GETTABLEKS                       R3 R0 K13 ["retry"]
       41 ORK                              R2 R3 K12 [False]
       42 GETTABLEKS                       R4 R0 K14 ["hidden"]
       44 JUMPIFEQKB                       R4 TRUE ; [+2]
       46 LOADB                            R3 0 +1
       47 LOADB                            R3 1
       48 GETIMPORT                        R4 K9 [os.clock]
       50 CALL                             R4 0 1
       51 LOADB                            R6 1
       52 GETTABLEKS                       R7 R0 K15 ["previousMessageId"]
       54 JUMPIFNOTEQKNIL                  R7 ; [+2]
       56 NOT                              R6 R2
       57 FASTCALL2K                       ASSERT R6 K16 ; [+4]
       59 LOADK                            R7 K16 ["previousMessageId must be provided for retry messages"]
       60 GETIMPORT                        R5 K18 [assert]
       62 CALL                             R5 2 0
       63 NEWTABLE                         R5 0 0
       65 JUMPIF                           R2 ; [+94]
       66 GETUPVAL                         R6 4
       67 DUPTABLE                         R7 K20 [{"role", "hidden"}]
       68 LOADK                            R8 K21 ["user"]
       69 SETTABLEKS                       R8 R7 K19 ["role"]
       71 SETTABLEKS                       R3 R7 K14 ["hidden"]
       73 CALL                             R6 1 1
       74 GETTABLEKS                       R7 R0 K22 ["images"]
       76 JUMPIFNOT                        R7 ; [+64]
       77 GETTABLEKS                       R7 R0 K22 ["images"]
       79 LOADNIL                          R8
       80 LOADNIL                          R9
       81 FORGPREP                         R7
       82 GETTABLEKS                       R12 R11 K23 ["data"]
       84 LENGTH                           R13 R12
       85 LOADN                            R15 10
       86 JUMPIFNOTLT                      R15 R13 ; [+10]
       88 SUBK                             R16 R13 K24 [9]
       89 FASTCALL3                        STRING_SUB R12 R16 R13
       91 MOVE                             R15 R12
       92 MOVE                             R17 R13
       93 GETIMPORT                        R14 K27 [string.sub]
       95 CALL                             R14 3 1
       96 JUMP                             ; [+1]
       97 MOVE                             R14 R12
       98 DUPTABLE                         R17 K31 [{"imageDataSuffix", "imageDataSize", "mimeType"}]
       99 SETTABLEKS                       R14 R17 K28 ["imageDataSuffix"]
      101 SETTABLEKS                       R13 R17 K29 ["imageDataSize"]
      103 GETTABLEKS                       R18 R11 K30 ["mimeType"]
      105 SETTABLEKS                       R18 R17 K30 ["mimeType"]
      107 FASTCALL2                        TABLE_INSERT R5 R17 ; [+4]
      109 MOVE                             R16 R5
      110 GETIMPORT                        R15 K34 [table.insert]
      112 CALL                             R15 2 0
      113 FORGLOOP                         R7 2 ; [-32]
      115 GETTABLEKS                       R8 R0 K22 ["images"]
      117 LENGTH                           R7 R8
      118 LOADN                            R8 0
      119 JUMPIFNOTLT                      R8 R7 ; [+21]
      121 DUPTABLE                         R7 K38 [{"type", "imageContents", "expanded"}]
      122 GETUPVAL                         R8 5
      123 GETTABLEKS                       R8 R8 K39 ["Type"]
      125 SETTABLEKS                       R8 R7 K35 ["type"]
      127 GETTABLEKS                       R8 R0 K22 ["images"]
      129 SETTABLEKS                       R8 R7 K36 ["imageContents"]
      131 LOADB                            R8 0
      132 SETTABLEKS                       R8 R7 K37 ["expanded"]
      134 GETUPVAL                         R8 6
      135 DUPTABLE                         R9 K42 [{"messageId", "content"}]
      136 SETTABLEKS                       R6 R9 K40 ["messageId"]
      138 SETTABLEKS                       R7 R9 K41 ["content"]
      140 CALL                             R8 1 0
      141 LENGTH                           R7 R1
      142 LOADN                            R8 0
      143 JUMPIFNOTLT                      R8 R7 ; [+16]
      145 DUPTABLE                         R7 K43 [{"type", "text"}]
      146 GETUPVAL                         R8 7
      147 GETTABLEKS                       R8 R8 K39 ["Type"]
      149 SETTABLEKS                       R8 R7 K35 ["type"]
      151 SETTABLEKS                       R1 R7 K11 ["text"]
      153 GETUPVAL                         R8 6
      154 DUPTABLE                         R9 K42 [{"messageId", "content"}]
      155 SETTABLEKS                       R6 R9 K40 ["messageId"]
      157 SETTABLEKS                       R7 R9 K41 ["content"]
      159 CALL                             R8 1 0
      160 GETUPVAL                         R6 8
      161 CALL                             R6 0 1
      162 JUMPIFNOT                        R6 ; [+5]
      163 GETIMPORT                        R6 K45 [print]
      165 LOADK                            R7 K46 ["About to send message:"]
      166 MOVE                             R8 R1
      167 CALL                             R6 2 0
      168 GETUPVAL                         R6 9
      169 CALL                             R6 0 1
      170 JUMPIFNOT                        R6 ; [+5]
      171 GETUPVAL                         R6 10
      172 GETUPVAL                         R7 11
      173 DUPCLOSURE                       R8 K47 [PROTO_8]
      174 CAPTURE                          UPVAL U12
      175 CALL                             R6 2 0
      176 GETUPVAL                         R6 3
      177 GETTABLEKS                       R6 R6 K10 ["setInputEnabled"]
      179 GETUPVAL                         R7 13
      180 CALL                             R7 0 1
      181 JUMPIFNOT                        R7 ; [+2]
      182 NEWCLOSURE                       R6 P1
      183 CAPTURE                          UPVAL U3
      184 GETUPVAL                         R7 14
      185 DUPTABLE                         R8 K49 [{"prompt", "images", "setInputEnabled"}]
      186 SETTABLEKS                       R1 R8 K48 ["prompt"]
      188 GETTABLEKS                       R9 R0 K22 ["images"]
      190 SETTABLEKS                       R9 R8 K22 ["images"]
      192 SETTABLEKS                       R6 R8 K10 ["setInputEnabled"]
      194 CALL                             R7 1 1
      195 JUMPIFNOT                        R7 ; [+1]
      196 RETURN                           R0 0
      197 GETUPVAL                         R8 1
      198 CALL                             R8 0 1
      199 JUMPIFNOT                        R8 ; [+6]
      200 GETUPVAL                         R8 15
      201 JUMPIFNOT                        R8 ; [+4]
      202 GETUPVAL                         R8 15
      203 GETTABLEKS                       R8 R8 K50 ["cancelSession"]
      205 CALL                             R8 0 0
      206 GETIMPORT                        R8 K53 [task.spawn]
      208 NEWCLOSURE                       R9 P2
      209 CAPTURE                          UPVAL U16
      210 CAPTURE                          UPVAL U17
      211 CAPTURE                          UPVAL U18
      212 CAPTURE                          UPVAL U19
      213 CAPTURE                          UPVAL U20
      214 CAPTURE                          UPVAL U21
      215 CAPTURE                          UPVAL U22
      216 CAPTURE                          UPVAL U23
      217 CAPTURE                          UPVAL U24
      218 CAPTURE                          UPVAL U25
      219 CAPTURE                          UPVAL U3
      220 CAPTURE                          UPVAL U26
      221 CAPTURE                          UPVAL U27
      222 CAPTURE                          UPVAL U28
      223 CAPTURE                          UPVAL U29
      224 CAPTURE                          UPVAL U30
      225 CAPTURE                          UPVAL U31
      226 CAPTURE                          UPVAL U32
      227 CAPTURE                          UPVAL U4
      228 CAPTURE                          UPVAL U6
      229 CAPTURE                          UPVAL U7
      230 CAPTURE                          UPVAL U33
      231 CAPTURE                          UPVAL U8
      232 CAPTURE                          UPVAL U34
      233 CAPTURE                          UPVAL U13
      234 CAPTURE                          UPVAL U35
      235 CAPTURE                          UPVAL U11
      236 CAPTURE                          UPVAL U36
      237 CAPTURE                          UPVAL U37
      238 CAPTURE                          UPVAL U2
      239 CAPTURE                          UPVAL U38
      240 CAPTURE                          UPVAL U39
      241 CAPTURE                          UPVAL U40
      242 CAPTURE                          UPVAL U41
      243 CAPTURE                          UPVAL U42
      244 CAPTURE                          UPVAL U43
      245 CAPTURE                          UPVAL U44
      246 CAPTURE                          UPVAL U9
      247 CAPTURE                          UPVAL U45
      248 CAPTURE                          VAL R1
      249 CAPTURE                          VAL R5
      250 CAPTURE                          UPVAL U46
      251 CAPTURE                          UPVAL U47
      252 CAPTURE                          UPVAL U48
      253 CAPTURE                          UPVAL U49
      254 CAPTURE                          UPVAL U50
      255 CAPTURE                          UPVAL U51
      256 CAPTURE                          UPVAL U52
      257 CAPTURE                          UPVAL U53
      258 CAPTURE                          VAL R4
      259 CAPTURE                          UPVAL U54
      260 CAPTURE                          UPVAL U55
      261 CALL                             R8 1 0
      262 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+4]
        3 GETUPVAL                         R1 1
        4 MOVE                             R2 R0
        5 CALL                             R1 1 -1
        6 RETURN                           R1 -1
        7 GETUPVAL                         R1 2
        8 CALL                             R1 0 1
        9 GETUPVAL                         R2 3
       10 CALL                             R2 0 1
       11 GETUPVAL                         R3 4
       12 CALL                             R3 0 1
       13 GETUPVAL                         R4 5
       14 CALL                             R4 0 1
       15 GETUPVAL                         R5 6
       16 CALL                             R5 0 1
       17 GETUPVAL                         R6 7
       18 CALL                             R6 0 1
       19 GETUPVAL                         R7 8
       20 CALL                             R7 0 1
       21 GETUPVAL                         R8 9
       22 CALL                             R8 0 1
       23 GETUPVAL                         R9 10
       24 CALL                             R9 0 1
       25 GETUPVAL                         R10 11
       26 CALL                             R10 0 1
       27 GETUPVAL                         R11 12
       28 CALL                             R11 0 1
       29 GETUPVAL                         R12 13
       30 CALL                             R12 0 1
       31 GETUPVAL                         R13 14
       32 CALL                             R13 0 1
       33 GETUPVAL                         R14 15
       34 CALL                             R14 0 1
       35 GETUPVAL                         R15 16
       36 CALL                             R15 0 1
       37 GETUPVAL                         R16 17
       38 CALL                             R16 0 1
       39 GETUPVAL                         R17 18
       40 CALL                             R17 0 1
       41 GETUPVAL                         R19 19
       42 CALL                             R19 0 1
       43 JUMPIFNOT                        R19 ; [+3]
       44 GETUPVAL                         R18 20
       45 CALL                             R18 0 1
       46 JUMP                             ; [+1]
       47 LOADNIL                          R18
       48 GETUPVAL                         R19 21
       49 GETTABLEKS                       R19 R19 K0 ["useContext"]
       51 GETUPVAL                         R20 22
       52 GETTABLEKS                       R20 R20 K1 ["Context"]
       54 CALL                             R19 1 1
       55 GETTABLEKS                       R20 R19 K2 ["sessionId"]
       57 GETUPVAL                         R21 21
       58 GETTABLEKS                       R21 R21 K0 ["useContext"]
       60 GETUPVAL                         R22 23
       61 GETTABLEKS                       R22 R22 K1 ["Context"]
       63 CALL                             R21 1 1
       64 GETUPVAL                         R22 21
       65 GETTABLEKS                       R22 R22 K0 ["useContext"]
       67 GETUPVAL                         R23 24
       68 GETTABLEKS                       R23 R23 K1 ["Context"]
       70 CALL                             R22 1 1
       71 GETUPVAL                         R23 25
       72 CALL                             R23 0 1
       73 GETUPVAL                         R24 21
       74 GETTABLEKS                       R24 R24 K0 ["useContext"]
       76 GETUPVAL                         R25 26
       77 GETTABLEKS                       R25 R25 K1 ["Context"]
       79 CALL                             R24 1 1
       80 GETUPVAL                         R25 21
       81 GETTABLEKS                       R25 R25 K0 ["useContext"]
       83 GETUPVAL                         R26 27
       84 GETTABLEKS                       R26 R26 K1 ["Context"]
       86 CALL                             R25 1 1
       87 LOADNIL                          R26
       88 GETUPVAL                         R27 28
       89 CALL                             R27 0 1
       90 JUMPIFNOT                        R27 ; [+8]
       91 GETUPVAL                         R27 21
       92 GETTABLEKS                       R27 R27 K0 ["useContext"]
       94 GETUPVAL                         R28 29
       95 GETTABLEKS                       R28 R28 K1 ["Context"]
       97 CALL                             R27 1 1
       98 MOVE                             R26 R27
       99 LOADNIL                          R27
      100 GETUPVAL                         R28 30
      101 CALL                             R28 0 1
      102 JUMPIFNOT                        R28 ; [+3]
      103 GETUPVAL                         R28 31
      104 CALL                             R28 0 1
      105 MOVE                             R27 R28
      106 LOADNIL                          R28
      107 LOADNIL                          R29
      108 GETUPVAL                         R30 32
      109 CALL                             R30 0 1
      110 JUMPIFNOT                        R30 ; [+6]
      111 GETUPVAL                         R30 33
      112 CALL                             R30 0 1
      113 GETTABLEKS                       R28 R30 K3 ["isMultiPlayerClientAgent"]
      115 GETTABLEKS                       R29 R30 K4 ["isMultiPlayerClientAgentRunning"]
      117 NEWCLOSURE                       R30 P0
      118 CAPTURE                          REF R28
      119 CAPTURE                          UPVAL U34
      120 NEWCLOSURE                       R31 P1
      121 CAPTURE                          VAL R21
      122 CAPTURE                          UPVAL U28
      123 CAPTURE                          VAL R25
      124 CAPTURE                          VAL R0
      125 CAPTURE                          VAL R1
      126 CAPTURE                          UPVAL U35
      127 CAPTURE                          VAL R2
      128 CAPTURE                          UPVAL U36
      129 CAPTURE                          UPVAL U37
      130 CAPTURE                          UPVAL U19
      131 CAPTURE                          VAL R18
      132 CAPTURE                          VAL R17
      133 CAPTURE                          UPVAL U38
      134 CAPTURE                          UPVAL U39
      135 CAPTURE                          VAL R12
      136 CAPTURE                          REF R26
      137 CAPTURE                          VAL R5
      138 CAPTURE                          VAL R24
      139 CAPTURE                          UPVAL U40
      140 CAPTURE                          UPVAL U30
      141 CAPTURE                          REF R27
      142 CAPTURE                          UPVAL U32
      143 CAPTURE                          REF R28
      144 CAPTURE                          REF R29
      145 CAPTURE                          UPVAL U41
      146 CAPTURE                          VAL R13
      147 CAPTURE                          UPVAL U42
      148 CAPTURE                          UPVAL U43
      149 CAPTURE                          VAL R9
      150 CAPTURE                          VAL R7
      151 CAPTURE                          UPVAL U44
      152 CAPTURE                          UPVAL U45
      153 CAPTURE                          VAL R8
      154 CAPTURE                          UPVAL U46
      155 CAPTURE                          VAL R11
      156 CAPTURE                          UPVAL U47
      157 CAPTURE                          UPVAL U48
      158 CAPTURE                          UPVAL U49
      159 CAPTURE                          UPVAL U50
      160 CAPTURE                          UPVAL U51
      161 CAPTURE                          VAL R23
      162 CAPTURE                          VAL R6
      163 CAPTURE                          VAL R3
      164 CAPTURE                          VAL R4
      165 CAPTURE                          VAL R14
      166 CAPTURE                          VAL R20
      167 CAPTURE                          VAL R15
      168 CAPTURE                          VAL R10
      169 CAPTURE                          UPVAL U52
      170 CAPTURE                          UPVAL U53
      171 CAPTURE                          UPVAL U54
      172 CAPTURE                          VAL R22
      173 CAPTURE                          UPVAL U55
      174 CAPTURE                          UPVAL U56
      175 CAPTURE                          VAL R16
      176 CAPTURE                          VAL R30
      177 CLOSEUPVALS                      R26
      178 RETURN                           R31 1

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
       15 GETTABLEKS                       R3 R0 K10 ["Util"]
       17 GETTABLEKS                       R3 R3 K11 ["Compaction"]
       19 GETTABLEKS                       R3 R3 K12 ["CompactedStore"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K9 [require]
       24 GETTABLEKS                       R4 R0 K13 ["Guest"]
       26 GETTABLEKS                       R4 R4 K14 ["Environment"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K9 [require]
       31 GETTABLEKS                       R5 R0 K15 ["Components"]
       33 GETTABLEKS                       R5 R5 K16 ["Contexts"]
       35 GETTABLEKS                       R5 R5 K17 ["InputStateContext"]
       37 CALL                             R4 1 1
       38 GETIMPORT                        R5 K9 [require]
       40 GETTABLEKS                       R6 R0 K15 ["Components"]
       42 GETTABLEKS                       R6 R6 K16 ["Contexts"]
       44 GETTABLEKS                       R6 R6 K18 ["DefaultLLMProvider"]
       46 GETTABLEKS                       R6 R6 K19 ["LLMPackageContextProvider"]
       48 CALL                             R5 1 1
       49 GETIMPORT                        R6 K9 [require]
       51 GETTABLEKS                       R7 R0 K15 ["Components"]
       53 GETTABLEKS                       R7 R7 K16 ["Contexts"]
       55 GETTABLEKS                       R7 R7 K18 ["DefaultLLMProvider"]
       57 GETTABLEKS                       R7 R7 K20 ["LLMProcessEvent"]
       59 CALL                             R6 1 1
       60 GETIMPORT                        R7 K9 [require]
       62 GETTABLEKS                       R8 R0 K15 ["Components"]
       64 GETTABLEKS                       R8 R8 K16 ["Contexts"]
       66 GETTABLEKS                       R8 R8 K21 ["LLMProviderSelectionContext"]
       68 CALL                             R7 1 1
       69 GETIMPORT                        R8 K9 [require]
       71 GETTABLEKS                       R9 R0 K15 ["Components"]
       73 GETTABLEKS                       R9 R9 K16 ["Contexts"]
       75 GETTABLEKS                       R9 R9 K18 ["DefaultLLMProvider"]
       77 GETTABLEKS                       R9 R9 K22 ["LLMRequest"]
       79 CALL                             R8 1 1
       80 GETIMPORT                        R9 K9 [require]
       82 GETTABLEKS                       R10 R0 K23 ["Parent"]
       84 GETTABLEKS                       R10 R10 K24 ["ModelContextProtocol"]
       86 CALL                             R9 1 1
       87 GETIMPORT                        R10 K9 [require]
       89 GETTABLEKS                       R11 R0 K15 ["Components"]
       91 GETTABLEKS                       R11 R11 K16 ["Contexts"]
       93 GETTABLEKS                       R11 R11 K25 ["ModelQualityContext"]
       95 CALL                             R10 1 1
       96 GETIMPORT                        R11 K9 [require]
       98 GETTABLEKS                       R12 R0 K10 ["Util"]
      100 GETTABLEKS                       R12 R12 K26 ["MultiPlayersConnection"]
      102 GETTABLEKS                       R12 R12 K27 ["MultiPlayersAgentClient"]
      104 CALL                             R11 1 1
      105 GETIMPORT                        R12 K9 [require]
      107 GETTABLEKS                       R13 R0 K15 ["Components"]
      109 GETTABLEKS                       R13 R13 K16 ["Contexts"]
      111 GETTABLEKS                       R13 R13 K28 ["PacketReceivedContext"]
      113 CALL                             R12 1 1
      114 GETIMPORT                        R13 K9 [require]
      116 GETTABLEKS                       R14 R0 K23 ["Parent"]
      118 GETTABLEKS                       R14 R14 K29 ["Promise"]
      120 CALL                             R13 1 1
      121 GETIMPORT                        R14 K9 [require]
      123 GETTABLEKS                       R15 R0 K23 ["Parent"]
      125 GETTABLEKS                       R15 R15 K30 ["React"]
      127 CALL                             R14 1 1
      128 GETIMPORT                        R15 K9 [require]
      130 GETTABLEKS                       R16 R0 K15 ["Components"]
      132 GETTABLEKS                       R16 R16 K16 ["Contexts"]
      134 GETTABLEKS                       R16 R16 K31 ["SessionIdContext"]
      136 CALL                             R15 1 1
      137 GETIMPORT                        R16 K9 [require]
      139 GETTABLEKS                       R17 R0 K23 ["Parent"]
      141 GETTABLEKS                       R17 R17 K32 ["Signal"]
      143 CALL                             R16 1 1
      144 GETIMPORT                        R17 K9 [require]
      146 GETTABLEKS                       R18 R0 K15 ["Components"]
      148 GETTABLEKS                       R18 R18 K33 ["ContentWidgets"]
      150 GETTABLEKS                       R18 R18 K34 ["SummarizedContentWidget"]
      152 CALL                             R17 1 1
      153 GETIMPORT                        R18 K9 [require]
      155 GETTABLEKS                       R19 R0 K15 ["Components"]
      157 GETTABLEKS                       R19 R19 K33 ["ContentWidgets"]
      159 GETTABLEKS                       R19 R19 K35 ["TextContentWidget"]
      161 CALL                             R18 1 1
      162 GETIMPORT                        R19 K9 [require]
      164 GETTABLEKS                       R20 R0 K36 ["Resources"]
      166 GETTABLEKS                       R20 R20 K37 ["Localization"]
      168 GETTABLEKS                       R20 R20 K38 ["Translator"]
      170 CALL                             R19 1 1
      171 GETIMPORT                        R20 K9 [require]
      173 GETTABLEKS                       R21 R0 K39 ["Types"]
      175 CALL                             R20 1 1
      176 GETIMPORT                        R21 K9 [require]
      178 GETTABLEKS                       R22 R0 K10 ["Util"]
      180 GETTABLEKS                       R22 R22 K11 ["Compaction"]
      182 GETTABLEKS                       R22 R22 K40 ["compactThread"]
      184 CALL                             R21 1 1
      185 GETIMPORT                        R22 K9 [require]
      187 GETTABLEKS                       R23 R0 K10 ["Util"]
      189 GETTABLEKS                       R23 R23 K41 ["readThread"]
      191 CALL                             R22 1 1
      192 GETIMPORT                        R23 K9 [require]
      194 GETTABLEKS                       R24 R0 K10 ["Util"]
      196 GETTABLEKS                       R24 R24 K42 ["setLastActivityAt"]
      198 CALL                             R23 1 1
      199 GETIMPORT                        R24 K9 [require]
      201 GETTABLEKS                       R25 R0 K43 ["Hooks"]
      203 GETTABLEKS                       R25 R25 K44 ["useAddContent"]
      205 CALL                             R24 1 1
      206 GETIMPORT                        R25 K9 [require]
      208 GETTABLEKS                       R26 R0 K43 ["Hooks"]
      210 GETTABLEKS                       R26 R26 K45 ["useAddMessage"]
      212 CALL                             R25 1 1
      213 GETIMPORT                        R26 K9 [require]
      215 GETTABLEKS                       R27 R0 K43 ["Hooks"]
      217 GETTABLEKS                       R27 R27 K46 ["useAssistantMode"]
      219 CALL                             R26 1 1
      220 GETIMPORT                        R27 K9 [require]
      222 GETTABLEKS                       R28 R0 K43 ["Hooks"]
      224 GETTABLEKS                       R28 R28 K47 ["useEditContent"]
      226 CALL                             R27 1 1
      227 GETIMPORT                        R28 K9 [require]
      229 GETTABLEKS                       R29 R0 K43 ["Hooks"]
      231 GETTABLEKS                       R29 R29 K48 ["useEditThread"]
      233 CALL                             R28 1 1
      234 GETIMPORT                        R29 K9 [require]
      236 GETTABLEKS                       R30 R0 K43 ["Hooks"]
      238 GETTABLEKS                       R30 R30 K49 ["useGetContentObserver"]
      240 CALL                             R29 1 1
      241 GETIMPORT                        R30 K9 [require]
      243 GETTABLEKS                       R31 R0 K43 ["Hooks"]
      245 GETTABLEKS                       R31 R31 K50 ["useGetOrAddMessage"]
      247 CALL                             R30 1 1
      248 GETIMPORT                        R31 K9 [require]
      250 GETTABLEKS                       R32 R0 K43 ["Hooks"]
      252 GETTABLEKS                       R32 R32 K51 ["useGetThread"]
      254 CALL                             R31 1 1
      255 GETIMPORT                        R32 K9 [require]
      257 GETTABLEKS                       R33 R0 K43 ["Hooks"]
      259 GETTABLEKS                       R33 R33 K52 ["useLLMProcessEvent"]
      261 CALL                             R32 1 1
      262 GETIMPORT                        R33 K9 [require]
      264 GETTABLEKS                       R34 R0 K43 ["Hooks"]
      266 GETTABLEKS                       R34 R34 K53 ["useLLMRequest"]
      268 CALL                             R33 1 1
      269 GETIMPORT                        R34 K9 [require]
      271 GETTABLEKS                       R35 R0 K43 ["Hooks"]
      273 GETTABLEKS                       R35 R35 K54 ["useLLMSystemMessage"]
      275 CALL                             R34 1 1
      276 GETIMPORT                        R35 K9 [require]
      278 GETTABLEKS                       R36 R0 K43 ["Hooks"]
      280 GETTABLEKS                       R36 R36 K55 ["useLLMSystemReminderGetter"]
      282 CALL                             R35 1 1
      283 GETIMPORT                        R36 K9 [require]
      285 GETTABLEKS                       R37 R0 K43 ["Hooks"]
      287 GETTABLEKS                       R37 R37 K56 ["useLogAssistantMessageSent"]
      289 CALL                             R36 1 1
      290 GETIMPORT                        R37 K9 [require]
      292 GETTABLEKS                       R38 R0 K43 ["Hooks"]
      294 GETTABLEKS                       R38 R38 K57 ["useLogRequestJourney"]
      296 CALL                             R37 1 1
      297 GETIMPORT                        R38 K9 [require]
      299 GETTABLEKS                       R39 R0 K43 ["Hooks"]
      301 GETTABLEKS                       R39 R39 K58 ["useMultiPlayerClientAgentStates"]
      303 CALL                             R38 1 1
      304 GETIMPORT                        R39 K9 [require]
      306 GETTABLEKS                       R40 R0 K43 ["Hooks"]
      308 GETTABLEKS                       R40 R40 K59 ["useRunSlashCommand"]
      310 CALL                             R39 1 1
      311 GETIMPORT                        R40 K9 [require]
      313 GETTABLEKS                       R41 R0 K43 ["Hooks"]
      315 GETTABLEKS                       R41 R41 K60 ["useSettingsContext"]
      317 CALL                             R40 1 1
      318 GETIMPORT                        R41 K9 [require]
      320 GETTABLEKS                       R42 R0 K43 ["Hooks"]
      322 GETTABLEKS                       R42 R42 K61 ["useShowError"]
      324 CALL                             R41 1 1
      325 GETIMPORT                        R42 K9 [require]
      327 GETTABLEKS                       R43 R0 K43 ["Hooks"]
      329 GETTABLEKS                       R43 R43 K62 ["useThreadId"]
      331 CALL                             R42 1 1
      332 GETIMPORT                        R43 K9 [require]
      334 GETTABLEKS                       R44 R0 K43 ["Hooks"]
      336 GETTABLEKS                       R44 R44 K63 ["useToolFormat"]
      338 CALL                             R43 1 1
      339 GETIMPORT                        R44 K9 [require]
      341 GETTABLEKS                       R45 R0 K43 ["Hooks"]
      343 GETTABLEKS                       R45 R45 K64 ["useWithClient"]
      345 CALL                             R44 1 1
      346 GETIMPORT                        R45 K9 [require]
      348 GETTABLEKS                       R46 R0 K65 ["Flags"]
      350 GETTABLEKS                       R46 R46 K66 ["getAssistantModeEnabled"]
      352 CALL                             R45 1 1
      353 GETIMPORT                        R46 K9 [require]
      355 GETTABLEKS                       R47 R0 K65 ["Flags"]
      357 GETTABLEKS                       R47 R47 K67 ["FFlagAssistantDynamicToolDescription"]
      359 CALL                             R46 1 1
      360 GETIMPORT                        R47 K9 [require]
      362 GETTABLEKS                       R48 R0 K65 ["Flags"]
      364 GETTABLEKS                       R48 R48 K68 ["FFlagAssistantHarnessSplit"]
      366 CALL                             R47 1 1
      367 GETIMPORT                        R48 K9 [require]
      369 GETTABLEKS                       R49 R0 K65 ["Flags"]
      371 GETTABLEKS                       R49 R49 K69 ["FFlagAssistantMultiPlayerAgents"]
      373 CALL                             R48 1 1
      374 GETIMPORT                        R49 K9 [require]
      376 GETTABLEKS                       R50 R0 K65 ["Flags"]
      378 GETTABLEKS                       R50 R50 K70 ["FFlagAssistantMultipleChatPersistence"]
      380 CALL                             R49 1 1
      381 GETIMPORT                        R50 K9 [require]
      383 GETTABLEKS                       R51 R0 K65 ["Flags"]
      385 GETTABLEKS                       R51 R51 K71 ["FFlagAssistantPlanMode"]
      387 CALL                             R50 1 1
      388 GETIMPORT                        R51 K9 [require]
      390 GETTABLEKS                       R52 R0 K65 ["Flags"]
      392 GETTABLEKS                       R52 R52 K72 ["FFlagAssistantSupportSlashCommandCancellation"]
      394 CALL                             R51 1 1
      395 GETIMPORT                        R52 K9 [require]
      397 GETTABLEKS                       R53 R0 K65 ["Flags"]
      399 GETTABLEKS                       R53 R53 K73 ["FFlagDebugLogAssistantUI"]
      401 CALL                             R52 1 1
      402 GETIMPORT                        R53 K9 [require]
      404 GETTABLEKS                       R54 R0 K65 ["Flags"]
      406 GETTABLEKS                       R54 R54 K74 ["FFlagEnhanceSubagentSkillTelemetry"]
      408 CALL                             R53 1 1
      409 GETIMPORT                        R54 K9 [require]
      411 GETTABLEKS                       R55 R0 K65 ["Flags"]
      413 GETTABLEKS                       R55 R55 K75 ["FIntAssistantProcessEventTimeoutMS"]
      415 CALL                             R54 1 1
      416 GETIMPORT                        R55 K9 [require]
      418 GETTABLEKS                       R56 R0 K65 ["Flags"]
      420 GETTABLEKS                       R56 R56 K76 ["FIntMCPAssistantMaxToolCalls"]
      422 CALL                             R55 1 1
      423 GETIMPORT                        R56 K9 [require]
      425 GETTABLEKS                       R57 R0 K77 ["AssistantService"]
      427 GETTABLEKS                       R57 R57 K78 ["useSendMessageViaService"]
      429 CALL                             R56 1 1
      430 GETIMPORT                        R57 K9 [require]
      432 GETTABLEKS                       R58 R0 K10 ["Util"]
      434 GETTABLEKS                       R58 R58 K79 ["fetchBYOKSystemPrompt"]
      436 CALL                             R57 1 1
      437 GETIMPORT                        R58 K9 [require]
      439 GETTABLEKS                       R59 R0 K15 ["Components"]
      441 GETTABLEKS                       R59 R59 K33 ["ContentWidgets"]
      443 GETTABLEKS                       R59 R59 K80 ["ImageContentWidget"]
      445 CALL                             R58 1 1
      446 GETTABLEKS                       R59 R20 K81 ["getSystemReminder"]
      448 DUPCLOSURE                       R60 K82 [PROTO_0]
      449 CAPTURE                          VAL R9
      450 DUPCLOSURE                       R61 K83 [PROTO_1]
      451 CAPTURE                          VAL R20
      452 DUPCLOSURE                       R62 K84 [PROTO_6]
      453 CAPTURE                          VAL R20
      454 CAPTURE                          VAL R53
      455 CAPTURE                          VAL R16
      456 CAPTURE                          VAL R13
      457 DUPCLOSURE                       R63 K85 [PROTO_21]
      458 CAPTURE                          VAL R47
      459 CAPTURE                          VAL R56
      460 CAPTURE                          VAL R25
      461 CAPTURE                          VAL R24
      462 CAPTURE                          VAL R27
      463 CAPTURE                          VAL R30
      464 CAPTURE                          VAL R44
      465 CAPTURE                          VAL R33
      466 CAPTURE                          VAL R34
      467 CAPTURE                          VAL R35
      468 CAPTURE                          VAL R43
      469 CAPTURE                          VAL R32
      470 CAPTURE                          VAL R31
      471 CAPTURE                          VAL R39
      472 CAPTURE                          VAL R41
      473 CAPTURE                          VAL R29
      474 CAPTURE                          VAL R36
      475 CAPTURE                          VAL R37
      476 CAPTURE                          VAL R42
      477 CAPTURE                          VAL R49
      478 CAPTURE                          VAL R28
      479 CAPTURE                          VAL R14
      480 CAPTURE                          VAL R15
      481 CAPTURE                          VAL R4
      482 CAPTURE                          VAL R10
      483 CAPTURE                          VAL R40
      484 CAPTURE                          VAL R7
      485 CAPTURE                          VAL R12
      486 CAPTURE                          VAL R51
      487 CAPTURE                          VAL R5
      488 CAPTURE                          VAL R45
      489 CAPTURE                          VAL R26
      490 CAPTURE                          VAL R48
      491 CAPTURE                          VAL R38
      492 CAPTURE                          VAL R11
      493 CAPTURE                          VAL R58
      494 CAPTURE                          VAL R18
      495 CAPTURE                          VAL R52
      496 CAPTURE                          VAL R23
      497 CAPTURE                          VAL R50
      498 CAPTURE                          VAL R20
      499 CAPTURE                          VAL R46
      500 CAPTURE                          VAL R1
      501 CAPTURE                          VAL R60
      502 CAPTURE                          VAL R57
      503 CAPTURE                          VAL R3
      504 CAPTURE                          VAL R59
      505 CAPTURE                          VAL R2
      506 CAPTURE                          VAL R22
      507 CAPTURE                          VAL R21
      508 CAPTURE                          VAL R17
      509 CAPTURE                          VAL R19
      510 CAPTURE                          VAL R53
      511 CAPTURE                          VAL R16
      512 CAPTURE                          VAL R13
      513 CAPTURE                          VAL R55
      514 CAPTURE                          VAL R54
      515 RETURN                           R63 1
