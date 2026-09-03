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
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K4 ["streaming"]
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
      158 GETTABLEKS                       R15 R15 K45 ["FIntMCPAssistantMaxToolCalls"]
      160 SETTABLEKS                       R15 R14 K33 ["maxToolCalls"]
      162 GETUPVAL                         R15 21
      163 GETTABLEKS                       R15 R15 K46 ["FIntAssistantProcessEventTimeoutMS"]
      165 SETTABLEKS                       R15 R14 K34 ["timeoutMs"]
      167 GETUPVAL                         R15 22
      168 SETTABLEKS                       R15 R14 K35 ["initialMessages"]
      170 GETUPVAL                         R15 23
      171 SETTABLEKS                       R15 R14 K36 ["requestStartTime"]
      173 GETUPVAL                         R15 24
      174 SETTABLEKS                       R15 R14 K37 ["tools"]
      176 SETTABLEKS                       R3 R14 K38 ["apiKeys"]
      178 SETTABLEKS                       R5 R14 K8 ["selectedModel"]
      180 SETTABLEKS                       R0 R14 K18 ["messageId"]
      182 GETUPVAL                         R15 25
      183 SETTABLEKS                       R15 R14 K39 ["logRequestStop"]
      185 GETUPVAL                         R15 8
      186 SETTABLEKS                       R15 R14 K14 ["assistantMode"]
      188 GETUPVAL                         R15 26
      189 SETTABLEKS                       R15 R14 K40 ["compactedStore"]
      191 GETUPVAL                         R15 4
      192 GETTABLEKS                       R15 R15 K41 ["selectedProvider"]
      194 SETTABLEKS                       R15 R14 K41 ["selectedProvider"]
      196 GETUPVAL                         R15 27
      197 SETTABLEKS                       R15 R14 K42 ["uiMessageCount"]
      199 GETUPVAL                         R16 21
      200 GETTABLEKS                       R16 R16 K47 ["FFlagAssistantMultiPlayerAgents"]
      202 JUMPIFNOT                        R16 ; [+2]
      203 GETUPVAL                         R15 28
      204 JUMP                             ; [+1]
      205 LOADNIL                          R15
      206 SETTABLEKS                       R15 R14 K43 ["getInterruptionMessages"]
      208 CALL                             R13 1 1
      209 DUPTABLE                         R14 K54 [{["threadId"], ["messages"], ["tools"], ["system"], ["messageGuid"], ["isFirstMessage"] = True, ["isAgenticMode"] = False, ["apiKeys"], ["selectedModel"], ["assistantMode"]}]
      210 GETUPVAL                         R15 6
      211 SETTABLEKS                       R15 R14 K11 ["threadId"]
      213 GETUPVAL                         R15 22
      214 SETTABLEKS                       R15 R14 K48 ["messages"]
      216 GETUPVAL                         R15 24
      217 SETTABLEKS                       R15 R14 K37 ["tools"]
      219 GETUPVAL                         R15 16
      220 SETTABLEKS                       R15 R14 K49 ["system"]
      222 SETTABLEKS                       R0 R14 K9 ["messageGuid"]
      224 SETTABLEKS                       R3 R14 K38 ["apiKeys"]
      226 SETTABLEKS                       R5 R14 K8 ["selectedModel"]
      228 GETUPVAL                         R15 8
      229 SETTABLEKS                       R15 R14 K14 ["assistantMode"]
      231 GETUPVAL                         R15 15
      232 MOVE                             R16 R14
      233 GETTABLEKS                       R17 R13 K55 ["processEvent"]
      235 CALL                             R15 2 0
      236 CLOSEUPVALS                      R11
      237 RETURN                           R0 0

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
       84 JUMPIF                           R2 ; [+135]
       85 GETUPVAL                         R6 5
       86 GETTABLEKS                       R6 R6 K17 ["shouldCompact"]
       88 GETTABLEKS                       R7 R3 K11 ["messages"]
       90 DUPTABLE                         R8 K20 [{["isSubagent"] = False, ["selectedModel"]}]
       91 GETUPVAL                         R9 0
       92 GETTABLEKS                       R9 R9 K13 ["selectedModel"]
       94 SETTABLEKS                       R9 R8 K13 ["selectedModel"]
       96 CALL                             R6 2 1
       97 JUMPIFNOT                        R6 ; [+122]
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
      112 DUPTABLE                         R9 K33 [{"type", "summary", "streaming"}]
      113 GETUPVAL                         R10 9
      114 GETTABLEKS                       R10 R10 K34 ["Type"]
      116 SETTABLEKS                       R10 R9 K31 ["type"]
      118 GETUPVAL                         R10 10
      119 LOADK                            R12 K35 ["Compaction"]
      120 LOADK                            R13 K36 ["InProgress"]
      121 NAMECALL                         R10 R10 K37 ["getText"]
      123 CALL                             R10 3 1
      124 SETTABLEKS                       R10 R9 K7 ["summary"]
      126 NEWTABLE                         R10 0 0
      128 SETTABLEKS                       R10 R9 K32 ["streaming"]
      130 SETTABLEKS                       R9 R8 K29 ["content"]
      132 CALL                             R7 1 1
      133 NEWTABLE                         R8 0 0
      135 NEWTABLE                         R9 0 3
      137 GETUPVAL                         R12 1
      138 GETTABLEKS                       R12 R12 K38 ["CLAUDE_API_KEY"]
      140 GETUPVAL                         R13 1
      141 GETTABLEKS                       R13 R13 K39 ["GEMINI_API_KEY"]
      143 GETUPVAL                         R14 1
      144 GETTABLEKS                       R14 R14 K40 ["OPENAI_API_KEY"]
      146 SETLIST                          R9 R12 3 [1]
      148 LOADNIL                          R10
      149 LOADNIL                          R11
      150 FORGPREP                         R9
      151 GETUPVAL                         R14 11
      152 GETTABLEKS                       R14 R14 K41 ["getSetting"]
      154 MOVE                             R15 R13
      155 CALL                             R14 1 1
      156 JUMPIFNOT                        R14 ; [+3]
      157 JUMPIFEQKS                       R14 K42 [""] ; [+2]
      159 SETTABLE                         R14 R8 R13
      160 FORGLOOP                         R9 2 ; [-10]
      162 GETUPVAL                         R9 5
      163 GETTABLEKS                       R9 R9 K43 ["compact"]
      165 GETTABLEKS                       R10 R3 K11 ["messages"]
      167 DUPTABLE                         R11 K46 [{"requestLLM", "threadId", "compactedStore", "selectedModel", "selectedProvider", "apiKeys", "uiMessageCount"}]
      168 GETUPVAL                         R12 12
      169 SETTABLEKS                       R12 R11 K44 ["requestLLM"]
      171 GETUPVAL                         R12 3
      172 SETTABLEKS                       R12 R11 K12 ["threadId"]
      174 SETTABLEKS                       R5 R11 K15 ["compactedStore"]
      176 GETUPVAL                         R12 0
      177 GETTABLEKS                       R12 R12 K13 ["selectedModel"]
      179 SETTABLEKS                       R12 R11 K13 ["selectedModel"]
      181 GETUPVAL                         R12 0
      182 GETTABLEKS                       R12 R12 K0 ["selectedProvider"]
      184 SETTABLEKS                       R12 R11 K0 ["selectedProvider"]
      186 SETTABLEKS                       R8 R11 K45 ["apiKeys"]
      188 SETTABLEKS                       R4 R11 K9 ["uiMessageCount"]
      190 CALL                             R9 2 1
      191 DUPTABLE                         R10 K16 [{"messages", "uiMessageCount"}]
      192 GETTABLEKS                       R11 R9 K11 ["messages"]
      194 SETTABLEKS                       R11 R10 K11 ["messages"]
      196 SETTABLEKS                       R4 R10 K9 ["uiMessageCount"]
      198 MOVE                             R3 R10
      199 GETTABLEKS                       R2 R9 K15 ["compactedStore"]
      201 JUMPIFNOT                        R7 ; [+11]
      202 GETUPVAL                         R10 13
      203 DUPTABLE                         R11 K49 [{"messageId", "contentId", "transformFn"}]
      204 SETTABLEKS                       R6 R11 K28 ["messageId"]
      206 SETTABLEKS                       R7 R11 K47 ["contentId"]
      208 DUPCLOSURE                       R12 K50 [PROTO_9]
      209 CAPTURE                          UPVAL U10
      210 SETTABLEKS                       R12 R11 K48 ["transformFn"]
      212 CALL                             R10 1 0
      213 GETUPVAL                         R10 6
      214 GETTABLEKS                       R10 R10 K21 ["setLastPacketTime"]
      216 GETIMPORT                        R11 K24 [os.clock]
      218 CALL                             R11 0 -1
      219 CALL                             R10 -1 0
      220 GETTABLEKS                       R6 R3 K11 ["messages"]
      222 GETUPVAL                         R7 14
      223 GETTABLEKS                       R7 R7 K51 ["FFlagDebugLogAssistantUI"]
      225 JUMPIFNOT                        R7 ; [+4]
      226 GETIMPORT                        R7 K53 [print]
      228 LOADK                            R8 K54 ["Preparing message for response contents..."]
      229 CALL                             R7 1 0
      230 NEWCLOSURE                       R7 P1
      231 CAPTURE                          UPVAL U15
      232 CAPTURE                          UPVAL U16
      233 CAPTURE                          UPVAL U11
      234 CAPTURE                          UPVAL U1
      235 CAPTURE                          UPVAL U0
      236 CAPTURE                          UPVAL U17
      237 CAPTURE                          UPVAL U3
      238 CAPTURE                          UPVAL U18
      239 CAPTURE                          UPVAL U19
      240 CAPTURE                          UPVAL U20
      241 CAPTURE                          UPVAL U21
      242 CAPTURE                          UPVAL U6
      243 CAPTURE                          UPVAL U22
      244 CAPTURE                          UPVAL U23
      245 CAPTURE                          UPVAL U24
      246 CAPTURE                          UPVAL U12
      247 CAPTURE                          UPVAL U25
      248 CAPTURE                          UPVAL U26
      249 CAPTURE                          UPVAL U27
      250 CAPTURE                          UPVAL U28
      251 CAPTURE                          UPVAL U29
      252 CAPTURE                          UPVAL U14
      253 CAPTURE                          VAL R6
      254 CAPTURE                          UPVAL U30
      255 CAPTURE                          UPVAL U31
      256 CAPTURE                          UPVAL U32
      257 CAPTURE                          REF R2
      258 CAPTURE                          REF R4
      259 CAPTURE                          UPVAL U33
      260 GETUPVAL                         R8 34
      261 JUMPIFNOT                        R8 ; [+4]
      262 MOVE                             R8 R7
      263 GETUPVAL                         R9 34
      264 CALL                             R8 1 0
      265 JUMP                             ; [+8]
      266 GETUPVAL                         R8 35
      267 GETUPVAL                         R9 1
      268 GETTABLEKS                       R9 R9 K55 ["ROLE"]
      270 GETTABLEKS                       R9 R9 K56 ["Assistant"]
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
       19 GETTABLEKS                       R2 R2 K6 ["FFlagAssistantMultiPlayerAgents"]
       21 JUMPIFNOT                        R2 ; [+6]
       22 GETUPVAL                         R2 4
       23 SETTABLEKS                       R2 R1 K7 ["isMultiPlayerClientAgent"]
       25 GETUPVAL                         R2 5
       26 SETTABLEKS                       R2 R1 K8 ["isMultiPlayerClientAgentRunning"]
       28 DUPTABLE                         R2 K10 [{"_meta"}]
       29 SETTABLEKS                       R1 R2 K9 ["_meta"]
       31 MOVE                             R1 R2
       32 MOVE                             R5 R1
       33 NAMECALL                         R3 R0 K11 ["listTools"]
       35 CALL                             R3 2 1
       36 NAMECALL                         R3 R3 K12 ["await"]
       38 CALL                             R3 1 2
       39 JUMPIFNOT                        R3 ; [+12]
       40 GETTABLEKS                       R7 R4 K13 ["failures"]
       42 GETUPVAL                         R8 2
       43 GETTABLEKS                       R8 R8 K14 ["getMcpClientIdentifier"]
       45 CALL                             R8 0 1
       46 GETTABLE                         R6 R7 R8
       47 JUMPIFNOTEQKNIL                  R6 ; [+2]
       49 LOADB                            R5 0 +1
       50 LOADB                            R5 1
       51 JUMPIFNOT                        R5 ; [+22]
       52 GETUPVAL                         R5 6
       53 DUPTABLE                         R6 K17 [{["errorType"] = "client_error"}]
       54 CALL                             R5 1 0
       55 GETUPVAL                         R5 7
       56 GETTABLEKS                       R5 R5 K18 ["setInputEnabled"]
       58 LOADB                            R6 1
       59 CALL                             R5 1 0
       60 GETIMPORT                        R5 K20 [error]
       62 LOADK                            R7 K21 ["Failed to get tools list with error: %*"]
       63 GETUPVAL                         R9 8
       64 MOVE                             R11 R4
       65 NAMECALL                         R9 R9 K22 ["JSONEncode"]
       67 CALL                             R9 2 1
       68 NAMECALL                         R7 R7 K23 ["format"]
       70 CALL                             R7 2 1
       71 MOVE                             R6 R7
       72 CALL                             R5 1 0
       73 RETURN                           R0 0
       74 LOADNIL                          R5
       75 GETUPVAL                         R6 9
       76 GETTABLEKS                       R7 R4 K24 ["result"]
       78 GETTABLEKS                       R7 R7 K25 ["tools"]
       80 CALL                             R6 1 1
       81 GETUPVAL                         R7 10
       82 MOVE                             R8 R6
       83 CALL                             R7 1 1
       84 MOVE                             R5 R7
       85 GETUPVAL                         R7 11
       86 GETUPVAL                         R9 1
       87 GETTABLEKS                       R9 R9 K3 ["selectedProvider"]
       89 GETUPVAL                         R10 2
       90 GETTABLEKS                       R10 R10 K4 ["LLMProviderTypes"]
       92 GETTABLEKS                       R10 R10 K5 ["Studio"]
       94 JUMPIFNOTEQ                      R9 R10 ; [+2]
       96 LOADB                            R8 0 +1
       97 LOADB                            R8 1
       98 JUMPIFNOT                        R8 ; [+31]
       99 GETUPVAL                         R9 12
      100 DUPTABLE                         R10 K30 [{["environment"], ["tools"], ["model"], [4], ["isDebugMode"] = True}]
      101 GETUPVAL                         R11 13
      102 GETTABLEKS                       R11 R11 K31 ["get"]
      104 CALL                             R11 0 1
      105 SETTABLEKS                       R11 R10 K26 ["environment"]
      107 GETTABLEKS                       R11 R4 K24 ["result"]
      109 GETTABLEKS                       R11 R11 K25 ["tools"]
      111 SETTABLEKS                       R11 R10 K25 ["tools"]
      113 GETUPVAL                         R11 1
      114 GETTABLEKS                       R11 R11 K32 ["selectedModel"]
      116 SETTABLEKS                       R11 R10 K27 ["model"]
      118 GETUPVAL                         R11 0
      119 SETTABLEKS                       R11 R10 K0 ["assistantMode"]
      121 CALL                             R9 1 2
      122 JUMPIFNOT                        R9 ; [+2]
      123 MOVE                             R7 R10
      124 JUMP                             ; [+5]
      125 GETIMPORT                        R11 K34 [warn]
      127 LOADK                            R12 K35 ["Failed to fetch BYOK system prompt, using fallback:"]
      128 MOVE                             R13 R10
      129 CALL                             R11 2 0
      130 GETUPVAL                         R9 14
      131 JUMPIFNOT                        R9 ; [+34]
      132 DUPTABLE                         R9 K36 [{"tools"}]
      133 GETTABLEKS                       R10 R4 K24 ["result"]
      135 GETTABLEKS                       R10 R10 K25 ["tools"]
      137 SETTABLEKS                       R10 R9 K25 ["tools"]
      139 GETUPVAL                         R10 14
      140 MOVE                             R11 R9
      141 CALL                             R10 1 3
      142 FORGPREP                         R10
      143 GETUPVAL                         R15 15
      144 DUPTABLE                         R16 K40 [{["role"] = "user", ["hidden"] = True}]
      145 CALL                             R15 1 1
      146 GETUPVAL                         R16 16
      147 DUPTABLE                         R17 K43 [{"messageId", "content"}]
      148 SETTABLEKS                       R15 R17 K41 ["messageId"]
      150 DUPTABLE                         R18 K46 [{"type", "text"}]
      151 GETUPVAL                         R19 17
      152 GETTABLEKS                       R19 R19 K47 ["Type"]
      154 SETTABLEKS                       R19 R18 K44 ["type"]
      156 GETUPVAL                         R19 18
      157 MOVE                             R20 R14
      158 CALL                             R19 1 1
      159 SETTABLEKS                       R19 R18 K45 ["text"]
      161 SETTABLEKS                       R18 R17 K42 ["content"]
      163 CALL                             R16 1 0
      164 FORGLOOP                         R10 2 ; [-22]
      166 GETUPVAL                         R9 3
      167 GETTABLEKS                       R9 R9 K48 ["FFlagDebugLogAssistantUI"]
      169 JUMPIFNOT                        R9 ; [+4]
      170 GETIMPORT                        R9 K50 [print]
      172 LOADK                            R10 K51 ["Reading conversation history..."]
      173 CALL                             R9 1 0
      174 GETUPVAL                         R9 19
      175 NEWCLOSURE                       R10 P0
      176 CAPTURE                          UPVAL U1
      177 CAPTURE                          UPVAL U2
      178 CAPTURE                          UPVAL U20
      179 CAPTURE                          UPVAL U21
      180 CAPTURE                          UPVAL U22
      181 CAPTURE                          UPVAL U23
      182 CAPTURE                          UPVAL U24
      183 CAPTURE                          UPVAL U15
      184 CAPTURE                          UPVAL U16
      185 CAPTURE                          UPVAL U25
      186 CAPTURE                          UPVAL U26
      187 CAPTURE                          UPVAL U27
      188 CAPTURE                          UPVAL U28
      189 CAPTURE                          UPVAL U29
      190 CAPTURE                          UPVAL U3
      191 CAPTURE                          UPVAL U30
      192 CAPTURE                          UPVAL U13
      193 CAPTURE                          UPVAL U31
      194 CAPTURE                          UPVAL U32
      195 CAPTURE                          UPVAL U0
      196 CAPTURE                          UPVAL U33
      197 CAPTURE                          UPVAL U6
      198 CAPTURE                          UPVAL U7
      199 CAPTURE                          UPVAL U34
      200 CAPTURE                          UPVAL U35
      201 CAPTURE                          REF R7
      202 CAPTURE                          VAL R0
      203 CAPTURE                          UPVAL U36
      204 CAPTURE                          UPVAL U37
      205 CAPTURE                          UPVAL U38
      206 CAPTURE                          UPVAL U39
      207 CAPTURE                          REF R5
      208 CAPTURE                          UPVAL U40
      209 CAPTURE                          UPVAL U41
      210 CAPTURE                          UPVAL U42
      211 CAPTURE                          UPVAL U43
      212 CALL                             R9 1 0
      213 CLOSEUPVALS                      R5
      214 RETURN                           R0 0

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
       46 CALL                             R0 1 0
       47 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantSupportSlashCommandCancellation"]
        3 JUMPIFNOT                        R1 ; [+6]
        4 GETUPVAL                         R1 1
        5 JUMPIFNOT                        R1 ; [+4]
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K1 ["cancelSession"]
        9 CALL                             R1 0 0
       10 GETIMPORT                        R1 K4 [task.spawn]
       12 NEWCLOSURE                       R2 P0
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          UPVAL U3
       15 CAPTURE                          UPVAL U4
       16 CAPTURE                          UPVAL U5
       17 CAPTURE                          UPVAL U0
       18 CAPTURE                          UPVAL U6
       19 CAPTURE                          UPVAL U7
       20 CAPTURE                          UPVAL U8
       21 CAPTURE                          UPVAL U9
       22 CAPTURE                          UPVAL U10
       23 CAPTURE                          UPVAL U11
       24 CAPTURE                          UPVAL U12
       25 CAPTURE                          UPVAL U13
       26 CAPTURE                          UPVAL U14
       27 CAPTURE                          UPVAL U15
       28 CAPTURE                          UPVAL U16
       29 CAPTURE                          UPVAL U17
       30 CAPTURE                          UPVAL U18
       31 CAPTURE                          UPVAL U19
       32 CAPTURE                          UPVAL U20
       33 CAPTURE                          UPVAL U21
       34 CAPTURE                          UPVAL U22
       35 CAPTURE                          UPVAL U23
       36 CAPTURE                          UPVAL U24
       37 CAPTURE                          UPVAL U25
       38 CAPTURE                          UPVAL U26
       39 CAPTURE                          UPVAL U27
       40 CAPTURE                          UPVAL U28
       41 CAPTURE                          UPVAL U29
       42 CAPTURE                          UPVAL U30
       43 CAPTURE                          UPVAL U31
       44 CAPTURE                          UPVAL U32
       45 CAPTURE                          UPVAL U33
       46 CAPTURE                          UPVAL U34
       47 CAPTURE                          UPVAL U35
       48 CAPTURE                          UPVAL U36
       49 CAPTURE                          UPVAL U37
       50 CAPTURE                          UPVAL U38
       51 CAPTURE                          UPVAL U39
       52 CAPTURE                          UPVAL U40
       53 CAPTURE                          UPVAL U41
       54 CAPTURE                          UPVAL U42
       55 CAPTURE                          UPVAL U43
       56 CAPTURE                          VAL R0
       57 CAPTURE                          UPVAL U44
       58 CALL                             R1 1 0
       59 RETURN                           R0 0

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
       23 GETTABLEKS                       R1 R1 K6 ["FFlagAssistantSupportSlashCommandCancellation"]
       25 JUMPIFNOT                        R1 ; [+7]
       26 GETUPVAL                         R1 2
       27 GETTABLEKS                       R1 R1 K7 ["setLastPacketTime"]
       29 GETIMPORT                        R2 K10 [os.clock]
       31 CALL                             R2 0 -1
       32 CALL                             R1 -1 0
       33 GETUPVAL                         R1 3
       34 GETTABLEKS                       R1 R1 K11 ["setInputEnabled"]
       36 LOADB                            R2 0
       37 CALL                             R1 1 0
       38 GETTABLEKS                       R1 R0 K12 ["text"]
       40 GETTABLEKS                       R3 R0 K14 ["retry"]
       42 ORK                              R2 R3 K13 [False]
       43 GETTABLEKS                       R4 R0 K15 ["hidden"]
       45 JUMPIFEQKB                       R4 TRUE ; [+2]
       47 LOADB                            R3 0 +1
       48 LOADB                            R3 1
       49 GETIMPORT                        R4 K10 [os.clock]
       51 CALL                             R4 0 1
       52 LOADB                            R6 1
       53 GETTABLEKS                       R7 R0 K16 ["previousMessageId"]
       55 JUMPIFNOTEQKNIL                  R7 ; [+2]
       57 NOT                              R6 R2
       58 FASTCALL2K                       ASSERT R6 K17 ; [+4]
       60 LOADK                            R7 K17 ["previousMessageId must be provided for retry messages"]
       61 GETIMPORT                        R5 K19 [assert]
       63 CALL                             R5 2 0
       64 NEWTABLE                         R5 0 0
       66 JUMPIF                           R2 ; [+88]
       67 GETUPVAL                         R6 4
       68 DUPTABLE                         R7 K22 [{["role"] = "user", ["hidden"]}]
       69 SETTABLEKS                       R3 R7 K15 ["hidden"]
       71 CALL                             R6 1 1
       72 GETTABLEKS                       R7 R0 K23 ["images"]
       74 JUMPIFNOT                        R7 ; [+61]
       75 GETTABLEKS                       R7 R0 K23 ["images"]
       77 LOADNIL                          R8
       78 LOADNIL                          R9
       79 FORGPREP                         R7
       80 GETTABLEKS                       R12 R11 K24 ["data"]
       82 LENGTH                           R13 R12
       83 LOADN                            R15 10
       84 JUMPIFNOTLT                      R15 R13 ; [+10]
       86 SUBK                             R16 R13 K25 [9]
       87 FASTCALL3                        STRING_SUB R12 R16 R13
       89 MOVE                             R15 R12
       90 MOVE                             R17 R13
       91 GETIMPORT                        R14 K28 [string.sub]
       93 CALL                             R14 3 1
       94 JUMP                             ; [+1]
       95 MOVE                             R14 R12
       96 DUPTABLE                         R17 K32 [{"imageDataSuffix", "imageDataSize", "mimeType"}]
       97 SETTABLEKS                       R14 R17 K29 ["imageDataSuffix"]
       99 SETTABLEKS                       R13 R17 K30 ["imageDataSize"]
      101 GETTABLEKS                       R18 R11 K31 ["mimeType"]
      103 SETTABLEKS                       R18 R17 K31 ["mimeType"]
      105 FASTCALL2                        TABLE_INSERT R5 R17 ; [+4]
      107 MOVE                             R16 R5
      108 GETIMPORT                        R15 K35 [table.insert]
      110 CALL                             R15 2 0
      111 FORGLOOP                         R7 2 ; [-32]
      113 GETTABLEKS                       R8 R0 K23 ["images"]
      115 LENGTH                           R7 R8
      116 LOADN                            R8 0
      117 JUMPIFNOTLT                      R8 R7 ; [+18]
      119 DUPTABLE                         R7 K39 [{["type"], ["imageContents"], ["expanded"] = False}]
      120 GETUPVAL                         R8 5
      121 GETTABLEKS                       R8 R8 K40 ["Type"]
      123 SETTABLEKS                       R8 R7 K36 ["type"]
      125 GETTABLEKS                       R8 R0 K23 ["images"]
      127 SETTABLEKS                       R8 R7 K37 ["imageContents"]
      129 GETUPVAL                         R8 6
      130 DUPTABLE                         R9 K43 [{"messageId", "content"}]
      131 SETTABLEKS                       R6 R9 K41 ["messageId"]
      133 SETTABLEKS                       R7 R9 K42 ["content"]
      135 CALL                             R8 1 0
      136 LENGTH                           R7 R1
      137 LOADN                            R8 0
      138 JUMPIFNOTLT                      R8 R7 ; [+16]
      140 DUPTABLE                         R7 K44 [{"type", "text"}]
      141 GETUPVAL                         R8 7
      142 GETTABLEKS                       R8 R8 K40 ["Type"]
      144 SETTABLEKS                       R8 R7 K36 ["type"]
      146 SETTABLEKS                       R1 R7 K12 ["text"]
      148 GETUPVAL                         R8 6
      149 DUPTABLE                         R9 K43 [{"messageId", "content"}]
      150 SETTABLEKS                       R6 R9 K41 ["messageId"]
      152 SETTABLEKS                       R7 R9 K42 ["content"]
      154 CALL                             R8 1 0
      155 GETUPVAL                         R6 1
      156 GETTABLEKS                       R6 R6 K45 ["FFlagDebugLogAssistantUI"]
      158 JUMPIFNOT                        R6 ; [+5]
      159 GETIMPORT                        R6 K47 [print]
      161 LOADK                            R7 K48 ["About to send message:"]
      162 MOVE                             R8 R1
      163 CALL                             R6 2 0
      164 GETUPVAL                         R6 8
      165 GETUPVAL                         R7 9
      166 DUPCLOSURE                       R8 K49 [PROTO_8]
      167 CAPTURE                          UPVAL U10
      168 CALL                             R6 2 0
      169 NEWCLOSURE                       R6 P1
      170 CAPTURE                          UPVAL U1
      171 CAPTURE                          UPVAL U11
      172 CAPTURE                          UPVAL U12
      173 CAPTURE                          UPVAL U13
      174 CAPTURE                          UPVAL U14
      175 CAPTURE                          UPVAL U15
      176 CAPTURE                          UPVAL U16
      177 CAPTURE                          UPVAL U17
      178 CAPTURE                          UPVAL U18
      179 CAPTURE                          UPVAL U3
      180 CAPTURE                          UPVAL U19
      181 CAPTURE                          UPVAL U20
      182 CAPTURE                          UPVAL U21
      183 CAPTURE                          UPVAL U22
      184 CAPTURE                          UPVAL U23
      185 CAPTURE                          UPVAL U24
      186 CAPTURE                          UPVAL U25
      187 CAPTURE                          UPVAL U4
      188 CAPTURE                          UPVAL U6
      189 CAPTURE                          UPVAL U7
      190 CAPTURE                          UPVAL U26
      191 CAPTURE                          UPVAL U27
      192 CAPTURE                          UPVAL U28
      193 CAPTURE                          UPVAL U9
      194 CAPTURE                          UPVAL U29
      195 CAPTURE                          UPVAL U30
      196 CAPTURE                          UPVAL U2
      197 CAPTURE                          UPVAL U31
      198 CAPTURE                          UPVAL U32
      199 CAPTURE                          UPVAL U33
      200 CAPTURE                          UPVAL U34
      201 CAPTURE                          UPVAL U35
      202 CAPTURE                          UPVAL U36
      203 CAPTURE                          UPVAL U37
      204 CAPTURE                          VAL R1
      205 CAPTURE                          VAL R5
      206 CAPTURE                          UPVAL U38
      207 CAPTURE                          UPVAL U39
      208 CAPTURE                          UPVAL U40
      209 CAPTURE                          UPVAL U41
      210 CAPTURE                          UPVAL U42
      211 CAPTURE                          VAL R4
      212 CAPTURE                          UPVAL U43
      213 CAPTURE                          UPVAL U44
      214 CAPTURE                          UPVAL U45
      215 NEWCLOSURE                       R7 P2
      216 CAPTURE                          UPVAL U3
      217 GETUPVAL                         R8 46
      218 DUPTABLE                         R9 K52 [{"prompt", "images", "setInputEnabled", "onContinueWithLLM"}]
      219 SETTABLEKS                       R1 R9 K50 ["prompt"]
      221 GETTABLEKS                       R10 R0 K23 ["images"]
      223 SETTABLEKS                       R10 R9 K23 ["images"]
      225 SETTABLEKS                       R7 R9 K11 ["setInputEnabled"]
      227 SETTABLEKS                       R6 R9 K51 ["onContinueWithLLM"]
      229 CALL                             R8 1 1
      230 JUMPIFNOT                        R8 ; [+1]
      231 RETURN                           R0 0
      232 GETUPVAL                         R9 1
      233 GETTABLEKS                       R9 R9 K6 ["FFlagAssistantSupportSlashCommandCancellation"]
      235 JUMPIFNOT                        R9 ; [+6]
      236 GETUPVAL                         R9 11
      237 JUMPIFNOT                        R9 ; [+4]
      238 GETUPVAL                         R9 11
      239 GETTABLEKS                       R9 R9 K53 ["cancelSession"]
      241 CALL                             R9 0 0
      242 GETIMPORT                        R9 K56 [task.spawn]
      244 LOADNIL                          R11
      245 NEWCLOSURE                       R10 P3
      246 CAPTURE                          UPVAL U12
      247 CAPTURE                          UPVAL U13
      248 CAPTURE                          UPVAL U14
      249 CAPTURE                          UPVAL U15
      250 CAPTURE                          UPVAL U1
      251 CAPTURE                          UPVAL U16
      252 CAPTURE                          UPVAL U17
      253 CAPTURE                          UPVAL U18
      254 CAPTURE                          UPVAL U3
      255 CAPTURE                          UPVAL U19
      256 CAPTURE                          UPVAL U20
      257 CAPTURE                          UPVAL U21
      258 CAPTURE                          UPVAL U22
      259 CAPTURE                          UPVAL U23
      260 CAPTURE                          UPVAL U24
      261 CAPTURE                          UPVAL U25
      262 CAPTURE                          UPVAL U4
      263 CAPTURE                          UPVAL U6
      264 CAPTURE                          UPVAL U7
      265 CAPTURE                          UPVAL U26
      266 CAPTURE                          UPVAL U27
      267 CAPTURE                          UPVAL U28
      268 CAPTURE                          UPVAL U9
      269 CAPTURE                          UPVAL U29
      270 CAPTURE                          UPVAL U30
      271 CAPTURE                          UPVAL U2
      272 CAPTURE                          UPVAL U31
      273 CAPTURE                          UPVAL U32
      274 CAPTURE                          UPVAL U33
      275 CAPTURE                          UPVAL U34
      276 CAPTURE                          UPVAL U35
      277 CAPTURE                          UPVAL U36
      278 CAPTURE                          UPVAL U37
      279 CAPTURE                          VAL R1
      280 CAPTURE                          VAL R5
      281 CAPTURE                          UPVAL U38
      282 CAPTURE                          UPVAL U39
      283 CAPTURE                          UPVAL U40
      284 CAPTURE                          UPVAL U41
      285 CAPTURE                          UPVAL U42
      286 CAPTURE                          VAL R4
      287 CAPTURE                          UPVAL U43
      288 CAPTURE                          UPVAL U44
      289 CAPTURE                          VAL R11
      290 CAPTURE                          UPVAL U45
      291 CALL                             R9 1 0
      292 RETURN                           R0 0

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
       84 GETTABLEKS                       R27 R27 K3 ["FFlagAssistantSupportSlashCommandCancellation"]
       86 JUMPIFNOT                        R27 ; [+8]
       87 GETUPVAL                         R27 20
       88 GETTABLEKS                       R27 R27 K0 ["useContext"]
       90 GETUPVAL                         R28 28
       91 GETTABLEKS                       R28 R28 K1 ["Context"]
       93 CALL                             R27 1 1
       94 MOVE                             R26 R27
       95 GETUPVAL                         R27 29
       96 CALL                             R27 0 1
       97 LOADNIL                          R28
       98 LOADNIL                          R29
       99 GETUPVAL                         R30 27
      100 GETTABLEKS                       R30 R30 K4 ["FFlagAssistantMultiPlayerAgents"]
      102 JUMPIFNOT                        R30 ; [+6]
      103 GETUPVAL                         R30 30
      104 CALL                             R30 0 1
      105 GETTABLEKS                       R28 R30 K5 ["isMultiPlayerClientAgent"]
      107 GETTABLEKS                       R29 R30 K6 ["isMultiPlayerClientAgentRunning"]
      109 NEWCLOSURE                       R30 P0
      110 CAPTURE                          REF R28
      111 CAPTURE                          UPVAL U31
      112 NEWCLOSURE                       R31 P1
      113 CAPTURE                          VAL R21
      114 CAPTURE                          UPVAL U27
      115 CAPTURE                          VAL R25
      116 CAPTURE                          VAL R0
      117 CAPTURE                          VAL R1
      118 CAPTURE                          UPVAL U32
      119 CAPTURE                          VAL R2
      120 CAPTURE                          UPVAL U33
      121 CAPTURE                          VAL R18
      122 CAPTURE                          VAL R17
      123 CAPTURE                          UPVAL U34
      124 CAPTURE                          REF R26
      125 CAPTURE                          VAL R5
      126 CAPTURE                          VAL R27
      127 CAPTURE                          VAL R24
      128 CAPTURE                          UPVAL U35
      129 CAPTURE                          REF R28
      130 CAPTURE                          REF R29
      131 CAPTURE                          VAL R13
      132 CAPTURE                          UPVAL U36
      133 CAPTURE                          UPVAL U37
      134 CAPTURE                          VAL R9
      135 CAPTURE                          VAL R7
      136 CAPTURE                          UPVAL U38
      137 CAPTURE                          UPVAL U39
      138 CAPTURE                          VAL R8
      139 CAPTURE                          UPVAL U40
      140 CAPTURE                          VAL R11
      141 CAPTURE                          UPVAL U41
      142 CAPTURE                          UPVAL U42
      143 CAPTURE                          UPVAL U43
      144 CAPTURE                          UPVAL U44
      145 CAPTURE                          UPVAL U45
      146 CAPTURE                          VAL R23
      147 CAPTURE                          VAL R6
      148 CAPTURE                          VAL R3
      149 CAPTURE                          VAL R14
      150 CAPTURE                          VAL R20
      151 CAPTURE                          VAL R15
      152 CAPTURE                          VAL R10
      153 CAPTURE                          UPVAL U46
      154 CAPTURE                          UPVAL U47
      155 CAPTURE                          VAL R22
      156 CAPTURE                          VAL R16
      157 CAPTURE                          VAL R30
      158 CAPTURE                          VAL R4
      159 CAPTURE                          VAL R12
      160 CLOSEUPVALS                      R26
      161 RETURN                           R31 1

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
       15 GETTABLEKS                       R3 R0 K10 ["Parent"]
       17 GETTABLEKS                       R3 R3 K11 ["AssistantHarness"]
       19 CALL                             R2 1 1
       20 GETTABLEKS                       R3 R2 K12 ["Engine"]
       22 GETTABLEKS                       R3 R3 K13 ["CompactedStore"]
       24 GETIMPORT                        R4 K9 [require]
       26 GETTABLEKS                       R5 R0 K14 ["Guest"]
       28 GETTABLEKS                       R5 R5 K15 ["Environment"]
       30 CALL                             R4 1 1
       31 GETIMPORT                        R5 K9 [require]
       33 GETTABLEKS                       R6 R0 K16 ["FlagUtils"]
       35 CALL                             R5 1 1
       36 GETIMPORT                        R6 K9 [require]
       38 GETTABLEKS                       R7 R0 K17 ["Flags"]
       40 CALL                             R6 1 1
       41 GETTABLEKS                       R7 R5 K18 ["getIsAssistantHarnessSplit"]
       43 GETIMPORT                        R8 K9 [require]
       45 GETTABLEKS                       R9 R0 K19 ["Components"]
       47 GETTABLEKS                       R9 R9 K20 ["ContentWidgets"]
       49 GETTABLEKS                       R9 R9 K21 ["ImageContentWidget"]
       51 CALL                             R8 1 1
       52 GETIMPORT                        R9 K9 [require]
       54 GETTABLEKS                       R10 R0 K19 ["Components"]
       56 GETTABLEKS                       R10 R10 K22 ["Contexts"]
       58 GETTABLEKS                       R10 R10 K23 ["InputStateContext"]
       60 CALL                             R9 1 1
       61 GETIMPORT                        R10 K9 [require]
       63 GETTABLEKS                       R11 R0 K19 ["Components"]
       65 GETTABLEKS                       R11 R11 K22 ["Contexts"]
       67 GETTABLEKS                       R11 R11 K24 ["DefaultLLMProvider"]
       69 GETTABLEKS                       R11 R11 K25 ["LLMPackageContextProvider"]
       71 CALL                             R10 1 1
       72 GETIMPORT                        R11 K9 [require]
       74 GETTABLEKS                       R12 R0 K19 ["Components"]
       76 GETTABLEKS                       R12 R12 K22 ["Contexts"]
       78 GETTABLEKS                       R12 R12 K26 ["LLMProviderSelectionContext"]
       80 CALL                             R11 1 1
       81 GETIMPORT                        R12 K9 [require]
       83 GETTABLEKS                       R13 R0 K10 ["Parent"]
       85 GETTABLEKS                       R13 R13 K27 ["ModelContextProtocol"]
       87 CALL                             R12 1 1
       88 GETIMPORT                        R13 K9 [require]
       90 GETTABLEKS                       R14 R0 K19 ["Components"]
       92 GETTABLEKS                       R14 R14 K22 ["Contexts"]
       94 GETTABLEKS                       R14 R14 K28 ["ModelQualityContext"]
       96 CALL                             R13 1 1
       97 GETIMPORT                        R14 K9 [require]
       99 GETTABLEKS                       R15 R0 K29 ["Util"]
      101 GETTABLEKS                       R15 R15 K30 ["MultiPlayersConnection"]
      103 GETTABLEKS                       R15 R15 K31 ["MultiPlayersAgentClient"]
      105 CALL                             R14 1 1
      106 GETIMPORT                        R15 K9 [require]
      108 GETTABLEKS                       R16 R0 K19 ["Components"]
      110 GETTABLEKS                       R16 R16 K22 ["Contexts"]
      112 GETTABLEKS                       R16 R16 K32 ["PacketReceivedContext"]
      114 CALL                             R15 1 1
      115 GETIMPORT                        R16 K9 [require]
      117 GETTABLEKS                       R17 R0 K10 ["Parent"]
      119 GETTABLEKS                       R17 R17 K33 ["Promise"]
      121 CALL                             R16 1 1
      122 GETIMPORT                        R17 K9 [require]
      124 GETTABLEKS                       R18 R0 K10 ["Parent"]
      126 GETTABLEKS                       R18 R18 K34 ["React"]
      128 CALL                             R17 1 1
      129 GETIMPORT                        R18 K9 [require]
      131 GETTABLEKS                       R19 R0 K19 ["Components"]
      133 GETTABLEKS                       R19 R19 K22 ["Contexts"]
      135 GETTABLEKS                       R19 R19 K35 ["SessionIdContext"]
      137 CALL                             R18 1 1
      138 GETIMPORT                        R19 K9 [require]
      140 GETTABLEKS                       R20 R0 K10 ["Parent"]
      142 GETTABLEKS                       R20 R20 K36 ["Signal"]
      144 CALL                             R19 1 1
      145 GETIMPORT                        R20 K9 [require]
      147 GETTABLEKS                       R21 R0 K19 ["Components"]
      149 GETTABLEKS                       R21 R21 K20 ["ContentWidgets"]
      151 GETTABLEKS                       R21 R21 K37 ["SummarizedContentWidget"]
      153 CALL                             R20 1 1
      154 GETIMPORT                        R21 K9 [require]
      156 GETTABLEKS                       R22 R0 K19 ["Components"]
      158 GETTABLEKS                       R22 R22 K20 ["ContentWidgets"]
      160 GETTABLEKS                       R22 R22 K38 ["TextContentWidget"]
      162 CALL                             R21 1 1
      163 GETIMPORT                        R22 K9 [require]
      165 GETTABLEKS                       R23 R0 K39 ["Resources"]
      167 GETTABLEKS                       R23 R23 K40 ["Localization"]
      169 GETTABLEKS                       R23 R23 K41 ["Translator"]
      171 CALL                             R22 1 1
      172 GETIMPORT                        R23 K9 [require]
      174 GETTABLEKS                       R24 R0 K42 ["Types"]
      176 CALL                             R23 1 1
      177 GETTABLEKS                       R24 R2 K12 ["Engine"]
      179 GETTABLEKS                       R24 R24 K43 ["compactThread"]
      181 GETIMPORT                        R25 K9 [require]
      183 GETTABLEKS                       R26 R0 K29 ["Util"]
      185 GETTABLEKS                       R26 R26 K44 ["fetchBYOKSystemPrompt"]
      187 CALL                             R25 1 1
      188 GETIMPORT                        R26 K9 [require]
      190 GETTABLEKS                       R27 R0 K29 ["Util"]
      192 GETTABLEKS                       R27 R27 K45 ["readThread"]
      194 CALL                             R26 1 1
      195 GETIMPORT                        R27 K9 [require]
      197 GETTABLEKS                       R28 R0 K29 ["Util"]
      199 GETTABLEKS                       R28 R28 K46 ["setLastActivityAt"]
      201 CALL                             R27 1 1
      202 GETIMPORT                        R28 K9 [require]
      204 GETTABLEKS                       R29 R0 K47 ["Hooks"]
      206 GETTABLEKS                       R29 R29 K48 ["useAddContent"]
      208 CALL                             R28 1 1
      209 GETIMPORT                        R29 K9 [require]
      211 GETTABLEKS                       R30 R0 K47 ["Hooks"]
      213 GETTABLEKS                       R30 R30 K49 ["useAddMessage"]
      215 CALL                             R29 1 1
      216 GETIMPORT                        R30 K9 [require]
      218 GETTABLEKS                       R31 R0 K47 ["Hooks"]
      220 GETTABLEKS                       R31 R31 K50 ["useAssistantMode"]
      222 CALL                             R30 1 1
      223 GETIMPORT                        R31 K9 [require]
      225 GETTABLEKS                       R32 R0 K47 ["Hooks"]
      227 GETTABLEKS                       R32 R32 K51 ["useEditContent"]
      229 CALL                             R31 1 1
      230 GETIMPORT                        R32 K9 [require]
      232 GETTABLEKS                       R33 R0 K47 ["Hooks"]
      234 GETTABLEKS                       R33 R33 K52 ["useEditThread"]
      236 CALL                             R32 1 1
      237 GETIMPORT                        R33 K9 [require]
      239 GETTABLEKS                       R34 R0 K47 ["Hooks"]
      241 GETTABLEKS                       R34 R34 K53 ["useGetContentObserver"]
      243 CALL                             R33 1 1
      244 GETIMPORT                        R34 K9 [require]
      246 GETTABLEKS                       R35 R0 K47 ["Hooks"]
      248 GETTABLEKS                       R35 R35 K54 ["useGetOrAddMessage"]
      250 CALL                             R34 1 1
      251 GETIMPORT                        R35 K9 [require]
      253 GETTABLEKS                       R36 R0 K47 ["Hooks"]
      255 GETTABLEKS                       R36 R36 K55 ["useGetThread"]
      257 CALL                             R35 1 1
      258 GETIMPORT                        R36 K9 [require]
      260 GETTABLEKS                       R37 R0 K47 ["Hooks"]
      262 GETTABLEKS                       R37 R37 K56 ["useLLMProcessEvent"]
      264 CALL                             R36 1 1
      265 GETIMPORT                        R37 K9 [require]
      267 GETTABLEKS                       R38 R0 K47 ["Hooks"]
      269 GETTABLEKS                       R38 R38 K57 ["useLLMRequest"]
      271 CALL                             R37 1 1
      272 GETIMPORT                        R38 K9 [require]
      274 GETTABLEKS                       R39 R0 K47 ["Hooks"]
      276 GETTABLEKS                       R39 R39 K58 ["useLLMSystemMessage"]
      278 CALL                             R38 1 1
      279 GETIMPORT                        R39 K9 [require]
      281 GETTABLEKS                       R40 R0 K47 ["Hooks"]
      283 GETTABLEKS                       R40 R40 K59 ["useLLMSystemReminderGetter"]
      285 CALL                             R39 1 1
      286 GETIMPORT                        R40 K9 [require]
      288 GETTABLEKS                       R41 R0 K47 ["Hooks"]
      290 GETTABLEKS                       R41 R41 K60 ["useLogAssistantMessageSent"]
      292 CALL                             R40 1 1
      293 GETIMPORT                        R41 K9 [require]
      295 GETTABLEKS                       R42 R0 K47 ["Hooks"]
      297 GETTABLEKS                       R42 R42 K61 ["useLogRequestJourney"]
      299 CALL                             R41 1 1
      300 GETIMPORT                        R42 K9 [require]
      302 GETTABLEKS                       R43 R0 K47 ["Hooks"]
      304 GETTABLEKS                       R43 R43 K62 ["useMultiPlayerClientAgentStates"]
      306 CALL                             R42 1 1
      307 GETIMPORT                        R43 K9 [require]
      309 GETTABLEKS                       R44 R0 K47 ["Hooks"]
      311 GETTABLEKS                       R44 R44 K63 ["useRunSlashCommand"]
      313 CALL                             R43 1 1
      314 GETIMPORT                        R44 K9 [require]
      316 GETTABLEKS                       R45 R0 K64 ["ACPClientService"]
      318 GETTABLEKS                       R45 R45 K65 ["useSendMessageViaService"]
      320 CALL                             R44 1 1
      321 GETIMPORT                        R45 K9 [require]
      323 GETTABLEKS                       R46 R0 K47 ["Hooks"]
      325 GETTABLEKS                       R46 R46 K66 ["useSettingsContext"]
      327 CALL                             R45 1 1
      328 GETIMPORT                        R46 K9 [require]
      330 GETTABLEKS                       R47 R0 K47 ["Hooks"]
      332 GETTABLEKS                       R47 R47 K67 ["useShowError"]
      334 CALL                             R46 1 1
      335 GETIMPORT                        R47 K9 [require]
      337 GETTABLEKS                       R48 R0 K47 ["Hooks"]
      339 GETTABLEKS                       R48 R48 K68 ["useThreadId"]
      341 CALL                             R47 1 1
      342 GETIMPORT                        R48 K9 [require]
      344 GETTABLEKS                       R49 R0 K47 ["Hooks"]
      346 GETTABLEKS                       R49 R49 K69 ["useToolFormat"]
      348 CALL                             R48 1 1
      349 GETIMPORT                        R49 K9 [require]
      351 GETTABLEKS                       R50 R0 K47 ["Hooks"]
      353 GETTABLEKS                       R50 R50 K70 ["useWithClient"]
      355 CALL                             R49 1 1
      356 GETTABLEKS                       R50 R23 K71 ["getSystemReminder"]
      358 DUPCLOSURE                       R51 K72 [PROTO_0]
      359 CAPTURE                          VAL R12
      360 DUPCLOSURE                       R52 K73 [PROTO_1]
      361 CAPTURE                          VAL R23
      362 DUPCLOSURE                       R53 K74 [PROTO_6]
      363 CAPTURE                          VAL R23
      364 CAPTURE                          VAL R19
      365 CAPTURE                          VAL R16
      366 DUPCLOSURE                       R54 K75 [PROTO_22]
      367 CAPTURE                          VAL R7
      368 CAPTURE                          VAL R44
      369 CAPTURE                          VAL R29
      370 CAPTURE                          VAL R28
      371 CAPTURE                          VAL R31
      372 CAPTURE                          VAL R34
      373 CAPTURE                          VAL R49
      374 CAPTURE                          VAL R37
      375 CAPTURE                          VAL R38
      376 CAPTURE                          VAL R39
      377 CAPTURE                          VAL R48
      378 CAPTURE                          VAL R36
      379 CAPTURE                          VAL R35
      380 CAPTURE                          VAL R43
      381 CAPTURE                          VAL R46
      382 CAPTURE                          VAL R33
      383 CAPTURE                          VAL R40
      384 CAPTURE                          VAL R41
      385 CAPTURE                          VAL R47
      386 CAPTURE                          VAL R32
      387 CAPTURE                          VAL R17
      388 CAPTURE                          VAL R18
      389 CAPTURE                          VAL R9
      390 CAPTURE                          VAL R13
      391 CAPTURE                          VAL R45
      392 CAPTURE                          VAL R11
      393 CAPTURE                          VAL R15
      394 CAPTURE                          VAL R6
      395 CAPTURE                          VAL R10
      396 CAPTURE                          VAL R30
      397 CAPTURE                          VAL R42
      398 CAPTURE                          VAL R14
      399 CAPTURE                          VAL R8
      400 CAPTURE                          VAL R21
      401 CAPTURE                          VAL R27
      402 CAPTURE                          VAL R23
      403 CAPTURE                          VAL R1
      404 CAPTURE                          VAL R51
      405 CAPTURE                          VAL R25
      406 CAPTURE                          VAL R4
      407 CAPTURE                          VAL R50
      408 CAPTURE                          VAL R3
      409 CAPTURE                          VAL R26
      410 CAPTURE                          VAL R24
      411 CAPTURE                          VAL R20
      412 CAPTURE                          VAL R22
      413 CAPTURE                          VAL R19
      414 CAPTURE                          VAL R16
      415 RETURN                           R54 1
