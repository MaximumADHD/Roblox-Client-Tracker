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
       42 GETUPVAL                         R5 4
       43 GETTABLEKS                       R4 R5 K12 ["new"]
       45 CALL                             R4 0 1
       46 SETTABLEKS                       R4 R2 K13 ["signal"]
       48 GETUPVAL                         R6 5
       49 GETTABLEKS                       R5 R6 K12 ["new"]
       51 NEWCLOSURE                       R6 P1
       52 CAPTURE                          VAL R4
       53 CAPTURE                          UPVAL U0
       54 CAPTURE                          VAL R0
       55 CAPTURE                          VAL R2
       56 CAPTURE                          REF R1
       57 CALL                             R5 1 -1
       58 CLOSEUPVALS                      R1
       59 RETURN                           R5 -1

PROTO_6:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          VAL R2
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 RETURN                           R3 1

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
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["Compaction"]
        2 LOADK                            R4 K1 ["Complete"]
        3 NAMECALL                         R1 R1 K2 ["getText"]
        5 CALL                             R1 3 1
        6 SETTABLEKS                       R1 R0 K3 ["summary"]
        8 LOADB                            R1 0
        9 SETTABLEKS                       R1 R0 K4 ["generating"]
       11 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["getSetting"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+4]
        6 JUMPIFEQKS                       R1 K1 [""] ; [+3]
        8 GETUPVAL                         R2 1
        9 SETTABLE                         R1 R2 R0
       10 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R2 K2 [{"errorType", "messageGuid"}]
        2 SETTABLEKS                       R0 R2 K0 ["errorType"]
        4 GETUPVAL                         R3 1
        5 SETTABLEKS                       R3 R2 K1 ["messageGuid"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["setLastPacketTime"]
        3 GETIMPORT                        R1 K3 [os.clock]
        5 CALL                             R1 0 -1
        6 CALL                             R0 -1 0
        7 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["setLastPacketTime"]
        3 GETIMPORT                        R1 K3 [os.clock]
        5 CALL                             R1 0 -1
        6 CALL                             R0 -1 0
        7 RETURN                           R0 0

PROTO_13:
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
      121 JUMPIF                           R13 ; [+3]
      122 GETUPVAL                         R13 15
      123 CALL                             R13 0 1
      124 JUMPIFNOT                        R13 ; [+2]
      125 GETUPVAL                         R12 7
      126 JUMP                             ; [+1]
      127 LOADNIL                          R12
      128 SETTABLEKS                       R12 R11 K12 ["threadId"]
      130 SETTABLEKS                       R0 R11 K19 ["messageId"]
      132 LOADNIL                          R12
      133 SETTABLEKS                       R12 R11 K20 ["contentId"]
      135 GETUPVAL                         R13 9
      136 CALL                             R13 0 1
      137 JUMPIFNOT                        R13 ; [+2]
      138 GETUPVAL                         R12 10
      139 JUMPIF                           R12 ; [+1]
      140 LOADNIL                          R12
      141 SETTABLEKS                       R12 R11 K15 ["assistantMode"]
      143 GETUPVAL                         R13 16
      144 GETTABLEKS                       R12 R13 K22 ["createLLMSession"]
      146 DUPTABLE                         R13 K42 [{"showError", "messageGuid", "conversationSessionId", "threadId", "requestLLM", "systemMessage", "observer", "setInputEnabled", "onToolCall", "setModelQuality", "onPacketReceived", "maxToolCalls", "timeoutMs", "initialMessages", "requestStartTime", "tools", "apiKeys", "selectedModel", "messageId", "logRequestStop", "assistantMode", "compactedStore", "selectedProvider", "uiMessageCount"}]
      147 SETTABLEKS                       R8 R13 K23 ["showError"]
      149 SETTABLEKS                       R3 R13 K10 ["messageGuid"]
      151 GETUPVAL                         R14 6
      152 SETTABLEKS                       R14 R13 K24 ["conversationSessionId"]
      154 GETUPVAL                         R14 7
      155 SETTABLEKS                       R14 R13 K12 ["threadId"]
      157 GETUPVAL                         R14 17
      158 SETTABLEKS                       R14 R13 K25 ["requestLLM"]
      160 GETUPVAL                         R14 18
      161 SETTABLEKS                       R14 R13 K26 ["systemMessage"]
      163 SETTABLEKS                       R1 R13 K27 ["observer"]
      165 GETUPVAL                         R15 19
      166 GETTABLEKS                       R14 R15 K28 ["setInputEnabled"]
      168 SETTABLEKS                       R14 R13 K28 ["setInputEnabled"]
      170 GETUPVAL                         R15 20
      171 NEWCLOSURE                       R14 P4
      172 CAPTURE                          VAL R15
      173 CAPTURE                          UPVAL U4
      174 CAPTURE                          VAL R11
      175 CAPTURE                          VAL R10
      176 CAPTURE                          UPVAL U21
      177 CAPTURE                          UPVAL U22
      178 SETTABLEKS                       R14 R13 K29 ["onToolCall"]
      180 GETUPVAL                         R15 23
      181 GETTABLEKS                       R14 R15 K30 ["setModelQuality"]
      183 SETTABLEKS                       R14 R13 K30 ["setModelQuality"]
      185 SETTABLEKS                       R9 R13 K31 ["onPacketReceived"]
      187 GETUPVAL                         R14 24
      188 CALL                             R14 0 1
      189 SETTABLEKS                       R14 R13 K32 ["maxToolCalls"]
      191 GETUPVAL                         R14 25
      192 CALL                             R14 0 1
      193 SETTABLEKS                       R14 R13 K33 ["timeoutMs"]
      195 GETUPVAL                         R14 26
      196 SETTABLEKS                       R14 R13 K34 ["initialMessages"]
      198 GETUPVAL                         R14 27
      199 SETTABLEKS                       R14 R13 K35 ["requestStartTime"]
      201 GETUPVAL                         R14 28
      202 SETTABLEKS                       R14 R13 K36 ["tools"]
      204 SETTABLEKS                       R4 R13 K37 ["apiKeys"]
      206 SETTABLEKS                       R6 R13 K9 ["selectedModel"]
      208 SETTABLEKS                       R0 R13 K19 ["messageId"]
      210 GETUPVAL                         R14 29
      211 SETTABLEKS                       R14 R13 K38 ["logRequestStop"]
      213 GETUPVAL                         R15 9
      214 CALL                             R15 0 1
      215 JUMPIFNOT                        R15 ; [+2]
      216 GETUPVAL                         R14 10
      217 JUMPIF                           R14 ; [+1]
      218 LOADNIL                          R14
      219 SETTABLEKS                       R14 R13 K15 ["assistantMode"]
      221 GETUPVAL                         R14 30
      222 SETTABLEKS                       R14 R13 K39 ["compactedStore"]
      224 GETUPVAL                         R15 5
      225 GETTABLEKS                       R14 R15 K40 ["selectedProvider"]
      227 SETTABLEKS                       R14 R13 K40 ["selectedProvider"]
      229 GETUPVAL                         R14 31
      230 SETTABLEKS                       R14 R13 K41 ["uiMessageCount"]
      232 CALL                             R12 1 1
      233 DUPTABLE                         R13 K47 [{"threadId", "messages", "tools", "system", "messageGuid", "isFirstMessage", "isAgenticMode", "apiKeys", "selectedModel", "assistantMode"}]
      234 GETUPVAL                         R14 7
      235 SETTABLEKS                       R14 R13 K12 ["threadId"]
      237 GETUPVAL                         R14 26
      238 SETTABLEKS                       R14 R13 K43 ["messages"]
      240 GETUPVAL                         R14 28
      241 SETTABLEKS                       R14 R13 K36 ["tools"]
      243 GETUPVAL                         R14 18
      244 SETTABLEKS                       R14 R13 K44 ["system"]
      246 SETTABLEKS                       R3 R13 K10 ["messageGuid"]
      248 LOADB                            R14 1
      249 SETTABLEKS                       R14 R13 K45 ["isFirstMessage"]
      251 LOADB                            R14 0
      252 SETTABLEKS                       R14 R13 K46 ["isAgenticMode"]
      254 SETTABLEKS                       R4 R13 K37 ["apiKeys"]
      256 SETTABLEKS                       R6 R13 K9 ["selectedModel"]
      258 GETUPVAL                         R15 9
      259 CALL                             R15 0 1
      260 JUMPIFNOT                        R15 ; [+2]
      261 GETUPVAL                         R14 10
      262 JUMPIF                           R14 ; [+1]
      263 LOADNIL                          R14
      264 SETTABLEKS                       R14 R13 K15 ["assistantMode"]
      266 GETUPVAL                         R14 17
      267 MOVE                             R15 R13
      268 GETTABLEKS                       R16 R12 K48 ["processEvent"]
      270 CALL                             R14 2 0
      271 RETURN                           R0 0

PROTO_14:
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
       19 LOADNIL                          R2
       20 LOADNIL                          R3
       21 LOADN                            R4 0
       22 GETUPVAL                         R5 3
       23 CALL                             R5 0 1
       24 JUMPIFNOT                        R5 ; [+210]
       25 GETUPVAL                         R6 4
       26 GETTABLEKS                       R5 R6 K5 ["get"]
       28 GETUPVAL                         R6 5
       29 CALL                             R5 1 1
       30 JUMPIFNOT                        R5 ; [+54]
       31 GETTABLEKS                       R6 R5 K6 ["summary"]
       33 JUMPIFNOT                        R6 ; [+51]
       34 GETTABLEKS                       R6 R5 K7 ["compactedUIMessageCount"]
       36 LOADN                            R7 0
       37 JUMPIFNOTLT                      R7 R6 ; [+47]
       39 GETUPVAL                         R6 6
       40 MOVE                             R7 R0
       41 GETTABLEKS                       R8 R5 K7 ["compactedUIMessageCount"]
       43 MOVE                             R9 R1
       44 CALL                             R6 3 1
       45 MOVE                             R3 R6
       46 GETTABLEKS                       R4 R3 K8 ["uiMessageCount"]
       48 GETUPVAL                         R7 7
       49 GETTABLEKS                       R6 R7 K9 ["reconstructFromStore"]
       51 GETTABLEKS                       R7 R3 K10 ["messages"]
       53 MOVE                             R8 R5
       54 DUPTABLE                         R9 K13 [{"threadId", "selectedModel"}]
       55 GETUPVAL                         R10 5
       56 SETTABLEKS                       R10 R9 K11 ["threadId"]
       58 GETUPVAL                         R11 1
       59 GETTABLEKS                       R10 R11 K12 ["selectedModel"]
       61 SETTABLEKS                       R10 R9 K12 ["selectedModel"]
       63 CALL                             R6 3 1
       64 JUMPIFNOT                        R6 ; [+11]
       65 GETTABLEKS                       R2 R6 K14 ["compactedStore"]
       67 DUPTABLE                         R7 K15 [{"messages", "uiMessageCount"}]
       68 GETTABLEKS                       R8 R6 K10 ["messages"]
       70 SETTABLEKS                       R8 R7 K10 ["messages"]
       72 SETTABLEKS                       R4 R7 K8 ["uiMessageCount"]
       74 MOVE                             R3 R7
       75 JUMP                             ; [+17]
       76 GETUPVAL                         R7 6
       77 MOVE                             R8 R0
       78 LOADNIL                          R9
       79 MOVE                             R10 R1
       80 CALL                             R7 3 1
       81 MOVE                             R3 R7
       82 GETTABLEKS                       R4 R3 K8 ["uiMessageCount"]
       84 JUMP                             ; [+8]
       85 GETUPVAL                         R6 6
       86 MOVE                             R7 R0
       87 LOADNIL                          R8
       88 MOVE                             R9 R1
       89 CALL                             R6 3 1
       90 MOVE                             R3 R6
       91 GETTABLEKS                       R4 R3 K8 ["uiMessageCount"]
       93 JUMPIF                           R2 ; [+149]
       94 GETUPVAL                         R7 7
       95 GETTABLEKS                       R6 R7 K16 ["shouldCompact"]
       97 GETTABLEKS                       R7 R3 K10 ["messages"]
       99 DUPTABLE                         R8 K18 [{"isSubagent", "selectedModel"}]
      100 LOADB                            R9 0
      101 SETTABLEKS                       R9 R8 K17 ["isSubagent"]
      103 GETUPVAL                         R10 1
      104 GETTABLEKS                       R9 R10 K12 ["selectedModel"]
      106 SETTABLEKS                       R9 R8 K12 ["selectedModel"]
      108 CALL                             R6 2 1
      109 JUMPIFNOT                        R6 ; [+133]
      110 GETUPVAL                         R7 8
      111 GETTABLEKS                       R6 R7 K19 ["setLastPacketTime"]
      113 GETIMPORT                        R7 K22 [os.clock]
      115 CALL                             R7 0 -1
      116 CALL                             R6 -1 0
      117 GETUPVAL                         R6 9
      118 DUPTABLE                         R7 K24 [{"role"}]
      119 LOADK                            R8 K25 ["assistant"]
      120 SETTABLEKS                       R8 R7 K23 ["role"]
      122 CALL                             R6 1 1
      123 GETUPVAL                         R7 10
      124 DUPTABLE                         R8 K28 [{"messageId", "content"}]
      125 SETTABLEKS                       R6 R8 K26 ["messageId"]
      127 DUPTABLE                         R9 K31 [{"type", "summary", "generating"}]
      128 GETUPVAL                         R11 11
      129 GETTABLEKS                       R10 R11 K32 ["Type"]
      131 SETTABLEKS                       R10 R9 K29 ["type"]
      133 GETUPVAL                         R10 12
      134 LOADK                            R12 K33 ["Compaction"]
      135 LOADK                            R13 K34 ["InProgress"]
      136 NAMECALL                         R10 R10 K35 ["getText"]
      138 CALL                             R10 3 1
      139 SETTABLEKS                       R10 R9 K6 ["summary"]
      141 LOADB                            R10 1
      142 SETTABLEKS                       R10 R9 K30 ["generating"]
      144 SETTABLEKS                       R9 R8 K27 ["content"]
      146 CALL                             R7 1 1
      147 NEWTABLE                         R8 0 0
      149 NEWTABLE                         R9 0 3
      151 GETUPVAL                         R13 2
      152 GETTABLEKS                       R12 R13 K36 ["CLAUDE_API_KEY"]
      154 GETUPVAL                         R14 2
      155 GETTABLEKS                       R13 R14 K37 ["GEMINI_API_KEY"]
      157 GETUPVAL                         R15 2
      158 GETTABLEKS                       R14 R15 K38 ["OPENAI_API_KEY"]
      160 SETLIST                          R9 R12 3 [1]
      162 LOADNIL                          R10
      163 LOADNIL                          R11
      164 FORGPREP                         R9
      165 GETUPVAL                         R15 13
      166 GETTABLEKS                       R14 R15 K39 ["getSetting"]
      168 MOVE                             R15 R13
      169 CALL                             R14 1 1
      170 JUMPIFNOT                        R14 ; [+3]
      171 JUMPIFEQKS                       R14 K40 [""] ; [+2]
      173 SETTABLE                         R14 R8 R13
      174 FORGLOOP                         R9 2 ; [-10]
      176 GETUPVAL                         R10 7
      177 GETTABLEKS                       R9 R10 K41 ["compact"]
      179 GETTABLEKS                       R10 R3 K10 ["messages"]
      181 DUPTABLE                         R11 K44 [{"requestLLM", "threadId", "compactedStore", "selectedModel", "selectedProvider", "apiKeys", "uiMessageCount"}]
      182 GETUPVAL                         R12 14
      183 SETTABLEKS                       R12 R11 K42 ["requestLLM"]
      185 GETUPVAL                         R12 5
      186 SETTABLEKS                       R12 R11 K11 ["threadId"]
      188 SETTABLEKS                       R5 R11 K14 ["compactedStore"]
      190 GETUPVAL                         R13 1
      191 GETTABLEKS                       R12 R13 K12 ["selectedModel"]
      193 SETTABLEKS                       R12 R11 K12 ["selectedModel"]
      195 GETUPVAL                         R13 1
      196 GETTABLEKS                       R12 R13 K0 ["selectedProvider"]
      198 SETTABLEKS                       R12 R11 K0 ["selectedProvider"]
      200 SETTABLEKS                       R8 R11 K43 ["apiKeys"]
      202 SETTABLEKS                       R4 R11 K8 ["uiMessageCount"]
      204 CALL                             R9 2 1
      205 DUPTABLE                         R10 K15 [{"messages", "uiMessageCount"}]
      206 GETTABLEKS                       R11 R9 K10 ["messages"]
      208 SETTABLEKS                       R11 R10 K10 ["messages"]
      210 SETTABLEKS                       R4 R10 K8 ["uiMessageCount"]
      212 MOVE                             R3 R10
      213 GETTABLEKS                       R2 R9 K14 ["compactedStore"]
      215 JUMPIFNOT                        R7 ; [+11]
      216 GETUPVAL                         R10 15
      217 DUPTABLE                         R11 K47 [{"messageId", "contentId", "transformFn"}]
      218 SETTABLEKS                       R6 R11 K26 ["messageId"]
      220 SETTABLEKS                       R7 R11 K45 ["contentId"]
      222 DUPCLOSURE                       R12 K48 [PROTO_8]
      223 CAPTURE                          UPVAL U12
      224 SETTABLEKS                       R12 R11 K46 ["transformFn"]
      226 CALL                             R10 1 0
      227 GETUPVAL                         R11 8
      228 GETTABLEKS                       R10 R11 K19 ["setLastPacketTime"]
      230 GETIMPORT                        R11 K22 [os.clock]
      232 CALL                             R11 0 -1
      233 CALL                             R10 -1 0
      234 JUMP                             ; [+8]
      235 GETUPVAL                         R5 6
      236 MOVE                             R6 R0
      237 LOADNIL                          R7
      238 MOVE                             R8 R1
      239 CALL                             R5 3 1
      240 MOVE                             R3 R5
      241 GETTABLEKS                       R4 R3 K8 ["uiMessageCount"]
      243 GETTABLEKS                       R5 R3 K10 ["messages"]
      245 GETUPVAL                         R6 16
      246 CALL                             R6 0 1
      247 JUMPIFNOT                        R6 ; [+4]
      248 GETIMPORT                        R6 K50 [print]
      250 LOADK                            R7 K51 ["Preparing message for response contents..."]
      251 CALL                             R6 1 0
      252 GETUPVAL                         R6 17
      253 LOADK                            R7 K25 ["assistant"]
      254 NEWCLOSURE                       R8 P1
      255 CAPTURE                          UPVAL U18
      256 CAPTURE                          UPVAL U19
      257 CAPTURE                          UPVAL U20
      258 CAPTURE                          UPVAL U13
      259 CAPTURE                          UPVAL U2
      260 CAPTURE                          UPVAL U1
      261 CAPTURE                          UPVAL U21
      262 CAPTURE                          UPVAL U5
      263 CAPTURE                          UPVAL U22
      264 CAPTURE                          UPVAL U23
      265 CAPTURE                          UPVAL U24
      266 CAPTURE                          UPVAL U25
      267 CAPTURE                          UPVAL U26
      268 CAPTURE                          UPVAL U8
      269 CAPTURE                          UPVAL U0
      270 CAPTURE                          UPVAL U3
      271 CAPTURE                          UPVAL U27
      272 CAPTURE                          UPVAL U14
      273 CAPTURE                          UPVAL U28
      274 CAPTURE                          UPVAL U29
      275 CAPTURE                          UPVAL U30
      276 CAPTURE                          UPVAL U31
      277 CAPTURE                          UPVAL U32
      278 CAPTURE                          UPVAL U33
      279 CAPTURE                          UPVAL U34
      280 CAPTURE                          UPVAL U35
      281 CAPTURE                          VAL R5
      282 CAPTURE                          UPVAL U36
      283 CAPTURE                          UPVAL U37
      284 CAPTURE                          UPVAL U38
      285 CAPTURE                          REF R2
      286 CAPTURE                          REF R4
      287 CALL                             R6 2 0
      288 CLOSEUPVALS                      R2
      289 RETURN                           R0 0

PROTO_15:
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
      108 GETUPVAL                         R7 13
      109 CALL                             R7 0 1
      110 JUMPIFNOT                        R7 ; [+61]
      111 GETUPVAL                         R9 1
      112 GETTABLEKS                       R8 R9 K2 ["selectedProvider"]
      114 GETUPVAL                         R11 2
      115 GETTABLEKS                       R10 R11 K3 ["LLMProviderTypes"]
      117 GETTABLEKS                       R9 R10 K4 ["Studio"]
      119 JUMPIFNOTEQ                      R8 R9 ; [+2]
      121 LOADB                            R7 0 +1
      122 LOADB                            R7 1
      123 JUMPIFNOT                        R7 ; [+48]
      124 GETUPVAL                         R8 14
      125 CALL                             R8 0 1
      126 GETUPVAL                         R9 15
      127 CALL                             R9 0 1
      128 JUMPIFNOT                        R9 ; [+10]
      129 GETUPVAL                         R9 5
      130 GETUPVAL                         R12 2
      131 GETTABLEKS                       R11 R12 K24 ["AssistantMode"]
      133 GETTABLEKS                       R10 R11 K25 ["Test"]
      135 JUMPIFEQ                         R9 R10 ; [+2]
      137 LOADB                            R8 0 +1
      138 LOADB                            R8 1
      139 GETUPVAL                         R9 16
      140 DUPTABLE                         R10 K29 [{"environment", "tools", "model", "assistantMode", "isDebugMode"}]
      141 GETUPVAL                         R12 17
      142 GETTABLEKS                       R11 R12 K30 ["get"]
      144 CALL                             R11 0 1
      145 SETTABLEKS                       R11 R10 K26 ["environment"]
      147 GETTABLEKS                       R12 R3 K22 ["result"]
      149 GETTABLEKS                       R11 R12 K23 ["tools"]
      151 SETTABLEKS                       R11 R10 K23 ["tools"]
      153 GETUPVAL                         R12 1
      154 GETTABLEKS                       R11 R12 K31 ["selectedModel"]
      156 SETTABLEKS                       R11 R10 K27 ["model"]
      158 GETUPVAL                         R11 5
      159 SETTABLEKS                       R11 R10 K6 ["assistantMode"]
      161 SETTABLEKS                       R8 R10 K28 ["isDebugMode"]
      163 CALL                             R9 1 2
      164 JUMPIFNOT                        R9 ; [+2]
      165 MOVE                             R6 R10
      166 JUMP                             ; [+5]
      167 GETIMPORT                        R11 K33 [warn]
      169 LOADK                            R12 K34 ["Failed to fetch BYOK system prompt, using fallback:"]
      170 MOVE                             R13 R10
      171 CALL                             R11 2 0
      172 GETUPVAL                         R7 18
      173 CALL                             R7 0 1
      174 JUMPIF                           R7 ; [+3]
      175 GETUPVAL                         R7 19
      176 CALL                             R7 0 1
      177 JUMPIFNOT                        R7 ; [+53]
      178 GETUPVAL                         R7 20
      179 JUMPIFNOT                        R7 ; [+51]
      180 LOADNIL                          R7
      181 GETUPVAL                         R8 19
      182 CALL                             R8 0 1
      183 JUMPIFNOT                        R8 ; [+9]
      184 DUPTABLE                         R8 K35 [{"tools"}]
      185 GETTABLEKS                       R10 R3 K22 ["result"]
      187 GETTABLEKS                       R9 R10 K23 ["tools"]
      189 SETTABLEKS                       R9 R8 K23 ["tools"]
      191 MOVE                             R7 R8
      192 JUMP                             ; [+5]
      193 DUPTABLE                         R8 K36 [{"assistantMode"}]
      194 GETUPVAL                         R9 5
      195 SETTABLEKS                       R9 R8 K6 ["assistantMode"]
      197 MOVE                             R7 R8
      198 GETUPVAL                         R8 20
      199 MOVE                             R9 R7
      200 CALL                             R8 1 3
      201 FORGPREP                         R8
      202 GETUPVAL                         R13 21
      203 DUPTABLE                         R14 K39 [{"role", "hidden"}]
      204 LOADK                            R15 K40 ["user"]
      205 SETTABLEKS                       R15 R14 K37 ["role"]
      207 LOADB                            R15 1
      208 SETTABLEKS                       R15 R14 K38 ["hidden"]
      210 CALL                             R13 1 1
      211 GETUPVAL                         R14 22
      212 DUPTABLE                         R15 K43 [{"messageId", "content"}]
      213 SETTABLEKS                       R13 R15 K41 ["messageId"]
      215 DUPTABLE                         R16 K46 [{"type", "text"}]
      216 GETUPVAL                         R18 23
      217 GETTABLEKS                       R17 R18 K47 ["Type"]
      219 SETTABLEKS                       R17 R16 K44 ["type"]
      221 GETUPVAL                         R17 24
      222 MOVE                             R18 R12
      223 CALL                             R17 1 1
      224 SETTABLEKS                       R17 R16 K45 ["text"]
      226 SETTABLEKS                       R16 R15 K42 ["content"]
      228 CALL                             R14 1 0
      229 FORGLOOP                         R8 2 ; [-28]
      231 GETUPVAL                         R7 25
      232 CALL                             R7 0 1
      233 JUMPIFNOT                        R7 ; [+4]
      234 GETIMPORT                        R7 K49 [print]
      236 LOADK                            R8 K50 ["Reading conversation history..."]
      237 CALL                             R7 1 0
      238 GETUPVAL                         R7 26
      239 NEWCLOSURE                       R8 P0
      240 CAPTURE                          UPVAL U27
      241 CAPTURE                          UPVAL U1
      242 CAPTURE                          UPVAL U2
      243 CAPTURE                          UPVAL U28
      244 CAPTURE                          UPVAL U29
      245 CAPTURE                          UPVAL U30
      246 CAPTURE                          UPVAL U31
      247 CAPTURE                          UPVAL U32
      248 CAPTURE                          UPVAL U33
      249 CAPTURE                          UPVAL U21
      250 CAPTURE                          UPVAL U22
      251 CAPTURE                          UPVAL U34
      252 CAPTURE                          UPVAL U35
      253 CAPTURE                          UPVAL U36
      254 CAPTURE                          UPVAL U37
      255 CAPTURE                          UPVAL U38
      256 CAPTURE                          UPVAL U25
      257 CAPTURE                          UPVAL U39
      258 CAPTURE                          UPVAL U40
      259 CAPTURE                          UPVAL U17
      260 CAPTURE                          UPVAL U41
      261 CAPTURE                          UPVAL U42
      262 CAPTURE                          UPVAL U43
      263 CAPTURE                          UPVAL U4
      264 CAPTURE                          UPVAL U5
      265 CAPTURE                          UPVAL U44
      266 CAPTURE                          UPVAL U7
      267 CAPTURE                          UPVAL U45
      268 CAPTURE                          REF R6
      269 CAPTURE                          UPVAL U8
      270 CAPTURE                          VAL R0
      271 CAPTURE                          UPVAL U46
      272 CAPTURE                          UPVAL U47
      273 CAPTURE                          UPVAL U48
      274 CAPTURE                          UPVAL U49
      275 CAPTURE                          UPVAL U50
      276 CAPTURE                          UPVAL U51
      277 CAPTURE                          REF R4
      278 CAPTURE                          UPVAL U52
      279 CALL                             R7 1 0
      280 CLOSEUPVALS                      R4
      281 RETURN                           R0 0

PROTO_16:
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
       53 CAPTURE                          UPVAL U52
       54 CAPTURE                          UPVAL U53
       55 CALL                             R0 1 0
       56 RETURN                           R0 0

PROTO_17:
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
      217 CAPTURE                          UPVAL U26
      218 CAPTURE                          UPVAL U27
      219 CAPTURE                          UPVAL U28
      220 CAPTURE                          UPVAL U29
      221 CAPTURE                          UPVAL U30
      222 CAPTURE                          UPVAL U31
      223 CAPTURE                          UPVAL U4
      224 CAPTURE                          UPVAL U32
      225 CAPTURE                          UPVAL U5
      226 CAPTURE                          UPVAL U8
      227 CAPTURE                          UPVAL U9
      228 CAPTURE                          UPVAL U33
      229 CAPTURE                          UPVAL U10
      230 CAPTURE                          UPVAL U34
      231 CAPTURE                          UPVAL U11
      232 CAPTURE                          UPVAL U35
      233 CAPTURE                          UPVAL U36
      234 CAPTURE                          UPVAL U37
      235 CAPTURE                          UPVAL U38
      236 CAPTURE                          UPVAL U39
      237 CAPTURE                          UPVAL U2
      238 CAPTURE                          UPVAL U40
      239 CAPTURE                          UPVAL U41
      240 CAPTURE                          UPVAL U42
      241 CAPTURE                          UPVAL U43
      242 CAPTURE                          UPVAL U44
      243 CAPTURE                          UPVAL U45
      244 CAPTURE                          UPVAL U46
      245 CAPTURE                          UPVAL U47
      246 CAPTURE                          UPVAL U48
      247 CAPTURE                          VAL R1
      248 CAPTURE                          VAL R5
      249 CAPTURE                          UPVAL U49
      250 CAPTURE                          UPVAL U50
      251 CAPTURE                          UPVAL U51
      252 CAPTURE                          UPVAL U52
      253 CAPTURE                          UPVAL U53
      254 CAPTURE                          UPVAL U54
      255 CAPTURE                          VAL R4
      256 CAPTURE                          UPVAL U55
      257 CALL                             R8 1 0
      258 RETURN                           R0 0

PROTO_18:
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
       14 GETUPVAL                         R9 7
       15 CALL                             R9 0 1
       16 JUMPIF                           R9 ; [+6]
       17 GETUPVAL                         R9 8
       18 CALL                             R9 0 1
       19 JUMPIF                           R9 ; [+3]
       20 GETUPVAL                         R9 9
       21 CALL                             R9 0 1
       22 JUMPIFNOT                        R9 ; [+3]
       23 GETUPVAL                         R8 10
       24 CALL                             R8 0 1
       25 JUMP                             ; [+1]
       26 LOADNIL                          R8
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
       41 GETUPVAL                         R16 18
       42 CALL                             R16 0 1
       43 GETUPVAL                         R18 19
       44 GETTABLEKS                       R17 R18 K0 ["useContext"]
       46 GETUPVAL                         R19 20
       47 GETTABLEKS                       R18 R19 K1 ["Context"]
       49 CALL                             R17 1 1
       50 GETTABLEKS                       R18 R17 K2 ["sessionId"]
       52 GETUPVAL                         R20 19
       53 GETTABLEKS                       R19 R20 K0 ["useContext"]
       55 GETUPVAL                         R21 21
       56 GETTABLEKS                       R20 R21 K1 ["Context"]
       58 CALL                             R19 1 1
       59 GETUPVAL                         R21 19
       60 GETTABLEKS                       R20 R21 K0 ["useContext"]
       62 GETUPVAL                         R22 22
       63 GETTABLEKS                       R21 R22 K1 ["Context"]
       65 CALL                             R20 1 1
       66 GETUPVAL                         R21 23
       67 CALL                             R21 0 1
       68 GETUPVAL                         R23 19
       69 GETTABLEKS                       R22 R23 K0 ["useContext"]
       71 GETUPVAL                         R24 24
       72 GETTABLEKS                       R23 R24 K1 ["Context"]
       74 CALL                             R22 1 1
       75 GETUPVAL                         R24 19
       76 GETTABLEKS                       R23 R24 K0 ["useContext"]
       78 GETUPVAL                         R25 25
       79 GETTABLEKS                       R24 R25 K1 ["Context"]
       81 CALL                             R23 1 1
       82 LOADNIL                          R24
       83 GETUPVAL                         R25 26
       84 CALL                             R25 0 1
       85 JUMPIFNOT                        R25 ; [+3]
       86 GETUPVAL                         R25 27
       87 CALL                             R25 0 1
       88 MOVE                             R24 R25
       89 NEWCLOSURE                       R25 P0
       90 CAPTURE                          VAL R19
       91 CAPTURE                          UPVAL U28
       92 CAPTURE                          VAL R23
       93 CAPTURE                          VAL R0
       94 CAPTURE                          UPVAL U9
       95 CAPTURE                          VAL R1
       96 CAPTURE                          UPVAL U29
       97 CAPTURE                          UPVAL U30
       98 CAPTURE                          VAL R2
       99 CAPTURE                          UPVAL U31
      100 CAPTURE                          UPVAL U32
      101 CAPTURE                          UPVAL U33
      102 CAPTURE                          VAL R12
      103 CAPTURE                          VAL R5
      104 CAPTURE                          UPVAL U34
      105 CAPTURE                          VAL R22
      106 CAPTURE                          UPVAL U35
      107 CAPTURE                          UPVAL U36
      108 CAPTURE                          UPVAL U26
      109 CAPTURE                          REF R24
      110 CAPTURE                          UPVAL U37
      111 CAPTURE                          VAL R13
      112 CAPTURE                          UPVAL U38
      113 CAPTURE                          UPVAL U39
      114 CAPTURE                          VAL R9
      115 CAPTURE                          VAL R7
      116 CAPTURE                          UPVAL U40
      117 CAPTURE                          UPVAL U41
      118 CAPTURE                          UPVAL U42
      119 CAPTURE                          UPVAL U43
      120 CAPTURE                          UPVAL U44
      121 CAPTURE                          UPVAL U45
      122 CAPTURE                          VAL R8
      123 CAPTURE                          UPVAL U46
      124 CAPTURE                          VAL R11
      125 CAPTURE                          UPVAL U47
      126 CAPTURE                          UPVAL U48
      127 CAPTURE                          VAL R16
      128 CAPTURE                          UPVAL U49
      129 CAPTURE                          UPVAL U50
      130 CAPTURE                          UPVAL U51
      131 CAPTURE                          UPVAL U52
      132 CAPTURE                          VAL R21
      133 CAPTURE                          VAL R6
      134 CAPTURE                          VAL R3
      135 CAPTURE                          VAL R4
      136 CAPTURE                          VAL R14
      137 CAPTURE                          UPVAL U53
      138 CAPTURE                          VAL R18
      139 CAPTURE                          VAL R10
      140 CAPTURE                          UPVAL U54
      141 CAPTURE                          UPVAL U55
      142 CAPTURE                          VAL R20
      143 CAPTURE                          UPVAL U56
      144 CAPTURE                          UPVAL U57
      145 CAPTURE                          VAL R15
      146 CLOSEUPVALS                      R24
      147 RETURN                           R25 1

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
       15 GETTABLEKS                       R5 R0 K10 ["Util"]
       17 GETTABLEKS                       R4 R5 K11 ["Compaction"]
       19 GETTABLEKS                       R3 R4 K12 ["CompactedStore"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K9 [require]
       24 GETTABLEKS                       R5 R0 K13 ["Guest"]
       26 GETTABLEKS                       R4 R5 K14 ["Environment"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K9 [require]
       31 GETTABLEKS                       R7 R0 K15 ["Components"]
       33 GETTABLEKS                       R6 R7 K16 ["Contexts"]
       35 GETTABLEKS                       R5 R6 K17 ["InputStateContext"]
       37 CALL                             R4 1 1
       38 GETIMPORT                        R5 K9 [require]
       40 GETTABLEKS                       R9 R0 K15 ["Components"]
       42 GETTABLEKS                       R8 R9 K16 ["Contexts"]
       44 GETTABLEKS                       R7 R8 K18 ["DefaultLLMProvider"]
       46 GETTABLEKS                       R6 R7 K19 ["LLMProcessEvent"]
       48 CALL                             R5 1 1
       49 GETIMPORT                        R6 K9 [require]
       51 GETTABLEKS                       R9 R0 K15 ["Components"]
       53 GETTABLEKS                       R8 R9 K16 ["Contexts"]
       55 GETTABLEKS                       R7 R8 K20 ["LLMProviderSelectionContext"]
       57 CALL                             R6 1 1
       58 GETIMPORT                        R7 K9 [require]
       60 GETTABLEKS                       R11 R0 K15 ["Components"]
       62 GETTABLEKS                       R10 R11 K16 ["Contexts"]
       64 GETTABLEKS                       R9 R10 K18 ["DefaultLLMProvider"]
       66 GETTABLEKS                       R8 R9 K21 ["LLMRequest"]
       68 CALL                             R7 1 1
       69 GETIMPORT                        R8 K9 [require]
       71 GETTABLEKS                       R10 R0 K22 ["Parent"]
       73 GETTABLEKS                       R9 R10 K23 ["ModelContextProtocol"]
       75 CALL                             R8 1 1
       76 GETIMPORT                        R9 K9 [require]
       78 GETTABLEKS                       R12 R0 K15 ["Components"]
       80 GETTABLEKS                       R11 R12 K16 ["Contexts"]
       82 GETTABLEKS                       R10 R11 K24 ["ModelQualityContext"]
       84 CALL                             R9 1 1
       85 GETIMPORT                        R10 K9 [require]
       87 GETTABLEKS                       R13 R0 K15 ["Components"]
       89 GETTABLEKS                       R12 R13 K16 ["Contexts"]
       91 GETTABLEKS                       R11 R12 K25 ["PacketReceivedContext"]
       93 CALL                             R10 1 1
       94 GETIMPORT                        R11 K9 [require]
       96 GETTABLEKS                       R13 R0 K22 ["Parent"]
       98 GETTABLEKS                       R12 R13 K26 ["Promise"]
      100 CALL                             R11 1 1
      101 GETIMPORT                        R12 K9 [require]
      103 GETTABLEKS                       R14 R0 K22 ["Parent"]
      105 GETTABLEKS                       R13 R14 K27 ["React"]
      107 CALL                             R12 1 1
      108 GETIMPORT                        R13 K9 [require]
      110 GETTABLEKS                       R16 R0 K15 ["Components"]
      112 GETTABLEKS                       R15 R16 K16 ["Contexts"]
      114 GETTABLEKS                       R14 R15 K28 ["SessionIdContext"]
      116 CALL                             R13 1 1
      117 GETIMPORT                        R14 K9 [require]
      119 GETTABLEKS                       R16 R0 K22 ["Parent"]
      121 GETTABLEKS                       R15 R16 K29 ["Signal"]
      123 CALL                             R14 1 1
      124 GETIMPORT                        R15 K9 [require]
      126 GETTABLEKS                       R18 R0 K15 ["Components"]
      128 GETTABLEKS                       R17 R18 K30 ["ContentWidgets"]
      130 GETTABLEKS                       R16 R17 K31 ["SummarizedContentWidget"]
      132 CALL                             R15 1 1
      133 GETIMPORT                        R16 K9 [require]
      135 GETTABLEKS                       R19 R0 K15 ["Components"]
      137 GETTABLEKS                       R18 R19 K30 ["ContentWidgets"]
      139 GETTABLEKS                       R17 R18 K32 ["TextContentWidget"]
      141 CALL                             R16 1 1
      142 GETIMPORT                        R17 K9 [require]
      144 GETTABLEKS                       R20 R0 K33 ["Resources"]
      146 GETTABLEKS                       R19 R20 K34 ["Localization"]
      148 GETTABLEKS                       R18 R19 K35 ["Translator"]
      150 CALL                             R17 1 1
      151 GETIMPORT                        R18 K9 [require]
      153 GETTABLEKS                       R19 R0 K36 ["Types"]
      155 CALL                             R18 1 1
      156 GETIMPORT                        R19 K9 [require]
      158 GETTABLEKS                       R22 R0 K10 ["Util"]
      160 GETTABLEKS                       R21 R22 K11 ["Compaction"]
      162 GETTABLEKS                       R20 R21 K37 ["compactThread"]
      164 CALL                             R19 1 1
      165 GETIMPORT                        R20 K9 [require]
      167 GETTABLEKS                       R22 R0 K10 ["Util"]
      169 GETTABLEKS                       R21 R22 K38 ["readThread"]
      171 CALL                             R20 1 1
      172 GETIMPORT                        R21 K9 [require]
      174 GETTABLEKS                       R23 R0 K39 ["Hooks"]
      176 GETTABLEKS                       R22 R23 K40 ["useAddContent"]
      178 CALL                             R21 1 1
      179 GETIMPORT                        R22 K9 [require]
      181 GETTABLEKS                       R24 R0 K39 ["Hooks"]
      183 GETTABLEKS                       R23 R24 K41 ["useAddMessage"]
      185 CALL                             R22 1 1
      186 GETIMPORT                        R23 K9 [require]
      188 GETTABLEKS                       R25 R0 K39 ["Hooks"]
      190 GETTABLEKS                       R24 R25 K42 ["useAssistantMode"]
      192 CALL                             R23 1 1
      193 GETIMPORT                        R24 K9 [require]
      195 GETTABLEKS                       R26 R0 K39 ["Hooks"]
      197 GETTABLEKS                       R25 R26 K43 ["useEditContent"]
      199 CALL                             R24 1 1
      200 GETIMPORT                        R25 K9 [require]
      202 GETTABLEKS                       R27 R0 K39 ["Hooks"]
      204 GETTABLEKS                       R26 R27 K44 ["useGetContentObserver"]
      206 CALL                             R25 1 1
      207 GETIMPORT                        R26 K9 [require]
      209 GETTABLEKS                       R28 R0 K39 ["Hooks"]
      211 GETTABLEKS                       R27 R28 K45 ["useGetOrAddMessage"]
      213 CALL                             R26 1 1
      214 GETIMPORT                        R27 K9 [require]
      216 GETTABLEKS                       R29 R0 K39 ["Hooks"]
      218 GETTABLEKS                       R28 R29 K46 ["useGetThread"]
      220 CALL                             R27 1 1
      221 GETIMPORT                        R28 K9 [require]
      223 GETTABLEKS                       R30 R0 K39 ["Hooks"]
      225 GETTABLEKS                       R29 R30 K47 ["useLLMProcessEvent"]
      227 CALL                             R28 1 1
      228 GETIMPORT                        R29 K9 [require]
      230 GETTABLEKS                       R31 R0 K39 ["Hooks"]
      232 GETTABLEKS                       R30 R31 K48 ["useLLMRequest"]
      234 CALL                             R29 1 1
      235 GETIMPORT                        R30 K9 [require]
      237 GETTABLEKS                       R32 R0 K39 ["Hooks"]
      239 GETTABLEKS                       R31 R32 K49 ["useLLMSystemMessage"]
      241 CALL                             R30 1 1
      242 GETIMPORT                        R31 K9 [require]
      244 GETTABLEKS                       R33 R0 K39 ["Hooks"]
      246 GETTABLEKS                       R32 R33 K50 ["useLLMSystemReminderGetter"]
      248 CALL                             R31 1 1
      249 GETIMPORT                        R32 K9 [require]
      251 GETTABLEKS                       R34 R0 K39 ["Hooks"]
      253 GETTABLEKS                       R33 R34 K51 ["useLogRequestJourney"]
      255 CALL                             R32 1 1
      256 GETIMPORT                        R33 K9 [require]
      258 GETTABLEKS                       R35 R0 K39 ["Hooks"]
      260 GETTABLEKS                       R34 R35 K52 ["useRunSlashCommand"]
      262 CALL                             R33 1 1
      263 GETIMPORT                        R34 K9 [require]
      265 GETTABLEKS                       R36 R0 K39 ["Hooks"]
      267 GETTABLEKS                       R35 R36 K53 ["useSettingsContext"]
      269 CALL                             R34 1 1
      270 GETIMPORT                        R35 K9 [require]
      272 GETTABLEKS                       R37 R0 K39 ["Hooks"]
      274 GETTABLEKS                       R36 R37 K54 ["useShowError"]
      276 CALL                             R35 1 1
      277 GETIMPORT                        R36 K9 [require]
      279 GETTABLEKS                       R38 R0 K39 ["Hooks"]
      281 GETTABLEKS                       R37 R38 K55 ["useThreadId"]
      283 CALL                             R36 1 1
      284 GETIMPORT                        R37 K9 [require]
      286 GETTABLEKS                       R39 R0 K39 ["Hooks"]
      288 GETTABLEKS                       R38 R39 K56 ["useToolFormat"]
      290 CALL                             R37 1 1
      291 GETIMPORT                        R38 K9 [require]
      293 GETTABLEKS                       R40 R0 K39 ["Hooks"]
      295 GETTABLEKS                       R39 R40 K57 ["useWithClient"]
      297 CALL                             R38 1 1
      298 GETIMPORT                        R39 K9 [require]
      300 GETTABLEKS                       R41 R0 K58 ["Flags"]
      302 GETTABLEKS                       R40 R41 K59 ["getAssistantModeEnabled"]
      304 CALL                             R39 1 1
      305 GETIMPORT                        R40 K9 [require]
      307 GETTABLEKS                       R42 R0 K58 ["Flags"]
      309 GETTABLEKS                       R41 R42 K60 ["FFlagAssistantAgentModeSystemReminder"]
      311 CALL                             R40 1 1
      312 GETIMPORT                        R41 K9 [require]
      314 GETTABLEKS                       R43 R0 K58 ["Flags"]
      316 GETTABLEKS                       R42 R43 K61 ["FFlagAssistantContextCompaction"]
      318 CALL                             R41 1 1
      319 GETIMPORT                        R42 K9 [require]
      321 GETTABLEKS                       R44 R0 K58 ["Flags"]
      323 GETTABLEKS                       R43 R44 K62 ["FFlagAssistantDynamicToolDescription"]
      325 CALL                             R42 1 1
      326 GETIMPORT                        R43 K9 [require]
      328 GETTABLEKS                       R45 R0 K58 ["Flags"]
      330 GETTABLEKS                       R44 R45 K63 ["FFlagAssistantForceTestAutomation"]
      332 CALL                             R43 1 1
      333 GETIMPORT                        R44 K9 [require]
      335 GETTABLEKS                       R46 R0 K58 ["Flags"]
      337 GETTABLEKS                       R45 R46 K64 ["FFlagAssistantMultipleChatPersistence"]
      339 CALL                             R44 1 1
      340 GETIMPORT                        R45 K9 [require]
      342 GETTABLEKS                       R47 R0 K58 ["Flags"]
      344 GETTABLEKS                       R46 R47 K65 ["FFlagAssistantNewOpenAIAdapter"]
      346 CALL                             R45 1 1
      347 GETIMPORT                        R46 K9 [require]
      349 GETTABLEKS                       R48 R0 K58 ["Flags"]
      351 GETTABLEKS                       R47 R48 K66 ["FFlagAssistantPlanMode"]
      353 CALL                             R46 1 1
      354 GETIMPORT                        R47 K9 [require]
      356 GETTABLEKS                       R49 R0 K58 ["Flags"]
      358 GETTABLEKS                       R48 R49 K67 ["FFlagAssistantSupportSlashCommandCancellation"]
      360 CALL                             R47 1 1
      361 GETIMPORT                        R48 K9 [require]
      363 GETTABLEKS                       R50 R0 K58 ["Flags"]
      365 GETTABLEKS                       R49 R50 K68 ["FFlagAssistantSystemReminderRefactor"]
      367 CALL                             R48 1 1
      368 GETIMPORT                        R49 K9 [require]
      370 GETTABLEKS                       R51 R0 K58 ["Flags"]
      372 GETTABLEKS                       R50 R51 K69 ["FFlagAssistantTestModeDropdown"]
      374 CALL                             R49 1 1
      375 GETIMPORT                        R50 K9 [require]
      377 GETTABLEKS                       R52 R0 K58 ["Flags"]
      379 GETTABLEKS                       R51 R52 K70 ["FFlagAssistantTestModeSystemReminder"]
      381 CALL                             R50 1 1
      382 GETIMPORT                        R51 K9 [require]
      384 GETTABLEKS                       R53 R0 K58 ["Flags"]
      386 GETTABLEKS                       R52 R53 K71 ["FFlagBYOKFetchSystemPrompt"]
      388 CALL                             R51 1 1
      389 GETIMPORT                        R52 K9 [require]
      391 GETTABLEKS                       R54 R0 K58 ["Flags"]
      393 GETTABLEKS                       R53 R54 K72 ["FFlagDebugLogAssistantUI"]
      395 CALL                             R52 1 1
      396 GETIMPORT                        R53 K9 [require]
      398 GETTABLEKS                       R55 R0 K58 ["Flags"]
      400 GETTABLEKS                       R54 R55 K73 ["FFlagDisableScreenCaptureForDefaultModel"]
      402 CALL                             R53 1 1
      403 GETIMPORT                        R54 K9 [require]
      405 GETTABLEKS                       R56 R0 K58 ["Flags"]
      407 GETTABLEKS                       R55 R56 K74 ["FFlagEnableAssistantInputImageAttachment"]
      409 CALL                             R54 1 1
      410 GETIMPORT                        R55 K9 [require]
      412 GETTABLEKS                       R57 R0 K58 ["Flags"]
      414 GETTABLEKS                       R56 R57 K75 ["FIntAssistantProcessEventTimeoutMS"]
      416 CALL                             R55 1 1
      417 GETIMPORT                        R56 K9 [require]
      419 GETTABLEKS                       R58 R0 K58 ["Flags"]
      421 GETTABLEKS                       R57 R58 K76 ["FIntMCPAssistantMaxToolCalls"]
      423 CALL                             R56 1 1
      424 GETIMPORT                        R57 K9 [require]
      426 GETTABLEKS                       R59 R0 K58 ["Flags"]
      428 GETTABLEKS                       R58 R59 K77 ["getIsTestModeSystemRemindersEnabled"]
      430 CALL                             R57 1 1
      431 GETIMPORT                        R58 K9 [require]
      433 GETTABLEKS                       R60 R0 K10 ["Util"]
      435 GETTABLEKS                       R59 R60 K78 ["fetchBYOKSystemPrompt"]
      437 CALL                             R58 1 1
      438 GETIMPORT                        R59 K9 [require]
      440 GETTABLEKS                       R62 R0 K15 ["Components"]
      442 GETTABLEKS                       R61 R62 K30 ["ContentWidgets"]
      444 GETTABLEKS                       R60 R61 K79 ["ImageContentWidget"]
      446 CALL                             R59 1 1
      447 GETTABLEKS                       R60 R18 K80 ["getSystemReminder"]
      449 DUPCLOSURE                       R61 K81 [PROTO_0]
      450 CAPTURE                          VAL R8
      451 DUPCLOSURE                       R62 K82 [PROTO_1]
      452 CAPTURE                          VAL R18
      453 DUPCLOSURE                       R63 K83 [PROTO_6]
      454 CAPTURE                          VAL R18
      455 CAPTURE                          VAL R14
      456 CAPTURE                          VAL R11
      457 DUPCLOSURE                       R64 K84 [PROTO_18]
      458 CAPTURE                          VAL R22
      459 CAPTURE                          VAL R21
      460 CAPTURE                          VAL R24
      461 CAPTURE                          VAL R26
      462 CAPTURE                          VAL R38
      463 CAPTURE                          VAL R29
      464 CAPTURE                          VAL R30
      465 CAPTURE                          VAL R50
      466 CAPTURE                          VAL R40
      467 CAPTURE                          VAL R48
      468 CAPTURE                          VAL R31
      469 CAPTURE                          VAL R37
      470 CAPTURE                          VAL R28
      471 CAPTURE                          VAL R27
      472 CAPTURE                          VAL R33
      473 CAPTURE                          VAL R35
      474 CAPTURE                          VAL R25
      475 CAPTURE                          VAL R32
      476 CAPTURE                          VAL R36
      477 CAPTURE                          VAL R12
      478 CAPTURE                          VAL R13
      479 CAPTURE                          VAL R4
      480 CAPTURE                          VAL R9
      481 CAPTURE                          VAL R34
      482 CAPTURE                          VAL R6
      483 CAPTURE                          VAL R10
      484 CAPTURE                          VAL R39
      485 CAPTURE                          VAL R23
      486 CAPTURE                          VAL R47
      487 CAPTURE                          VAL R54
      488 CAPTURE                          VAL R59
      489 CAPTURE                          VAL R16
      490 CAPTURE                          VAL R52
      491 CAPTURE                          VAL R46
      492 CAPTURE                          VAL R53
      493 CAPTURE                          VAL R18
      494 CAPTURE                          VAL R45
      495 CAPTURE                          VAL R42
      496 CAPTURE                          VAL R1
      497 CAPTURE                          VAL R61
      498 CAPTURE                          VAL R51
      499 CAPTURE                          VAL R43
      500 CAPTURE                          VAL R49
      501 CAPTURE                          VAL R58
      502 CAPTURE                          VAL R3
      503 CAPTURE                          VAL R57
      504 CAPTURE                          VAL R60
      505 CAPTURE                          VAL R41
      506 CAPTURE                          VAL R2
      507 CAPTURE                          VAL R20
      508 CAPTURE                          VAL R19
      509 CAPTURE                          VAL R15
      510 CAPTURE                          VAL R17
      511 CAPTURE                          VAL R44
      512 CAPTURE                          VAL R14
      513 CAPTURE                          VAL R11
      514 CAPTURE                          VAL R56
      515 CAPTURE                          VAL R55
      516 RETURN                           R64 1
