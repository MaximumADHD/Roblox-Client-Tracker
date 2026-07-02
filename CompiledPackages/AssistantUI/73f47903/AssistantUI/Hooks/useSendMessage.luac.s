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
        6 JUMPIFNOT                        R0 ; [+16]
        7 GETUPVAL                         R2 1
        8 JUMPIF                           R2 ; [+14]
        9 LOADB                            R2 1
       10 SETUPVAL                         R2 1
       11 GETUPVAL                         R2 2
       12 DUPTABLE                         R3 K4 [{"sessionId", "threadId", "messageId"}]
       13 GETUPVAL                         R4 3
       14 SETTABLEKS                       R4 R3 K1 ["sessionId"]
       16 GETUPVAL                         R4 4
       17 SETTABLEKS                       R4 R3 K2 ["threadId"]
       19 GETUPVAL                         R4 5
       20 SETTABLEKS                       R4 R3 K3 ["messageId"]
       22 CALL                             R2 1 0
       23 RETURN                           R0 0

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
       12 NEWTABLE                         R3 0 0
       14 NEWCLOSURE                       R4 P0
       15 CAPTURE                          UPVAL U2
       16 CAPTURE                          VAL R3
       17 GETUPVAL                         R5 3
       18 GETTABLEKS                       R5 R5 K3 ["CLAUDE_API_KEY"]
       20 GETUPVAL                         R6 2
       21 GETTABLEKS                       R6 R6 K4 ["getSetting"]
       23 MOVE                             R7 R5
       24 CALL                             R6 1 1
       25 JUMPIFNOT                        R6 ; [+3]
       26 JUMPIFEQKS                       R6 K5 [""] ; [+2]
       28 SETTABLE                         R6 R3 R5
       29 GETUPVAL                         R5 3
       30 GETTABLEKS                       R5 R5 K6 ["GEMINI_API_KEY"]
       32 GETUPVAL                         R6 2
       33 GETTABLEKS                       R6 R6 K4 ["getSetting"]
       35 MOVE                             R7 R5
       36 CALL                             R6 1 1
       37 JUMPIFNOT                        R6 ; [+3]
       38 JUMPIFEQKS                       R6 K5 [""] ; [+2]
       40 SETTABLE                         R6 R3 R5
       41 GETUPVAL                         R5 3
       42 GETTABLEKS                       R5 R5 K7 ["OPENAI_API_KEY"]
       44 GETUPVAL                         R6 2
       45 GETTABLEKS                       R6 R6 K4 ["getSetting"]
       47 MOVE                             R7 R5
       48 CALL                             R6 1 1
       49 JUMPIFNOT                        R6 ; [+3]
       50 JUMPIFEQKS                       R6 K5 [""] ; [+2]
       52 SETTABLE                         R6 R3 R5
       53 GETUPVAL                         R5 4
       54 GETTABLEKS                       R5 R5 K8 ["selectedModel"]
       56 DUPTABLE                         R6 K16 [{"messageGuid", "sessionId", "threadId", "message", "model", "assistantMode", "attachments"}]
       57 SETTABLEKS                       R0 R6 K9 ["messageGuid"]
       59 GETUPVAL                         R7 5
       60 SETTABLEKS                       R7 R6 K10 ["sessionId"]
       62 GETUPVAL                         R7 6
       63 SETTABLEKS                       R7 R6 K11 ["threadId"]
       65 GETUPVAL                         R7 7
       66 SETTABLEKS                       R7 R6 K12 ["message"]
       68 SETTABLEKS                       R5 R6 K13 ["model"]
       70 GETUPVAL                         R7 8
       71 SETTABLEKS                       R7 R6 K14 ["assistantMode"]
       73 GETUPVAL                         R9 9
       74 LENGTH                           R8 R9
       75 LOADN                            R9 0
       76 JUMPIFNOTLT                      R9 R8 ; [+3]
       78 GETUPVAL                         R7 9
       79 JUMP                             ; [+1]
       80 LOADNIL                          R7
       81 SETTABLEKS                       R7 R6 K15 ["attachments"]
       83 GETTABLEKS                       R7 R2 K17 ["logUserMessageSent"]
       85 MOVE                             R8 R6
       86 CALL                             R7 1 0
       87 NEWCLOSURE                       R7 P1
       88 CAPTURE                          UPVAL U10
       89 CAPTURE                          VAL R0
       90 NEWCLOSURE                       R8 P2
       91 CAPTURE                          UPVAL U11
       92 NEWCLOSURE                       R9 P3
       93 CAPTURE                          UPVAL U11
       94 DUPTABLE                         R10 K22 [{["messageGuid"], ["sessionId"], ["threadId"], ["messageId"], ["contentId"] = , ["toolId"] = , ["assistantMode"]}]
       95 SETTABLEKS                       R0 R10 K9 ["messageGuid"]
       97 GETUPVAL                         R11 5
       98 SETTABLEKS                       R11 R10 K10 ["sessionId"]
      100 GETUPVAL                         R11 6
      101 SETTABLEKS                       R11 R10 K11 ["threadId"]
      103 SETTABLEKS                       R0 R10 K18 ["messageId"]
      105 GETUPVAL                         R11 8
      106 SETTABLEKS                       R11 R10 K14 ["assistantMode"]
      108 LOADB                            R11 0
      109 NEWCLOSURE                       R12 P4
      110 CAPTURE                          UPVAL U12
      111 CAPTURE                          REF R11
      112 CAPTURE                          UPVAL U13
      113 CAPTURE                          UPVAL U5
      114 CAPTURE                          UPVAL U6
      115 CAPTURE                          VAL R0
      116 GETUPVAL                         R13 14
      117 GETTABLEKS                       R13 R13 K23 ["createLLMSession"]
      119 DUPTABLE                         R14 K44 [{"showError", "messageGuid", "conversationSessionId", "threadId", "requestLLM", "systemMessage", "observer", "setInputEnabled", "onToolCall", "setModelQuality", "onPacketReceived", "maxToolCalls", "timeoutMs", "initialMessages", "requestStartTime", "tools", "apiKeys", "selectedModel", "messageId", "logRequestStop", "assistantMode", "compactedStore", "selectedProvider", "uiMessageCount", "getInterruptionMessages"}]
      120 SETTABLEKS                       R7 R14 K24 ["showError"]
      122 SETTABLEKS                       R0 R14 K9 ["messageGuid"]
      124 GETUPVAL                         R15 5
      125 SETTABLEKS                       R15 R14 K25 ["conversationSessionId"]
      127 GETUPVAL                         R15 6
      128 SETTABLEKS                       R15 R14 K11 ["threadId"]
      130 GETUPVAL                         R15 15
      131 SETTABLEKS                       R15 R14 K26 ["requestLLM"]
      133 GETUPVAL                         R15 16
      134 SETTABLEKS                       R15 R14 K27 ["systemMessage"]
      136 SETTABLEKS                       R1 R14 K28 ["observer"]
      138 SETTABLEKS                       R12 R14 K29 ["setInputEnabled"]
      140 GETUPVAL                         R16 17
      141 NEWCLOSURE                       R15 P5
      142 CAPTURE                          VAL R16
      143 CAPTURE                          UPVAL U3
      144 CAPTURE                          VAL R10
      145 CAPTURE                          VAL R9
      146 CAPTURE                          UPVAL U18
      147 CAPTURE                          UPVAL U19
      148 SETTABLEKS                       R15 R14 K30 ["onToolCall"]
      150 GETUPVAL                         R15 20
      151 GETTABLEKS                       R15 R15 K31 ["setModelQuality"]
      153 SETTABLEKS                       R15 R14 K31 ["setModelQuality"]
      155 SETTABLEKS                       R8 R14 K32 ["onPacketReceived"]
      157 GETUPVAL                         R15 21
      158 CALL                             R15 0 1
      159 SETTABLEKS                       R15 R14 K33 ["maxToolCalls"]
      161 GETUPVAL                         R15 22
      162 CALL                             R15 0 1
      163 SETTABLEKS                       R15 R14 K34 ["timeoutMs"]
      165 GETUPVAL                         R15 23
      166 SETTABLEKS                       R15 R14 K35 ["initialMessages"]
      168 GETUPVAL                         R15 24
      169 SETTABLEKS                       R15 R14 K36 ["requestStartTime"]
      171 GETUPVAL                         R15 25
      172 SETTABLEKS                       R15 R14 K37 ["tools"]
      174 SETTABLEKS                       R3 R14 K38 ["apiKeys"]
      176 SETTABLEKS                       R5 R14 K8 ["selectedModel"]
      178 SETTABLEKS                       R0 R14 K18 ["messageId"]
      180 GETUPVAL                         R15 26
      181 SETTABLEKS                       R15 R14 K39 ["logRequestStop"]
      183 GETUPVAL                         R15 8
      184 SETTABLEKS                       R15 R14 K14 ["assistantMode"]
      186 GETUPVAL                         R15 27
      187 SETTABLEKS                       R15 R14 K40 ["compactedStore"]
      189 GETUPVAL                         R15 4
      190 GETTABLEKS                       R15 R15 K41 ["selectedProvider"]
      192 SETTABLEKS                       R15 R14 K41 ["selectedProvider"]
      194 GETUPVAL                         R15 28
      195 SETTABLEKS                       R15 R14 K42 ["uiMessageCount"]
      197 GETUPVAL                         R16 29
      198 CALL                             R16 0 1
      199 JUMPIFNOT                        R16 ; [+2]
      200 GETUPVAL                         R15 30
      201 JUMP                             ; [+1]
      202 LOADNIL                          R15
      203 SETTABLEKS                       R15 R14 K43 ["getInterruptionMessages"]
      205 CALL                             R13 1 1
      206 DUPTABLE                         R14 K51 [{["threadId"], ["messages"], ["tools"], ["system"], ["messageGuid"], ["isFirstMessage"] = True, ["isAgenticMode"] = False, ["apiKeys"], ["selectedModel"], ["assistantMode"]}]
      207 GETUPVAL                         R15 6
      208 SETTABLEKS                       R15 R14 K11 ["threadId"]
      210 GETUPVAL                         R15 23
      211 SETTABLEKS                       R15 R14 K45 ["messages"]
      213 GETUPVAL                         R15 25
      214 SETTABLEKS                       R15 R14 K37 ["tools"]
      216 GETUPVAL                         R15 16
      217 SETTABLEKS                       R15 R14 K46 ["system"]
      219 SETTABLEKS                       R0 R14 K9 ["messageGuid"]
      221 SETTABLEKS                       R3 R14 K38 ["apiKeys"]
      223 SETTABLEKS                       R5 R14 K8 ["selectedModel"]
      225 GETUPVAL                         R15 8
      226 SETTABLEKS                       R15 R14 K14 ["assistantMode"]
      228 GETUPVAL                         R15 15
      229 MOVE                             R16 R14
      230 GETTABLEKS                       R17 R13 K52 ["processEvent"]
      232 CALL                             R15 2 0
      233 CLOSEUPVALS                      R11
      234 RETURN                           R0 0

PROTO_16:
        0 LOADNIL                          R1
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["selectedProvider"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K1 ["LLMProviderTypes"]
        7 GETTABLEKS                       R3 R3 K2 ["Studio"]
        9 JUMPIFEQ                         R2 R3 ; [+3]
       11 DUPTABLE                         R2 K5 [{["attachRawImageContent"] = True}]
       12 MOVE                             R1 R2
       13 LOADNIL                          R2
       14 LOADNIL                          R3
       15 LOADN                            R4 0
       16 GETUPVAL                         R5 2
       17 GETTABLEKS                       R5 R5 K6 ["get"]
       19 GETUPVAL                         R6 3
       20 CALL                             R5 1 1
       21 JUMPIFNOT                        R5 ; [+54]
       22 GETTABLEKS                       R6 R5 K7 ["summary"]
       24 JUMPIFNOT                        R6 ; [+51]
       25 GETTABLEKS                       R6 R5 K8 ["compactedUIMessageCount"]
       27 LOADN                            R7 0
       28 JUMPIFNOTLT                      R7 R6 ; [+47]
       30 GETUPVAL                         R6 4
       31 MOVE                             R7 R0
       32 GETTABLEKS                       R8 R5 K8 ["compactedUIMessageCount"]
       34 MOVE                             R9 R1
       35 CALL                             R6 3 1
       36 MOVE                             R3 R6
       37 GETTABLEKS                       R4 R3 K9 ["uiMessageCount"]
       39 GETUPVAL                         R6 5
       40 GETTABLEKS                       R6 R6 K10 ["reconstructFromStore"]
       42 GETTABLEKS                       R7 R3 K11 ["messages"]
       44 MOVE                             R8 R5
       45 DUPTABLE                         R9 K14 [{"threadId", "selectedModel"}]
       46 GETUPVAL                         R10 3
       47 SETTABLEKS                       R10 R9 K12 ["threadId"]
       49 GETUPVAL                         R10 0
       50 GETTABLEKS                       R10 R10 K13 ["selectedModel"]
       52 SETTABLEKS                       R10 R9 K13 ["selectedModel"]
       54 CALL                             R6 3 1
       55 JUMPIFNOT                        R6 ; [+11]
       56 GETTABLEKS                       R2 R6 K15 ["compactedStore"]
       58 DUPTABLE                         R7 K16 [{"messages", "uiMessageCount"}]
       59 GETTABLEKS                       R8 R6 K11 ["messages"]
       61 SETTABLEKS                       R8 R7 K11 ["messages"]
       63 SETTABLEKS                       R4 R7 K9 ["uiMessageCount"]
       65 MOVE                             R3 R7
       66 JUMP                             ; [+17]
       67 GETUPVAL                         R7 4
       68 MOVE                             R8 R0
       69 LOADNIL                          R9
       70 MOVE                             R10 R1
       71 CALL                             R7 3 1
       72 MOVE                             R3 R7
       73 GETTABLEKS                       R4 R3 K9 ["uiMessageCount"]
       75 JUMP                             ; [+8]
       76 GETUPVAL                         R6 4
       77 MOVE                             R7 R0
       78 LOADNIL                          R8
       79 MOVE                             R9 R1
       80 CALL                             R6 3 1
       81 MOVE                             R3 R6
       82 GETTABLEKS                       R4 R3 K9 ["uiMessageCount"]
       84 JUMPIF                           R2 ; [+131]
       85 GETUPVAL                         R6 5
       86 GETTABLEKS                       R6 R6 K17 ["shouldCompact"]
       88 GETTABLEKS                       R7 R3 K11 ["messages"]
       90 DUPTABLE                         R8 K20 [{["isSubagent"] = False, ["selectedModel"]}]
       91 GETUPVAL                         R9 0
       92 GETTABLEKS                       R9 R9 K13 ["selectedModel"]
       94 SETTABLEKS                       R9 R8 K13 ["selectedModel"]
       96 CALL                             R6 2 1
       97 JUMPIFNOT                        R6 ; [+118]
       98 GETUPVAL                         R6 6
       99 GETTABLEKS                       R6 R6 K21 ["setLastPacketTime"]
      101 GETIMPORT                        R7 K24 [os.clock]
      103 CALL                             R7 0 -1
      104 CALL                             R6 -1 0
      105 GETUPVAL                         R6 7
      106 DUPTABLE                         R7 K27 [{["role"] = "assistant"}]
      107 CALL                             R6 1 1
      108 GETUPVAL                         R7 8
      109 DUPTABLE                         R8 K30 [{"messageId", "content"}]
      110 SETTABLEKS                       R6 R8 K28 ["messageId"]
      112 DUPTABLE                         R9 K33 [{["type"], ["summary"], ["generating"] = True}]
      113 GETUPVAL                         R10 9
      114 GETTABLEKS                       R10 R10 K34 ["Type"]
      116 SETTABLEKS                       R10 R9 K31 ["type"]
      118 GETUPVAL                         R10 10
      119 LOADK                            R12 K35 ["Compaction"]
      120 LOADK                            R13 K36 ["InProgress"]
      121 NAMECALL                         R10 R10 K37 ["getText"]
      123 CALL                             R10 3 1
      124 SETTABLEKS                       R10 R9 K7 ["summary"]
      126 SETTABLEKS                       R9 R8 K29 ["content"]
      128 CALL                             R7 1 1
      129 NEWTABLE                         R8 0 0
      131 NEWTABLE                         R9 0 3
      133 GETUPVAL                         R12 1
      134 GETTABLEKS                       R12 R12 K38 ["CLAUDE_API_KEY"]
      136 GETUPVAL                         R13 1
      137 GETTABLEKS                       R13 R13 K39 ["GEMINI_API_KEY"]
      139 GETUPVAL                         R14 1
      140 GETTABLEKS                       R14 R14 K40 ["OPENAI_API_KEY"]
      142 SETLIST                          R9 R12 3 [1]
      144 LOADNIL                          R10
      145 LOADNIL                          R11
      146 FORGPREP                         R9
      147 GETUPVAL                         R14 11
      148 GETTABLEKS                       R14 R14 K41 ["getSetting"]
      150 MOVE                             R15 R13
      151 CALL                             R14 1 1
      152 JUMPIFNOT                        R14 ; [+3]
      153 JUMPIFEQKS                       R14 K42 [""] ; [+2]
      155 SETTABLE                         R14 R8 R13
      156 FORGLOOP                         R9 2 ; [-10]
      158 GETUPVAL                         R9 5
      159 GETTABLEKS                       R9 R9 K43 ["compact"]
      161 GETTABLEKS                       R10 R3 K11 ["messages"]
      163 DUPTABLE                         R11 K46 [{"requestLLM", "threadId", "compactedStore", "selectedModel", "selectedProvider", "apiKeys", "uiMessageCount"}]
      164 GETUPVAL                         R12 12
      165 SETTABLEKS                       R12 R11 K44 ["requestLLM"]
      167 GETUPVAL                         R12 3
      168 SETTABLEKS                       R12 R11 K12 ["threadId"]
      170 SETTABLEKS                       R5 R11 K15 ["compactedStore"]
      172 GETUPVAL                         R12 0
      173 GETTABLEKS                       R12 R12 K13 ["selectedModel"]
      175 SETTABLEKS                       R12 R11 K13 ["selectedModel"]
      177 GETUPVAL                         R12 0
      178 GETTABLEKS                       R12 R12 K0 ["selectedProvider"]
      180 SETTABLEKS                       R12 R11 K0 ["selectedProvider"]
      182 SETTABLEKS                       R8 R11 K45 ["apiKeys"]
      184 SETTABLEKS                       R4 R11 K9 ["uiMessageCount"]
      186 CALL                             R9 2 1
      187 DUPTABLE                         R10 K16 [{"messages", "uiMessageCount"}]
      188 GETTABLEKS                       R11 R9 K11 ["messages"]
      190 SETTABLEKS                       R11 R10 K11 ["messages"]
      192 SETTABLEKS                       R4 R10 K9 ["uiMessageCount"]
      194 MOVE                             R3 R10
      195 GETTABLEKS                       R2 R9 K15 ["compactedStore"]
      197 JUMPIFNOT                        R7 ; [+11]
      198 GETUPVAL                         R10 13
      199 DUPTABLE                         R11 K49 [{"messageId", "contentId", "transformFn"}]
      200 SETTABLEKS                       R6 R11 K28 ["messageId"]
      202 SETTABLEKS                       R7 R11 K47 ["contentId"]
      204 DUPCLOSURE                       R12 K50 [PROTO_9]
      205 CAPTURE                          UPVAL U10
      206 SETTABLEKS                       R12 R11 K48 ["transformFn"]
      208 CALL                             R10 1 0
      209 GETUPVAL                         R10 6
      210 GETTABLEKS                       R10 R10 K21 ["setLastPacketTime"]
      212 GETIMPORT                        R11 K24 [os.clock]
      214 CALL                             R11 0 -1
      215 CALL                             R10 -1 0
      216 GETTABLEKS                       R6 R3 K11 ["messages"]
      218 GETUPVAL                         R7 14
      219 CALL                             R7 0 1
      220 JUMPIFNOT                        R7 ; [+4]
      221 GETIMPORT                        R7 K52 [print]
      223 LOADK                            R8 K53 ["Preparing message for response contents..."]
      224 CALL                             R7 1 0
      225 NEWCLOSURE                       R7 P1
      226 CAPTURE                          UPVAL U15
      227 CAPTURE                          UPVAL U16
      228 CAPTURE                          UPVAL U11
      229 CAPTURE                          UPVAL U1
      230 CAPTURE                          UPVAL U0
      231 CAPTURE                          UPVAL U17
      232 CAPTURE                          UPVAL U3
      233 CAPTURE                          UPVAL U18
      234 CAPTURE                          UPVAL U19
      235 CAPTURE                          UPVAL U20
      236 CAPTURE                          UPVAL U21
      237 CAPTURE                          UPVAL U6
      238 CAPTURE                          UPVAL U22
      239 CAPTURE                          UPVAL U23
      240 CAPTURE                          UPVAL U24
      241 CAPTURE                          UPVAL U12
      242 CAPTURE                          UPVAL U25
      243 CAPTURE                          UPVAL U26
      244 CAPTURE                          UPVAL U27
      245 CAPTURE                          UPVAL U28
      246 CAPTURE                          UPVAL U29
      247 CAPTURE                          UPVAL U30
      248 CAPTURE                          UPVAL U31
      249 CAPTURE                          VAL R6
      250 CAPTURE                          UPVAL U32
      251 CAPTURE                          UPVAL U33
      252 CAPTURE                          UPVAL U34
      253 CAPTURE                          REF R2
      254 CAPTURE                          REF R4
      255 CAPTURE                          UPVAL U35
      256 CAPTURE                          UPVAL U36
      257 GETUPVAL                         R8 37
      258 CALL                             R8 0 1
      259 JUMPIFNOT                        R8 ; [+6]
      260 GETUPVAL                         R8 38
      261 JUMPIFNOT                        R8 ; [+4]
      262 MOVE                             R8 R7
      263 GETUPVAL                         R9 38
      264 CALL                             R8 1 0
      265 JUMP                             ; [+8]
      266 GETUPVAL                         R8 39
      267 GETUPVAL                         R9 1
      268 GETTABLEKS                       R9 R9 K54 ["ROLE"]
      270 GETTABLEKS                       R9 R9 K55 ["Assistant"]
      272 MOVE                             R10 R7
      273 CALL                             R8 2 0
      274 CLOSEUPVALS                      R2
      275 RETURN                           R0 0

PROTO_17:
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
       50 JUMPIFNOT                        R5 ; [+22]
       51 GETUPVAL                         R5 6
       52 DUPTABLE                         R6 K16 [{["errorType"] = "client_error"}]
       53 CALL                             R5 1 0
       54 GETUPVAL                         R5 7
       55 GETTABLEKS                       R5 R5 K17 ["setInputEnabled"]
       57 LOADB                            R6 1
       58 CALL                             R5 1 0
       59 GETIMPORT                        R5 K19 [error]
       61 LOADK                            R7 K20 ["Failed to get tools list with error: %*"]
       62 GETUPVAL                         R9 8
       63 MOVE                             R11 R4
       64 NAMECALL                         R9 R9 K21 ["JSONEncode"]
       66 CALL                             R9 2 1
       67 NAMECALL                         R7 R7 K22 ["format"]
       69 CALL                             R7 2 1
       70 MOVE                             R6 R7
       71 CALL                             R5 1 0
       72 RETURN                           R0 0
       73 LOADNIL                          R5
       74 GETUPVAL                         R6 9
       75 GETTABLEKS                       R7 R4 K23 ["result"]
       77 GETTABLEKS                       R7 R7 K24 ["tools"]
       79 CALL                             R6 1 1
       80 GETUPVAL                         R7 10
       81 MOVE                             R8 R6
       82 CALL                             R7 1 1
       83 MOVE                             R5 R7
       84 GETUPVAL                         R7 11
       85 GETUPVAL                         R9 1
       86 GETTABLEKS                       R9 R9 K3 ["selectedProvider"]
       88 GETUPVAL                         R10 2
       89 GETTABLEKS                       R10 R10 K4 ["LLMProviderTypes"]
       91 GETTABLEKS                       R10 R10 K5 ["Studio"]
       93 JUMPIFNOTEQ                      R9 R10 ; [+2]
       95 LOADB                            R8 0 +1
       96 LOADB                            R8 1
       97 JUMPIFNOT                        R8 ; [+31]
       98 GETUPVAL                         R9 12
       99 DUPTABLE                         R10 K29 [{["environment"], ["tools"], ["model"], [4], ["isDebugMode"] = True}]
      100 GETUPVAL                         R11 13
      101 GETTABLEKS                       R11 R11 K30 ["get"]
      103 CALL                             R11 0 1
      104 SETTABLEKS                       R11 R10 K25 ["environment"]
      106 GETTABLEKS                       R11 R4 K23 ["result"]
      108 GETTABLEKS                       R11 R11 K24 ["tools"]
      110 SETTABLEKS                       R11 R10 K24 ["tools"]
      112 GETUPVAL                         R11 1
      113 GETTABLEKS                       R11 R11 K31 ["selectedModel"]
      115 SETTABLEKS                       R11 R10 K26 ["model"]
      117 GETUPVAL                         R11 0
      118 SETTABLEKS                       R11 R10 K0 ["assistantMode"]
      120 CALL                             R9 1 2
      121 JUMPIFNOT                        R9 ; [+2]
      122 MOVE                             R7 R10
      123 JUMP                             ; [+5]
      124 GETIMPORT                        R11 K33 [warn]
      126 LOADK                            R12 K34 ["Failed to fetch BYOK system prompt, using fallback:"]
      127 MOVE                             R13 R10
      128 CALL                             R11 2 0
      129 GETUPVAL                         R9 14
      130 JUMPIFNOT                        R9 ; [+34]
      131 DUPTABLE                         R9 K35 [{"tools"}]
      132 GETTABLEKS                       R10 R4 K23 ["result"]
      134 GETTABLEKS                       R10 R10 K24 ["tools"]
      136 SETTABLEKS                       R10 R9 K24 ["tools"]
      138 GETUPVAL                         R10 14
      139 MOVE                             R11 R9
      140 CALL                             R10 1 3
      141 FORGPREP                         R10
      142 GETUPVAL                         R15 15
      143 DUPTABLE                         R16 K39 [{["role"] = "user", ["hidden"] = True}]
      144 CALL                             R15 1 1
      145 GETUPVAL                         R16 16
      146 DUPTABLE                         R17 K42 [{"messageId", "content"}]
      147 SETTABLEKS                       R15 R17 K40 ["messageId"]
      149 DUPTABLE                         R18 K45 [{"type", "text"}]
      150 GETUPVAL                         R19 17
      151 GETTABLEKS                       R19 R19 K46 ["Type"]
      153 SETTABLEKS                       R19 R18 K43 ["type"]
      155 GETUPVAL                         R19 18
      156 MOVE                             R20 R14
      157 CALL                             R19 1 1
      158 SETTABLEKS                       R19 R18 K44 ["text"]
      160 SETTABLEKS                       R18 R17 K41 ["content"]
      162 CALL                             R16 1 0
      163 FORGLOOP                         R10 2 ; [-22]
      165 GETUPVAL                         R9 19
      166 CALL                             R9 0 1
      167 JUMPIFNOT                        R9 ; [+4]
      168 GETIMPORT                        R9 K48 [print]
      170 LOADK                            R10 K49 ["Reading conversation history..."]
      171 CALL                             R9 1 0
      172 GETUPVAL                         R9 20
      173 NEWCLOSURE                       R10 P0
      174 CAPTURE                          UPVAL U1
      175 CAPTURE                          UPVAL U2
      176 CAPTURE                          UPVAL U21
      177 CAPTURE                          UPVAL U22
      178 CAPTURE                          UPVAL U23
      179 CAPTURE                          UPVAL U24
      180 CAPTURE                          UPVAL U25
      181 CAPTURE                          UPVAL U15
      182 CAPTURE                          UPVAL U16
      183 CAPTURE                          UPVAL U26
      184 CAPTURE                          UPVAL U27
      185 CAPTURE                          UPVAL U28
      186 CAPTURE                          UPVAL U29
      187 CAPTURE                          UPVAL U30
      188 CAPTURE                          UPVAL U19
      189 CAPTURE                          UPVAL U31
      190 CAPTURE                          UPVAL U13
      191 CAPTURE                          UPVAL U32
      192 CAPTURE                          UPVAL U33
      193 CAPTURE                          UPVAL U0
      194 CAPTURE                          UPVAL U34
      195 CAPTURE                          UPVAL U6
      196 CAPTURE                          UPVAL U7
      197 CAPTURE                          UPVAL U35
      198 CAPTURE                          UPVAL U36
      199 CAPTURE                          REF R7
      200 CAPTURE                          VAL R0
      201 CAPTURE                          UPVAL U37
      202 CAPTURE                          UPVAL U38
      203 CAPTURE                          UPVAL U39
      204 CAPTURE                          UPVAL U40
      205 CAPTURE                          UPVAL U41
      206 CAPTURE                          UPVAL U42
      207 CAPTURE                          REF R5
      208 CAPTURE                          UPVAL U43
      209 CAPTURE                          UPVAL U3
      210 CAPTURE                          UPVAL U44
      211 CAPTURE                          UPVAL U45
      212 CAPTURE                          UPVAL U46
      213 CAPTURE                          UPVAL U47
      214 CALL                             R9 1 0
      215 CLOSEUPVALS                      R5
      216 RETURN                           R0 0

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
       49 CAPTURE                          UPVAL U48
       50 CALL                             R0 1 0
       51 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+6]
        3 GETUPVAL                         R1 1
        4 JUMPIFNOT                        R1 ; [+4]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K0 ["cancelSession"]
        8 CALL                             R1 0 0
        9 GETIMPORT                        R1 K3 [task.spawn]
       11 NEWCLOSURE                       R2 P0
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          UPVAL U3
       14 CAPTURE                          UPVAL U4
       15 CAPTURE                          UPVAL U5
       16 CAPTURE                          UPVAL U6
       17 CAPTURE                          UPVAL U7
       18 CAPTURE                          UPVAL U8
       19 CAPTURE                          UPVAL U9
       20 CAPTURE                          UPVAL U10
       21 CAPTURE                          UPVAL U11
       22 CAPTURE                          UPVAL U12
       23 CAPTURE                          UPVAL U13
       24 CAPTURE                          UPVAL U14
       25 CAPTURE                          UPVAL U15
       26 CAPTURE                          UPVAL U16
       27 CAPTURE                          UPVAL U17
       28 CAPTURE                          UPVAL U18
       29 CAPTURE                          UPVAL U19
       30 CAPTURE                          UPVAL U20
       31 CAPTURE                          UPVAL U21
       32 CAPTURE                          UPVAL U22
       33 CAPTURE                          UPVAL U23
       34 CAPTURE                          UPVAL U24
       35 CAPTURE                          UPVAL U25
       36 CAPTURE                          UPVAL U26
       37 CAPTURE                          UPVAL U27
       38 CAPTURE                          UPVAL U28
       39 CAPTURE                          UPVAL U29
       40 CAPTURE                          UPVAL U30
       41 CAPTURE                          UPVAL U31
       42 CAPTURE                          UPVAL U32
       43 CAPTURE                          UPVAL U33
       44 CAPTURE                          UPVAL U34
       45 CAPTURE                          UPVAL U35
       46 CAPTURE                          UPVAL U36
       47 CAPTURE                          UPVAL U37
       48 CAPTURE                          UPVAL U38
       49 CAPTURE                          UPVAL U39
       50 CAPTURE                          UPVAL U40
       51 CAPTURE                          UPVAL U41
       52 CAPTURE                          UPVAL U42
       53 CAPTURE                          UPVAL U43
       54 CAPTURE                          UPVAL U44
       55 CAPTURE                          UPVAL U45
       56 CAPTURE                          UPVAL U46
       57 CAPTURE                          UPVAL U47
       58 CAPTURE                          UPVAL U48
       59 CAPTURE                          VAL R0
       60 CAPTURE                          UPVAL U49
       61 CALL                             R1 1 0
       62 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["setInputEnabled"]
        3 MOVE                             R2 R0
        4 DUPTABLE                         R3 K3 [{["focus"] = True}]
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_21:
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
       65 JUMPIF                           R2 ; [+88]
       66 GETUPVAL                         R6 4
       67 DUPTABLE                         R7 K21 [{["role"] = "user", ["hidden"]}]
       68 SETTABLEKS                       R3 R7 K14 ["hidden"]
       70 CALL                             R6 1 1
       71 GETTABLEKS                       R7 R0 K22 ["images"]
       73 JUMPIFNOT                        R7 ; [+61]
       74 GETTABLEKS                       R7 R0 K22 ["images"]
       76 LOADNIL                          R8
       77 LOADNIL                          R9
       78 FORGPREP                         R7
       79 GETTABLEKS                       R12 R11 K23 ["data"]
       81 LENGTH                           R13 R12
       82 LOADN                            R15 10
       83 JUMPIFNOTLT                      R15 R13 ; [+10]
       85 SUBK                             R16 R13 K24 [9]
       86 FASTCALL3                        STRING_SUB R12 R16 R13
       88 MOVE                             R15 R12
       89 MOVE                             R17 R13
       90 GETIMPORT                        R14 K27 [string.sub]
       92 CALL                             R14 3 1
       93 JUMP                             ; [+1]
       94 MOVE                             R14 R12
       95 DUPTABLE                         R17 K31 [{"imageDataSuffix", "imageDataSize", "mimeType"}]
       96 SETTABLEKS                       R14 R17 K28 ["imageDataSuffix"]
       98 SETTABLEKS                       R13 R17 K29 ["imageDataSize"]
      100 GETTABLEKS                       R18 R11 K30 ["mimeType"]
      102 SETTABLEKS                       R18 R17 K30 ["mimeType"]
      104 FASTCALL2                        TABLE_INSERT R5 R17 ; [+4]
      106 MOVE                             R16 R5
      107 GETIMPORT                        R15 K34 [table.insert]
      109 CALL                             R15 2 0
      110 FORGLOOP                         R7 2 ; [-32]
      112 GETTABLEKS                       R8 R0 K22 ["images"]
      114 LENGTH                           R7 R8
      115 LOADN                            R8 0
      116 JUMPIFNOTLT                      R8 R7 ; [+18]
      118 DUPTABLE                         R7 K38 [{["type"], ["imageContents"], ["expanded"] = False}]
      119 GETUPVAL                         R8 5
      120 GETTABLEKS                       R8 R8 K39 ["Type"]
      122 SETTABLEKS                       R8 R7 K35 ["type"]
      124 GETTABLEKS                       R8 R0 K22 ["images"]
      126 SETTABLEKS                       R8 R7 K36 ["imageContents"]
      128 GETUPVAL                         R8 6
      129 DUPTABLE                         R9 K42 [{"messageId", "content"}]
      130 SETTABLEKS                       R6 R9 K40 ["messageId"]
      132 SETTABLEKS                       R7 R9 K41 ["content"]
      134 CALL                             R8 1 0
      135 LENGTH                           R7 R1
      136 LOADN                            R8 0
      137 JUMPIFNOTLT                      R8 R7 ; [+16]
      139 DUPTABLE                         R7 K43 [{"type", "text"}]
      140 GETUPVAL                         R8 7
      141 GETTABLEKS                       R8 R8 K39 ["Type"]
      143 SETTABLEKS                       R8 R7 K35 ["type"]
      145 SETTABLEKS                       R1 R7 K11 ["text"]
      147 GETUPVAL                         R8 6
      148 DUPTABLE                         R9 K42 [{"messageId", "content"}]
      149 SETTABLEKS                       R6 R9 K40 ["messageId"]
      151 SETTABLEKS                       R7 R9 K41 ["content"]
      153 CALL                             R8 1 0
      154 GETUPVAL                         R6 8
      155 CALL                             R6 0 1
      156 JUMPIFNOT                        R6 ; [+5]
      157 GETIMPORT                        R6 K45 [print]
      159 LOADK                            R7 K46 ["About to send message:"]
      160 MOVE                             R8 R1
      161 CALL                             R6 2 0
      162 GETUPVAL                         R6 9
      163 GETUPVAL                         R7 10
      164 DUPCLOSURE                       R8 K47 [PROTO_8]
      165 CAPTURE                          UPVAL U11
      166 CALL                             R6 2 0
      167 NEWCLOSURE                       R6 P1
      168 CAPTURE                          UPVAL U1
      169 CAPTURE                          UPVAL U12
      170 CAPTURE                          UPVAL U13
      171 CAPTURE                          UPVAL U14
      172 CAPTURE                          UPVAL U15
      173 CAPTURE                          UPVAL U16
      174 CAPTURE                          UPVAL U17
      175 CAPTURE                          UPVAL U18
      176 CAPTURE                          UPVAL U19
      177 CAPTURE                          UPVAL U20
      178 CAPTURE                          UPVAL U3
      179 CAPTURE                          UPVAL U21
      180 CAPTURE                          UPVAL U22
      181 CAPTURE                          UPVAL U23
      182 CAPTURE                          UPVAL U24
      183 CAPTURE                          UPVAL U25
      184 CAPTURE                          UPVAL U26
      185 CAPTURE                          UPVAL U27
      186 CAPTURE                          UPVAL U4
      187 CAPTURE                          UPVAL U6
      188 CAPTURE                          UPVAL U7
      189 CAPTURE                          UPVAL U28
      190 CAPTURE                          UPVAL U8
      191 CAPTURE                          UPVAL U29
      192 CAPTURE                          UPVAL U30
      193 CAPTURE                          UPVAL U10
      194 CAPTURE                          UPVAL U31
      195 CAPTURE                          UPVAL U32
      196 CAPTURE                          UPVAL U2
      197 CAPTURE                          UPVAL U33
      198 CAPTURE                          UPVAL U34
      199 CAPTURE                          UPVAL U35
      200 CAPTURE                          UPVAL U36
      201 CAPTURE                          UPVAL U37
      202 CAPTURE                          UPVAL U38
      203 CAPTURE                          UPVAL U39
      204 CAPTURE                          VAL R1
      205 CAPTURE                          VAL R5
      206 CAPTURE                          UPVAL U40
      207 CAPTURE                          UPVAL U41
      208 CAPTURE                          UPVAL U42
      209 CAPTURE                          UPVAL U43
      210 CAPTURE                          UPVAL U44
      211 CAPTURE                          UPVAL U45
      212 CAPTURE                          UPVAL U46
      213 CAPTURE                          VAL R4
      214 CAPTURE                          UPVAL U47
      215 CAPTURE                          UPVAL U48
      216 CAPTURE                          UPVAL U49
      217 CAPTURE                          UPVAL U50
      218 NEWCLOSURE                       R7 P2
      219 CAPTURE                          UPVAL U3
      220 GETUPVAL                         R8 51
      221 DUPTABLE                         R9 K50 [{"prompt", "images", "setInputEnabled", "onContinueWithLLM"}]
      222 SETTABLEKS                       R1 R9 K48 ["prompt"]
      224 GETTABLEKS                       R10 R0 K22 ["images"]
      226 SETTABLEKS                       R10 R9 K22 ["images"]
      228 SETTABLEKS                       R7 R9 K10 ["setInputEnabled"]
      230 SETTABLEKS                       R6 R9 K49 ["onContinueWithLLM"]
      232 CALL                             R8 1 1
      233 JUMPIFNOT                        R8 ; [+1]
      234 RETURN                           R0 0
      235 GETUPVAL                         R9 1
      236 CALL                             R9 0 1
      237 JUMPIFNOT                        R9 ; [+6]
      238 GETUPVAL                         R9 12
      239 JUMPIFNOT                        R9 ; [+4]
      240 GETUPVAL                         R9 12
      241 GETTABLEKS                       R9 R9 K51 ["cancelSession"]
      243 CALL                             R9 0 0
      244 GETIMPORT                        R9 K54 [task.spawn]
      246 LOADNIL                          R11
      247 NEWCLOSURE                       R10 P3
      248 CAPTURE                          UPVAL U13
      249 CAPTURE                          UPVAL U14
      250 CAPTURE                          UPVAL U15
      251 CAPTURE                          UPVAL U16
      252 CAPTURE                          UPVAL U17
      253 CAPTURE                          UPVAL U18
      254 CAPTURE                          UPVAL U19
      255 CAPTURE                          UPVAL U20
      256 CAPTURE                          UPVAL U3
      257 CAPTURE                          UPVAL U21
      258 CAPTURE                          UPVAL U22
      259 CAPTURE                          UPVAL U23
      260 CAPTURE                          UPVAL U24
      261 CAPTURE                          UPVAL U25
      262 CAPTURE                          UPVAL U26
      263 CAPTURE                          UPVAL U27
      264 CAPTURE                          UPVAL U4
      265 CAPTURE                          UPVAL U6
      266 CAPTURE                          UPVAL U7
      267 CAPTURE                          UPVAL U28
      268 CAPTURE                          UPVAL U8
      269 CAPTURE                          UPVAL U29
      270 CAPTURE                          UPVAL U30
      271 CAPTURE                          UPVAL U10
      272 CAPTURE                          UPVAL U31
      273 CAPTURE                          UPVAL U32
      274 CAPTURE                          UPVAL U2
      275 CAPTURE                          UPVAL U33
      276 CAPTURE                          UPVAL U34
      277 CAPTURE                          UPVAL U35
      278 CAPTURE                          UPVAL U36
      279 CAPTURE                          UPVAL U37
      280 CAPTURE                          UPVAL U38
      281 CAPTURE                          UPVAL U39
      282 CAPTURE                          VAL R1
      283 CAPTURE                          VAL R5
      284 CAPTURE                          UPVAL U40
      285 CAPTURE                          UPVAL U41
      286 CAPTURE                          UPVAL U42
      287 CAPTURE                          UPVAL U43
      288 CAPTURE                          UPVAL U44
      289 CAPTURE                          UPVAL U45
      290 CAPTURE                          UPVAL U46
      291 CAPTURE                          VAL R4
      292 CAPTURE                          UPVAL U47
      293 CAPTURE                          UPVAL U48
      294 CAPTURE                          UPVAL U49
      295 CAPTURE                          VAL R11
      296 CAPTURE                          UPVAL U50
      297 CALL                             R9 1 0
      298 RETURN                           R0 0

PROTO_22:
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
       41 GETUPVAL                         R18 19
       42 CALL                             R18 0 1
       43 GETUPVAL                         R19 20
       44 GETTABLEKS                       R19 R19 K0 ["useContext"]
       46 GETUPVAL                         R20 21
       47 GETTABLEKS                       R20 R20 K1 ["Context"]
       49 CALL                             R19 1 1
       50 GETTABLEKS                       R20 R19 K2 ["sessionId"]
       52 GETUPVAL                         R21 20
       53 GETTABLEKS                       R21 R21 K0 ["useContext"]
       55 GETUPVAL                         R22 22
       56 GETTABLEKS                       R22 R22 K1 ["Context"]
       58 CALL                             R21 1 1
       59 GETUPVAL                         R22 20
       60 GETTABLEKS                       R22 R22 K0 ["useContext"]
       62 GETUPVAL                         R23 23
       63 GETTABLEKS                       R23 R23 K1 ["Context"]
       65 CALL                             R22 1 1
       66 GETUPVAL                         R23 24
       67 CALL                             R23 0 1
       68 GETUPVAL                         R24 20
       69 GETTABLEKS                       R24 R24 K0 ["useContext"]
       71 GETUPVAL                         R25 25
       72 GETTABLEKS                       R25 R25 K1 ["Context"]
       74 CALL                             R24 1 1
       75 GETUPVAL                         R25 20
       76 GETTABLEKS                       R25 R25 K0 ["useContext"]
       78 GETUPVAL                         R26 26
       79 GETTABLEKS                       R26 R26 K1 ["Context"]
       81 CALL                             R25 1 1
       82 LOADNIL                          R26
       83 GETUPVAL                         R27 27
       84 CALL                             R27 0 1
       85 JUMPIFNOT                        R27 ; [+8]
       86 GETUPVAL                         R27 20
       87 GETTABLEKS                       R27 R27 K0 ["useContext"]
       89 GETUPVAL                         R28 28
       90 GETTABLEKS                       R28 R28 K1 ["Context"]
       92 CALL                             R27 1 1
       93 MOVE                             R26 R27
       94 GETUPVAL                         R27 29
       95 CALL                             R27 0 1
       96 LOADNIL                          R28
       97 LOADNIL                          R29
       98 GETUPVAL                         R30 30
       99 CALL                             R30 0 1
      100 JUMPIFNOT                        R30 ; [+6]
      101 GETUPVAL                         R30 31
      102 CALL                             R30 0 1
      103 GETTABLEKS                       R28 R30 K3 ["isMultiPlayerClientAgent"]
      105 GETTABLEKS                       R29 R30 K4 ["isMultiPlayerClientAgentRunning"]
      107 NEWCLOSURE                       R30 P0
      108 CAPTURE                          REF R28
      109 CAPTURE                          UPVAL U32
      110 NEWCLOSURE                       R31 P1
      111 CAPTURE                          VAL R21
      112 CAPTURE                          UPVAL U27
      113 CAPTURE                          VAL R25
      114 CAPTURE                          VAL R0
      115 CAPTURE                          VAL R1
      116 CAPTURE                          UPVAL U33
      117 CAPTURE                          VAL R2
      118 CAPTURE                          UPVAL U34
      119 CAPTURE                          UPVAL U35
      120 CAPTURE                          VAL R18
      121 CAPTURE                          VAL R17
      122 CAPTURE                          UPVAL U36
      123 CAPTURE                          REF R26
      124 CAPTURE                          VAL R5
      125 CAPTURE                          VAL R27
      126 CAPTURE                          VAL R24
      127 CAPTURE                          UPVAL U37
      128 CAPTURE                          UPVAL U30
      129 CAPTURE                          REF R28
      130 CAPTURE                          REF R29
      131 CAPTURE                          VAL R13
      132 CAPTURE                          UPVAL U38
      133 CAPTURE                          UPVAL U39
      134 CAPTURE                          VAL R9
      135 CAPTURE                          VAL R7
      136 CAPTURE                          UPVAL U40
      137 CAPTURE                          UPVAL U41
      138 CAPTURE                          VAL R8
      139 CAPTURE                          UPVAL U42
      140 CAPTURE                          VAL R11
      141 CAPTURE                          UPVAL U43
      142 CAPTURE                          UPVAL U44
      143 CAPTURE                          UPVAL U45
      144 CAPTURE                          UPVAL U46
      145 CAPTURE                          UPVAL U47
      146 CAPTURE                          VAL R23
      147 CAPTURE                          VAL R6
      148 CAPTURE                          VAL R3
      149 CAPTURE                          VAL R14
      150 CAPTURE                          VAL R20
      151 CAPTURE                          VAL R15
      152 CAPTURE                          VAL R10
      153 CAPTURE                          UPVAL U48
      154 CAPTURE                          UPVAL U49
      155 CAPTURE                          VAL R22
      156 CAPTURE                          UPVAL U50
      157 CAPTURE                          UPVAL U51
      158 CAPTURE                          VAL R16
      159 CAPTURE                          VAL R30
      160 CAPTURE                          UPVAL U52
      161 CAPTURE                          VAL R4
      162 CAPTURE                          VAL R12
      163 CLOSEUPVALS                      R26
      164 RETURN                           R31 1

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
      364 GETTABLEKS                       R48 R48 K68 ["FFlagAssistantSupportSlashCommandCancellation"]
      366 CALL                             R47 1 1
      367 GETIMPORT                        R48 K9 [require]
      369 GETTABLEKS                       R49 R0 K65 ["Flags"]
      371 GETTABLEKS                       R49 R49 K69 ["FFlagAssistantUserSkills"]
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
      428 DUPCLOSURE                       R59 K81 [PROTO_22]
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
      448 CAPTURE                          VAL R28
      449 CAPTURE                          VAL R14
      450 CAPTURE                          VAL R15
      451 CAPTURE                          VAL R4
      452 CAPTURE                          VAL R10
      453 CAPTURE                          VAL R40
      454 CAPTURE                          VAL R7
      455 CAPTURE                          VAL R12
      456 CAPTURE                          VAL R47
      457 CAPTURE                          VAL R5
      458 CAPTURE                          VAL R26
      459 CAPTURE                          VAL R46
      460 CAPTURE                          VAL R38
      461 CAPTURE                          VAL R11
      462 CAPTURE                          VAL R54
      463 CAPTURE                          VAL R18
      464 CAPTURE                          VAL R49
      465 CAPTURE                          VAL R23
      466 CAPTURE                          VAL R20
      467 CAPTURE                          VAL R1
      468 CAPTURE                          VAL R56
      469 CAPTURE                          VAL R53
      470 CAPTURE                          VAL R3
      471 CAPTURE                          VAL R55
      472 CAPTURE                          VAL R2
      473 CAPTURE                          VAL R22
      474 CAPTURE                          VAL R21
      475 CAPTURE                          VAL R17
      476 CAPTURE                          VAL R19
      477 CAPTURE                          VAL R16
      478 CAPTURE                          VAL R13
      479 CAPTURE                          VAL R51
      480 CAPTURE                          VAL R50
      481 CAPTURE                          VAL R48
      482 RETURN                           R59 1
