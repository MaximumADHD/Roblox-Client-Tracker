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
        0 GETUPVAL                         R1 0
        1 NEWTABLE                         R2 0 1
        3 MOVE                             R3 R0
        4 SETLIST                          R2 R3 1 [1]
        6 CALL                             R1 1 0
        7 RETURN                           R0 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["setInputEnabled"]
        3 MOVE                             R2 R0
        4 DUPTABLE                         R3 K2 [{"focus"}]
        5 LOADB                            R4 1
        6 SETTABLEKS                       R4 R3 K1 ["focus"]
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["Compaction"]
        2 LOADK                            R4 K1 ["Complete"]
        3 NAMECALL                         R1 R1 K2 ["getText"]
        5 CALL                             R1 3 1
        6 SETTABLEKS                       R1 R0 K3 ["summary"]
        8 LOADB                            R1 0
        9 SETTABLEKS                       R1 R0 K4 ["generating"]
       11 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getSetting"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+4]
        6 JUMPIFEQKS                       R1 K1 [""] ; [+3]
        8 GETUPVAL                         R2 1
        9 SETTABLE                         R1 R2 R0
       10 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R2 K2 [{"errorType", "messageGuid"}]
        2 SETTABLEKS                       R0 R2 K0 ["errorType"]
        4 GETUPVAL                         R3 1
        5 SETTABLEKS                       R3 R2 K1 ["messageGuid"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setLastPacketTime"]
        3 GETIMPORT                        R1 K3 [os.clock]
        5 CALL                             R1 0 -1
        6 CALL                             R0 -1 0
        7 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setLastPacketTime"]
        3 GETIMPORT                        R1 K3 [os.clock]
        5 CALL                             R1 0 -1
        6 CALL                             R0 -1 0
        7 RETURN                           R0 0

PROTO_14:
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

PROTO_15:
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
      113 DUPTABLE                         R11 K21 [{"messageGuid", "sessionId", "threadId", "messageId", "contentId", "assistantMode"}]
      114 SETTABLEKS                       R3 R11 K10 ["messageGuid"]
      116 GETUPVAL                         R12 6
      117 SETTABLEKS                       R12 R11 K11 ["sessionId"]
      119 GETUPVAL                         R12 7
      120 SETTABLEKS                       R12 R11 K12 ["threadId"]
      122 SETTABLEKS                       R0 R11 K19 ["messageId"]
      124 LOADNIL                          R12
      125 SETTABLEKS                       R12 R11 K20 ["contentId"]
      127 GETUPVAL                         R13 9
      128 CALL                             R13 0 1
      129 JUMPIFNOT                        R13 ; [+2]
      130 GETUPVAL                         R12 10
      131 JUMPIF                           R12 ; [+1]
      132 LOADNIL                          R12
      133 SETTABLEKS                       R12 R11 K15 ["assistantMode"]
      135 LOADB                            R12 0
      136 NEWCLOSURE                       R13 P4
      137 CAPTURE                          UPVAL U14
      138 CAPTURE                          UPVAL U2
      139 CAPTURE                          REF R12
      140 CAPTURE                          UPVAL U15
      141 CAPTURE                          UPVAL U6
      142 CAPTURE                          UPVAL U7
      143 CAPTURE                          VAL R0
      144 GETUPVAL                         R14 16
      145 GETTABLEKS                       R14 R14 K22 ["createLLMSession"]
      147 DUPTABLE                         R15 K42 [{"showError", "messageGuid", "conversationSessionId", "threadId", "requestLLM", "systemMessage", "observer", "setInputEnabled", "onToolCall", "setModelQuality", "onPacketReceived", "maxToolCalls", "timeoutMs", "initialMessages", "requestStartTime", "tools", "apiKeys", "selectedModel", "messageId", "logRequestStop", "assistantMode", "compactedStore", "selectedProvider", "uiMessageCount"}]
      148 SETTABLEKS                       R8 R15 K23 ["showError"]
      150 SETTABLEKS                       R3 R15 K10 ["messageGuid"]
      152 GETUPVAL                         R16 6
      153 SETTABLEKS                       R16 R15 K24 ["conversationSessionId"]
      155 GETUPVAL                         R16 7
      156 SETTABLEKS                       R16 R15 K12 ["threadId"]
      158 GETUPVAL                         R16 17
      159 SETTABLEKS                       R16 R15 K25 ["requestLLM"]
      161 GETUPVAL                         R16 18
      162 SETTABLEKS                       R16 R15 K26 ["systemMessage"]
      164 SETTABLEKS                       R1 R15 K27 ["observer"]
      166 SETTABLEKS                       R13 R15 K28 ["setInputEnabled"]
      168 GETUPVAL                         R17 19
      169 NEWCLOSURE                       R16 P5
      170 CAPTURE                          VAL R17
      171 CAPTURE                          UPVAL U4
      172 CAPTURE                          VAL R11
      173 CAPTURE                          UPVAL U20
      174 CAPTURE                          VAL R10
      175 CAPTURE                          UPVAL U21
      176 CAPTURE                          UPVAL U22
      177 SETTABLEKS                       R16 R15 K29 ["onToolCall"]
      179 GETUPVAL                         R16 23
      180 GETTABLEKS                       R16 R16 K30 ["setModelQuality"]
      182 SETTABLEKS                       R16 R15 K30 ["setModelQuality"]
      184 SETTABLEKS                       R9 R15 K31 ["onPacketReceived"]
      186 GETUPVAL                         R16 24
      187 CALL                             R16 0 1
      188 SETTABLEKS                       R16 R15 K32 ["maxToolCalls"]
      190 GETUPVAL                         R16 25
      191 CALL                             R16 0 1
      192 SETTABLEKS                       R16 R15 K33 ["timeoutMs"]
      194 GETUPVAL                         R16 26
      195 SETTABLEKS                       R16 R15 K34 ["initialMessages"]
      197 GETUPVAL                         R16 27
      198 SETTABLEKS                       R16 R15 K35 ["requestStartTime"]
      200 GETUPVAL                         R16 28
      201 SETTABLEKS                       R16 R15 K36 ["tools"]
      203 SETTABLEKS                       R4 R15 K37 ["apiKeys"]
      205 SETTABLEKS                       R6 R15 K9 ["selectedModel"]
      207 SETTABLEKS                       R0 R15 K19 ["messageId"]
      209 GETUPVAL                         R16 29
      210 SETTABLEKS                       R16 R15 K38 ["logRequestStop"]
      212 GETUPVAL                         R17 9
      213 CALL                             R17 0 1
      214 JUMPIFNOT                        R17 ; [+2]
      215 GETUPVAL                         R16 10
      216 JUMPIF                           R16 ; [+1]
      217 LOADNIL                          R16
      218 SETTABLEKS                       R16 R15 K15 ["assistantMode"]
      220 GETUPVAL                         R16 30
      221 SETTABLEKS                       R16 R15 K39 ["compactedStore"]
      223 GETUPVAL                         R16 5
      224 GETTABLEKS                       R16 R16 K40 ["selectedProvider"]
      226 SETTABLEKS                       R16 R15 K40 ["selectedProvider"]
      228 GETUPVAL                         R16 31
      229 SETTABLEKS                       R16 R15 K41 ["uiMessageCount"]
      231 CALL                             R14 1 1
      232 DUPTABLE                         R15 K47 [{"threadId", "messages", "tools", "system", "messageGuid", "isFirstMessage", "isAgenticMode", "apiKeys", "selectedModel", "assistantMode"}]
      233 GETUPVAL                         R16 7
      234 SETTABLEKS                       R16 R15 K12 ["threadId"]
      236 GETUPVAL                         R16 26
      237 SETTABLEKS                       R16 R15 K43 ["messages"]
      239 GETUPVAL                         R16 28
      240 SETTABLEKS                       R16 R15 K36 ["tools"]
      242 GETUPVAL                         R16 18
      243 SETTABLEKS                       R16 R15 K44 ["system"]
      245 SETTABLEKS                       R3 R15 K10 ["messageGuid"]
      247 LOADB                            R16 1
      248 SETTABLEKS                       R16 R15 K45 ["isFirstMessage"]
      250 LOADB                            R16 0
      251 SETTABLEKS                       R16 R15 K46 ["isAgenticMode"]
      253 SETTABLEKS                       R4 R15 K37 ["apiKeys"]
      255 SETTABLEKS                       R6 R15 K9 ["selectedModel"]
      257 GETUPVAL                         R17 9
      258 CALL                             R17 0 1
      259 JUMPIFNOT                        R17 ; [+2]
      260 GETUPVAL                         R16 10
      261 JUMPIF                           R16 ; [+1]
      262 LOADNIL                          R16
      263 SETTABLEKS                       R16 R15 K15 ["assistantMode"]
      265 GETUPVAL                         R16 17
      266 MOVE                             R17 R15
      267 GETTABLEKS                       R18 R14 K48 ["processEvent"]
      269 CALL                             R16 2 0
      270 CLOSEUPVALS                      R12
      271 RETURN                           R0 0

PROTO_16:
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
      219 DUPCLOSURE                       R12 K48 [PROTO_9]
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
      279 CALL                             R7 2 0
      280 CLOSEUPVALS                      R2
      281 RETURN                           R0 0

PROTO_17:
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
       23 JUMPIFNOT                        R2 ; [+4]
       24 DUPTABLE                         R2 K7 [{"_meta"}]
       25 SETTABLEKS                       R1 R2 K6 ["_meta"]
       27 MOVE                             R1 R2
       28 MOVE                             R4 R1
       29 NAMECALL                         R2 R0 K8 ["listTools"]
       31 CALL                             R2 2 1
       32 NAMECALL                         R2 R2 K9 ["await"]
       34 CALL                             R2 1 2
       35 JUMPIFNOT                        R2 ; [+12]
       36 GETTABLEKS                       R6 R3 K10 ["failures"]
       38 GETUPVAL                         R7 1
       39 GETTABLEKS                       R7 R7 K11 ["getMcpClientIdentifier"]
       41 CALL                             R7 0 1
       42 GETTABLE                         R5 R6 R7
       43 JUMPIFNOTEQKNIL                  R5 ; [+2]
       45 LOADB                            R4 0 +1
       46 LOADB                            R4 1
       47 JUMPIFNOT                        R4 ; [+25]
       48 GETUPVAL                         R4 5
       49 DUPTABLE                         R5 K13 [{"errorType"}]
       50 LOADK                            R6 K14 ["client_error"]
       51 SETTABLEKS                       R6 R5 K12 ["errorType"]
       53 CALL                             R4 1 0
       54 GETUPVAL                         R4 6
       55 GETTABLEKS                       R4 R4 K15 ["setInputEnabled"]
       57 LOADB                            R5 1
       58 CALL                             R4 1 0
       59 GETIMPORT                        R4 K17 [error]
       61 LOADK                            R6 K18 ["Failed to get tools list with error: %*"]
       62 GETUPVAL                         R8 7
       63 MOVE                             R10 R3
       64 NAMECALL                         R8 R8 K19 ["JSONEncode"]
       66 CALL                             R8 2 1
       67 NAMECALL                         R6 R6 K20 ["format"]
       69 CALL                             R6 2 1
       70 MOVE                             R5 R6
       71 CALL                             R4 1 0
       72 RETURN                           R0 0
       73 LOADNIL                          R4
       74 GETUPVAL                         R5 8
       75 GETTABLEKS                       R6 R3 K21 ["result"]
       77 GETTABLEKS                       R6 R6 K22 ["tools"]
       79 CALL                             R5 1 1
       80 GETUPVAL                         R6 9
       81 MOVE                             R7 R5
       82 CALL                             R6 1 1
       83 MOVE                             R4 R6
       84 GETUPVAL                         R6 10
       85 GETUPVAL                         R8 0
       86 GETTABLEKS                       R8 R8 K2 ["selectedProvider"]
       88 GETUPVAL                         R9 1
       89 GETTABLEKS                       R9 R9 K3 ["LLMProviderTypes"]
       91 GETTABLEKS                       R9 R9 K4 ["Studio"]
       93 JUMPIFNOTEQ                      R8 R9 ; [+2]
       95 LOADB                            R7 0 +1
       96 LOADB                            R7 1
       97 JUMPIFNOT                        R7 ; [+34]
       98 GETUPVAL                         R8 11
       99 DUPTABLE                         R9 K26 [{"environment", "tools", "model", "assistantMode", "isDebugMode"}]
      100 GETUPVAL                         R10 12
      101 GETTABLEKS                       R10 R10 K27 ["get"]
      103 CALL                             R10 0 1
      104 SETTABLEKS                       R10 R9 K23 ["environment"]
      106 GETTABLEKS                       R10 R3 K21 ["result"]
      108 GETTABLEKS                       R10 R10 K22 ["tools"]
      110 SETTABLEKS                       R10 R9 K22 ["tools"]
      112 GETUPVAL                         R10 0
      113 GETTABLEKS                       R10 R10 K28 ["selectedModel"]
      115 SETTABLEKS                       R10 R9 K24 ["model"]
      117 GETUPVAL                         R10 3
      118 SETTABLEKS                       R10 R9 K5 ["assistantMode"]
      120 LOADB                            R10 1
      121 SETTABLEKS                       R10 R9 K25 ["isDebugMode"]
      123 CALL                             R8 1 2
      124 JUMPIFNOT                        R8 ; [+2]
      125 MOVE                             R6 R9
      126 JUMP                             ; [+5]
      127 GETIMPORT                        R10 K30 [warn]
      129 LOADK                            R11 K31 ["Failed to fetch BYOK system prompt, using fallback:"]
      130 MOVE                             R12 R9
      131 CALL                             R10 2 0
      132 GETUPVAL                         R8 13
      133 JUMPIFNOT                        R8 ; [+40]
      134 DUPTABLE                         R8 K32 [{"tools"}]
      135 GETTABLEKS                       R9 R3 K21 ["result"]
      137 GETTABLEKS                       R9 R9 K22 ["tools"]
      139 SETTABLEKS                       R9 R8 K22 ["tools"]
      141 GETUPVAL                         R9 13
      142 MOVE                             R10 R8
      143 CALL                             R9 1 3
      144 FORGPREP                         R9
      145 GETUPVAL                         R14 14
      146 DUPTABLE                         R15 K35 [{"role", "hidden"}]
      147 LOADK                            R16 K36 ["user"]
      148 SETTABLEKS                       R16 R15 K33 ["role"]
      150 LOADB                            R16 1
      151 SETTABLEKS                       R16 R15 K34 ["hidden"]
      153 CALL                             R14 1 1
      154 GETUPVAL                         R15 15
      155 DUPTABLE                         R16 K39 [{"messageId", "content"}]
      156 SETTABLEKS                       R14 R16 K37 ["messageId"]
      158 DUPTABLE                         R17 K42 [{"type", "text"}]
      159 GETUPVAL                         R18 16
      160 GETTABLEKS                       R18 R18 K43 ["Type"]
      162 SETTABLEKS                       R18 R17 K40 ["type"]
      164 GETUPVAL                         R18 17
      165 MOVE                             R19 R13
      166 CALL                             R18 1 1
      167 SETTABLEKS                       R18 R17 K41 ["text"]
      169 SETTABLEKS                       R17 R16 K38 ["content"]
      171 CALL                             R15 1 0
      172 FORGLOOP                         R9 2 ; [-28]
      174 GETUPVAL                         R8 18
      175 CALL                             R8 0 1
      176 JUMPIFNOT                        R8 ; [+4]
      177 GETIMPORT                        R8 K45 [print]
      179 LOADK                            R9 K46 ["Reading conversation history..."]
      180 CALL                             R8 1 0
      181 GETUPVAL                         R8 19
      182 NEWCLOSURE                       R9 P0
      183 CAPTURE                          UPVAL U20
      184 CAPTURE                          UPVAL U0
      185 CAPTURE                          UPVAL U1
      186 CAPTURE                          UPVAL U21
      187 CAPTURE                          UPVAL U22
      188 CAPTURE                          UPVAL U23
      189 CAPTURE                          UPVAL U24
      190 CAPTURE                          UPVAL U25
      191 CAPTURE                          UPVAL U14
      192 CAPTURE                          UPVAL U15
      193 CAPTURE                          UPVAL U26
      194 CAPTURE                          UPVAL U27
      195 CAPTURE                          UPVAL U28
      196 CAPTURE                          UPVAL U29
      197 CAPTURE                          UPVAL U30
      198 CAPTURE                          UPVAL U18
      199 CAPTURE                          UPVAL U31
      200 CAPTURE                          UPVAL U32
      201 CAPTURE                          UPVAL U12
      202 CAPTURE                          UPVAL U33
      203 CAPTURE                          UPVAL U34
      204 CAPTURE                          UPVAL U35
      205 CAPTURE                          UPVAL U2
      206 CAPTURE                          UPVAL U3
      207 CAPTURE                          UPVAL U36
      208 CAPTURE                          UPVAL U5
      209 CAPTURE                          UPVAL U6
      210 CAPTURE                          UPVAL U37
      211 CAPTURE                          UPVAL U38
      212 CAPTURE                          REF R6
      213 CAPTURE                          VAL R0
      214 CAPTURE                          UPVAL U39
      215 CAPTURE                          UPVAL U40
      216 CAPTURE                          UPVAL U41
      217 CAPTURE                          UPVAL U42
      218 CAPTURE                          UPVAL U43
      219 CAPTURE                          UPVAL U44
      220 CAPTURE                          UPVAL U45
      221 CAPTURE                          REF R4
      222 CAPTURE                          UPVAL U46
      223 CALL                             R8 1 0
      224 CLOSEUPVALS                      R4
      225 RETURN                           R0 0

PROTO_18:
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
       49 CALL                             R0 1 0
       50 RETURN                           R0 0

PROTO_19:
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
      173 DUPCLOSURE                       R8 K47 [PROTO_7]
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
      197 GETIMPORT                        R8 K52 [task.spawn]
      199 NEWCLOSURE                       R9 P2
      200 CAPTURE                          UPVAL U15
      201 CAPTURE                          UPVAL U16
      202 CAPTURE                          UPVAL U17
      203 CAPTURE                          UPVAL U18
      204 CAPTURE                          UPVAL U19
      205 CAPTURE                          UPVAL U20
      206 CAPTURE                          UPVAL U21
      207 CAPTURE                          UPVAL U3
      208 CAPTURE                          UPVAL U22
      209 CAPTURE                          UPVAL U23
      210 CAPTURE                          UPVAL U24
      211 CAPTURE                          UPVAL U25
      212 CAPTURE                          UPVAL U26
      213 CAPTURE                          UPVAL U27
      214 CAPTURE                          UPVAL U28
      215 CAPTURE                          UPVAL U4
      216 CAPTURE                          UPVAL U6
      217 CAPTURE                          UPVAL U7
      218 CAPTURE                          UPVAL U29
      219 CAPTURE                          UPVAL U8
      220 CAPTURE                          UPVAL U30
      221 CAPTURE                          UPVAL U13
      222 CAPTURE                          UPVAL U31
      223 CAPTURE                          UPVAL U11
      224 CAPTURE                          UPVAL U32
      225 CAPTURE                          UPVAL U33
      226 CAPTURE                          UPVAL U2
      227 CAPTURE                          UPVAL U34
      228 CAPTURE                          UPVAL U35
      229 CAPTURE                          UPVAL U36
      230 CAPTURE                          UPVAL U37
      231 CAPTURE                          UPVAL U38
      232 CAPTURE                          UPVAL U39
      233 CAPTURE                          UPVAL U40
      234 CAPTURE                          UPVAL U9
      235 CAPTURE                          UPVAL U41
      236 CAPTURE                          VAL R1
      237 CAPTURE                          VAL R5
      238 CAPTURE                          UPVAL U42
      239 CAPTURE                          UPVAL U43
      240 CAPTURE                          UPVAL U44
      241 CAPTURE                          UPVAL U45
      242 CAPTURE                          UPVAL U46
      243 CAPTURE                          UPVAL U47
      244 CAPTURE                          UPVAL U48
      245 CAPTURE                          UPVAL U49
      246 CAPTURE                          VAL R4
      247 CAPTURE                          UPVAL U50
      248 CALL                             R8 1 0
      249 RETURN                           R0 0

PROTO_20:
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
       12 GETUPVAL                         R7 6
       13 CALL                             R7 0 1
       14 GETUPVAL                         R8 7
       15 CALL                             R8 0 1
       16 GETUPVAL                         R9 8
       17 CALL                             R9 0 1
       18 GETUPVAL                         R10 9
       19 CALL                             R10 0 1
       20 GETUPVAL                         R11 10
       21 CALL                             R11 0 1
       22 GETUPVAL                         R12 11
       23 CALL                             R12 0 1
       24 GETUPVAL                         R13 12
       25 CALL                             R13 0 1
       26 GETUPVAL                         R14 13
       27 CALL                             R14 0 1
       28 GETUPVAL                         R15 14
       29 CALL                             R15 0 1
       30 GETUPVAL                         R16 15
       31 CALL                             R16 0 1
       32 GETUPVAL                         R17 16
       33 CALL                             R17 0 1
       34 GETUPVAL                         R19 17
       35 CALL                             R19 0 1
       36 JUMPIFNOT                        R19 ; [+3]
       37 GETUPVAL                         R18 18
       38 CALL                             R18 0 1
       39 JUMP                             ; [+1]
       40 LOADNIL                          R18
       41 GETUPVAL                         R19 19
       42 GETTABLEKS                       R19 R19 K0 ["useContext"]
       44 GETUPVAL                         R20 20
       45 GETTABLEKS                       R20 R20 K1 ["Context"]
       47 CALL                             R19 1 1
       48 GETTABLEKS                       R20 R19 K2 ["sessionId"]
       50 GETUPVAL                         R21 19
       51 GETTABLEKS                       R21 R21 K0 ["useContext"]
       53 GETUPVAL                         R22 21
       54 GETTABLEKS                       R22 R22 K1 ["Context"]
       56 CALL                             R21 1 1
       57 GETUPVAL                         R22 19
       58 GETTABLEKS                       R22 R22 K0 ["useContext"]
       60 GETUPVAL                         R23 22
       61 GETTABLEKS                       R23 R23 K1 ["Context"]
       63 CALL                             R22 1 1
       64 GETUPVAL                         R23 23
       65 CALL                             R23 0 1
       66 GETUPVAL                         R24 19
       67 GETTABLEKS                       R24 R24 K0 ["useContext"]
       69 GETUPVAL                         R25 24
       70 GETTABLEKS                       R25 R25 K1 ["Context"]
       72 CALL                             R24 1 1
       73 GETUPVAL                         R25 19
       74 GETTABLEKS                       R25 R25 K0 ["useContext"]
       76 GETUPVAL                         R26 25
       77 GETTABLEKS                       R26 R26 K1 ["Context"]
       79 CALL                             R25 1 1
       80 LOADNIL                          R26
       81 GETUPVAL                         R27 26
       82 CALL                             R27 0 1
       83 JUMPIFNOT                        R27 ; [+3]
       84 GETUPVAL                         R27 27
       85 CALL                             R27 0 1
       86 MOVE                             R26 R27
       87 NEWCLOSURE                       R27 P0
       88 CAPTURE                          VAL R21
       89 CAPTURE                          UPVAL U28
       90 CAPTURE                          VAL R25
       91 CAPTURE                          VAL R0
       92 CAPTURE                          VAL R1
       93 CAPTURE                          UPVAL U29
       94 CAPTURE                          VAL R2
       95 CAPTURE                          UPVAL U30
       96 CAPTURE                          UPVAL U31
       97 CAPTURE                          UPVAL U17
       98 CAPTURE                          VAL R18
       99 CAPTURE                          VAL R17
      100 CAPTURE                          UPVAL U32
      101 CAPTURE                          UPVAL U33
      102 CAPTURE                          VAL R12
      103 CAPTURE                          VAL R5
      104 CAPTURE                          VAL R24
      105 CAPTURE                          UPVAL U34
      106 CAPTURE                          UPVAL U26
      107 CAPTURE                          REF R26
      108 CAPTURE                          UPVAL U35
      109 CAPTURE                          VAL R13
      110 CAPTURE                          UPVAL U36
      111 CAPTURE                          UPVAL U37
      112 CAPTURE                          VAL R9
      113 CAPTURE                          VAL R7
      114 CAPTURE                          UPVAL U38
      115 CAPTURE                          UPVAL U39
      116 CAPTURE                          VAL R8
      117 CAPTURE                          UPVAL U40
      118 CAPTURE                          VAL R11
      119 CAPTURE                          UPVAL U41
      120 CAPTURE                          UPVAL U42
      121 CAPTURE                          UPVAL U43
      122 CAPTURE                          UPVAL U44
      123 CAPTURE                          UPVAL U45
      124 CAPTURE                          VAL R23
      125 CAPTURE                          VAL R6
      126 CAPTURE                          VAL R3
      127 CAPTURE                          VAL R4
      128 CAPTURE                          VAL R14
      129 CAPTURE                          VAL R20
      130 CAPTURE                          VAL R15
      131 CAPTURE                          VAL R10
      132 CAPTURE                          UPVAL U46
      133 CAPTURE                          UPVAL U47
      134 CAPTURE                          UPVAL U48
      135 CAPTURE                          VAL R22
      136 CAPTURE                          UPVAL U49
      137 CAPTURE                          UPVAL U50
      138 CAPTURE                          VAL R16
      139 CLOSEUPVALS                      R26
      140 RETURN                           R27 1

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
       46 GETTABLEKS                       R6 R6 K19 ["LLMProcessEvent"]
       48 CALL                             R5 1 1
       49 GETIMPORT                        R6 K9 [require]
       51 GETTABLEKS                       R7 R0 K15 ["Components"]
       53 GETTABLEKS                       R7 R7 K16 ["Contexts"]
       55 GETTABLEKS                       R7 R7 K20 ["LLMProviderSelectionContext"]
       57 CALL                             R6 1 1
       58 GETIMPORT                        R7 K9 [require]
       60 GETTABLEKS                       R8 R0 K15 ["Components"]
       62 GETTABLEKS                       R8 R8 K16 ["Contexts"]
       64 GETTABLEKS                       R8 R8 K18 ["DefaultLLMProvider"]
       66 GETTABLEKS                       R8 R8 K21 ["LLMRequest"]
       68 CALL                             R7 1 1
       69 GETIMPORT                        R8 K9 [require]
       71 GETTABLEKS                       R9 R0 K22 ["Parent"]
       73 GETTABLEKS                       R9 R9 K23 ["ModelContextProtocol"]
       75 CALL                             R8 1 1
       76 GETIMPORT                        R9 K9 [require]
       78 GETTABLEKS                       R10 R0 K15 ["Components"]
       80 GETTABLEKS                       R10 R10 K16 ["Contexts"]
       82 GETTABLEKS                       R10 R10 K24 ["ModelQualityContext"]
       84 CALL                             R9 1 1
       85 GETIMPORT                        R10 K9 [require]
       87 GETTABLEKS                       R11 R0 K15 ["Components"]
       89 GETTABLEKS                       R11 R11 K16 ["Contexts"]
       91 GETTABLEKS                       R11 R11 K25 ["PacketReceivedContext"]
       93 CALL                             R10 1 1
       94 GETIMPORT                        R11 K9 [require]
       96 GETTABLEKS                       R12 R0 K22 ["Parent"]
       98 GETTABLEKS                       R12 R12 K26 ["Promise"]
      100 CALL                             R11 1 1
      101 GETIMPORT                        R12 K9 [require]
      103 GETTABLEKS                       R13 R0 K22 ["Parent"]
      105 GETTABLEKS                       R13 R13 K27 ["React"]
      107 CALL                             R12 1 1
      108 GETIMPORT                        R13 K9 [require]
      110 GETTABLEKS                       R14 R0 K15 ["Components"]
      112 GETTABLEKS                       R14 R14 K16 ["Contexts"]
      114 GETTABLEKS                       R14 R14 K28 ["SessionIdContext"]
      116 CALL                             R13 1 1
      117 GETIMPORT                        R14 K9 [require]
      119 GETTABLEKS                       R15 R0 K22 ["Parent"]
      121 GETTABLEKS                       R15 R15 K29 ["Signal"]
      123 CALL                             R14 1 1
      124 GETIMPORT                        R15 K9 [require]
      126 GETTABLEKS                       R16 R0 K15 ["Components"]
      128 GETTABLEKS                       R16 R16 K30 ["ContentWidgets"]
      130 GETTABLEKS                       R16 R16 K31 ["SummarizedContentWidget"]
      132 CALL                             R15 1 1
      133 GETIMPORT                        R16 K9 [require]
      135 GETTABLEKS                       R17 R0 K15 ["Components"]
      137 GETTABLEKS                       R17 R17 K30 ["ContentWidgets"]
      139 GETTABLEKS                       R17 R17 K32 ["TextContentWidget"]
      141 CALL                             R16 1 1
      142 GETIMPORT                        R17 K9 [require]
      144 GETTABLEKS                       R18 R0 K33 ["Resources"]
      146 GETTABLEKS                       R18 R18 K34 ["Localization"]
      148 GETTABLEKS                       R18 R18 K35 ["Translator"]
      150 CALL                             R17 1 1
      151 GETIMPORT                        R18 K9 [require]
      153 GETTABLEKS                       R19 R0 K36 ["Types"]
      155 CALL                             R18 1 1
      156 GETIMPORT                        R19 K9 [require]
      158 GETTABLEKS                       R20 R0 K10 ["Util"]
      160 GETTABLEKS                       R20 R20 K11 ["Compaction"]
      162 GETTABLEKS                       R20 R20 K37 ["compactThread"]
      164 CALL                             R19 1 1
      165 GETIMPORT                        R20 K9 [require]
      167 GETTABLEKS                       R21 R0 K10 ["Util"]
      169 GETTABLEKS                       R21 R21 K38 ["readThread"]
      171 CALL                             R20 1 1
      172 GETIMPORT                        R21 K9 [require]
      174 GETTABLEKS                       R22 R0 K10 ["Util"]
      176 GETTABLEKS                       R22 R22 K39 ["setLastActivityAt"]
      178 CALL                             R21 1 1
      179 GETIMPORT                        R22 K9 [require]
      181 GETTABLEKS                       R23 R0 K40 ["Hooks"]
      183 GETTABLEKS                       R23 R23 K41 ["useAddContent"]
      185 CALL                             R22 1 1
      186 GETIMPORT                        R23 K9 [require]
      188 GETTABLEKS                       R24 R0 K40 ["Hooks"]
      190 GETTABLEKS                       R24 R24 K42 ["useAddMessage"]
      192 CALL                             R23 1 1
      193 GETIMPORT                        R24 K9 [require]
      195 GETTABLEKS                       R25 R0 K40 ["Hooks"]
      197 GETTABLEKS                       R25 R25 K43 ["useAssistantMode"]
      199 CALL                             R24 1 1
      200 GETIMPORT                        R25 K9 [require]
      202 GETTABLEKS                       R26 R0 K40 ["Hooks"]
      204 GETTABLEKS                       R26 R26 K44 ["useEditContent"]
      206 CALL                             R25 1 1
      207 GETIMPORT                        R26 K9 [require]
      209 GETTABLEKS                       R27 R0 K40 ["Hooks"]
      211 GETTABLEKS                       R27 R27 K45 ["useEditThread"]
      213 CALL                             R26 1 1
      214 GETIMPORT                        R27 K9 [require]
      216 GETTABLEKS                       R28 R0 K40 ["Hooks"]
      218 GETTABLEKS                       R28 R28 K46 ["useGetContentObserver"]
      220 CALL                             R27 1 1
      221 GETIMPORT                        R28 K9 [require]
      223 GETTABLEKS                       R29 R0 K40 ["Hooks"]
      225 GETTABLEKS                       R29 R29 K47 ["useGetOrAddMessage"]
      227 CALL                             R28 1 1
      228 GETIMPORT                        R29 K9 [require]
      230 GETTABLEKS                       R30 R0 K40 ["Hooks"]
      232 GETTABLEKS                       R30 R30 K48 ["useGetThread"]
      234 CALL                             R29 1 1
      235 GETIMPORT                        R30 K9 [require]
      237 GETTABLEKS                       R31 R0 K40 ["Hooks"]
      239 GETTABLEKS                       R31 R31 K49 ["useLLMProcessEvent"]
      241 CALL                             R30 1 1
      242 GETIMPORT                        R31 K9 [require]
      244 GETTABLEKS                       R32 R0 K40 ["Hooks"]
      246 GETTABLEKS                       R32 R32 K50 ["useLLMRequest"]
      248 CALL                             R31 1 1
      249 GETIMPORT                        R32 K9 [require]
      251 GETTABLEKS                       R33 R0 K40 ["Hooks"]
      253 GETTABLEKS                       R33 R33 K51 ["useLLMSystemMessage"]
      255 CALL                             R32 1 1
      256 GETIMPORT                        R33 K9 [require]
      258 GETTABLEKS                       R34 R0 K40 ["Hooks"]
      260 GETTABLEKS                       R34 R34 K52 ["useLLMSystemReminderGetter"]
      262 CALL                             R33 1 1
      263 GETIMPORT                        R34 K9 [require]
      265 GETTABLEKS                       R35 R0 K40 ["Hooks"]
      267 GETTABLEKS                       R35 R35 K53 ["useLogAssistantMessageSent"]
      269 CALL                             R34 1 1
      270 GETIMPORT                        R35 K9 [require]
      272 GETTABLEKS                       R36 R0 K40 ["Hooks"]
      274 GETTABLEKS                       R36 R36 K54 ["useLogRequestJourney"]
      276 CALL                             R35 1 1
      277 GETIMPORT                        R36 K9 [require]
      279 GETTABLEKS                       R37 R0 K40 ["Hooks"]
      281 GETTABLEKS                       R37 R37 K55 ["useRunSlashCommand"]
      283 CALL                             R36 1 1
      284 GETIMPORT                        R37 K9 [require]
      286 GETTABLEKS                       R38 R0 K40 ["Hooks"]
      288 GETTABLEKS                       R38 R38 K56 ["useSettingsContext"]
      290 CALL                             R37 1 1
      291 GETIMPORT                        R38 K9 [require]
      293 GETTABLEKS                       R39 R0 K40 ["Hooks"]
      295 GETTABLEKS                       R39 R39 K57 ["useShowError"]
      297 CALL                             R38 1 1
      298 GETIMPORT                        R39 K9 [require]
      300 GETTABLEKS                       R40 R0 K40 ["Hooks"]
      302 GETTABLEKS                       R40 R40 K58 ["useThreadId"]
      304 CALL                             R39 1 1
      305 GETIMPORT                        R40 K9 [require]
      307 GETTABLEKS                       R41 R0 K40 ["Hooks"]
      309 GETTABLEKS                       R41 R41 K59 ["useToolFormat"]
      311 CALL                             R40 1 1
      312 GETIMPORT                        R41 K9 [require]
      314 GETTABLEKS                       R42 R0 K40 ["Hooks"]
      316 GETTABLEKS                       R42 R42 K60 ["useWithClient"]
      318 CALL                             R41 1 1
      319 GETIMPORT                        R42 K9 [require]
      321 GETTABLEKS                       R43 R0 K61 ["Flags"]
      323 GETTABLEKS                       R43 R43 K62 ["getAssistantModeEnabled"]
      325 CALL                             R42 1 1
      326 GETIMPORT                        R43 K9 [require]
      328 GETTABLEKS                       R44 R0 K61 ["Flags"]
      330 GETTABLEKS                       R44 R44 K63 ["FFlagAssistantDynamicToolDescription"]
      332 CALL                             R43 1 1
      333 GETIMPORT                        R44 K9 [require]
      335 GETTABLEKS                       R45 R0 K61 ["Flags"]
      337 GETTABLEKS                       R45 R45 K64 ["FFlagAssistantMultipleChatPersistence"]
      339 CALL                             R44 1 1
      340 GETIMPORT                        R45 K9 [require]
      342 GETTABLEKS                       R46 R0 K61 ["Flags"]
      344 GETTABLEKS                       R46 R46 K65 ["FFlagAssistantPlanMode"]
      346 CALL                             R45 1 1
      347 GETIMPORT                        R46 K9 [require]
      349 GETTABLEKS                       R47 R0 K61 ["Flags"]
      351 GETTABLEKS                       R47 R47 K66 ["FFlagAssistantSupportSlashCommandCancellation"]
      353 CALL                             R46 1 1
      354 GETIMPORT                        R47 K9 [require]
      356 GETTABLEKS                       R48 R0 K61 ["Flags"]
      358 GETTABLEKS                       R48 R48 K67 ["FFlagDebugLogAssistantUI"]
      360 CALL                             R47 1 1
      361 GETIMPORT                        R48 K9 [require]
      363 GETTABLEKS                       R49 R0 K61 ["Flags"]
      365 GETTABLEKS                       R49 R49 K68 ["FFlagEnhanceSubagentSkillTelemetry"]
      367 CALL                             R48 1 1
      368 GETIMPORT                        R49 K9 [require]
      370 GETTABLEKS                       R50 R0 K61 ["Flags"]
      372 GETTABLEKS                       R50 R50 K69 ["FIntAssistantProcessEventTimeoutMS"]
      374 CALL                             R49 1 1
      375 GETIMPORT                        R50 K9 [require]
      377 GETTABLEKS                       R51 R0 K61 ["Flags"]
      379 GETTABLEKS                       R51 R51 K70 ["FIntMCPAssistantMaxToolCalls"]
      381 CALL                             R50 1 1
      382 GETIMPORT                        R51 K9 [require]
      384 GETTABLEKS                       R52 R0 K10 ["Util"]
      386 GETTABLEKS                       R52 R52 K71 ["fetchBYOKSystemPrompt"]
      388 CALL                             R51 1 1
      389 GETIMPORT                        R52 K9 [require]
      391 GETTABLEKS                       R53 R0 K15 ["Components"]
      393 GETTABLEKS                       R53 R53 K30 ["ContentWidgets"]
      395 GETTABLEKS                       R53 R53 K72 ["ImageContentWidget"]
      397 CALL                             R52 1 1
      398 GETTABLEKS                       R53 R18 K73 ["getSystemReminder"]
      400 DUPCLOSURE                       R54 K74 [PROTO_0]
      401 CAPTURE                          VAL R8
      402 DUPCLOSURE                       R55 K75 [PROTO_1]
      403 CAPTURE                          VAL R18
      404 DUPCLOSURE                       R56 K76 [PROTO_6]
      405 CAPTURE                          VAL R18
      406 CAPTURE                          VAL R48
      407 CAPTURE                          VAL R14
      408 CAPTURE                          VAL R11
      409 DUPCLOSURE                       R57 K77 [PROTO_20]
      410 CAPTURE                          VAL R23
      411 CAPTURE                          VAL R22
      412 CAPTURE                          VAL R25
      413 CAPTURE                          VAL R28
      414 CAPTURE                          VAL R41
      415 CAPTURE                          VAL R31
      416 CAPTURE                          VAL R32
      417 CAPTURE                          VAL R33
      418 CAPTURE                          VAL R40
      419 CAPTURE                          VAL R30
      420 CAPTURE                          VAL R29
      421 CAPTURE                          VAL R36
      422 CAPTURE                          VAL R38
      423 CAPTURE                          VAL R27
      424 CAPTURE                          VAL R34
      425 CAPTURE                          VAL R35
      426 CAPTURE                          VAL R39
      427 CAPTURE                          VAL R44
      428 CAPTURE                          VAL R26
      429 CAPTURE                          VAL R12
      430 CAPTURE                          VAL R13
      431 CAPTURE                          VAL R4
      432 CAPTURE                          VAL R9
      433 CAPTURE                          VAL R37
      434 CAPTURE                          VAL R6
      435 CAPTURE                          VAL R10
      436 CAPTURE                          VAL R42
      437 CAPTURE                          VAL R24
      438 CAPTURE                          VAL R46
      439 CAPTURE                          VAL R52
      440 CAPTURE                          VAL R16
      441 CAPTURE                          VAL R47
      442 CAPTURE                          VAL R21
      443 CAPTURE                          VAL R45
      444 CAPTURE                          VAL R18
      445 CAPTURE                          VAL R43
      446 CAPTURE                          VAL R1
      447 CAPTURE                          VAL R54
      448 CAPTURE                          VAL R51
      449 CAPTURE                          VAL R3
      450 CAPTURE                          VAL R53
      451 CAPTURE                          VAL R2
      452 CAPTURE                          VAL R20
      453 CAPTURE                          VAL R19
      454 CAPTURE                          VAL R15
      455 CAPTURE                          VAL R17
      456 CAPTURE                          VAL R48
      457 CAPTURE                          VAL R14
      458 CAPTURE                          VAL R11
      459 CAPTURE                          VAL R50
      460 CAPTURE                          VAL R49
      461 RETURN                           R57 1
