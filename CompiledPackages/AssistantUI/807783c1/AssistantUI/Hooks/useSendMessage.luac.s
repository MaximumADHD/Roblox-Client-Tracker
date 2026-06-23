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
       11 JUMPIFNOTEQ                      R2 R3 ; [+10]
       13 GETUPVAL                         R1 2
       14 GETTABLEKS                       R2 R0 K3 ["contentId"]
       16 SETTABLEKS                       R2 R1 K3 ["contentId"]
       18 GETTABLEKS                       R2 R0 K4 ["toolId"]
       20 SETTABLEKS                       R2 R1 K4 ["toolId"]
       22 GETTABLEKS                       R3 R0 K5 ["toolCallOptions"]
       24 JUMPIFNOT                        R3 ; [+6]
       25 GETIMPORT                        R2 K8 [table.clone]
       27 GETTABLEKS                       R3 R0 K5 ["toolCallOptions"]
       29 CALL                             R2 1 1
       30 JUMPIF                           R2 ; [+2]
       31 NEWTABLE                         R2 0 0
       33 LOADK                            R3 K9 [200000000]
       34 SETTABLEKS                       R3 R2 K10 ["timeout"]
       36 GETTABLEKS                       R3 R2 K11 ["onprogress"]
       38 GETTABLEKS                       R4 R2 K12 ["resetTimeoutOnProgress"]
       40 JUMPIFNOT                        R4 ; [+5]
       41 NEWCLOSURE                       R4 P0
       42 CAPTURE                          UPVAL U3
       43 CAPTURE                          VAL R3
       44 SETTABLEKS                       R4 R2 K11 ["onprogress"]
       46 GETUPVAL                         R4 4
       47 GETTABLEKS                       R4 R4 K13 ["new"]
       49 CALL                             R4 0 1
       50 SETTABLEKS                       R4 R2 K14 ["signal"]
       52 GETUPVAL                         R5 5
       53 GETTABLEKS                       R5 R5 K13 ["new"]
       55 NEWCLOSURE                       R6 P1
       56 CAPTURE                          VAL R4
       57 CAPTURE                          UPVAL U0
       58 CAPTURE                          VAL R0
       59 CAPTURE                          VAL R2
       60 CAPTURE                          REF R1
       61 CALL                             R5 1 -1
       62 CLOSEUPVALS                      R1
       63 RETURN                           R5 -1

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
       84 GETUPVAL                         R8 9
       85 SETTABLEKS                       R8 R7 K15 ["assistantMode"]
       87 GETUPVAL                         R10 10
       88 LENGTH                           R9 R10
       89 LOADN                            R10 0
       90 JUMPIFNOTLT                      R10 R9 ; [+3]
       92 GETUPVAL                         R8 10
       93 JUMP                             ; [+1]
       94 LOADNIL                          R8
       95 SETTABLEKS                       R8 R7 K16 ["attachments"]
       97 GETTABLEKS                       R8 R2 K18 ["logUserMessageSent"]
       99 MOVE                             R9 R7
      100 CALL                             R8 1 0
      101 NEWCLOSURE                       R8 P1
      102 CAPTURE                          UPVAL U11
      103 CAPTURE                          VAL R3
      104 NEWCLOSURE                       R9 P2
      105 CAPTURE                          UPVAL U12
      106 NEWCLOSURE                       R10 P3
      107 CAPTURE                          UPVAL U12
      108 DUPTABLE                         R11 K22 [{"messageGuid", "sessionId", "threadId", "messageId", "contentId", "toolId", "assistantMode"}]
      109 SETTABLEKS                       R3 R11 K10 ["messageGuid"]
      111 GETUPVAL                         R12 6
      112 SETTABLEKS                       R12 R11 K11 ["sessionId"]
      114 GETUPVAL                         R12 7
      115 SETTABLEKS                       R12 R11 K12 ["threadId"]
      117 SETTABLEKS                       R0 R11 K19 ["messageId"]
      119 LOADNIL                          R12
      120 SETTABLEKS                       R12 R11 K20 ["contentId"]
      122 LOADNIL                          R12
      123 SETTABLEKS                       R12 R11 K21 ["toolId"]
      125 GETUPVAL                         R12 9
      126 SETTABLEKS                       R12 R11 K15 ["assistantMode"]
      128 LOADB                            R12 0
      129 NEWCLOSURE                       R13 P4
      130 CAPTURE                          UPVAL U13
      131 CAPTURE                          UPVAL U2
      132 CAPTURE                          REF R12
      133 CAPTURE                          UPVAL U14
      134 CAPTURE                          UPVAL U6
      135 CAPTURE                          UPVAL U7
      136 CAPTURE                          VAL R0
      137 GETUPVAL                         R14 15
      138 GETTABLEKS                       R14 R14 K23 ["createLLMSession"]
      140 DUPTABLE                         R15 K44 [{"showError", "messageGuid", "conversationSessionId", "threadId", "requestLLM", "systemMessage", "observer", "setInputEnabled", "onToolCall", "setModelQuality", "onPacketReceived", "maxToolCalls", "timeoutMs", "initialMessages", "requestStartTime", "tools", "apiKeys", "selectedModel", "messageId", "logRequestStop", "assistantMode", "compactedStore", "selectedProvider", "uiMessageCount", "getInterruptionMessages"}]
      141 SETTABLEKS                       R8 R15 K24 ["showError"]
      143 SETTABLEKS                       R3 R15 K10 ["messageGuid"]
      145 GETUPVAL                         R16 6
      146 SETTABLEKS                       R16 R15 K25 ["conversationSessionId"]
      148 GETUPVAL                         R16 7
      149 SETTABLEKS                       R16 R15 K12 ["threadId"]
      151 GETUPVAL                         R16 16
      152 SETTABLEKS                       R16 R15 K26 ["requestLLM"]
      154 GETUPVAL                         R16 17
      155 SETTABLEKS                       R16 R15 K27 ["systemMessage"]
      157 SETTABLEKS                       R1 R15 K28 ["observer"]
      159 SETTABLEKS                       R13 R15 K29 ["setInputEnabled"]
      161 GETUPVAL                         R17 18
      162 NEWCLOSURE                       R16 P5
      163 CAPTURE                          VAL R17
      164 CAPTURE                          UPVAL U4
      165 CAPTURE                          VAL R11
      166 CAPTURE                          VAL R10
      167 CAPTURE                          UPVAL U19
      168 CAPTURE                          UPVAL U20
      169 SETTABLEKS                       R16 R15 K30 ["onToolCall"]
      171 GETUPVAL                         R16 21
      172 GETTABLEKS                       R16 R16 K31 ["setModelQuality"]
      174 SETTABLEKS                       R16 R15 K31 ["setModelQuality"]
      176 SETTABLEKS                       R9 R15 K32 ["onPacketReceived"]
      178 GETUPVAL                         R16 22
      179 CALL                             R16 0 1
      180 SETTABLEKS                       R16 R15 K33 ["maxToolCalls"]
      182 GETUPVAL                         R16 23
      183 CALL                             R16 0 1
      184 SETTABLEKS                       R16 R15 K34 ["timeoutMs"]
      186 GETUPVAL                         R16 24
      187 SETTABLEKS                       R16 R15 K35 ["initialMessages"]
      189 GETUPVAL                         R16 25
      190 SETTABLEKS                       R16 R15 K36 ["requestStartTime"]
      192 GETUPVAL                         R16 26
      193 SETTABLEKS                       R16 R15 K37 ["tools"]
      195 SETTABLEKS                       R4 R15 K38 ["apiKeys"]
      197 SETTABLEKS                       R6 R15 K9 ["selectedModel"]
      199 SETTABLEKS                       R0 R15 K19 ["messageId"]
      201 GETUPVAL                         R16 27
      202 SETTABLEKS                       R16 R15 K39 ["logRequestStop"]
      204 GETUPVAL                         R16 9
      205 SETTABLEKS                       R16 R15 K15 ["assistantMode"]
      207 GETUPVAL                         R16 28
      208 SETTABLEKS                       R16 R15 K40 ["compactedStore"]
      210 GETUPVAL                         R16 5
      211 GETTABLEKS                       R16 R16 K41 ["selectedProvider"]
      213 SETTABLEKS                       R16 R15 K41 ["selectedProvider"]
      215 GETUPVAL                         R16 29
      216 SETTABLEKS                       R16 R15 K42 ["uiMessageCount"]
      218 GETUPVAL                         R17 30
      219 CALL                             R17 0 1
      220 JUMPIFNOT                        R17 ; [+2]
      221 GETUPVAL                         R16 31
      222 JUMP                             ; [+1]
      223 LOADNIL                          R16
      224 SETTABLEKS                       R16 R15 K43 ["getInterruptionMessages"]
      226 CALL                             R14 1 1
      227 DUPTABLE                         R15 K49 [{"threadId", "messages", "tools", "system", "messageGuid", "isFirstMessage", "isAgenticMode", "apiKeys", "selectedModel", "assistantMode"}]
      228 GETUPVAL                         R16 7
      229 SETTABLEKS                       R16 R15 K12 ["threadId"]
      231 GETUPVAL                         R16 24
      232 SETTABLEKS                       R16 R15 K45 ["messages"]
      234 GETUPVAL                         R16 26
      235 SETTABLEKS                       R16 R15 K37 ["tools"]
      237 GETUPVAL                         R16 17
      238 SETTABLEKS                       R16 R15 K46 ["system"]
      240 SETTABLEKS                       R3 R15 K10 ["messageGuid"]
      242 LOADB                            R16 1
      243 SETTABLEKS                       R16 R15 K47 ["isFirstMessage"]
      245 LOADB                            R16 0
      246 SETTABLEKS                       R16 R15 K48 ["isAgenticMode"]
      248 SETTABLEKS                       R4 R15 K38 ["apiKeys"]
      250 SETTABLEKS                       R6 R15 K9 ["selectedModel"]
      252 GETUPVAL                         R16 9
      253 SETTABLEKS                       R16 R15 K15 ["assistantMode"]
      255 GETUPVAL                         R16 16
      256 MOVE                             R17 R15
      257 GETTABLEKS                       R18 R14 K50 ["processEvent"]
      259 CALL                             R16 2 0
      260 CLOSEUPVALS                      R12
      261 RETURN                           R0 0

PROTO_17:
        0 LOADNIL                          R1
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["selectedProvider"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K1 ["LLMProviderTypes"]
        7 GETTABLEKS                       R3 R3 K2 ["Studio"]
        9 JUMPIFEQ                         R2 R3 ; [+6]
       11 DUPTABLE                         R2 K4 [{"attachRawImageContent"}]
       12 LOADB                            R3 1
       13 SETTABLEKS                       R3 R2 K3 ["attachRawImageContent"]
       15 MOVE                             R1 R2
       16 LOADNIL                          R2
       17 LOADNIL                          R3
       18 LOADN                            R4 0
       19 GETUPVAL                         R5 2
       20 GETTABLEKS                       R5 R5 K5 ["get"]
       22 GETUPVAL                         R6 3
       23 CALL                             R5 1 1
       24 JUMPIFNOT                        R5 ; [+54]
       25 GETTABLEKS                       R6 R5 K6 ["summary"]
       27 JUMPIFNOT                        R6 ; [+51]
       28 GETTABLEKS                       R6 R5 K7 ["compactedUIMessageCount"]
       30 LOADN                            R7 0
       31 JUMPIFNOTLT                      R7 R6 ; [+47]
       33 GETUPVAL                         R6 4
       34 MOVE                             R7 R0
       35 GETTABLEKS                       R8 R5 K7 ["compactedUIMessageCount"]
       37 MOVE                             R9 R1
       38 CALL                             R6 3 1
       39 MOVE                             R3 R6
       40 GETTABLEKS                       R4 R3 K8 ["uiMessageCount"]
       42 GETUPVAL                         R6 5
       43 GETTABLEKS                       R6 R6 K9 ["reconstructFromStore"]
       45 GETTABLEKS                       R7 R3 K10 ["messages"]
       47 MOVE                             R8 R5
       48 DUPTABLE                         R9 K13 [{"threadId", "selectedModel"}]
       49 GETUPVAL                         R10 3
       50 SETTABLEKS                       R10 R9 K11 ["threadId"]
       52 GETUPVAL                         R10 0
       53 GETTABLEKS                       R10 R10 K12 ["selectedModel"]
       55 SETTABLEKS                       R10 R9 K12 ["selectedModel"]
       57 CALL                             R6 3 1
       58 JUMPIFNOT                        R6 ; [+11]
       59 GETTABLEKS                       R2 R6 K14 ["compactedStore"]
       61 DUPTABLE                         R7 K15 [{"messages", "uiMessageCount"}]
       62 GETTABLEKS                       R8 R6 K10 ["messages"]
       64 SETTABLEKS                       R8 R7 K10 ["messages"]
       66 SETTABLEKS                       R4 R7 K8 ["uiMessageCount"]
       68 MOVE                             R3 R7
       69 JUMP                             ; [+17]
       70 GETUPVAL                         R7 4
       71 MOVE                             R8 R0
       72 LOADNIL                          R9
       73 MOVE                             R10 R1
       74 CALL                             R7 3 1
       75 MOVE                             R3 R7
       76 GETTABLEKS                       R4 R3 K8 ["uiMessageCount"]
       78 JUMP                             ; [+8]
       79 GETUPVAL                         R6 4
       80 MOVE                             R7 R0
       81 LOADNIL                          R8
       82 MOVE                             R9 R1
       83 CALL                             R6 3 1
       84 MOVE                             R3 R6
       85 GETTABLEKS                       R4 R3 K8 ["uiMessageCount"]
       87 JUMPIF                           R2 ; [+140]
       88 GETUPVAL                         R6 5
       89 GETTABLEKS                       R6 R6 K16 ["shouldCompact"]
       91 GETTABLEKS                       R7 R3 K10 ["messages"]
       93 DUPTABLE                         R8 K18 [{"isSubagent", "selectedModel"}]
       94 LOADB                            R9 0
       95 SETTABLEKS                       R9 R8 K17 ["isSubagent"]
       97 GETUPVAL                         R9 0
       98 GETTABLEKS                       R9 R9 K12 ["selectedModel"]
      100 SETTABLEKS                       R9 R8 K12 ["selectedModel"]
      102 CALL                             R6 2 1
      103 JUMPIFNOT                        R6 ; [+124]
      104 GETUPVAL                         R6 6
      105 GETTABLEKS                       R6 R6 K19 ["setLastPacketTime"]
      107 GETIMPORT                        R7 K22 [os.clock]
      109 CALL                             R7 0 -1
      110 CALL                             R6 -1 0
      111 GETUPVAL                         R6 7
      112 DUPTABLE                         R7 K24 [{"role"}]
      113 LOADK                            R8 K25 ["assistant"]
      114 SETTABLEKS                       R8 R7 K23 ["role"]
      116 CALL                             R6 1 1
      117 GETUPVAL                         R7 8
      118 DUPTABLE                         R8 K28 [{"messageId", "content"}]
      119 SETTABLEKS                       R6 R8 K26 ["messageId"]
      121 DUPTABLE                         R9 K31 [{"type", "summary", "generating"}]
      122 GETUPVAL                         R10 9
      123 GETTABLEKS                       R10 R10 K32 ["Type"]
      125 SETTABLEKS                       R10 R9 K29 ["type"]
      127 GETUPVAL                         R10 10
      128 LOADK                            R12 K33 ["Compaction"]
      129 LOADK                            R13 K34 ["InProgress"]
      130 NAMECALL                         R10 R10 K35 ["getText"]
      132 CALL                             R10 3 1
      133 SETTABLEKS                       R10 R9 K6 ["summary"]
      135 LOADB                            R10 1
      136 SETTABLEKS                       R10 R9 K30 ["generating"]
      138 SETTABLEKS                       R9 R8 K27 ["content"]
      140 CALL                             R7 1 1
      141 NEWTABLE                         R8 0 0
      143 NEWTABLE                         R9 0 3
      145 GETUPVAL                         R12 1
      146 GETTABLEKS                       R12 R12 K36 ["CLAUDE_API_KEY"]
      148 GETUPVAL                         R13 1
      149 GETTABLEKS                       R13 R13 K37 ["GEMINI_API_KEY"]
      151 GETUPVAL                         R14 1
      152 GETTABLEKS                       R14 R14 K38 ["OPENAI_API_KEY"]
      154 SETLIST                          R9 R12 3 [1]
      156 LOADNIL                          R10
      157 LOADNIL                          R11
      158 FORGPREP                         R9
      159 GETUPVAL                         R14 11
      160 GETTABLEKS                       R14 R14 K39 ["getSetting"]
      162 MOVE                             R15 R13
      163 CALL                             R14 1 1
      164 JUMPIFNOT                        R14 ; [+3]
      165 JUMPIFEQKS                       R14 K40 [""] ; [+2]
      167 SETTABLE                         R14 R8 R13
      168 FORGLOOP                         R9 2 ; [-10]
      170 GETUPVAL                         R9 5
      171 GETTABLEKS                       R9 R9 K41 ["compact"]
      173 GETTABLEKS                       R10 R3 K10 ["messages"]
      175 DUPTABLE                         R11 K44 [{"requestLLM", "threadId", "compactedStore", "selectedModel", "selectedProvider", "apiKeys", "uiMessageCount"}]
      176 GETUPVAL                         R12 12
      177 SETTABLEKS                       R12 R11 K42 ["requestLLM"]
      179 GETUPVAL                         R12 3
      180 SETTABLEKS                       R12 R11 K11 ["threadId"]
      182 SETTABLEKS                       R5 R11 K14 ["compactedStore"]
      184 GETUPVAL                         R12 0
      185 GETTABLEKS                       R12 R12 K12 ["selectedModel"]
      187 SETTABLEKS                       R12 R11 K12 ["selectedModel"]
      189 GETUPVAL                         R12 0
      190 GETTABLEKS                       R12 R12 K0 ["selectedProvider"]
      192 SETTABLEKS                       R12 R11 K0 ["selectedProvider"]
      194 SETTABLEKS                       R8 R11 K43 ["apiKeys"]
      196 SETTABLEKS                       R4 R11 K8 ["uiMessageCount"]
      198 CALL                             R9 2 1
      199 DUPTABLE                         R10 K15 [{"messages", "uiMessageCount"}]
      200 GETTABLEKS                       R11 R9 K10 ["messages"]
      202 SETTABLEKS                       R11 R10 K10 ["messages"]
      204 SETTABLEKS                       R4 R10 K8 ["uiMessageCount"]
      206 MOVE                             R3 R10
      207 GETTABLEKS                       R2 R9 K14 ["compactedStore"]
      209 JUMPIFNOT                        R7 ; [+11]
      210 GETUPVAL                         R10 13
      211 DUPTABLE                         R11 K47 [{"messageId", "contentId", "transformFn"}]
      212 SETTABLEKS                       R6 R11 K26 ["messageId"]
      214 SETTABLEKS                       R7 R11 K45 ["contentId"]
      216 DUPCLOSURE                       R12 K48 [PROTO_10]
      217 CAPTURE                          UPVAL U10
      218 SETTABLEKS                       R12 R11 K46 ["transformFn"]
      220 CALL                             R10 1 0
      221 GETUPVAL                         R10 6
      222 GETTABLEKS                       R10 R10 K19 ["setLastPacketTime"]
      224 GETIMPORT                        R11 K22 [os.clock]
      226 CALL                             R11 0 -1
      227 CALL                             R10 -1 0
      228 GETTABLEKS                       R6 R3 K10 ["messages"]
      230 GETUPVAL                         R7 14
      231 CALL                             R7 0 1
      232 JUMPIFNOT                        R7 ; [+4]
      233 GETIMPORT                        R7 K50 [print]
      235 LOADK                            R8 K51 ["Preparing message for response contents..."]
      236 CALL                             R7 1 0
      237 GETUPVAL                         R7 15
      238 GETUPVAL                         R8 1
      239 GETTABLEKS                       R8 R8 K52 ["ROLE"]
      241 GETTABLEKS                       R8 R8 K53 ["Assistant"]
      243 NEWCLOSURE                       R9 P1
      244 CAPTURE                          UPVAL U16
      245 CAPTURE                          UPVAL U17
      246 CAPTURE                          UPVAL U18
      247 CAPTURE                          UPVAL U11
      248 CAPTURE                          UPVAL U1
      249 CAPTURE                          UPVAL U0
      250 CAPTURE                          UPVAL U19
      251 CAPTURE                          UPVAL U3
      252 CAPTURE                          UPVAL U20
      253 CAPTURE                          UPVAL U21
      254 CAPTURE                          UPVAL U22
      255 CAPTURE                          UPVAL U23
      256 CAPTURE                          UPVAL U6
      257 CAPTURE                          UPVAL U24
      258 CAPTURE                          UPVAL U25
      259 CAPTURE                          UPVAL U26
      260 CAPTURE                          UPVAL U12
      261 CAPTURE                          UPVAL U27
      262 CAPTURE                          UPVAL U28
      263 CAPTURE                          UPVAL U29
      264 CAPTURE                          UPVAL U30
      265 CAPTURE                          UPVAL U31
      266 CAPTURE                          UPVAL U32
      267 CAPTURE                          UPVAL U33
      268 CAPTURE                          VAL R6
      269 CAPTURE                          UPVAL U34
      270 CAPTURE                          UPVAL U35
      271 CAPTURE                          UPVAL U36
      272 CAPTURE                          REF R2
      273 CAPTURE                          REF R4
      274 CAPTURE                          UPVAL U37
      275 CAPTURE                          UPVAL U38
      276 CALL                             R7 2 0
      277 CLOSEUPVALS                      R2
      278 RETURN                           R0 0

PROTO_18:
        0 DUPTABLE                         R1 K2 [{"assistantMode", "useInternalToolDefinitions"}]
        1 GETUPVAL                         R2 0
        2 SETTABLEKS                       R2 R1 K0 ["assistantMode"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K3 ["selectedProvider"]
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R4 R4 K4 ["LLMProviderTypes"]
       10 GETTABLEKS                       R4 R4 K5 ["Studio"]
       12 JUMPIFEQ                         R3 R4 ; [+2]
       14 LOADB                            R2 0 +1
       15 LOADB                            R2 1
       16 SETTABLEKS                       R2 R1 K1 ["useInternalToolDefinitions"]
       18 GETUPVAL                         R2 3
       19 CALL                             R2 0 1
       20 JUMPIFNOT                        R2 ; [+6]
       21 GETUPVAL                         R2 4
       22 SETTABLEKS                       R2 R1 K6 ["isMultiPlayerClientAgent"]
       24 GETUPVAL                         R2 5
       25 SETTABLEKS                       R2 R1 K7 ["isMultiPlayerClientAgentRunning"]
       27 DUPTABLE                         R2 K9 [{"_meta"}]
       28 SETTABLEKS                       R1 R2 K8 ["_meta"]
       30 MOVE                             R1 R2
       31 MOVE                             R5 R1
       32 NAMECALL                         R3 R0 K10 ["listTools"]
       34 CALL                             R3 2 1
       35 NAMECALL                         R3 R3 K11 ["await"]
       37 CALL                             R3 1 2
       38 JUMPIFNOT                        R3 ; [+12]
       39 GETTABLEKS                       R7 R4 K12 ["failures"]
       41 GETUPVAL                         R8 2
       42 GETTABLEKS                       R8 R8 K13 ["getMcpClientIdentifier"]
       44 CALL                             R8 0 1
       45 GETTABLE                         R6 R7 R8
       46 JUMPIFNOTEQKNIL                  R6 ; [+2]
       48 LOADB                            R5 0 +1
       49 LOADB                            R5 1
       50 JUMPIFNOT                        R5 ; [+25]
       51 GETUPVAL                         R5 6
       52 DUPTABLE                         R6 K15 [{"errorType"}]
       53 LOADK                            R7 K16 ["client_error"]
       54 SETTABLEKS                       R7 R6 K14 ["errorType"]
       56 CALL                             R5 1 0
       57 GETUPVAL                         R5 7
       58 GETTABLEKS                       R5 R5 K17 ["setInputEnabled"]
       60 LOADB                            R6 1
       61 CALL                             R5 1 0
       62 GETIMPORT                        R5 K19 [error]
       64 LOADK                            R7 K20 ["Failed to get tools list with error: %*"]
       65 GETUPVAL                         R9 8
       66 MOVE                             R11 R4
       67 NAMECALL                         R9 R9 K21 ["JSONEncode"]
       69 CALL                             R9 2 1
       70 NAMECALL                         R7 R7 K22 ["format"]
       72 CALL                             R7 2 1
       73 MOVE                             R6 R7
       74 CALL                             R5 1 0
       75 RETURN                           R0 0
       76 LOADNIL                          R5
       77 GETUPVAL                         R6 9
       78 GETTABLEKS                       R7 R4 K23 ["result"]
       80 GETTABLEKS                       R7 R7 K24 ["tools"]
       82 CALL                             R6 1 1
       83 GETUPVAL                         R7 10
       84 MOVE                             R8 R6
       85 CALL                             R7 1 1
       86 MOVE                             R5 R7
       87 GETUPVAL                         R7 11
       88 GETUPVAL                         R9 1
       89 GETTABLEKS                       R9 R9 K3 ["selectedProvider"]
       91 GETUPVAL                         R10 2
       92 GETTABLEKS                       R10 R10 K4 ["LLMProviderTypes"]
       94 GETTABLEKS                       R10 R10 K5 ["Studio"]
       96 JUMPIFNOTEQ                      R9 R10 ; [+2]
       98 LOADB                            R8 0 +1
       99 LOADB                            R8 1
      100 JUMPIFNOT                        R8 ; [+34]
      101 GETUPVAL                         R9 12
      102 DUPTABLE                         R10 K28 [{"environment", "tools", "model", "assistantMode", "isDebugMode"}]
      103 GETUPVAL                         R11 13
      104 GETTABLEKS                       R11 R11 K29 ["get"]
      106 CALL                             R11 0 1
      107 SETTABLEKS                       R11 R10 K25 ["environment"]
      109 GETTABLEKS                       R11 R4 K23 ["result"]
      111 GETTABLEKS                       R11 R11 K24 ["tools"]
      113 SETTABLEKS                       R11 R10 K24 ["tools"]
      115 GETUPVAL                         R11 1
      116 GETTABLEKS                       R11 R11 K30 ["selectedModel"]
      118 SETTABLEKS                       R11 R10 K26 ["model"]
      120 GETUPVAL                         R11 0
      121 SETTABLEKS                       R11 R10 K0 ["assistantMode"]
      123 LOADB                            R11 1
      124 SETTABLEKS                       R11 R10 K27 ["isDebugMode"]
      126 CALL                             R9 1 2
      127 JUMPIFNOT                        R9 ; [+2]
      128 MOVE                             R7 R10
      129 JUMP                             ; [+5]
      130 GETIMPORT                        R11 K32 [warn]
      132 LOADK                            R12 K33 ["Failed to fetch BYOK system prompt, using fallback:"]
      133 MOVE                             R13 R10
      134 CALL                             R11 2 0
      135 GETUPVAL                         R9 14
      136 JUMPIFNOT                        R9 ; [+40]
      137 DUPTABLE                         R9 K34 [{"tools"}]
      138 GETTABLEKS                       R10 R4 K23 ["result"]
      140 GETTABLEKS                       R10 R10 K24 ["tools"]
      142 SETTABLEKS                       R10 R9 K24 ["tools"]
      144 GETUPVAL                         R10 14
      145 MOVE                             R11 R9
      146 CALL                             R10 1 3
      147 FORGPREP                         R10
      148 GETUPVAL                         R15 15
      149 DUPTABLE                         R16 K37 [{"role", "hidden"}]
      150 LOADK                            R17 K38 ["user"]
      151 SETTABLEKS                       R17 R16 K35 ["role"]
      153 LOADB                            R17 1
      154 SETTABLEKS                       R17 R16 K36 ["hidden"]
      156 CALL                             R15 1 1
      157 GETUPVAL                         R16 16
      158 DUPTABLE                         R17 K41 [{"messageId", "content"}]
      159 SETTABLEKS                       R15 R17 K39 ["messageId"]
      161 DUPTABLE                         R18 K44 [{"type", "text"}]
      162 GETUPVAL                         R19 17
      163 GETTABLEKS                       R19 R19 K45 ["Type"]
      165 SETTABLEKS                       R19 R18 K42 ["type"]
      167 GETUPVAL                         R19 18
      168 MOVE                             R20 R14
      169 CALL                             R19 1 1
      170 SETTABLEKS                       R19 R18 K43 ["text"]
      172 SETTABLEKS                       R18 R17 K40 ["content"]
      174 CALL                             R16 1 0
      175 FORGLOOP                         R10 2 ; [-28]
      177 GETUPVAL                         R9 19
      178 CALL                             R9 0 1
      179 JUMPIFNOT                        R9 ; [+4]
      180 GETIMPORT                        R9 K47 [print]
      182 LOADK                            R10 K48 ["Reading conversation history..."]
      183 CALL                             R9 1 0
      184 GETUPVAL                         R9 20
      185 NEWCLOSURE                       R10 P0
      186 CAPTURE                          UPVAL U1
      187 CAPTURE                          UPVAL U2
      188 CAPTURE                          UPVAL U21
      189 CAPTURE                          UPVAL U22
      190 CAPTURE                          UPVAL U23
      191 CAPTURE                          UPVAL U24
      192 CAPTURE                          UPVAL U25
      193 CAPTURE                          UPVAL U15
      194 CAPTURE                          UPVAL U16
      195 CAPTURE                          UPVAL U26
      196 CAPTURE                          UPVAL U27
      197 CAPTURE                          UPVAL U28
      198 CAPTURE                          UPVAL U29
      199 CAPTURE                          UPVAL U30
      200 CAPTURE                          UPVAL U19
      201 CAPTURE                          UPVAL U31
      202 CAPTURE                          UPVAL U32
      203 CAPTURE                          UPVAL U13
      204 CAPTURE                          UPVAL U33
      205 CAPTURE                          UPVAL U34
      206 CAPTURE                          UPVAL U35
      207 CAPTURE                          UPVAL U0
      208 CAPTURE                          UPVAL U36
      209 CAPTURE                          UPVAL U6
      210 CAPTURE                          UPVAL U7
      211 CAPTURE                          UPVAL U37
      212 CAPTURE                          UPVAL U38
      213 CAPTURE                          REF R7
      214 CAPTURE                          VAL R0
      215 CAPTURE                          UPVAL U39
      216 CAPTURE                          UPVAL U40
      217 CAPTURE                          UPVAL U41
      218 CAPTURE                          UPVAL U42
      219 CAPTURE                          UPVAL U43
      220 CAPTURE                          UPVAL U44
      221 CAPTURE                          REF R5
      222 CAPTURE                          UPVAL U45
      223 CAPTURE                          UPVAL U3
      224 CAPTURE                          UPVAL U46
      225 CALL                             R9 1 0
      226 CLOSEUPVALS                      R5
      227 RETURN                           R0 0

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
       49 CALL                             R0 1 0
       50 RETURN                           R0 0

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
      176 NEWCLOSURE                       R6 P1
      177 CAPTURE                          UPVAL U3
      178 GETUPVAL                         R7 13
      179 DUPTABLE                         R8 K49 [{"prompt", "images", "setInputEnabled"}]
      180 SETTABLEKS                       R1 R8 K48 ["prompt"]
      182 GETTABLEKS                       R9 R0 K22 ["images"]
      184 SETTABLEKS                       R9 R8 K22 ["images"]
      186 SETTABLEKS                       R6 R8 K10 ["setInputEnabled"]
      188 CALL                             R7 1 1
      189 JUMPIFNOT                        R7 ; [+1]
      190 RETURN                           R0 0
      191 GETUPVAL                         R8 1
      192 CALL                             R8 0 1
      193 JUMPIFNOT                        R8 ; [+6]
      194 GETUPVAL                         R8 14
      195 JUMPIFNOT                        R8 ; [+4]
      196 GETUPVAL                         R8 14
      197 GETTABLEKS                       R8 R8 K50 ["cancelSession"]
      199 CALL                             R8 0 0
      200 GETIMPORT                        R8 K53 [task.spawn]
      202 NEWCLOSURE                       R9 P2
      203 CAPTURE                          UPVAL U15
      204 CAPTURE                          UPVAL U16
      205 CAPTURE                          UPVAL U17
      206 CAPTURE                          UPVAL U18
      207 CAPTURE                          UPVAL U19
      208 CAPTURE                          UPVAL U20
      209 CAPTURE                          UPVAL U21
      210 CAPTURE                          UPVAL U22
      211 CAPTURE                          UPVAL U3
      212 CAPTURE                          UPVAL U23
      213 CAPTURE                          UPVAL U24
      214 CAPTURE                          UPVAL U25
      215 CAPTURE                          UPVAL U26
      216 CAPTURE                          UPVAL U27
      217 CAPTURE                          UPVAL U28
      218 CAPTURE                          UPVAL U29
      219 CAPTURE                          UPVAL U4
      220 CAPTURE                          UPVAL U6
      221 CAPTURE                          UPVAL U7
      222 CAPTURE                          UPVAL U30
      223 CAPTURE                          UPVAL U8
      224 CAPTURE                          UPVAL U31
      225 CAPTURE                          UPVAL U32
      226 CAPTURE                          UPVAL U11
      227 CAPTURE                          UPVAL U33
      228 CAPTURE                          UPVAL U34
      229 CAPTURE                          UPVAL U2
      230 CAPTURE                          UPVAL U35
      231 CAPTURE                          UPVAL U36
      232 CAPTURE                          UPVAL U37
      233 CAPTURE                          UPVAL U38
      234 CAPTURE                          UPVAL U39
      235 CAPTURE                          UPVAL U40
      236 CAPTURE                          UPVAL U41
      237 CAPTURE                          UPVAL U9
      238 CAPTURE                          UPVAL U42
      239 CAPTURE                          VAL R1
      240 CAPTURE                          VAL R5
      241 CAPTURE                          UPVAL U43
      242 CAPTURE                          UPVAL U44
      243 CAPTURE                          UPVAL U45
      244 CAPTURE                          UPVAL U46
      245 CAPTURE                          UPVAL U47
      246 CAPTURE                          UPVAL U48
      247 CAPTURE                          UPVAL U49
      248 CAPTURE                          VAL R4
      249 CAPTURE                          UPVAL U50
      250 CAPTURE                          UPVAL U51
      251 CALL                             R8 1 0
      252 RETURN                           R0 0

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
       99 GETUPVAL                         R27 30
      100 CALL                             R27 0 1
      101 LOADNIL                          R28
      102 LOADNIL                          R29
      103 GETUPVAL                         R30 31
      104 CALL                             R30 0 1
      105 JUMPIFNOT                        R30 ; [+6]
      106 GETUPVAL                         R30 32
      107 CALL                             R30 0 1
      108 GETTABLEKS                       R28 R30 K3 ["isMultiPlayerClientAgent"]
      110 GETTABLEKS                       R29 R30 K4 ["isMultiPlayerClientAgentRunning"]
      112 NEWCLOSURE                       R30 P0
      113 CAPTURE                          REF R28
      114 CAPTURE                          UPVAL U33
      115 NEWCLOSURE                       R31 P1
      116 CAPTURE                          VAL R21
      117 CAPTURE                          UPVAL U28
      118 CAPTURE                          VAL R25
      119 CAPTURE                          VAL R0
      120 CAPTURE                          VAL R1
      121 CAPTURE                          UPVAL U34
      122 CAPTURE                          VAL R2
      123 CAPTURE                          UPVAL U35
      124 CAPTURE                          UPVAL U36
      125 CAPTURE                          UPVAL U19
      126 CAPTURE                          VAL R18
      127 CAPTURE                          VAL R17
      128 CAPTURE                          UPVAL U37
      129 CAPTURE                          VAL R12
      130 CAPTURE                          REF R26
      131 CAPTURE                          VAL R5
      132 CAPTURE                          VAL R27
      133 CAPTURE                          VAL R24
      134 CAPTURE                          UPVAL U38
      135 CAPTURE                          UPVAL U31
      136 CAPTURE                          REF R28
      137 CAPTURE                          REF R29
      138 CAPTURE                          VAL R13
      139 CAPTURE                          UPVAL U39
      140 CAPTURE                          UPVAL U40
      141 CAPTURE                          VAL R9
      142 CAPTURE                          VAL R7
      143 CAPTURE                          UPVAL U41
      144 CAPTURE                          UPVAL U42
      145 CAPTURE                          VAL R8
      146 CAPTURE                          UPVAL U43
      147 CAPTURE                          VAL R11
      148 CAPTURE                          UPVAL U44
      149 CAPTURE                          UPVAL U45
      150 CAPTURE                          UPVAL U46
      151 CAPTURE                          UPVAL U47
      152 CAPTURE                          UPVAL U48
      153 CAPTURE                          VAL R23
      154 CAPTURE                          VAL R6
      155 CAPTURE                          VAL R3
      156 CAPTURE                          VAL R4
      157 CAPTURE                          VAL R14
      158 CAPTURE                          VAL R20
      159 CAPTURE                          VAL R15
      160 CAPTURE                          VAL R10
      161 CAPTURE                          UPVAL U49
      162 CAPTURE                          UPVAL U50
      163 CAPTURE                          VAL R22
      164 CAPTURE                          UPVAL U51
      165 CAPTURE                          UPVAL U52
      166 CAPTURE                          VAL R16
      167 CAPTURE                          VAL R30
      168 CLOSEUPVALS                      R26
      169 RETURN                           R31 1

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
      350 GETTABLEKS                       R46 R46 K66 ["FFlagAssistantHarnessSplit"]
      352 CALL                             R45 1 1
      353 GETIMPORT                        R46 K9 [require]
      355 GETTABLEKS                       R47 R0 K65 ["Flags"]
      357 GETTABLEKS                       R47 R47 K67 ["FFlagAssistantMultiPlayerAgents"]
      359 CALL                             R46 1 1
      360 GETIMPORT                        R47 K9 [require]
      362 GETTABLEKS                       R48 R0 K65 ["Flags"]
      364 GETTABLEKS                       R48 R48 K68 ["FFlagAssistantMultipleChatPersistence"]
      366 CALL                             R47 1 1
      367 GETIMPORT                        R48 K9 [require]
      369 GETTABLEKS                       R49 R0 K65 ["Flags"]
      371 GETTABLEKS                       R49 R49 K69 ["FFlagAssistantSupportSlashCommandCancellation"]
      373 CALL                             R48 1 1
      374 GETIMPORT                        R49 K9 [require]
      376 GETTABLEKS                       R50 R0 K65 ["Flags"]
      378 GETTABLEKS                       R50 R50 K70 ["FFlagDebugLogAssistantUI"]
      380 CALL                             R49 1 1
      381 GETIMPORT                        R50 K9 [require]
      383 GETTABLEKS                       R51 R0 K65 ["Flags"]
      385 GETTABLEKS                       R51 R51 K71 ["FIntAssistantProcessEventTimeoutMS"]
      387 CALL                             R50 1 1
      388 GETIMPORT                        R51 K9 [require]
      390 GETTABLEKS                       R52 R0 K65 ["Flags"]
      392 GETTABLEKS                       R52 R52 K72 ["FIntMCPAssistantMaxToolCalls"]
      394 CALL                             R51 1 1
      395 GETIMPORT                        R52 K9 [require]
      397 GETTABLEKS                       R53 R0 K73 ["AssistantService"]
      399 GETTABLEKS                       R53 R53 K74 ["useSendMessageViaService"]
      401 CALL                             R52 1 1
      402 GETIMPORT                        R53 K9 [require]
      404 GETTABLEKS                       R54 R0 K10 ["Util"]
      406 GETTABLEKS                       R54 R54 K75 ["fetchBYOKSystemPrompt"]
      408 CALL                             R53 1 1
      409 GETIMPORT                        R54 K9 [require]
      411 GETTABLEKS                       R55 R0 K15 ["Components"]
      413 GETTABLEKS                       R55 R55 K33 ["ContentWidgets"]
      415 GETTABLEKS                       R55 R55 K76 ["ImageContentWidget"]
      417 CALL                             R54 1 1
      418 GETTABLEKS                       R55 R20 K77 ["getSystemReminder"]
      420 DUPCLOSURE                       R56 K78 [PROTO_0]
      421 CAPTURE                          VAL R9
      422 DUPCLOSURE                       R57 K79 [PROTO_1]
      423 CAPTURE                          VAL R20
      424 DUPCLOSURE                       R58 K80 [PROTO_6]
      425 CAPTURE                          VAL R20
      426 CAPTURE                          VAL R16
      427 CAPTURE                          VAL R13
      428 DUPCLOSURE                       R59 K81 [PROTO_21]
      429 CAPTURE                          VAL R45
      430 CAPTURE                          VAL R52
      431 CAPTURE                          VAL R25
      432 CAPTURE                          VAL R24
      433 CAPTURE                          VAL R27
      434 CAPTURE                          VAL R30
      435 CAPTURE                          VAL R44
      436 CAPTURE                          VAL R33
      437 CAPTURE                          VAL R34
      438 CAPTURE                          VAL R35
      439 CAPTURE                          VAL R43
      440 CAPTURE                          VAL R32
      441 CAPTURE                          VAL R31
      442 CAPTURE                          VAL R39
      443 CAPTURE                          VAL R41
      444 CAPTURE                          VAL R29
      445 CAPTURE                          VAL R36
      446 CAPTURE                          VAL R37
      447 CAPTURE                          VAL R42
      448 CAPTURE                          VAL R47
      449 CAPTURE                          VAL R28
      450 CAPTURE                          VAL R14
      451 CAPTURE                          VAL R15
      452 CAPTURE                          VAL R4
      453 CAPTURE                          VAL R10
      454 CAPTURE                          VAL R40
      455 CAPTURE                          VAL R7
      456 CAPTURE                          VAL R12
      457 CAPTURE                          VAL R48
      458 CAPTURE                          VAL R5
      459 CAPTURE                          VAL R26
      460 CAPTURE                          VAL R46
      461 CAPTURE                          VAL R38
      462 CAPTURE                          VAL R11
      463 CAPTURE                          VAL R54
      464 CAPTURE                          VAL R18
      465 CAPTURE                          VAL R49
      466 CAPTURE                          VAL R23
      467 CAPTURE                          VAL R20
      468 CAPTURE                          VAL R1
      469 CAPTURE                          VAL R56
      470 CAPTURE                          VAL R53
      471 CAPTURE                          VAL R3
      472 CAPTURE                          VAL R55
      473 CAPTURE                          VAL R2
      474 CAPTURE                          VAL R22
      475 CAPTURE                          VAL R21
      476 CAPTURE                          VAL R17
      477 CAPTURE                          VAL R19
      478 CAPTURE                          VAL R16
      479 CAPTURE                          VAL R13
      480 CAPTURE                          VAL R51
      481 CAPTURE                          VAL R50
      482 RETURN                           R59 1
