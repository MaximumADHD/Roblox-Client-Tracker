PROTO_0:
        0 MOVE                             R1 R0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 GETTABLEKS                       R6 R5 K0 ["inputSchema"]
        6 JUMPIFNOT                        R6 ; [+24]
        7 GETTABLEKS                       R7 R5 K0 ["inputSchema"]
        9 GETTABLEKS                       R6 R7 K1 ["properties"]
       11 JUMPIFNOT                        R6 ; [+19]
       12 GETIMPORT                        R6 K3 [next]
       14 GETTABLEKS                       R8 R5 K0 ["inputSchema"]
       16 GETTABLEKS                       R7 R8 K1 ["properties"]
       18 CALL                             R6 1 1
       19 JUMPIFNOTEQKNIL                  R6 ; [+11]
       21 GETTABLEKS                       R6 R5 K0 ["inputSchema"]
       23 GETUPVAL                         R9 0
       24 GETTABLEKS                       R8 R9 K4 ["Types"]
       26 GETTABLEKS                       R7 R8 K5 ["emptyObject"]
       28 CALL                             R7 0 1
       29 SETTABLEKS                       R7 R6 K1 ["properties"]
       31 FORGLOOP                         R1 2 ; [-28]
       33 RETURN                           R0 1

PROTO_1:
        0 GETTABLEKS                       R3 R0 K0 ["failures"]
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R4 R5 K1 ["getMcpClientIdentifier"]
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
        5 GETUPVAL                         R6 2
        6 GETTABLEKS                       R5 R6 K0 ["name"]
        8 GETUPVAL                         R7 2
        9 GETTABLEKS                       R6 R7 K1 ["arguments"]
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
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R3 R4 K2 ["getMcpClientIdentifier"]
       10 CALL                             R3 0 1
       11 JUMPIFNOTEQ                      R2 R3 ; [+6]
       13 GETUPVAL                         R1 2
       14 GETTABLEKS                       R2 R0 K3 ["contentId"]
       16 SETTABLEKS                       R2 R1 K3 ["contentId"]
       18 GETTABLEKS                       R3 R0 K4 ["toolCallOptions"]
       20 JUMPIFNOT                        R3 ; [+6]
       21 GETIMPORT                        R2 K7 [table.clone]
       23 GETTABLEKS                       R3 R0 K4 ["toolCallOptions"]
       25 CALL                             R2 1 1
       26 JUMPIF                           R2 ; [+2]
       27 NEWTABLE                         R2 0 0
       29 LOADK                            R3 K8 [200000000]
       30 SETTABLEKS                       R3 R2 K9 ["timeout"]
       32 GETTABLEKS                       R3 R2 K10 ["onprogress"]
       34 GETTABLEKS                       R4 R2 K11 ["resetTimeoutOnProgress"]
       36 JUMPIFNOT                        R4 ; [+5]
       37 NEWCLOSURE                       R4 P0
       38 CAPTURE                          UPVAL U3
       39 CAPTURE                          VAL R3
       40 SETTABLEKS                       R4 R2 K10 ["onprogress"]
       42 GETUPVAL                         R4 4
       43 CALL                             R4 0 1
       44 JUMPIF                           R4 ; [+6]
       45 GETUPVAL                         R4 5
       46 CALL                             R4 0 1
       47 JUMPIF                           R4 ; [+3]
       48 GETUPVAL                         R4 6
       49 CALL                             R4 0 1
       50 JUMPIFNOT                        R4 ; [+18]
       51 GETUPVAL                         R5 7
       52 GETTABLEKS                       R4 R5 K12 ["new"]
       54 CALL                             R4 0 1
       55 SETTABLEKS                       R4 R2 K13 ["signal"]
       57 GETUPVAL                         R6 8
       58 GETTABLEKS                       R5 R6 K12 ["new"]
       60 NEWCLOSURE                       R6 P1
       61 CAPTURE                          VAL R4
       62 CAPTURE                          UPVAL U0
       63 CAPTURE                          VAL R0
       64 CAPTURE                          VAL R2
       65 CAPTURE                          REF R1
       66 CALL                             R5 1 -1
       67 CLOSEUPVALS                      R1
       68 RETURN                           R5 -1
       69 GETUPVAL                         R4 0
       70 GETTABLEKS                       R6 R0 K0 ["name"]
       72 GETTABLEKS                       R7 R0 K14 ["arguments"]
       74 MOVE                             R8 R2
       75 MOVE                             R9 R1
       76 NAMECALL                         R4 R4 K15 ["callTool"]
       78 CALL                             R4 5 -1
       79 CLOSEUPVALS                      R1
       80 RETURN                           R4 -1

PROTO_6:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          VAL R2
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 CAPTURE                          UPVAL U5
       10 RETURN                           R3 1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["setInputEnabled"]
        3 MOVE                             R2 R0
        4 DUPTABLE                         R3 K2 [{"focus"}]
        5 LOADB                            R4 1
        6 SETTABLEKS                       R4 R3 K1 ["focus"]
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["getSetting"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+4]
        6 JUMPIFEQKS                       R1 K1 [""] ; [+3]
        8 GETUPVAL                         R2 1
        9 SETTABLE                         R1 R2 R0
       10 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R2 K2 [{"errorType", "messageGuid"}]
        2 SETTABLEKS                       R0 R2 K0 ["errorType"]
        4 GETUPVAL                         R3 1
        5 SETTABLEKS                       R3 R2 K1 ["messageGuid"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["setLastPacketTime"]
        3 GETIMPORT                        R1 K3 [os.clock]
        5 CALL                             R1 0 -1
        6 CALL                             R0 -1 0
        7 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["setLastPacketTime"]
        3 GETIMPORT                        R1 K3 [os.clock]
        5 CALL                             R1 0 -1
        6 CALL                             R0 -1 0
        7 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETTABLEKS                       R2 R1 K0 ["onNewMessage"]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 0
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R3 R4 K1 ["get"]
        9 CALL                             R3 0 1
       10 GETTABLEKS                       R2 R3 K2 ["EventLogger"]
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
       26 GETUPVAL                         R7 4
       27 GETTABLEKS                       R6 R7 K4 ["CLAUDE_API_KEY"]
       29 GETUPVAL                         R8 3
       30 GETTABLEKS                       R7 R8 K5 ["getSetting"]
       32 MOVE                             R8 R6
       33 CALL                             R7 1 1
       34 JUMPIFNOT                        R7 ; [+3]
       35 JUMPIFEQKS                       R7 K6 [""] ; [+2]
       37 SETTABLE                         R7 R4 R6
       38 GETUPVAL                         R7 4
       39 GETTABLEKS                       R6 R7 K7 ["GEMINI_API_KEY"]
       41 GETUPVAL                         R8 3
       42 GETTABLEKS                       R7 R8 K5 ["getSetting"]
       44 MOVE                             R8 R6
       45 CALL                             R7 1 1
       46 JUMPIFNOT                        R7 ; [+3]
       47 JUMPIFEQKS                       R7 K6 [""] ; [+2]
       49 SETTABLE                         R7 R4 R6
       50 GETUPVAL                         R7 4
       51 GETTABLEKS                       R6 R7 K8 ["OPENAI_API_KEY"]
       53 GETUPVAL                         R8 3
       54 GETTABLEKS                       R7 R8 K5 ["getSetting"]
       56 MOVE                             R8 R6
       57 CALL                             R7 1 1
       58 JUMPIFNOT                        R7 ; [+3]
       59 JUMPIFEQKS                       R7 K6 [""] ; [+2]
       61 SETTABLE                         R7 R4 R6
       62 GETUPVAL                         R7 5
       63 GETTABLEKS                       R6 R7 K9 ["selectedModel"]
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
      113 DUPTABLE                         R11 K21 [{"messageGuid", "sessionId", "threadId", "messageId", "contentId", "assistantMode"}]
      114 SETTABLEKS                       R3 R11 K10 ["messageGuid"]
      116 GETUPVAL                         R12 6
      117 SETTABLEKS                       R12 R11 K11 ["sessionId"]
      119 GETUPVAL                         R13 14
      120 CALL                             R13 0 1
      121 JUMPIFNOT                        R13 ; [+2]
      122 GETUPVAL                         R12 7
      123 JUMP                             ; [+1]
      124 LOADNIL                          R12
      125 SETTABLEKS                       R12 R11 K12 ["threadId"]
      127 SETTABLEKS                       R0 R11 K19 ["messageId"]
      129 LOADNIL                          R12
      130 SETTABLEKS                       R12 R11 K20 ["contentId"]
      132 GETUPVAL                         R13 9
      133 CALL                             R13 0 1
      134 JUMPIFNOT                        R13 ; [+2]
      135 GETUPVAL                         R12 10
      136 JUMPIF                           R12 ; [+1]
      137 LOADNIL                          R12
      138 SETTABLEKS                       R12 R11 K15 ["assistantMode"]
      140 GETUPVAL                         R13 15
      141 GETTABLEKS                       R12 R13 K22 ["createLLMSession"]
      143 DUPTABLE                         R13 K39 [{"showError", "messageGuid", "conversationSessionId", "threadId", "requestLLM", "systemMessage", "observer", "setInputEnabled", "onToolCall", "setModelQuality", "onPacketReceived", "maxToolCalls", "timeoutMs", "initialMessages", "requestStartTime", "tools", "apiKeys", "selectedModel", "messageId", "logRequestStop", "assistantMode"}]
      144 SETTABLEKS                       R8 R13 K23 ["showError"]
      146 SETTABLEKS                       R3 R13 K10 ["messageGuid"]
      148 GETUPVAL                         R14 6
      149 SETTABLEKS                       R14 R13 K24 ["conversationSessionId"]
      151 GETUPVAL                         R14 7
      152 SETTABLEKS                       R14 R13 K12 ["threadId"]
      154 GETUPVAL                         R14 16
      155 SETTABLEKS                       R14 R13 K25 ["requestLLM"]
      157 GETUPVAL                         R14 17
      158 SETTABLEKS                       R14 R13 K26 ["systemMessage"]
      160 SETTABLEKS                       R1 R13 K27 ["observer"]
      162 GETUPVAL                         R15 18
      163 GETTABLEKS                       R14 R15 K28 ["setInputEnabled"]
      165 SETTABLEKS                       R14 R13 K28 ["setInputEnabled"]
      167 GETUPVAL                         R15 19
      168 NEWCLOSURE                       R14 P4
      169 CAPTURE                          VAL R15
      170 CAPTURE                          UPVAL U4
      171 CAPTURE                          VAL R11
      172 CAPTURE                          VAL R10
      173 CAPTURE                          UPVAL U20
      174 CAPTURE                          UPVAL U21
      175 CAPTURE                          UPVAL U22
      176 CAPTURE                          UPVAL U23
      177 CAPTURE                          UPVAL U24
      178 SETTABLEKS                       R14 R13 K29 ["onToolCall"]
      180 GETUPVAL                         R15 25
      181 GETTABLEKS                       R14 R15 K30 ["setModelQuality"]
      183 SETTABLEKS                       R14 R13 K30 ["setModelQuality"]
      185 SETTABLEKS                       R9 R13 K31 ["onPacketReceived"]
      187 GETUPVAL                         R14 26
      188 CALL                             R14 0 1
      189 SETTABLEKS                       R14 R13 K32 ["maxToolCalls"]
      191 GETUPVAL                         R14 27
      192 CALL                             R14 0 1
      193 SETTABLEKS                       R14 R13 K33 ["timeoutMs"]
      195 GETUPVAL                         R14 28
      196 SETTABLEKS                       R14 R13 K34 ["initialMessages"]
      198 GETUPVAL                         R14 29
      199 SETTABLEKS                       R14 R13 K35 ["requestStartTime"]
      201 GETUPVAL                         R14 30
      202 SETTABLEKS                       R14 R13 K36 ["tools"]
      204 SETTABLEKS                       R4 R13 K37 ["apiKeys"]
      206 SETTABLEKS                       R6 R13 K9 ["selectedModel"]
      208 SETTABLEKS                       R0 R13 K19 ["messageId"]
      210 GETUPVAL                         R14 31
      211 SETTABLEKS                       R14 R13 K38 ["logRequestStop"]
      213 GETUPVAL                         R15 9
      214 CALL                             R15 0 1
      215 JUMPIFNOT                        R15 ; [+2]
      216 GETUPVAL                         R14 10
      217 JUMPIF                           R14 ; [+1]
      218 LOADNIL                          R14
      219 SETTABLEKS                       R14 R13 K15 ["assistantMode"]
      221 CALL                             R12 1 1
      222 DUPTABLE                         R13 K44 [{"threadId", "messages", "tools", "system", "messageGuid", "isFirstMessage", "isAgenticMode", "apiKeys", "selectedModel", "assistantMode"}]
      223 GETUPVAL                         R14 7
      224 SETTABLEKS                       R14 R13 K12 ["threadId"]
      226 GETUPVAL                         R14 28
      227 SETTABLEKS                       R14 R13 K40 ["messages"]
      229 GETUPVAL                         R14 30
      230 SETTABLEKS                       R14 R13 K36 ["tools"]
      232 GETUPVAL                         R14 17
      233 SETTABLEKS                       R14 R13 K41 ["system"]
      235 SETTABLEKS                       R3 R13 K10 ["messageGuid"]
      237 LOADB                            R14 1
      238 SETTABLEKS                       R14 R13 K42 ["isFirstMessage"]
      240 LOADB                            R14 0
      241 SETTABLEKS                       R14 R13 K43 ["isAgenticMode"]
      243 SETTABLEKS                       R4 R13 K37 ["apiKeys"]
      245 SETTABLEKS                       R6 R13 K9 ["selectedModel"]
      247 GETUPVAL                         R15 9
      248 CALL                             R15 0 1
      249 JUMPIFNOT                        R15 ; [+2]
      250 GETUPVAL                         R14 10
      251 JUMPIF                           R14 ; [+1]
      252 LOADNIL                          R14
      253 SETTABLEKS                       R14 R13 K15 ["assistantMode"]
      255 GETUPVAL                         R14 16
      256 MOVE                             R15 R13
      257 GETTABLEKS                       R16 R12 K45 ["processEvent"]
      259 CALL                             R14 2 0
      260 RETURN                           R0 0

PROTO_13:
        0 LOADNIL                          R1
        1 GETUPVAL                         R2 0
        2 CALL                             R2 0 1
        3 JUMPIFNOT                        R2 ; [+15]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K0 ["selectedProvider"]
        7 GETUPVAL                         R5 2
        8 GETTABLEKS                       R4 R5 K1 ["LLMProviderTypes"]
       10 GETTABLEKS                       R3 R4 K2 ["Studio"]
       12 JUMPIFEQ                         R2 R3 ; [+6]
       14 DUPTABLE                         R2 K4 [{"attachRawImageContent"}]
       15 LOADB                            R3 1
       16 SETTABLEKS                       R3 R2 K3 ["attachRawImageContent"]
       18 MOVE                             R1 R2
       19 GETUPVAL                         R2 3
       20 MOVE                             R3 R0
       21 MOVE                             R4 R1
       22 CALL                             R2 2 1
       23 GETUPVAL                         R3 4
       24 CALL                             R3 0 1
       25 JUMPIFNOT                        R3 ; [+4]
       26 GETIMPORT                        R3 K6 [print]
       28 LOADK                            R4 K7 ["Preparing message for response contents..."]
       29 CALL                             R3 1 0
       30 GETUPVAL                         R3 5
       31 LOADK                            R4 K8 ["assistant"]
       32 NEWCLOSURE                       R5 P0
       33 CAPTURE                          UPVAL U6
       34 CAPTURE                          UPVAL U7
       35 CAPTURE                          UPVAL U8
       36 CAPTURE                          UPVAL U9
       37 CAPTURE                          UPVAL U2
       38 CAPTURE                          UPVAL U1
       39 CAPTURE                          UPVAL U10
       40 CAPTURE                          UPVAL U11
       41 CAPTURE                          UPVAL U12
       42 CAPTURE                          UPVAL U13
       43 CAPTURE                          UPVAL U14
       44 CAPTURE                          UPVAL U15
       45 CAPTURE                          UPVAL U16
       46 CAPTURE                          UPVAL U17
       47 CAPTURE                          UPVAL U0
       48 CAPTURE                          UPVAL U18
       49 CAPTURE                          UPVAL U19
       50 CAPTURE                          UPVAL U20
       51 CAPTURE                          UPVAL U21
       52 CAPTURE                          UPVAL U22
       53 CAPTURE                          UPVAL U23
       54 CAPTURE                          UPVAL U24
       55 CAPTURE                          UPVAL U25
       56 CAPTURE                          UPVAL U26
       57 CAPTURE                          UPVAL U27
       58 CAPTURE                          UPVAL U28
       59 CAPTURE                          UPVAL U29
       60 CAPTURE                          UPVAL U30
       61 CAPTURE                          VAL R2
       62 CAPTURE                          UPVAL U31
       63 CAPTURE                          UPVAL U32
       64 CAPTURE                          UPVAL U33
       65 CALL                             R3 2 0
       66 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+31]
        3 DUPTABLE                         R1 K1 [{"disableScreenCapture"}]
        4 LOADB                            R2 1
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R3 R4 K2 ["selectedProvider"]
        8 GETUPVAL                         R6 2
        9 GETTABLEKS                       R5 R6 K3 ["LLMProviderTypes"]
       11 GETTABLEKS                       R4 R5 K4 ["Studio"]
       13 JUMPIFEQ                         R3 R4 ; [+17]
       15 GETUPVAL                         R3 3
       16 CALL                             R3 0 1
       17 NOT                              R2 R3
       18 JUMPIFNOT                        R2 ; [+12]
       19 GETUPVAL                         R4 1
       20 GETTABLEKS                       R3 R4 K2 ["selectedProvider"]
       22 GETUPVAL                         R6 2
       23 GETTABLEKS                       R5 R6 K3 ["LLMProviderTypes"]
       25 GETTABLEKS                       R4 R5 K5 ["OpenAI"]
       27 JUMPIFEQ                         R3 R4 ; [+2]
       29 LOADB                            R2 0 +1
       30 LOADB                            R2 1
       31 SETTABLEKS                       R2 R1 K0 ["disableScreenCapture"]
       33 JUMPIF                           R1 ; [+1]
       34 LOADNIL                          R1
       35 GETUPVAL                         R2 4
       36 CALL                             R2 0 1
       37 JUMPIFNOT                        R2 ; [+6]
       38 JUMPIF                           R1 ; [+2]
       39 NEWTABLE                         R1 0 0
       41 GETUPVAL                         R2 5
       42 SETTABLEKS                       R2 R1 K6 ["assistantMode"]
       44 GETUPVAL                         R2 6
       45 CALL                             R2 0 1
       46 JUMPIFNOT                        R2 ; [+4]
       47 DUPTABLE                         R2 K8 [{"_meta"}]
       48 SETTABLEKS                       R1 R2 K7 ["_meta"]
       50 MOVE                             R1 R2
       51 MOVE                             R4 R1
       52 NAMECALL                         R2 R0 K9 ["listTools"]
       54 CALL                             R2 2 1
       55 NAMECALL                         R2 R2 K10 ["await"]
       57 CALL                             R2 1 2
       58 JUMPIFNOT                        R2 ; [+12]
       59 GETTABLEKS                       R6 R3 K11 ["failures"]
       61 GETUPVAL                         R8 2
       62 GETTABLEKS                       R7 R8 K12 ["getMcpClientIdentifier"]
       64 CALL                             R7 0 1
       65 GETTABLE                         R5 R6 R7
       66 JUMPIFNOTEQKNIL                  R5 ; [+2]
       68 LOADB                            R4 0 +1
       69 LOADB                            R4 1
       70 JUMPIFNOT                        R4 ; [+25]
       71 GETUPVAL                         R4 7
       72 DUPTABLE                         R5 K14 [{"errorType"}]
       73 LOADK                            R6 K15 ["client_error"]
       74 SETTABLEKS                       R6 R5 K13 ["errorType"]
       76 CALL                             R4 1 0
       77 GETUPVAL                         R5 8
       78 GETTABLEKS                       R4 R5 K16 ["setInputEnabled"]
       80 LOADB                            R5 1
       81 CALL                             R4 1 0
       82 GETIMPORT                        R4 K18 [error]
       84 LOADK                            R6 K19 ["Failed to get tools list with error: %*"]
       85 GETUPVAL                         R8 9
       86 MOVE                             R10 R3
       87 NAMECALL                         R8 R8 K20 ["JSONEncode"]
       89 CALL                             R8 2 1
       90 NAMECALL                         R6 R6 K21 ["format"]
       92 CALL                             R6 2 1
       93 MOVE                             R5 R6
       94 CALL                             R4 1 0
       95 RETURN                           R0 0
       96 LOADNIL                          R4
       97 GETUPVAL                         R5 10
       98 GETTABLEKS                       R7 R3 K22 ["result"]
      100 GETTABLEKS                       R6 R7 K23 ["tools"]
      102 CALL                             R5 1 1
      103 GETUPVAL                         R6 11
      104 MOVE                             R7 R5
      105 CALL                             R6 1 1
      106 MOVE                             R4 R6
      107 GETUPVAL                         R6 12
      108 CALL                             R6 0 1
      109 JUMPIF                           R6 ; [+3]
      110 GETUPVAL                         R6 13
      111 CALL                             R6 0 1
      112 JUMPIFNOT                        R6 ; [+53]
      113 GETUPVAL                         R6 14
      114 JUMPIFNOT                        R6 ; [+51]
      115 LOADNIL                          R6
      116 GETUPVAL                         R7 13
      117 CALL                             R7 0 1
      118 JUMPIFNOT                        R7 ; [+9]
      119 DUPTABLE                         R7 K24 [{"tools"}]
      120 GETTABLEKS                       R9 R3 K22 ["result"]
      122 GETTABLEKS                       R8 R9 K23 ["tools"]
      124 SETTABLEKS                       R8 R7 K23 ["tools"]
      126 MOVE                             R6 R7
      127 JUMP                             ; [+5]
      128 DUPTABLE                         R7 K25 [{"assistantMode"}]
      129 GETUPVAL                         R8 5
      130 SETTABLEKS                       R8 R7 K6 ["assistantMode"]
      132 MOVE                             R6 R7
      133 GETUPVAL                         R7 14
      134 MOVE                             R8 R6
      135 CALL                             R7 1 3
      136 FORGPREP                         R7
      137 GETUPVAL                         R12 15
      138 DUPTABLE                         R13 K28 [{"role", "hidden"}]
      139 LOADK                            R14 K29 ["user"]
      140 SETTABLEKS                       R14 R13 K26 ["role"]
      142 LOADB                            R14 1
      143 SETTABLEKS                       R14 R13 K27 ["hidden"]
      145 CALL                             R12 1 1
      146 GETUPVAL                         R13 16
      147 DUPTABLE                         R14 K32 [{"messageId", "content"}]
      148 SETTABLEKS                       R12 R14 K30 ["messageId"]
      150 DUPTABLE                         R15 K35 [{"type", "text"}]
      151 GETUPVAL                         R17 17
      152 GETTABLEKS                       R16 R17 K36 ["Type"]
      154 SETTABLEKS                       R16 R15 K33 ["type"]
      156 GETUPVAL                         R16 18
      157 MOVE                             R17 R11
      158 CALL                             R16 1 1
      159 SETTABLEKS                       R16 R15 K34 ["text"]
      161 SETTABLEKS                       R15 R14 K31 ["content"]
      163 CALL                             R13 1 0
      164 FORGLOOP                         R7 2 ; [-28]
      166 GETUPVAL                         R6 19
      167 CALL                             R6 0 1
      168 JUMPIFNOT                        R6 ; [+4]
      169 GETIMPORT                        R6 K38 [print]
      171 LOADK                            R7 K39 ["Reading conversation history..."]
      172 CALL                             R6 1 0
      173 GETUPVAL                         R6 20
      174 NEWCLOSURE                       R7 P0
      175 CAPTURE                          UPVAL U21
      176 CAPTURE                          UPVAL U1
      177 CAPTURE                          UPVAL U2
      178 CAPTURE                          UPVAL U22
      179 CAPTURE                          UPVAL U19
      180 CAPTURE                          UPVAL U23
      181 CAPTURE                          UPVAL U24
      182 CAPTURE                          UPVAL U25
      183 CAPTURE                          UPVAL U26
      184 CAPTURE                          UPVAL U27
      185 CAPTURE                          UPVAL U28
      186 CAPTURE                          UPVAL U29
      187 CAPTURE                          UPVAL U30
      188 CAPTURE                          UPVAL U4
      189 CAPTURE                          UPVAL U5
      190 CAPTURE                          UPVAL U31
      191 CAPTURE                          UPVAL U7
      192 CAPTURE                          UPVAL U32
      193 CAPTURE                          UPVAL U33
      194 CAPTURE                          UPVAL U34
      195 CAPTURE                          UPVAL U35
      196 CAPTURE                          UPVAL U8
      197 CAPTURE                          VAL R0
      198 CAPTURE                          UPVAL U36
      199 CAPTURE                          UPVAL U37
      200 CAPTURE                          UPVAL U38
      201 CAPTURE                          UPVAL U39
      202 CAPTURE                          UPVAL U40
      203 CAPTURE                          UPVAL U41
      204 CAPTURE                          UPVAL U42
      205 CAPTURE                          UPVAL U43
      206 CAPTURE                          UPVAL U44
      207 CAPTURE                          REF R4
      208 CAPTURE                          UPVAL U45
      209 CALL                             R6 1 0
      210 CLOSEUPVALS                      R4
      211 RETURN                           R0 0

PROTO_15:
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
       48 CALL                             R0 1 0
       49 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["inputEnabled"]
        3 JUMPIF                           R1 ; [+18]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K1 ["reasonDisabled"]
        7 JUMPIFNOT                        R1 ; [+13]
        8 GETIMPORT                        R1 K3 [warn]
       10 LOADK                            R3 K4 ["Input is disabled: %*"]
       11 GETUPVAL                         R7 0
       12 GETTABLEKS                       R6 R7 K1 ["reasonDisabled"]
       14 GETTABLEKS                       R5 R6 K1 ["reasonDisabled"]
       16 NAMECALL                         R3 R3 K5 ["format"]
       18 CALL                             R3 2 1
       19 MOVE                             R2 R3
       20 CALL                             R1 1 0
       21 RETURN                           R0 0
       22 GETUPVAL                         R1 1
       23 CALL                             R1 0 1
       24 JUMPIFNOT                        R1 ; [+7]
       25 GETUPVAL                         R2 2
       26 GETTABLEKS                       R1 R2 K6 ["setLastPacketTime"]
       28 GETIMPORT                        R2 K9 [os.clock]
       30 CALL                             R2 0 -1
       31 CALL                             R1 -1 0
       32 GETUPVAL                         R2 3
       33 GETTABLEKS                       R1 R2 K10 ["setInputEnabled"]
       35 LOADB                            R2 0
       36 CALL                             R1 1 0
       37 GETTABLEKS                       R1 R0 K11 ["text"]
       39 GETTABLEKS                       R3 R0 K13 ["retry"]
       41 ORK                              R2 R3 K12 [False]
       42 GETUPVAL                         R4 4
       43 CALL                             R4 0 1
       44 JUMPIFNOT                        R4 ; [+7]
       45 GETTABLEKS                       R4 R0 K14 ["hidden"]
       47 JUMPIFEQKB                       R4 TRUE ; [+2]
       49 LOADB                            R3 0 +1
       50 LOADB                            R3 1
       51 JUMP                             ; [+1]
       52 LOADB                            R3 0
       53 GETIMPORT                        R4 K9 [os.clock]
       55 CALL                             R4 0 1
       56 LOADB                            R6 1
       57 GETTABLEKS                       R7 R0 K15 ["previousMessageId"]
       59 JUMPIFNOTEQKNIL                  R7 ; [+2]
       61 NOT                              R6 R2
       62 FASTCALL2K                       ASSERT R6 K16 ; [+4]
       64 LOADK                            R7 K16 ["previousMessageId must be provided for retry messages"]
       65 GETIMPORT                        R5 K18 [assert]
       67 CALL                             R5 2 0
       68 NEWTABLE                         R5 0 0
       70 JUMPIF                           R2 ; [+100]
       71 GETUPVAL                         R6 5
       72 DUPTABLE                         R7 K20 [{"role", "hidden"}]
       73 LOADK                            R8 K21 ["user"]
       74 SETTABLEKS                       R8 R7 K19 ["role"]
       76 SETTABLEKS                       R3 R7 K14 ["hidden"]
       78 CALL                             R6 1 1
       79 GETUPVAL                         R7 6
       80 CALL                             R7 0 1
       81 JUMPIFNOT                        R7 ; [+67]
       82 GETTABLEKS                       R7 R0 K22 ["images"]
       84 JUMPIFNOT                        R7 ; [+64]
       85 GETTABLEKS                       R7 R0 K22 ["images"]
       87 LOADNIL                          R8
       88 LOADNIL                          R9
       89 FORGPREP                         R7
       90 GETTABLEKS                       R12 R11 K23 ["data"]
       92 LENGTH                           R13 R12
       93 LOADN                            R15 10
       94 JUMPIFNOTLT                      R15 R13 ; [+10]
       96 SUBK                             R16 R13 K24 [9]
       97 FASTCALL3                        STRING_SUB R12 R16 R13
       99 MOVE                             R15 R12
      100 MOVE                             R17 R13
      101 GETIMPORT                        R14 K27 [string.sub]
      103 CALL                             R14 3 1
      104 JUMP                             ; [+1]
      105 MOVE                             R14 R12
      106 DUPTABLE                         R17 K31 [{"imageDataSuffix", "imageDataSize", "mimeType"}]
      107 SETTABLEKS                       R14 R17 K28 ["imageDataSuffix"]
      109 SETTABLEKS                       R13 R17 K29 ["imageDataSize"]
      111 GETTABLEKS                       R18 R11 K30 ["mimeType"]
      113 SETTABLEKS                       R18 R17 K30 ["mimeType"]
      115 FASTCALL2                        TABLE_INSERT R5 R17 ; [+4]
      117 MOVE                             R16 R5
      118 GETIMPORT                        R15 K34 [table.insert]
      120 CALL                             R15 2 0
      121 FORGLOOP                         R7 2 ; [-32]
      123 GETTABLEKS                       R8 R0 K22 ["images"]
      125 LENGTH                           R7 R8
      126 LOADN                            R8 0
      127 JUMPIFNOTLT                      R8 R7 ; [+21]
      129 DUPTABLE                         R7 K38 [{"type", "imageContents", "expanded"}]
      130 GETUPVAL                         R9 7
      131 GETTABLEKS                       R8 R9 K39 ["Type"]
      133 SETTABLEKS                       R8 R7 K35 ["type"]
      135 GETTABLEKS                       R8 R0 K22 ["images"]
      137 SETTABLEKS                       R8 R7 K36 ["imageContents"]
      139 LOADB                            R8 0
      140 SETTABLEKS                       R8 R7 K37 ["expanded"]
      142 GETUPVAL                         R8 8
      143 DUPTABLE                         R9 K42 [{"messageId", "content"}]
      144 SETTABLEKS                       R6 R9 K40 ["messageId"]
      146 SETTABLEKS                       R7 R9 K41 ["content"]
      148 CALL                             R8 1 0
      149 GETUPVAL                         R7 6
      150 CALL                             R7 0 1
      151 JUMPIFNOT                        R7 ; [+4]
      152 LENGTH                           R7 R1
      153 LOADN                            R8 0
      154 JUMPIFNOTLT                      R8 R7 ; [+16]
      156 DUPTABLE                         R7 K43 [{"type", "text"}]
      157 GETUPVAL                         R9 9
      158 GETTABLEKS                       R8 R9 K39 ["Type"]
      160 SETTABLEKS                       R8 R7 K35 ["type"]
      162 SETTABLEKS                       R1 R7 K11 ["text"]
      164 GETUPVAL                         R8 8
      165 DUPTABLE                         R9 K42 [{"messageId", "content"}]
      166 SETTABLEKS                       R6 R9 K40 ["messageId"]
      168 SETTABLEKS                       R7 R9 K41 ["content"]
      170 CALL                             R8 1 0
      171 GETUPVAL                         R6 10
      172 CALL                             R6 0 1
      173 JUMPIFNOT                        R6 ; [+5]
      174 GETIMPORT                        R6 K45 [print]
      176 LOADK                            R7 K46 ["About to send message:"]
      177 MOVE                             R8 R1
      178 CALL                             R6 2 0
      179 GETUPVAL                         R7 3
      180 GETTABLEKS                       R6 R7 K10 ["setInputEnabled"]
      182 GETUPVAL                         R7 11
      183 CALL                             R7 0 1
      184 JUMPIFNOT                        R7 ; [+2]
      185 NEWCLOSURE                       R6 P0
      186 CAPTURE                          UPVAL U3
      187 GETUPVAL                         R7 12
      188 DUPTABLE                         R8 K48 [{"prompt", "images", "setInputEnabled"}]
      189 SETTABLEKS                       R1 R8 K47 ["prompt"]
      191 GETTABLEKS                       R9 R0 K22 ["images"]
      193 SETTABLEKS                       R9 R8 K22 ["images"]
      195 SETTABLEKS                       R6 R8 K10 ["setInputEnabled"]
      197 CALL                             R7 1 1
      198 JUMPIFNOT                        R7 ; [+1]
      199 RETURN                           R0 0
      200 GETIMPORT                        R8 K51 [task.spawn]
      202 NEWCLOSURE                       R9 P1
      203 CAPTURE                          UPVAL U13
      204 CAPTURE                          UPVAL U14
      205 CAPTURE                          UPVAL U15
      206 CAPTURE                          UPVAL U16
      207 CAPTURE                          UPVAL U17
      208 CAPTURE                          UPVAL U18
      209 CAPTURE                          UPVAL U19
      210 CAPTURE                          UPVAL U20
      211 CAPTURE                          UPVAL U21
      212 CAPTURE                          UPVAL U3
      213 CAPTURE                          UPVAL U22
      214 CAPTURE                          UPVAL U23
      215 CAPTURE                          UPVAL U24
      216 CAPTURE                          UPVAL U25
      217 CAPTURE                          UPVAL U4
      218 CAPTURE                          UPVAL U26
      219 CAPTURE                          UPVAL U5
      220 CAPTURE                          UPVAL U8
      221 CAPTURE                          UPVAL U9
      222 CAPTURE                          UPVAL U27
      223 CAPTURE                          UPVAL U10
      224 CAPTURE                          UPVAL U28
      225 CAPTURE                          UPVAL U11
      226 CAPTURE                          UPVAL U29
      227 CAPTURE                          UPVAL U30
      228 CAPTURE                          UPVAL U31
      229 CAPTURE                          UPVAL U32
      230 CAPTURE                          UPVAL U33
      231 CAPTURE                          UPVAL U34
      232 CAPTURE                          UPVAL U35
      233 CAPTURE                          UPVAL U36
      234 CAPTURE                          VAL R1
      235 CAPTURE                          VAL R5
      236 CAPTURE                          UPVAL U2
      237 CAPTURE                          UPVAL U37
      238 CAPTURE                          UPVAL U38
      239 CAPTURE                          UPVAL U39
      240 CAPTURE                          UPVAL U40
      241 CAPTURE                          UPVAL U41
      242 CAPTURE                          UPVAL U42
      243 CAPTURE                          UPVAL U43
      244 CAPTURE                          UPVAL U44
      245 CAPTURE                          UPVAL U45
      246 CAPTURE                          UPVAL U46
      247 CAPTURE                          UPVAL U47
      248 CAPTURE                          VAL R4
      249 CAPTURE                          UPVAL U48
      250 CALL                             R8 1 0
      251 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 CALL                             R2 0 1
        4 GETUPVAL                         R3 2
        5 CALL                             R3 0 1
        6 GETUPVAL                         R4 3
        7 CALL                             R4 0 1
        8 GETUPVAL                         R5 4
        9 CALL                             R5 0 1
       10 GETUPVAL                         R6 5
       11 CALL                             R6 0 1
       12 GETUPVAL                         R8 6
       13 CALL                             R8 0 1
       14 JUMPIF                           R8 ; [+6]
       15 GETUPVAL                         R8 7
       16 CALL                             R8 0 1
       17 JUMPIF                           R8 ; [+3]
       18 GETUPVAL                         R8 8
       19 CALL                             R8 0 1
       20 JUMPIFNOT                        R8 ; [+3]
       21 GETUPVAL                         R7 9
       22 CALL                             R7 0 1
       23 JUMP                             ; [+1]
       24 LOADNIL                          R7
       25 GETUPVAL                         R8 10
       26 CALL                             R8 0 1
       27 GETUPVAL                         R9 11
       28 CALL                             R9 0 1
       29 GETUPVAL                         R10 12
       30 CALL                             R10 0 1
       31 GETUPVAL                         R11 13
       32 CALL                             R11 0 1
       33 GETUPVAL                         R12 14
       34 CALL                             R12 0 1
       35 GETUPVAL                         R13 15
       36 CALL                             R13 0 1
       37 GETUPVAL                         R14 16
       38 CALL                             R14 0 1
       39 GETUPVAL                         R15 17
       40 CALL                             R15 0 1
       41 GETUPVAL                         R17 18
       42 GETTABLEKS                       R16 R17 K0 ["useContext"]
       44 GETUPVAL                         R18 19
       45 GETTABLEKS                       R17 R18 K1 ["Context"]
       47 CALL                             R16 1 1
       48 GETTABLEKS                       R17 R16 K2 ["sessionId"]
       50 GETUPVAL                         R19 18
       51 GETTABLEKS                       R18 R19 K0 ["useContext"]
       53 GETUPVAL                         R20 20
       54 GETTABLEKS                       R19 R20 K1 ["Context"]
       56 CALL                             R18 1 1
       57 GETUPVAL                         R20 18
       58 GETTABLEKS                       R19 R20 K0 ["useContext"]
       60 GETUPVAL                         R21 21
       61 GETTABLEKS                       R20 R21 K1 ["Context"]
       63 CALL                             R19 1 1
       64 GETUPVAL                         R20 22
       65 CALL                             R20 0 1
       66 GETUPVAL                         R22 18
       67 GETTABLEKS                       R21 R22 K0 ["useContext"]
       69 GETUPVAL                         R23 23
       70 GETTABLEKS                       R22 R23 K1 ["Context"]
       72 CALL                             R21 1 1
       73 GETUPVAL                         R23 18
       74 GETTABLEKS                       R22 R23 K0 ["useContext"]
       76 GETUPVAL                         R24 24
       77 GETTABLEKS                       R23 R24 K1 ["Context"]
       79 CALL                             R22 1 1
       80 LOADNIL                          R23
       81 GETUPVAL                         R24 25
       82 CALL                             R24 0 1
       83 JUMPIFNOT                        R24 ; [+3]
       84 GETUPVAL                         R24 26
       85 CALL                             R24 0 1
       86 MOVE                             R23 R24
       87 NEWCLOSURE                       R24 P0
       88 CAPTURE                          VAL R18
       89 CAPTURE                          UPVAL U27
       90 CAPTURE                          VAL R22
       91 CAPTURE                          VAL R0
       92 CAPTURE                          UPVAL U8
       93 CAPTURE                          VAL R1
       94 CAPTURE                          UPVAL U28
       95 CAPTURE                          UPVAL U29
       96 CAPTURE                          VAL R2
       97 CAPTURE                          UPVAL U30
       98 CAPTURE                          UPVAL U31
       99 CAPTURE                          UPVAL U32
      100 CAPTURE                          VAL R11
      101 CAPTURE                          VAL R4
      102 CAPTURE                          UPVAL U33
      103 CAPTURE                          VAL R21
      104 CAPTURE                          UPVAL U34
      105 CAPTURE                          UPVAL U35
      106 CAPTURE                          UPVAL U25
      107 CAPTURE                          REF R23
      108 CAPTURE                          UPVAL U36
      109 CAPTURE                          VAL R12
      110 CAPTURE                          UPVAL U37
      111 CAPTURE                          UPVAL U38
      112 CAPTURE                          VAL R8
      113 CAPTURE                          UPVAL U39
      114 CAPTURE                          VAL R7
      115 CAPTURE                          UPVAL U40
      116 CAPTURE                          VAL R10
      117 CAPTURE                          UPVAL U41
      118 CAPTURE                          VAL R3
      119 CAPTURE                          VAL R13
      120 CAPTURE                          UPVAL U42
      121 CAPTURE                          UPVAL U43
      122 CAPTURE                          VAL R20
      123 CAPTURE                          VAL R17
      124 CAPTURE                          VAL R15
      125 CAPTURE                          VAL R9
      126 CAPTURE                          VAL R5
      127 CAPTURE                          VAL R6
      128 CAPTURE                          UPVAL U44
      129 CAPTURE                          UPVAL U45
      130 CAPTURE                          UPVAL U46
      131 CAPTURE                          UPVAL U47
      132 CAPTURE                          UPVAL U48
      133 CAPTURE                          VAL R19
      134 CAPTURE                          UPVAL U49
      135 CAPTURE                          UPVAL U50
      136 CAPTURE                          VAL R14
      137 CLOSEUPVALS                      R23
      138 RETURN                           R24 1

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
       15 GETTABLEKS                       R4 R0 K10 ["Guest"]
       17 GETTABLEKS                       R3 R4 K11 ["Environment"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R6 R0 K12 ["Components"]
       24 GETTABLEKS                       R5 R6 K13 ["Contexts"]
       26 GETTABLEKS                       R4 R5 K14 ["InputStateContext"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K9 [require]
       31 GETTABLEKS                       R8 R0 K12 ["Components"]
       33 GETTABLEKS                       R7 R8 K13 ["Contexts"]
       35 GETTABLEKS                       R6 R7 K15 ["DefaultLLMProvider"]
       37 GETTABLEKS                       R5 R6 K16 ["LLMProcessEvent"]
       39 CALL                             R4 1 1
       40 GETIMPORT                        R5 K9 [require]
       42 GETTABLEKS                       R8 R0 K12 ["Components"]
       44 GETTABLEKS                       R7 R8 K13 ["Contexts"]
       46 GETTABLEKS                       R6 R7 K17 ["LLMProviderSelectionContext"]
       48 CALL                             R5 1 1
       49 GETIMPORT                        R6 K9 [require]
       51 GETTABLEKS                       R10 R0 K12 ["Components"]
       53 GETTABLEKS                       R9 R10 K13 ["Contexts"]
       55 GETTABLEKS                       R8 R9 K15 ["DefaultLLMProvider"]
       57 GETTABLEKS                       R7 R8 K18 ["LLMRequest"]
       59 CALL                             R6 1 1
       60 GETIMPORT                        R7 K9 [require]
       62 GETTABLEKS                       R9 R0 K19 ["Parent"]
       64 GETTABLEKS                       R8 R9 K20 ["ModelContextProtocol"]
       66 CALL                             R7 1 1
       67 GETIMPORT                        R8 K9 [require]
       69 GETTABLEKS                       R11 R0 K12 ["Components"]
       71 GETTABLEKS                       R10 R11 K13 ["Contexts"]
       73 GETTABLEKS                       R9 R10 K21 ["ModelQualityContext"]
       75 CALL                             R8 1 1
       76 GETIMPORT                        R9 K9 [require]
       78 GETTABLEKS                       R12 R0 K12 ["Components"]
       80 GETTABLEKS                       R11 R12 K13 ["Contexts"]
       82 GETTABLEKS                       R10 R11 K22 ["PacketReceivedContext"]
       84 CALL                             R9 1 1
       85 GETIMPORT                        R10 K9 [require]
       87 GETTABLEKS                       R12 R0 K19 ["Parent"]
       89 GETTABLEKS                       R11 R12 K23 ["Promise"]
       91 CALL                             R10 1 1
       92 GETIMPORT                        R11 K9 [require]
       94 GETTABLEKS                       R13 R0 K19 ["Parent"]
       96 GETTABLEKS                       R12 R13 K24 ["React"]
       98 CALL                             R11 1 1
       99 GETIMPORT                        R12 K9 [require]
      101 GETTABLEKS                       R15 R0 K12 ["Components"]
      103 GETTABLEKS                       R14 R15 K13 ["Contexts"]
      105 GETTABLEKS                       R13 R14 K25 ["SessionIdContext"]
      107 CALL                             R12 1 1
      108 GETIMPORT                        R13 K9 [require]
      110 GETTABLEKS                       R15 R0 K19 ["Parent"]
      112 GETTABLEKS                       R14 R15 K26 ["Signal"]
      114 CALL                             R13 1 1
      115 GETIMPORT                        R14 K9 [require]
      117 GETTABLEKS                       R17 R0 K12 ["Components"]
      119 GETTABLEKS                       R16 R17 K27 ["ContentWidgets"]
      121 GETTABLEKS                       R15 R16 K28 ["TextContentWidget"]
      123 CALL                             R14 1 1
      124 GETIMPORT                        R15 K9 [require]
      126 GETTABLEKS                       R16 R0 K29 ["Types"]
      128 CALL                             R15 1 1
      129 GETIMPORT                        R16 K9 [require]
      131 GETTABLEKS                       R18 R0 K30 ["Util"]
      133 GETTABLEKS                       R17 R18 K31 ["readThread"]
      135 CALL                             R16 1 1
      136 GETIMPORT                        R17 K9 [require]
      138 GETTABLEKS                       R19 R0 K32 ["Hooks"]
      140 GETTABLEKS                       R18 R19 K33 ["useAddContent"]
      142 CALL                             R17 1 1
      143 GETIMPORT                        R18 K9 [require]
      145 GETTABLEKS                       R20 R0 K32 ["Hooks"]
      147 GETTABLEKS                       R19 R20 K34 ["useAddMessage"]
      149 CALL                             R18 1 1
      150 GETIMPORT                        R19 K9 [require]
      152 GETTABLEKS                       R21 R0 K32 ["Hooks"]
      154 GETTABLEKS                       R20 R21 K35 ["useAssistantMode"]
      156 CALL                             R19 1 1
      157 GETIMPORT                        R20 K9 [require]
      159 GETTABLEKS                       R22 R0 K32 ["Hooks"]
      161 GETTABLEKS                       R21 R22 K36 ["useGetContentObserver"]
      163 CALL                             R20 1 1
      164 GETIMPORT                        R21 K9 [require]
      166 GETTABLEKS                       R23 R0 K32 ["Hooks"]
      168 GETTABLEKS                       R22 R23 K37 ["useGetOrAddMessage"]
      170 CALL                             R21 1 1
      171 GETIMPORT                        R22 K9 [require]
      173 GETTABLEKS                       R24 R0 K32 ["Hooks"]
      175 GETTABLEKS                       R23 R24 K38 ["useGetThread"]
      177 CALL                             R22 1 1
      178 GETIMPORT                        R23 K9 [require]
      180 GETTABLEKS                       R25 R0 K32 ["Hooks"]
      182 GETTABLEKS                       R24 R25 K39 ["useLLMProcessEvent"]
      184 CALL                             R23 1 1
      185 GETIMPORT                        R24 K9 [require]
      187 GETTABLEKS                       R26 R0 K32 ["Hooks"]
      189 GETTABLEKS                       R25 R26 K40 ["useLLMRequest"]
      191 CALL                             R24 1 1
      192 GETIMPORT                        R25 K9 [require]
      194 GETTABLEKS                       R27 R0 K32 ["Hooks"]
      196 GETTABLEKS                       R26 R27 K41 ["useLLMSystemMessage"]
      198 CALL                             R25 1 1
      199 GETIMPORT                        R26 K9 [require]
      201 GETTABLEKS                       R28 R0 K32 ["Hooks"]
      203 GETTABLEKS                       R27 R28 K42 ["useLLMSystemReminderGetter"]
      205 CALL                             R26 1 1
      206 GETIMPORT                        R27 K9 [require]
      208 GETTABLEKS                       R29 R0 K32 ["Hooks"]
      210 GETTABLEKS                       R28 R29 K43 ["useLogRequestJourney"]
      212 CALL                             R27 1 1
      213 GETIMPORT                        R28 K9 [require]
      215 GETTABLEKS                       R30 R0 K32 ["Hooks"]
      217 GETTABLEKS                       R29 R30 K44 ["useRunSlashCommand"]
      219 CALL                             R28 1 1
      220 GETIMPORT                        R29 K9 [require]
      222 GETTABLEKS                       R31 R0 K32 ["Hooks"]
      224 GETTABLEKS                       R30 R31 K45 ["useSettingsContext"]
      226 CALL                             R29 1 1
      227 GETIMPORT                        R30 K9 [require]
      229 GETTABLEKS                       R32 R0 K32 ["Hooks"]
      231 GETTABLEKS                       R31 R32 K46 ["useShowError"]
      233 CALL                             R30 1 1
      234 GETIMPORT                        R31 K9 [require]
      236 GETTABLEKS                       R33 R0 K32 ["Hooks"]
      238 GETTABLEKS                       R32 R33 K47 ["useThreadId"]
      240 CALL                             R31 1 1
      241 GETIMPORT                        R32 K9 [require]
      243 GETTABLEKS                       R34 R0 K32 ["Hooks"]
      245 GETTABLEKS                       R33 R34 K48 ["useToolFormat"]
      247 CALL                             R32 1 1
      248 GETIMPORT                        R33 K9 [require]
      250 GETTABLEKS                       R35 R0 K32 ["Hooks"]
      252 GETTABLEKS                       R34 R35 K49 ["useWithClient"]
      254 CALL                             R33 1 1
      255 GETIMPORT                        R34 K9 [require]
      257 GETTABLEKS                       R36 R0 K50 ["Flags"]
      259 GETTABLEKS                       R35 R36 K51 ["getAssistantModeEnabled"]
      261 CALL                             R34 1 1
      262 GETIMPORT                        R35 K9 [require]
      264 GETTABLEKS                       R37 R0 K50 ["Flags"]
      266 GETTABLEKS                       R36 R37 K52 ["FFlagAssistantAgentModeSystemReminder"]
      268 CALL                             R35 1 1
      269 GETIMPORT                        R36 K9 [require]
      271 GETTABLEKS                       R38 R0 K50 ["Flags"]
      273 GETTABLEKS                       R37 R38 K53 ["FFlagAssistantDynamicToolDescription"]
      275 CALL                             R36 1 1
      276 GETIMPORT                        R37 K9 [require]
      278 GETTABLEKS                       R39 R0 K50 ["Flags"]
      280 GETTABLEKS                       R38 R39 K54 ["FFlagAssistantMultipleChatPersistence"]
      282 CALL                             R37 1 1
      283 GETIMPORT                        R38 K9 [require]
      285 GETTABLEKS                       R40 R0 K50 ["Flags"]
      287 GETTABLEKS                       R39 R40 K55 ["FFlagAssistantNewOpenAIAdapter"]
      289 CALL                             R38 1 1
      290 GETIMPORT                        R39 K9 [require]
      292 GETTABLEKS                       R41 R0 K50 ["Flags"]
      294 GETTABLEKS                       R40 R41 K56 ["FFlagAssistantPlanMode"]
      296 CALL                             R39 1 1
      297 GETIMPORT                        R40 K9 [require]
      299 GETTABLEKS                       R42 R0 K50 ["Flags"]
      301 GETTABLEKS                       R41 R42 K57 ["FFlagAssistantSupportSlashCommandCancellation"]
      303 CALL                             R40 1 1
      304 GETIMPORT                        R41 K9 [require]
      306 GETTABLEKS                       R43 R0 K50 ["Flags"]
      308 GETTABLEKS                       R42 R43 K58 ["FFlagAssistantSystemReminderRefactor"]
      310 CALL                             R41 1 1
      311 GETIMPORT                        R42 K9 [require]
      313 GETTABLEKS                       R44 R0 K50 ["Flags"]
      315 GETTABLEKS                       R43 R44 K59 ["FFlagAssistantTestAutomation"]
      317 CALL                             R42 1 1
      318 GETIMPORT                        R43 K9 [require]
      320 GETTABLEKS                       R45 R0 K50 ["Flags"]
      322 GETTABLEKS                       R44 R45 K60 ["FFlagAssistantTestModeSystemReminder"]
      324 CALL                             R43 1 1
      325 GETIMPORT                        R44 K9 [require]
      327 GETTABLEKS                       R46 R0 K50 ["Flags"]
      329 GETTABLEKS                       R45 R46 K61 ["FFlagDebugLogAssistantUI"]
      331 CALL                             R44 1 1
      332 GETIMPORT                        R45 K9 [require]
      334 GETTABLEKS                       R47 R0 K50 ["Flags"]
      336 GETTABLEKS                       R46 R47 K62 ["FFlagDisableScreenCaptureForDefaultModel"]
      338 CALL                             R45 1 1
      339 GETIMPORT                        R46 K9 [require]
      341 GETTABLEKS                       R48 R0 K50 ["Flags"]
      343 GETTABLEKS                       R47 R48 K63 ["FFlagEnableAssistantInputImageAttachment"]
      345 CALL                             R46 1 1
      346 GETIMPORT                        R47 K9 [require]
      348 GETTABLEKS                       R49 R0 K50 ["Flags"]
      350 GETTABLEKS                       R48 R49 K64 ["FFlagEnablePrimitiveGenTool"]
      352 CALL                             R47 1 1
      353 GETIMPORT                        R48 K9 [require]
      355 GETTABLEKS                       R50 R0 K50 ["Flags"]
      357 GETTABLEKS                       R49 R50 K65 ["FFlagEnableSubagents"]
      359 CALL                             R48 1 1
      360 GETIMPORT                        R49 K9 [require]
      362 GETTABLEKS                       R51 R0 K50 ["Flags"]
      364 GETTABLEKS                       R50 R51 K66 ["FIntAssistantProcessEventTimeoutMS"]
      366 CALL                             R49 1 1
      367 GETIMPORT                        R50 K9 [require]
      369 GETTABLEKS                       R52 R0 K50 ["Flags"]
      371 GETTABLEKS                       R51 R52 K67 ["FIntMCPAssistantMaxToolCalls"]
      373 CALL                             R50 1 1
      374 GETIMPORT                        R51 K9 [require]
      376 GETTABLEKS                       R53 R0 K50 ["Flags"]
      378 GETTABLEKS                       R52 R53 K68 ["getIsTestModeSystemRemindersEnabled"]
      380 CALL                             R51 1 1
      381 GETIMPORT                        R52 K9 [require]
      383 GETTABLEKS                       R55 R0 K12 ["Components"]
      385 GETTABLEKS                       R54 R55 K27 ["ContentWidgets"]
      387 GETTABLEKS                       R53 R54 K69 ["ImageContentWidget"]
      389 CALL                             R52 1 1
      390 GETTABLEKS                       R53 R15 K70 ["getSystemReminder"]
      392 DUPCLOSURE                       R54 K71 [PROTO_0]
      393 CAPTURE                          VAL R7
      394 DUPCLOSURE                       R55 K72 [PROTO_1]
      395 CAPTURE                          VAL R15
      396 DUPCLOSURE                       R56 K73 [PROTO_6]
      397 CAPTURE                          VAL R15
      398 CAPTURE                          VAL R42
      399 CAPTURE                          VAL R47
      400 CAPTURE                          VAL R48
      401 CAPTURE                          VAL R13
      402 CAPTURE                          VAL R10
      403 DUPCLOSURE                       R57 K74 [PROTO_17]
      404 CAPTURE                          VAL R18
      405 CAPTURE                          VAL R17
      406 CAPTURE                          VAL R21
      407 CAPTURE                          VAL R33
      408 CAPTURE                          VAL R24
      409 CAPTURE                          VAL R25
      410 CAPTURE                          VAL R43
      411 CAPTURE                          VAL R35
      412 CAPTURE                          VAL R41
      413 CAPTURE                          VAL R26
      414 CAPTURE                          VAL R32
      415 CAPTURE                          VAL R23
      416 CAPTURE                          VAL R22
      417 CAPTURE                          VAL R28
      418 CAPTURE                          VAL R30
      419 CAPTURE                          VAL R20
      420 CAPTURE                          VAL R27
      421 CAPTURE                          VAL R31
      422 CAPTURE                          VAL R11
      423 CAPTURE                          VAL R12
      424 CAPTURE                          VAL R3
      425 CAPTURE                          VAL R8
      426 CAPTURE                          VAL R29
      427 CAPTURE                          VAL R5
      428 CAPTURE                          VAL R9
      429 CAPTURE                          VAL R34
      430 CAPTURE                          VAL R19
      431 CAPTURE                          VAL R40
      432 CAPTURE                          VAL R46
      433 CAPTURE                          VAL R52
      434 CAPTURE                          VAL R14
      435 CAPTURE                          VAL R44
      436 CAPTURE                          VAL R39
      437 CAPTURE                          VAL R45
      438 CAPTURE                          VAL R15
      439 CAPTURE                          VAL R38
      440 CAPTURE                          VAL R36
      441 CAPTURE                          VAL R1
      442 CAPTURE                          VAL R54
      443 CAPTURE                          VAL R51
      444 CAPTURE                          VAL R53
      445 CAPTURE                          VAL R16
      446 CAPTURE                          VAL R2
      447 CAPTURE                          VAL R37
      448 CAPTURE                          VAL R42
      449 CAPTURE                          VAL R47
      450 CAPTURE                          VAL R48
      451 CAPTURE                          VAL R13
      452 CAPTURE                          VAL R10
      453 CAPTURE                          VAL R50
      454 CAPTURE                          VAL R49
      455 RETURN                           R57 1
