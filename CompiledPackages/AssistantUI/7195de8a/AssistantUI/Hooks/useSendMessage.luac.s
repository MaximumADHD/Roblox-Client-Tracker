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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 0
        5 MOVE                             R1 R0
        6 CALL                             R1 0 0
        7 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["threadId"]
        2 JUMPIF                           R1 ; [+1]
        3 GETUPVAL                         R1 0
        4 GETIMPORT                        R2 K3 [table.clone]
        6 MOVE                             R3 R0
        7 CALL                             R2 1 1
        8 SETTABLEKS                       R1 R2 K0 ["threadId"]
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R3 R3 K4 ["enqueue"]
       13 DUPTABLE                         R4 K7 [{"key", "threadId", "run"}]
       14 LOADK                            R6 K8 ["send_%*"]
       15 GETUPVAL                         R8 2
       16 LOADB                            R10 0
       17 NAMECALL                         R8 R8 K9 ["GenerateGUID"]
       19 CALL                             R8 2 1
       20 NAMECALL                         R6 R6 K10 ["format"]
       22 CALL                             R6 2 1
       23 MOVE                             R5 R6
       24 SETTABLEKS                       R5 R4 K5 ["key"]
       26 SETTABLEKS                       R1 R4 K0 ["threadId"]
       28 NEWCLOSURE                       R5 P0
       29 CAPTURE                          UPVAL U3
       30 CAPTURE                          VAL R2
       31 SETTABLEKS                       R5 R4 K6 ["run"]
       33 CALL                             R3 1 0
       34 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantExternalInterface"]
        3 JUMPIF                           R1 ; [+1]
        4 RETURN                           R0 1
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K1 ["useContext"]
        8 GETUPVAL                         R2 2
        9 GETTABLEKS                       R2 R2 K2 ["Context"]
       11 CALL                             R1 1 1
       12 GETUPVAL                         R2 3
       13 CALL                             R2 0 1
       14 GETUPVAL                         R3 4
       15 MOVE                             R4 R0
       16 CALL                             R3 1 1
       17 GETUPVAL                         R4 1
       18 GETTABLEKS                       R4 R4 K3 ["useCallback"]
       20 NEWCLOSURE                       R5 P0
       21 CAPTURE                          VAL R2
       22 CAPTURE                          VAL R1
       23 CAPTURE                          UPVAL U5
       24 CAPTURE                          VAL R3
       25 NEWTABLE                         R6 0 3
       27 MOVE                             R7 R1
       28 MOVE                             R8 R3
       29 MOVE                             R9 R2
       30 SETLIST                          R6 R7 3 [1]
       32 CALL                             R4 2 1
       33 RETURN                           R4 1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+5]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["popTeamCommunicationAsSystemReminders"]
        5 CALL                             R0 0 -1
        6 RETURN                           R0 -1
        7 NEWTABLE                         R0 0 0
        9 RETURN                           R0 1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 NEWTABLE                         R2 0 1
        3 MOVE                             R3 R0
        4 SETLIST                          R2 R3 1 [1]
        6 CALL                             R1 1 0
        7 RETURN                           R0 1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["Compaction"]
        2 LOADK                            R4 K1 ["Complete"]
        3 NAMECALL                         R1 R1 K2 ["getText"]
        5 CALL                             R1 3 1
        6 SETTABLEKS                       R1 R0 K3 ["summary"]
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K4 ["streaming"]
       11 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getSetting"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+4]
        6 JUMPIFEQKS                       R1 K1 [""] ; [+3]
        8 GETUPVAL                         R2 1
        9 SETTABLE                         R1 R2 R0
       10 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R2 K3 [{"errorType", "messageGuid", "threadId"}]
        2 SETTABLEKS                       R0 R2 K0 ["errorType"]
        4 GETUPVAL                         R3 1
        5 SETTABLEKS                       R3 R2 K1 ["messageGuid"]
        7 GETUPVAL                         R3 2
        8 SETTABLEKS                       R3 R2 K2 ["threadId"]
       10 CALL                             R1 1 0
       11 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setLastPacketTime"]
        3 GETIMPORT                        R1 K3 [os.clock]
        5 CALL                             R1 0 -1
        6 CALL                             R0 -1 0
        7 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setLastPacketTime"]
        3 GETIMPORT                        R1 K3 [os.clock]
        5 CALL                             R1 0 -1
        6 CALL                             R0 -1 0
        7 RETURN                           R0 0

PROTO_17:
        0 MOVE                             R2 R1
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 GETTABLEKS                       R3 R2 K0 ["threadId"]
        6 JUMPIFNOTEQKNIL                  R3 ; [+9]
        8 GETIMPORT                        R3 K3 [table.clone]
       10 MOVE                             R4 R2
       11 CALL                             R3 1 1
       12 MOVE                             R2 R3
       13 GETUPVAL                         R3 0
       14 SETTABLEKS                       R3 R2 K0 ["threadId"]
       16 GETUPVAL                         R3 1
       17 GETTABLEKS                       R3 R3 K4 ["setInputEnabled"]
       19 MOVE                             R4 R0
       20 MOVE                             R5 R2
       21 CALL                             R3 2 0
       22 JUMPIFNOT                        R0 ; [+16]
       23 GETUPVAL                         R3 2
       24 JUMPIF                           R3 ; [+14]
       25 LOADB                            R3 1
       26 SETUPVAL                         R3 2
       27 GETUPVAL                         R3 3
       28 DUPTABLE                         R4 K7 [{"sessionId", "threadId", "messageId"}]
       29 GETUPVAL                         R5 4
       30 SETTABLEKS                       R5 R4 K5 ["sessionId"]
       32 GETUPVAL                         R5 0
       33 SETTABLEKS                       R5 R4 K0 ["threadId"]
       35 GETUPVAL                         R5 5
       36 SETTABLEKS                       R5 R4 K6 ["messageId"]
       38 CALL                             R3 1 0
       39 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R2 R1 K0 ["onNewMessage"]
        5 MOVE                             R3 R0
        6 CALL                             R2 1 0
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R2 R2 K1 ["get"]
       10 CALL                             R2 0 1
       11 GETTABLEKS                       R2 R2 K2 ["EventLogger"]
       13 NEWTABLE                         R3 0 0
       15 NEWCLOSURE                       R4 P0
       16 CAPTURE                          UPVAL U3
       17 CAPTURE                          VAL R3
       18 GETUPVAL                         R5 4
       19 GETTABLEKS                       R5 R5 K3 ["CLAUDE_API_KEY"]
       21 GETUPVAL                         R6 3
       22 GETTABLEKS                       R6 R6 K4 ["getSetting"]
       24 MOVE                             R7 R5
       25 CALL                             R6 1 1
       26 JUMPIFNOT                        R6 ; [+3]
       27 JUMPIFEQKS                       R6 K5 [""] ; [+2]
       29 SETTABLE                         R6 R3 R5
       30 GETUPVAL                         R5 4
       31 GETTABLEKS                       R5 R5 K6 ["GEMINI_API_KEY"]
       33 GETUPVAL                         R6 3
       34 GETTABLEKS                       R6 R6 K4 ["getSetting"]
       36 MOVE                             R7 R5
       37 CALL                             R6 1 1
       38 JUMPIFNOT                        R6 ; [+3]
       39 JUMPIFEQKS                       R6 K5 [""] ; [+2]
       41 SETTABLE                         R6 R3 R5
       42 GETUPVAL                         R5 4
       43 GETTABLEKS                       R5 R5 K7 ["OPENAI_API_KEY"]
       45 GETUPVAL                         R6 3
       46 GETTABLEKS                       R6 R6 K4 ["getSetting"]
       48 MOVE                             R7 R5
       49 CALL                             R6 1 1
       50 JUMPIFNOT                        R6 ; [+3]
       51 JUMPIFEQKS                       R6 K5 [""] ; [+2]
       53 SETTABLE                         R6 R3 R5
       54 GETUPVAL                         R5 5
       55 GETTABLEKS                       R5 R5 K8 ["selectedModel"]
       57 DUPTABLE                         R6 K16 [{"messageGuid", "sessionId", "threadId", "message", "model", "assistantMode", "attachments"}]
       58 SETTABLEKS                       R0 R6 K9 ["messageGuid"]
       60 GETUPVAL                         R7 6
       61 SETTABLEKS                       R7 R6 K10 ["sessionId"]
       63 GETUPVAL                         R7 1
       64 SETTABLEKS                       R7 R6 K11 ["threadId"]
       66 GETUPVAL                         R7 7
       67 SETTABLEKS                       R7 R6 K12 ["message"]
       69 SETTABLEKS                       R5 R6 K13 ["model"]
       71 GETUPVAL                         R7 8
       72 SETTABLEKS                       R7 R6 K14 ["assistantMode"]
       74 GETUPVAL                         R9 9
       75 LENGTH                           R8 R9
       76 LOADN                            R9 0
       77 JUMPIFNOTLT                      R9 R8 ; [+3]
       79 GETUPVAL                         R7 9
       80 JUMP                             ; [+1]
       81 LOADNIL                          R7
       82 SETTABLEKS                       R7 R6 K15 ["attachments"]
       84 GETTABLEKS                       R7 R2 K17 ["logUserMessageSent"]
       86 MOVE                             R8 R6
       87 CALL                             R7 1 0
       88 NEWCLOSURE                       R7 P1
       89 CAPTURE                          UPVAL U10
       90 CAPTURE                          VAL R0
       91 CAPTURE                          UPVAL U1
       92 NEWCLOSURE                       R8 P2
       93 CAPTURE                          UPVAL U11
       94 NEWCLOSURE                       R9 P3
       95 CAPTURE                          UPVAL U11
       96 DUPTABLE                         R10 K22 [{["messageGuid"], ["sessionId"], ["threadId"], ["messageId"], ["contentId"] = , ["toolId"] = , ["assistantMode"]}]
       97 SETTABLEKS                       R0 R10 K9 ["messageGuid"]
       99 GETUPVAL                         R11 6
      100 SETTABLEKS                       R11 R10 K10 ["sessionId"]
      102 GETUPVAL                         R11 1
      103 SETTABLEKS                       R11 R10 K11 ["threadId"]
      105 SETTABLEKS                       R0 R10 K18 ["messageId"]
      107 GETUPVAL                         R11 8
      108 SETTABLEKS                       R11 R10 K14 ["assistantMode"]
      110 LOADB                            R11 0
      111 NEWCLOSURE                       R12 P4
      112 CAPTURE                          UPVAL U1
      113 CAPTURE                          UPVAL U12
      114 CAPTURE                          REF R11
      115 CAPTURE                          UPVAL U13
      116 CAPTURE                          UPVAL U6
      117 CAPTURE                          VAL R0
      118 GETUPVAL                         R13 14
      119 GETTABLEKS                       R13 R13 K23 ["createLLMSession"]
      121 DUPTABLE                         R14 K44 [{"showError", "messageGuid", "conversationSessionId", "threadId", "requestLLM", "systemMessage", "observer", "setInputEnabled", "onToolCall", "setModelQuality", "onPacketReceived", "maxToolCalls", "timeoutMs", "initialMessages", "requestStartTime", "tools", "apiKeys", "selectedModel", "messageId", "logRequestStop", "assistantMode", "compactedStore", "selectedProvider", "uiMessageCount", "getInterruptionMessages"}]
      122 SETTABLEKS                       R7 R14 K24 ["showError"]
      124 SETTABLEKS                       R0 R14 K9 ["messageGuid"]
      126 GETUPVAL                         R15 6
      127 SETTABLEKS                       R15 R14 K25 ["conversationSessionId"]
      129 GETUPVAL                         R15 1
      130 SETTABLEKS                       R15 R14 K11 ["threadId"]
      132 GETUPVAL                         R15 15
      133 SETTABLEKS                       R15 R14 K26 ["requestLLM"]
      135 GETUPVAL                         R15 16
      136 SETTABLEKS                       R15 R14 K27 ["systemMessage"]
      138 SETTABLEKS                       R1 R14 K28 ["observer"]
      140 SETTABLEKS                       R12 R14 K29 ["setInputEnabled"]
      142 GETUPVAL                         R16 17
      143 NEWCLOSURE                       R15 P5
      144 CAPTURE                          VAL R16
      145 CAPTURE                          UPVAL U4
      146 CAPTURE                          VAL R10
      147 CAPTURE                          VAL R9
      148 CAPTURE                          UPVAL U18
      149 CAPTURE                          UPVAL U19
      150 SETTABLEKS                       R15 R14 K30 ["onToolCall"]
      152 GETUPVAL                         R15 20
      153 GETTABLEKS                       R15 R15 K31 ["setModelQuality"]
      155 SETTABLEKS                       R15 R14 K31 ["setModelQuality"]
      157 SETTABLEKS                       R8 R14 K32 ["onPacketReceived"]
      159 GETUPVAL                         R15 21
      160 GETTABLEKS                       R15 R15 K45 ["FIntMCPAssistantMaxToolCalls"]
      162 SETTABLEKS                       R15 R14 K33 ["maxToolCalls"]
      164 GETUPVAL                         R15 21
      165 GETTABLEKS                       R15 R15 K46 ["FIntAssistantProcessEventTimeoutMS"]
      167 SETTABLEKS                       R15 R14 K34 ["timeoutMs"]
      169 GETUPVAL                         R15 22
      170 SETTABLEKS                       R15 R14 K35 ["initialMessages"]
      172 GETUPVAL                         R15 23
      173 SETTABLEKS                       R15 R14 K36 ["requestStartTime"]
      175 GETUPVAL                         R15 24
      176 SETTABLEKS                       R15 R14 K37 ["tools"]
      178 SETTABLEKS                       R3 R14 K38 ["apiKeys"]
      180 SETTABLEKS                       R5 R14 K8 ["selectedModel"]
      182 SETTABLEKS                       R0 R14 K18 ["messageId"]
      184 GETUPVAL                         R15 25
      185 SETTABLEKS                       R15 R14 K39 ["logRequestStop"]
      187 GETUPVAL                         R15 8
      188 SETTABLEKS                       R15 R14 K14 ["assistantMode"]
      190 GETUPVAL                         R15 26
      191 SETTABLEKS                       R15 R14 K40 ["compactedStore"]
      193 GETUPVAL                         R15 5
      194 GETTABLEKS                       R15 R15 K41 ["selectedProvider"]
      196 SETTABLEKS                       R15 R14 K41 ["selectedProvider"]
      198 GETUPVAL                         R15 27
      199 SETTABLEKS                       R15 R14 K42 ["uiMessageCount"]
      201 GETUPVAL                         R16 21
      202 GETTABLEKS                       R16 R16 K47 ["FFlagAssistantMultiPlayerAgents"]
      204 JUMPIFNOT                        R16 ; [+2]
      205 GETUPVAL                         R15 28
      206 JUMP                             ; [+1]
      207 LOADNIL                          R15
      208 SETTABLEKS                       R15 R14 K43 ["getInterruptionMessages"]
      210 CALL                             R13 1 1
      211 DUPTABLE                         R14 K54 [{["threadId"], ["messages"], ["tools"], ["system"], ["messageGuid"], ["isFirstMessage"] = True, ["isAgenticMode"] = False, ["apiKeys"], ["selectedModel"], ["assistantMode"]}]
      212 GETUPVAL                         R15 1
      213 SETTABLEKS                       R15 R14 K11 ["threadId"]
      215 GETUPVAL                         R15 22
      216 SETTABLEKS                       R15 R14 K48 ["messages"]
      218 GETUPVAL                         R15 24
      219 SETTABLEKS                       R15 R14 K37 ["tools"]
      221 GETUPVAL                         R15 16
      222 SETTABLEKS                       R15 R14 K49 ["system"]
      224 SETTABLEKS                       R0 R14 K9 ["messageGuid"]
      226 SETTABLEKS                       R3 R14 K38 ["apiKeys"]
      228 SETTABLEKS                       R5 R14 K8 ["selectedModel"]
      230 GETUPVAL                         R15 8
      231 SETTABLEKS                       R15 R14 K14 ["assistantMode"]
      233 GETUPVAL                         R15 15
      234 MOVE                             R16 R14
      235 GETTABLEKS                       R17 R13 K55 ["processEvent"]
      237 CALL                             R15 2 0
      238 CLOSEUPVALS                      R11
      239 RETURN                           R0 0

PROTO_19:
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
       84 JUMPIF                           R2 ; [+144]
       85 GETUPVAL                         R6 5
       86 GETTABLEKS                       R6 R6 K17 ["shouldCompact"]
       88 GETTABLEKS                       R7 R3 K11 ["messages"]
       90 DUPTABLE                         R8 K20 [{["isSubagent"] = False, ["selectedModel"]}]
       91 GETUPVAL                         R9 0
       92 GETTABLEKS                       R9 R9 K13 ["selectedModel"]
       94 SETTABLEKS                       R9 R8 K13 ["selectedModel"]
       96 CALL                             R6 2 1
       97 JUMPIFNOT                        R6 ; [+131]
       98 GETUPVAL                         R6 6
       99 GETTABLEKS                       R6 R6 K21 ["setLastPacketTime"]
      101 GETIMPORT                        R7 K24 [os.clock]
      103 CALL                             R7 0 -1
      104 CALL                             R6 -1 0
      105 GETUPVAL                         R6 7
      106 DUPTABLE                         R7 K27 [{["role"] = "assistant", ["threadId"]}]
      107 GETUPVAL                         R8 3
      108 SETTABLEKS                       R8 R7 K12 ["threadId"]
      110 CALL                             R6 1 1
      111 GETUPVAL                         R7 8
      112 DUPTABLE                         R8 K30 [{"messageId", "threadId", "content"}]
      113 SETTABLEKS                       R6 R8 K28 ["messageId"]
      115 GETUPVAL                         R9 3
      116 SETTABLEKS                       R9 R8 K12 ["threadId"]
      118 DUPTABLE                         R9 K33 [{"type", "summary", "streaming"}]
      119 GETUPVAL                         R10 9
      120 GETTABLEKS                       R10 R10 K34 ["Type"]
      122 SETTABLEKS                       R10 R9 K31 ["type"]
      124 GETUPVAL                         R10 10
      125 LOADK                            R12 K35 ["Compaction"]
      126 LOADK                            R13 K36 ["InProgress"]
      127 NAMECALL                         R10 R10 K37 ["getText"]
      129 CALL                             R10 3 1
      130 SETTABLEKS                       R10 R9 K7 ["summary"]
      132 NEWTABLE                         R10 0 0
      134 SETTABLEKS                       R10 R9 K32 ["streaming"]
      136 SETTABLEKS                       R9 R8 K29 ["content"]
      138 CALL                             R7 1 1
      139 NEWTABLE                         R8 0 0
      141 NEWTABLE                         R9 0 3
      143 GETUPVAL                         R12 1
      144 GETTABLEKS                       R12 R12 K38 ["CLAUDE_API_KEY"]
      146 GETUPVAL                         R13 1
      147 GETTABLEKS                       R13 R13 K39 ["GEMINI_API_KEY"]
      149 GETUPVAL                         R14 1
      150 GETTABLEKS                       R14 R14 K40 ["OPENAI_API_KEY"]
      152 SETLIST                          R9 R12 3 [1]
      154 LOADNIL                          R10
      155 LOADNIL                          R11
      156 FORGPREP                         R9
      157 GETUPVAL                         R14 11
      158 GETTABLEKS                       R14 R14 K41 ["getSetting"]
      160 MOVE                             R15 R13
      161 CALL                             R14 1 1
      162 JUMPIFNOT                        R14 ; [+3]
      163 JUMPIFEQKS                       R14 K42 [""] ; [+2]
      165 SETTABLE                         R14 R8 R13
      166 FORGLOOP                         R9 2 ; [-10]
      168 GETUPVAL                         R9 5
      169 GETTABLEKS                       R9 R9 K43 ["compact"]
      171 GETTABLEKS                       R10 R3 K11 ["messages"]
      173 DUPTABLE                         R11 K46 [{"requestLLM", "threadId", "compactedStore", "selectedModel", "selectedProvider", "apiKeys", "uiMessageCount"}]
      174 GETUPVAL                         R12 12
      175 SETTABLEKS                       R12 R11 K44 ["requestLLM"]
      177 GETUPVAL                         R12 3
      178 SETTABLEKS                       R12 R11 K12 ["threadId"]
      180 SETTABLEKS                       R5 R11 K15 ["compactedStore"]
      182 GETUPVAL                         R12 0
      183 GETTABLEKS                       R12 R12 K13 ["selectedModel"]
      185 SETTABLEKS                       R12 R11 K13 ["selectedModel"]
      187 GETUPVAL                         R12 0
      188 GETTABLEKS                       R12 R12 K0 ["selectedProvider"]
      190 SETTABLEKS                       R12 R11 K0 ["selectedProvider"]
      192 SETTABLEKS                       R8 R11 K45 ["apiKeys"]
      194 SETTABLEKS                       R4 R11 K9 ["uiMessageCount"]
      196 CALL                             R9 2 1
      197 DUPTABLE                         R10 K16 [{"messages", "uiMessageCount"}]
      198 GETTABLEKS                       R11 R9 K11 ["messages"]
      200 SETTABLEKS                       R11 R10 K11 ["messages"]
      202 SETTABLEKS                       R4 R10 K9 ["uiMessageCount"]
      204 MOVE                             R3 R10
      205 GETTABLEKS                       R2 R9 K15 ["compactedStore"]
      207 JUMPIFNOT                        R7 ; [+14]
      208 GETUPVAL                         R10 13
      209 DUPTABLE                         R11 K49 [{"messageId", "threadId", "contentId", "transformFn"}]
      210 SETTABLEKS                       R6 R11 K28 ["messageId"]
      212 GETUPVAL                         R12 3
      213 SETTABLEKS                       R12 R11 K12 ["threadId"]
      215 SETTABLEKS                       R7 R11 K47 ["contentId"]
      217 DUPCLOSURE                       R12 K50 [PROTO_12]
      218 CAPTURE                          UPVAL U10
      219 SETTABLEKS                       R12 R11 K48 ["transformFn"]
      221 CALL                             R10 1 0
      222 GETUPVAL                         R10 6
      223 GETTABLEKS                       R10 R10 K21 ["setLastPacketTime"]
      225 GETIMPORT                        R11 K24 [os.clock]
      227 CALL                             R11 0 -1
      228 CALL                             R10 -1 0
      229 GETTABLEKS                       R6 R3 K11 ["messages"]
      231 GETUPVAL                         R7 14
      232 GETTABLEKS                       R7 R7 K51 ["FFlagDebugLogAssistantUI"]
      234 JUMPIFNOT                        R7 ; [+4]
      235 GETIMPORT                        R7 K53 [print]
      237 LOADK                            R8 K54 ["Preparing message for response contents..."]
      238 CALL                             R7 1 0
      239 NEWCLOSURE                       R7 P1
      240 CAPTURE                          UPVAL U15
      241 CAPTURE                          UPVAL U3
      242 CAPTURE                          UPVAL U16
      243 CAPTURE                          UPVAL U11
      244 CAPTURE                          UPVAL U1
      245 CAPTURE                          UPVAL U0
      246 CAPTURE                          UPVAL U17
      247 CAPTURE                          UPVAL U18
      248 CAPTURE                          UPVAL U19
      249 CAPTURE                          UPVAL U20
      250 CAPTURE                          UPVAL U21
      251 CAPTURE                          UPVAL U6
      252 CAPTURE                          UPVAL U22
      253 CAPTURE                          UPVAL U23
      254 CAPTURE                          UPVAL U24
      255 CAPTURE                          UPVAL U12
      256 CAPTURE                          UPVAL U25
      257 CAPTURE                          UPVAL U26
      258 CAPTURE                          UPVAL U27
      259 CAPTURE                          UPVAL U28
      260 CAPTURE                          UPVAL U29
      261 CAPTURE                          UPVAL U14
      262 CAPTURE                          VAL R6
      263 CAPTURE                          UPVAL U30
      264 CAPTURE                          UPVAL U31
      265 CAPTURE                          UPVAL U32
      266 CAPTURE                          REF R2
      267 CAPTURE                          REF R4
      268 CAPTURE                          UPVAL U33
      269 GETUPVAL                         R8 34
      270 JUMPIFNOT                        R8 ; [+4]
      271 MOVE                             R8 R7
      272 GETUPVAL                         R9 34
      273 CALL                             R8 1 0
      274 JUMP                             ; [+9]
      275 GETUPVAL                         R8 35
      276 GETUPVAL                         R9 1
      277 GETTABLEKS                       R9 R9 K55 ["ROLE"]
      279 GETTABLEKS                       R9 R9 K56 ["Assistant"]
      281 MOVE                             R10 R7
      282 GETUPVAL                         R11 3
      283 CALL                             R8 3 0
      284 CLOSEUPVALS                      R2
      285 RETURN                           R0 0

PROTO_20:
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
       51 JUMPIFNOT                        R5 ; [+29]
       52 GETUPVAL                         R5 6
       53 DUPTABLE                         R6 K18 [{["errorType"] = "client_error", ["threadId"]}]
       54 GETUPVAL                         R7 7
       55 SETTABLEKS                       R7 R6 K17 ["threadId"]
       57 CALL                             R5 1 0
       58 GETUPVAL                         R5 8
       59 GETTABLEKS                       R5 R5 K19 ["setInputEnabled"]
       61 LOADB                            R6 1
       62 DUPTABLE                         R7 K20 [{"threadId"}]
       63 GETUPVAL                         R8 7
       64 SETTABLEKS                       R8 R7 K17 ["threadId"]
       66 CALL                             R5 2 0
       67 GETIMPORT                        R5 K22 [error]
       69 LOADK                            R7 K23 ["Failed to get tools list with error: %*"]
       70 GETUPVAL                         R9 9
       71 MOVE                             R11 R4
       72 NAMECALL                         R9 R9 K24 ["JSONEncode"]
       74 CALL                             R9 2 1
       75 NAMECALL                         R7 R7 K25 ["format"]
       77 CALL                             R7 2 1
       78 MOVE                             R6 R7
       79 CALL                             R5 1 0
       80 RETURN                           R0 0
       81 LOADNIL                          R5
       82 GETUPVAL                         R6 10
       83 GETTABLEKS                       R7 R4 K26 ["result"]
       85 GETTABLEKS                       R7 R7 K27 ["tools"]
       87 CALL                             R6 1 1
       88 GETUPVAL                         R7 11
       89 MOVE                             R8 R6
       90 CALL                             R7 1 1
       91 MOVE                             R5 R7
       92 GETUPVAL                         R7 12
       93 GETUPVAL                         R9 1
       94 GETTABLEKS                       R9 R9 K3 ["selectedProvider"]
       96 GETUPVAL                         R10 2
       97 GETTABLEKS                       R10 R10 K4 ["LLMProviderTypes"]
       99 GETTABLEKS                       R10 R10 K5 ["Studio"]
      101 JUMPIFNOTEQ                      R9 R10 ; [+2]
      103 LOADB                            R8 0 +1
      104 LOADB                            R8 1
      105 JUMPIFNOT                        R8 ; [+31]
      106 GETUPVAL                         R9 13
      107 DUPTABLE                         R10 K32 [{["environment"], ["tools"], ["model"], [4], ["isDebugMode"] = True}]
      108 GETUPVAL                         R11 14
      109 GETTABLEKS                       R11 R11 K33 ["get"]
      111 CALL                             R11 0 1
      112 SETTABLEKS                       R11 R10 K28 ["environment"]
      114 GETTABLEKS                       R11 R4 K26 ["result"]
      116 GETTABLEKS                       R11 R11 K27 ["tools"]
      118 SETTABLEKS                       R11 R10 K27 ["tools"]
      120 GETUPVAL                         R11 1
      121 GETTABLEKS                       R11 R11 K34 ["selectedModel"]
      123 SETTABLEKS                       R11 R10 K29 ["model"]
      125 GETUPVAL                         R11 0
      126 SETTABLEKS                       R11 R10 K0 ["assistantMode"]
      128 CALL                             R9 1 2
      129 JUMPIFNOT                        R9 ; [+2]
      130 MOVE                             R7 R10
      131 JUMP                             ; [+5]
      132 GETIMPORT                        R11 K36 [warn]
      134 LOADK                            R12 K37 ["Failed to fetch BYOK system prompt, using fallback:"]
      135 MOVE                             R13 R10
      136 CALL                             R11 2 0
      137 GETUPVAL                         R9 15
      138 JUMPIFNOT                        R9 ; [+40]
      139 DUPTABLE                         R9 K38 [{"tools"}]
      140 GETTABLEKS                       R10 R4 K26 ["result"]
      142 GETTABLEKS                       R10 R10 K27 ["tools"]
      144 SETTABLEKS                       R10 R9 K27 ["tools"]
      146 GETUPVAL                         R10 15
      147 MOVE                             R11 R9
      148 CALL                             R10 1 3
      149 FORGPREP                         R10
      150 GETUPVAL                         R15 16
      151 DUPTABLE                         R16 K42 [{["role"] = "user", ["hidden"] = True, ["threadId"]}]
      152 GETUPVAL                         R17 7
      153 SETTABLEKS                       R17 R16 K17 ["threadId"]
      155 CALL                             R15 1 1
      156 GETUPVAL                         R16 17
      157 DUPTABLE                         R17 K45 [{"messageId", "threadId", "content"}]
      158 SETTABLEKS                       R15 R17 K43 ["messageId"]
      160 GETUPVAL                         R18 7
      161 SETTABLEKS                       R18 R17 K17 ["threadId"]
      163 DUPTABLE                         R18 K48 [{"type", "text"}]
      164 GETUPVAL                         R19 18
      165 GETTABLEKS                       R19 R19 K49 ["Type"]
      167 SETTABLEKS                       R19 R18 K46 ["type"]
      169 GETUPVAL                         R19 19
      170 MOVE                             R20 R14
      171 CALL                             R19 1 1
      172 SETTABLEKS                       R19 R18 K47 ["text"]
      174 SETTABLEKS                       R18 R17 K44 ["content"]
      176 CALL                             R16 1 0
      177 FORGLOOP                         R10 2 ; [-28]
      179 GETUPVAL                         R9 3
      180 GETTABLEKS                       R9 R9 K50 ["FFlagDebugLogAssistantUI"]
      182 JUMPIFNOT                        R9 ; [+4]
      183 GETIMPORT                        R9 K52 [print]
      185 LOADK                            R10 K53 ["Reading conversation history..."]
      186 CALL                             R9 1 0
      187 GETUPVAL                         R9 20
      188 NEWCLOSURE                       R10 P0
      189 CAPTURE                          UPVAL U1
      190 CAPTURE                          UPVAL U2
      191 CAPTURE                          UPVAL U21
      192 CAPTURE                          UPVAL U7
      193 CAPTURE                          UPVAL U22
      194 CAPTURE                          UPVAL U23
      195 CAPTURE                          UPVAL U24
      196 CAPTURE                          UPVAL U16
      197 CAPTURE                          UPVAL U17
      198 CAPTURE                          UPVAL U25
      199 CAPTURE                          UPVAL U26
      200 CAPTURE                          UPVAL U27
      201 CAPTURE                          UPVAL U28
      202 CAPTURE                          UPVAL U29
      203 CAPTURE                          UPVAL U3
      204 CAPTURE                          UPVAL U30
      205 CAPTURE                          UPVAL U14
      206 CAPTURE                          UPVAL U31
      207 CAPTURE                          UPVAL U32
      208 CAPTURE                          UPVAL U0
      209 CAPTURE                          UPVAL U33
      210 CAPTURE                          UPVAL U6
      211 CAPTURE                          UPVAL U8
      212 CAPTURE                          UPVAL U34
      213 CAPTURE                          UPVAL U35
      214 CAPTURE                          REF R7
      215 CAPTURE                          VAL R0
      216 CAPTURE                          UPVAL U36
      217 CAPTURE                          UPVAL U37
      218 CAPTURE                          UPVAL U38
      219 CAPTURE                          UPVAL U39
      220 CAPTURE                          REF R5
      221 CAPTURE                          UPVAL U40
      222 CAPTURE                          UPVAL U41
      223 CAPTURE                          UPVAL U42
      224 CAPTURE                          UPVAL U43
      225 GETUPVAL                         R11 7
      226 CALL                             R9 2 0
      227 CLOSEUPVALS                      R5
      228 RETURN                           R0 0

PROTO_21:
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

PROTO_22:
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

PROTO_23:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["setInputEnabled"]
        3 MOVE                             R2 R0
        4 DUPTABLE                         R3 K3 [{"focus", "threadId"}]
        5 GETUPVAL                         R4 1
        6 SETTABLEKS                       R4 R3 K1 ["focus"]
        8 GETUPVAL                         R4 2
        9 SETTABLEKS                       R4 R3 K2 ["threadId"]
       11 CALL                             R1 2 0
       12 RETURN                           R0 0

PROTO_24:
        0 GETTABLEKS                       R1 R0 K0 ["threadId"]
        2 JUMPIF                           R1 ; [+1]
        3 GETUPVAL                         R1 0
        4 GETUPVAL                         R3 0
        5 JUMPIFEQ                         R1 R3 ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 LOADNIL                          R3
       10 LOADNIL                          R4
       11 JUMPIFNOT                        R2 ; [+7]
       12 GETUPVAL                         R5 1
       13 GETTABLEKS                       R3 R5 K1 ["inputEnabled"]
       15 GETUPVAL                         R5 1
       16 GETTABLEKS                       R4 R5 K2 ["reasonDisabled"]
       18 JUMP                             ; [+15]
       19 GETUPVAL                         R6 1
       20 GETTABLEKS                       R6 R6 K3 ["allThreadInputStates"]
       22 GETTABLE                         R5 R6 R1
       23 LOADB                            R6 1
       24 JUMPIFEQKNIL                     R5 ; [+3]
       26 GETTABLEKS                       R6 R5 K1 ["inputEnabled"]
       28 MOVE                             R3 R6
       29 MOVE                             R6 R5
       30 JUMPIFNOT                        R6 ; [+2]
       31 GETTABLEKS                       R6 R5 K2 ["reasonDisabled"]
       33 MOVE                             R4 R6
       34 JUMPIF                           R3 ; [+12]
       35 JUMPIFNOT                        R4 ; [+10]
       36 GETIMPORT                        R5 K5 [warn]
       38 LOADK                            R7 K6 ["Input is disabled: %*"]
       39 GETTABLEKS                       R9 R4 K2 ["reasonDisabled"]
       41 NAMECALL                         R7 R7 K7 ["format"]
       43 CALL                             R7 2 1
       44 MOVE                             R6 R7
       45 CALL                             R5 1 0
       46 RETURN                           R0 0
       47 GETUPVAL                         R5 2
       48 GETTABLEKS                       R5 R5 K8 ["FFlagAssistantSupportSlashCommandCancellation"]
       50 JUMPIFNOT                        R5 ; [+7]
       51 GETUPVAL                         R5 3
       52 GETTABLEKS                       R5 R5 K9 ["setLastPacketTime"]
       54 GETIMPORT                        R6 K12 [os.clock]
       56 CALL                             R6 0 -1
       57 CALL                             R5 -1 0
       58 GETUPVAL                         R5 4
       59 GETTABLEKS                       R5 R5 K13 ["setInputEnabled"]
       61 LOADB                            R6 0
       62 DUPTABLE                         R7 K14 [{"threadId"}]
       63 SETTABLEKS                       R1 R7 K0 ["threadId"]
       65 CALL                             R5 2 0
       66 GETTABLEKS                       R5 R0 K15 ["text"]
       68 GETTABLEKS                       R7 R0 K17 ["retry"]
       70 ORK                              R6 R7 K16 [False]
       71 GETTABLEKS                       R8 R0 K18 ["hidden"]
       73 JUMPIFEQKB                       R8 TRUE ; [+2]
       75 LOADB                            R7 0 +1
       76 LOADB                            R7 1
       77 GETIMPORT                        R8 K12 [os.clock]
       79 CALL                             R8 0 1
       80 LOADB                            R10 1
       81 GETTABLEKS                       R11 R0 K19 ["previousMessageId"]
       83 JUMPIFNOTEQKNIL                  R11 ; [+2]
       85 NOT                              R10 R6
       86 FASTCALL2K                       ASSERT R10 K20 ; [+4]
       88 LOADK                            R11 K20 ["previousMessageId must be provided for retry messages"]
       89 GETIMPORT                        R9 K22 [assert]
       91 CALL                             R9 2 0
       92 NEWTABLE                         R9 0 0
       94 JUMPIF                           R6 ; [+94]
       95 GETUPVAL                         R10 5
       96 DUPTABLE                         R11 K25 [{["role"] = "user", ["hidden"], [3]}]
       97 SETTABLEKS                       R7 R11 K18 ["hidden"]
       99 SETTABLEKS                       R1 R11 K0 ["threadId"]
      101 CALL                             R10 1 1
      102 GETTABLEKS                       R11 R0 K26 ["images"]
      104 JUMPIFNOT                        R11 ; [+63]
      105 GETTABLEKS                       R11 R0 K26 ["images"]
      107 LOADNIL                          R12
      108 LOADNIL                          R13
      109 FORGPREP                         R11
      110 GETTABLEKS                       R16 R15 K27 ["data"]
      112 LENGTH                           R17 R16
      113 LOADN                            R19 10
      114 JUMPIFNOTLT                      R19 R17 ; [+10]
      116 SUBK                             R20 R17 K28 [9]
      117 FASTCALL3                        STRING_SUB R16 R20 R17
      119 MOVE                             R19 R16
      120 MOVE                             R21 R17
      121 GETIMPORT                        R18 K31 [string.sub]
      123 CALL                             R18 3 1
      124 JUMP                             ; [+1]
      125 MOVE                             R18 R16
      126 DUPTABLE                         R21 K35 [{"imageDataSuffix", "imageDataSize", "mimeType"}]
      127 SETTABLEKS                       R18 R21 K32 ["imageDataSuffix"]
      129 SETTABLEKS                       R17 R21 K33 ["imageDataSize"]
      131 GETTABLEKS                       R22 R15 K34 ["mimeType"]
      133 SETTABLEKS                       R22 R21 K34 ["mimeType"]
      135 FASTCALL2                        TABLE_INSERT R9 R21 ; [+4]
      137 MOVE                             R20 R9
      138 GETIMPORT                        R19 K38 [table.insert]
      140 CALL                             R19 2 0
      141 FORGLOOP                         R11 2 ; [-32]
      143 GETTABLEKS                       R12 R0 K26 ["images"]
      145 LENGTH                           R11 R12
      146 LOADN                            R12 0
      147 JUMPIFNOTLT                      R12 R11 ; [+20]
      149 DUPTABLE                         R11 K42 [{["type"], ["imageContents"], ["expanded"] = False}]
      150 GETUPVAL                         R12 6
      151 GETTABLEKS                       R12 R12 K43 ["Type"]
      153 SETTABLEKS                       R12 R11 K39 ["type"]
      155 GETTABLEKS                       R12 R0 K26 ["images"]
      157 SETTABLEKS                       R12 R11 K40 ["imageContents"]
      159 GETUPVAL                         R12 7
      160 DUPTABLE                         R13 K46 [{"messageId", "threadId", "content"}]
      161 SETTABLEKS                       R10 R13 K44 ["messageId"]
      163 SETTABLEKS                       R1 R13 K0 ["threadId"]
      165 SETTABLEKS                       R11 R13 K45 ["content"]
      167 CALL                             R12 1 0
      168 LENGTH                           R11 R5
      169 LOADN                            R12 0
      170 JUMPIFNOTLT                      R12 R11 ; [+18]
      172 DUPTABLE                         R11 K47 [{"type", "text"}]
      173 GETUPVAL                         R12 8
      174 GETTABLEKS                       R12 R12 K43 ["Type"]
      176 SETTABLEKS                       R12 R11 K39 ["type"]
      178 SETTABLEKS                       R5 R11 K15 ["text"]
      180 GETUPVAL                         R12 7
      181 DUPTABLE                         R13 K46 [{"messageId", "threadId", "content"}]
      182 SETTABLEKS                       R10 R13 K44 ["messageId"]
      184 SETTABLEKS                       R1 R13 K0 ["threadId"]
      186 SETTABLEKS                       R11 R13 K45 ["content"]
      188 CALL                             R12 1 0
      189 GETUPVAL                         R10 2
      190 GETTABLEKS                       R10 R10 K48 ["FFlagDebugLogAssistantUI"]
      192 JUMPIFNOT                        R10 ; [+5]
      193 GETIMPORT                        R10 K50 [print]
      195 LOADK                            R11 K51 ["About to send message:"]
      196 MOVE                             R12 R5
      197 CALL                             R10 2 0
      198 GETUPVAL                         R10 9
      199 MOVE                             R11 R1
      200 DUPCLOSURE                       R12 K52 [PROTO_11]
      201 CAPTURE                          UPVAL U10
      202 CALL                             R10 2 0
      203 NEWCLOSURE                       R10 P1
      204 CAPTURE                          UPVAL U2
      205 CAPTURE                          UPVAL U11
      206 CAPTURE                          UPVAL U12
      207 CAPTURE                          UPVAL U13
      208 CAPTURE                          UPVAL U14
      209 CAPTURE                          UPVAL U15
      210 CAPTURE                          UPVAL U16
      211 CAPTURE                          UPVAL U17
      212 CAPTURE                          UPVAL U18
      213 CAPTURE                          VAL R1
      214 CAPTURE                          UPVAL U4
      215 CAPTURE                          UPVAL U19
      216 CAPTURE                          UPVAL U20
      217 CAPTURE                          UPVAL U21
      218 CAPTURE                          UPVAL U22
      219 CAPTURE                          UPVAL U23
      220 CAPTURE                          UPVAL U24
      221 CAPTURE                          UPVAL U25
      222 CAPTURE                          UPVAL U5
      223 CAPTURE                          UPVAL U7
      224 CAPTURE                          UPVAL U8
      225 CAPTURE                          UPVAL U26
      226 CAPTURE                          UPVAL U27
      227 CAPTURE                          UPVAL U28
      228 CAPTURE                          UPVAL U29
      229 CAPTURE                          UPVAL U30
      230 CAPTURE                          UPVAL U3
      231 CAPTURE                          UPVAL U31
      232 CAPTURE                          UPVAL U32
      233 CAPTURE                          UPVAL U33
      234 CAPTURE                          UPVAL U34
      235 CAPTURE                          UPVAL U35
      236 CAPTURE                          UPVAL U36
      237 CAPTURE                          UPVAL U37
      238 CAPTURE                          VAL R5
      239 CAPTURE                          VAL R9
      240 CAPTURE                          UPVAL U38
      241 CAPTURE                          UPVAL U39
      242 CAPTURE                          UPVAL U40
      243 CAPTURE                          UPVAL U41
      244 CAPTURE                          UPVAL U42
      245 CAPTURE                          VAL R8
      246 CAPTURE                          UPVAL U43
      247 CAPTURE                          UPVAL U44
      248 CAPTURE                          UPVAL U45
      249 NEWCLOSURE                       R11 P2
      250 CAPTURE                          UPVAL U4
      251 CAPTURE                          VAL R2
      252 CAPTURE                          VAL R1
      253 GETUPVAL                         R12 46
      254 DUPTABLE                         R13 K55 [{"prompt", "images", "threadId", "setInputEnabled", "onContinueWithLLM"}]
      255 SETTABLEKS                       R5 R13 K53 ["prompt"]
      257 GETTABLEKS                       R14 R0 K26 ["images"]
      259 SETTABLEKS                       R14 R13 K26 ["images"]
      261 SETTABLEKS                       R1 R13 K0 ["threadId"]
      263 SETTABLEKS                       R11 R13 K13 ["setInputEnabled"]
      265 SETTABLEKS                       R10 R13 K54 ["onContinueWithLLM"]
      267 CALL                             R12 1 1
      268 JUMPIFNOT                        R12 ; [+1]
      269 RETURN                           R0 0
      270 GETUPVAL                         R13 2
      271 GETTABLEKS                       R13 R13 K8 ["FFlagAssistantSupportSlashCommandCancellation"]
      273 JUMPIFNOT                        R13 ; [+6]
      274 GETUPVAL                         R13 11
      275 JUMPIFNOT                        R13 ; [+4]
      276 GETUPVAL                         R13 11
      277 GETTABLEKS                       R13 R13 K56 ["cancelSession"]
      279 CALL                             R13 0 0
      280 GETIMPORT                        R13 K59 [task.spawn]
      282 LOADNIL                          R15
      283 NEWCLOSURE                       R14 P3
      284 CAPTURE                          UPVAL U12
      285 CAPTURE                          UPVAL U13
      286 CAPTURE                          UPVAL U14
      287 CAPTURE                          UPVAL U15
      288 CAPTURE                          UPVAL U2
      289 CAPTURE                          UPVAL U16
      290 CAPTURE                          UPVAL U17
      291 CAPTURE                          UPVAL U18
      292 CAPTURE                          VAL R1
      293 CAPTURE                          UPVAL U4
      294 CAPTURE                          UPVAL U19
      295 CAPTURE                          UPVAL U20
      296 CAPTURE                          UPVAL U21
      297 CAPTURE                          UPVAL U22
      298 CAPTURE                          UPVAL U23
      299 CAPTURE                          UPVAL U24
      300 CAPTURE                          UPVAL U25
      301 CAPTURE                          UPVAL U5
      302 CAPTURE                          UPVAL U7
      303 CAPTURE                          UPVAL U8
      304 CAPTURE                          UPVAL U26
      305 CAPTURE                          UPVAL U27
      306 CAPTURE                          UPVAL U28
      307 CAPTURE                          UPVAL U29
      308 CAPTURE                          UPVAL U30
      309 CAPTURE                          UPVAL U3
      310 CAPTURE                          UPVAL U31
      311 CAPTURE                          UPVAL U32
      312 CAPTURE                          UPVAL U33
      313 CAPTURE                          UPVAL U34
      314 CAPTURE                          UPVAL U35
      315 CAPTURE                          UPVAL U36
      316 CAPTURE                          UPVAL U37
      317 CAPTURE                          VAL R5
      318 CAPTURE                          VAL R9
      319 CAPTURE                          UPVAL U38
      320 CAPTURE                          UPVAL U39
      321 CAPTURE                          UPVAL U40
      322 CAPTURE                          UPVAL U41
      323 CAPTURE                          UPVAL U42
      324 CAPTURE                          VAL R8
      325 CAPTURE                          UPVAL U43
      326 CAPTURE                          UPVAL U44
      327 CAPTURE                          VAL R15
      328 CAPTURE                          UPVAL U45
      329 CALL                             R13 1 0
      330 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+6]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 MOVE                             R3 R0
        6 CALL                             R2 1 -1
        7 CALL                             R1 -1 1
        8 RETURN                           R1 1
        9 GETUPVAL                         R1 3
       10 CALL                             R1 0 1
       11 GETUPVAL                         R2 4
       12 CALL                             R2 0 1
       13 GETUPVAL                         R3 5
       14 CALL                             R3 0 1
       15 GETUPVAL                         R4 6
       16 CALL                             R4 0 1
       17 GETUPVAL                         R5 7
       18 CALL                             R5 0 1
       19 GETUPVAL                         R6 8
       20 CALL                             R6 0 1
       21 GETUPVAL                         R7 9
       22 CALL                             R7 0 1
       23 GETUPVAL                         R8 10
       24 CALL                             R8 0 1
       25 GETUPVAL                         R9 11
       26 CALL                             R9 0 1
       27 GETUPVAL                         R10 12
       28 CALL                             R10 0 1
       29 GETUPVAL                         R11 13
       30 CALL                             R11 0 1
       31 GETUPVAL                         R12 14
       32 CALL                             R12 0 1
       33 GETUPVAL                         R13 15
       34 CALL                             R13 0 1
       35 GETUPVAL                         R14 16
       36 CALL                             R14 0 1
       37 GETUPVAL                         R15 17
       38 CALL                             R15 0 1
       39 GETUPVAL                         R16 18
       40 CALL                             R16 0 1
       41 GETUPVAL                         R17 19
       42 CALL                             R17 0 1
       43 GETUPVAL                         R18 20
       44 CALL                             R18 0 1
       45 GETUPVAL                         R19 21
       46 GETTABLEKS                       R19 R19 K0 ["useContext"]
       48 GETUPVAL                         R20 22
       49 GETTABLEKS                       R20 R20 K1 ["Context"]
       51 CALL                             R19 1 1
       52 GETTABLEKS                       R20 R19 K2 ["sessionId"]
       54 GETUPVAL                         R21 21
       55 GETTABLEKS                       R21 R21 K0 ["useContext"]
       57 GETUPVAL                         R22 23
       58 GETTABLEKS                       R22 R22 K1 ["Context"]
       60 CALL                             R21 1 1
       61 GETUPVAL                         R22 21
       62 GETTABLEKS                       R22 R22 K0 ["useContext"]
       64 GETUPVAL                         R23 24
       65 GETTABLEKS                       R23 R23 K1 ["Context"]
       67 CALL                             R22 1 1
       68 GETUPVAL                         R23 25
       69 CALL                             R23 0 1
       70 GETUPVAL                         R24 21
       71 GETTABLEKS                       R24 R24 K0 ["useContext"]
       73 GETUPVAL                         R25 26
       74 GETTABLEKS                       R25 R25 K1 ["Context"]
       76 CALL                             R24 1 1
       77 GETUPVAL                         R25 21
       78 GETTABLEKS                       R25 R25 K0 ["useContext"]
       80 GETUPVAL                         R26 27
       81 GETTABLEKS                       R26 R26 K1 ["Context"]
       83 CALL                             R25 1 1
       84 LOADNIL                          R26
       85 GETUPVAL                         R27 28
       86 GETTABLEKS                       R27 R27 K3 ["FFlagAssistantSupportSlashCommandCancellation"]
       88 JUMPIFNOT                        R27 ; [+8]
       89 GETUPVAL                         R27 21
       90 GETTABLEKS                       R27 R27 K0 ["useContext"]
       92 GETUPVAL                         R28 29
       93 GETTABLEKS                       R28 R28 K1 ["Context"]
       95 CALL                             R27 1 1
       96 MOVE                             R26 R27
       97 GETUPVAL                         R27 30
       98 CALL                             R27 0 1
       99 LOADNIL                          R28
      100 LOADNIL                          R29
      101 GETUPVAL                         R30 28
      102 GETTABLEKS                       R30 R30 K4 ["FFlagAssistantMultiPlayerAgents"]
      104 JUMPIFNOT                        R30 ; [+6]
      105 GETUPVAL                         R30 31
      106 CALL                             R30 0 1
      107 GETTABLEKS                       R28 R30 K5 ["isMultiPlayerClientAgent"]
      109 GETTABLEKS                       R29 R30 K6 ["isMultiPlayerClientAgentRunning"]
      111 NEWCLOSURE                       R30 P0
      112 CAPTURE                          REF R28
      113 CAPTURE                          UPVAL U32
      114 NEWCLOSURE                       R31 P1
      115 CAPTURE                          VAL R17
      116 CAPTURE                          VAL R21
      117 CAPTURE                          UPVAL U28
      118 CAPTURE                          VAL R25
      119 CAPTURE                          VAL R0
      120 CAPTURE                          VAL R1
      121 CAPTURE                          UPVAL U33
      122 CAPTURE                          VAL R2
      123 CAPTURE                          UPVAL U34
      124 CAPTURE                          VAL R18
      125 CAPTURE                          UPVAL U35
      126 CAPTURE                          REF R26
      127 CAPTURE                          VAL R5
      128 CAPTURE                          VAL R27
      129 CAPTURE                          VAL R24
      130 CAPTURE                          UPVAL U36
      131 CAPTURE                          REF R28
      132 CAPTURE                          REF R29
      133 CAPTURE                          VAL R13
      134 CAPTURE                          UPVAL U37
      135 CAPTURE                          UPVAL U38
      136 CAPTURE                          VAL R9
      137 CAPTURE                          VAL R7
      138 CAPTURE                          UPVAL U39
      139 CAPTURE                          UPVAL U40
      140 CAPTURE                          VAL R8
      141 CAPTURE                          UPVAL U41
      142 CAPTURE                          VAL R11
      143 CAPTURE                          UPVAL U42
      144 CAPTURE                          UPVAL U43
      145 CAPTURE                          UPVAL U44
      146 CAPTURE                          UPVAL U45
      147 CAPTURE                          UPVAL U46
      148 CAPTURE                          VAL R23
      149 CAPTURE                          VAL R6
      150 CAPTURE                          VAL R3
      151 CAPTURE                          VAL R14
      152 CAPTURE                          VAL R20
      153 CAPTURE                          VAL R15
      154 CAPTURE                          VAL R10
      155 CAPTURE                          UPVAL U47
      156 CAPTURE                          UPVAL U48
      157 CAPTURE                          VAL R22
      158 CAPTURE                          VAL R16
      159 CAPTURE                          VAL R30
      160 CAPTURE                          VAL R4
      161 CAPTURE                          VAL R12
      162 GETUPVAL                         R32 1
      163 MOVE                             R33 R31
      164 CALL                             R32 1 1
      165 CLOSEUPVALS                      R26
      166 RETURN                           R32 1

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
      165 GETTABLEKS                       R23 R0 K19 ["Components"]
      167 GETTABLEKS                       R23 R23 K22 ["Contexts"]
      169 GETTABLEKS                       R23 R23 K39 ["ThreadWorkQueueContext"]
      171 CALL                             R22 1 1
      172 GETIMPORT                        R23 K9 [require]
      174 GETTABLEKS                       R24 R0 K40 ["Resources"]
      176 GETTABLEKS                       R24 R24 K41 ["Localization"]
      178 GETTABLEKS                       R24 R24 K42 ["Translator"]
      180 CALL                             R23 1 1
      181 GETIMPORT                        R24 K9 [require]
      183 GETTABLEKS                       R25 R0 K43 ["Types"]
      185 CALL                             R24 1 1
      186 GETTABLEKS                       R25 R2 K12 ["Engine"]
      188 GETTABLEKS                       R25 R25 K44 ["compactThread"]
      190 GETIMPORT                        R26 K9 [require]
      192 GETTABLEKS                       R27 R0 K29 ["Util"]
      194 GETTABLEKS                       R27 R27 K45 ["fetchBYOKSystemPrompt"]
      196 CALL                             R26 1 1
      197 GETIMPORT                        R27 K9 [require]
      199 GETTABLEKS                       R28 R0 K29 ["Util"]
      201 GETTABLEKS                       R28 R28 K46 ["readThread"]
      203 CALL                             R27 1 1
      204 GETIMPORT                        R28 K9 [require]
      206 GETTABLEKS                       R29 R0 K29 ["Util"]
      208 GETTABLEKS                       R29 R29 K47 ["setLastActivityAt"]
      210 CALL                             R28 1 1
      211 GETIMPORT                        R29 K9 [require]
      213 GETTABLEKS                       R30 R0 K48 ["Hooks"]
      215 GETTABLEKS                       R30 R30 K49 ["useAddContent"]
      217 CALL                             R29 1 1
      218 GETIMPORT                        R30 K9 [require]
      220 GETTABLEKS                       R31 R0 K48 ["Hooks"]
      222 GETTABLEKS                       R31 R31 K50 ["useAddMessage"]
      224 CALL                             R30 1 1
      225 GETIMPORT                        R31 K9 [require]
      227 GETTABLEKS                       R32 R0 K48 ["Hooks"]
      229 GETTABLEKS                       R32 R32 K51 ["useAssistantMode"]
      231 CALL                             R31 1 1
      232 GETIMPORT                        R32 K9 [require]
      234 GETTABLEKS                       R33 R0 K48 ["Hooks"]
      236 GETTABLEKS                       R33 R33 K52 ["useEditContent"]
      238 CALL                             R32 1 1
      239 GETIMPORT                        R33 K9 [require]
      241 GETTABLEKS                       R34 R0 K48 ["Hooks"]
      243 GETTABLEKS                       R34 R34 K53 ["useEditThread"]
      245 CALL                             R33 1 1
      246 GETIMPORT                        R34 K9 [require]
      248 GETTABLEKS                       R35 R0 K48 ["Hooks"]
      250 GETTABLEKS                       R35 R35 K54 ["useGetContentObserver"]
      252 CALL                             R34 1 1
      253 GETIMPORT                        R35 K9 [require]
      255 GETTABLEKS                       R36 R0 K48 ["Hooks"]
      257 GETTABLEKS                       R36 R36 K55 ["useGetOrAddMessage"]
      259 CALL                             R35 1 1
      260 GETIMPORT                        R36 K9 [require]
      262 GETTABLEKS                       R37 R0 K48 ["Hooks"]
      264 GETTABLEKS                       R37 R37 K56 ["useGetThread"]
      266 CALL                             R36 1 1
      267 GETIMPORT                        R37 K9 [require]
      269 GETTABLEKS                       R38 R0 K48 ["Hooks"]
      271 GETTABLEKS                       R38 R38 K57 ["useLLMProcessEvent"]
      273 CALL                             R37 1 1
      274 GETIMPORT                        R38 K9 [require]
      276 GETTABLEKS                       R39 R0 K48 ["Hooks"]
      278 GETTABLEKS                       R39 R39 K58 ["useLLMRequest"]
      280 CALL                             R38 1 1
      281 GETIMPORT                        R39 K9 [require]
      283 GETTABLEKS                       R40 R0 K48 ["Hooks"]
      285 GETTABLEKS                       R40 R40 K59 ["useLLMSystemMessage"]
      287 CALL                             R39 1 1
      288 GETIMPORT                        R40 K9 [require]
      290 GETTABLEKS                       R41 R0 K48 ["Hooks"]
      292 GETTABLEKS                       R41 R41 K60 ["useLLMSystemReminderGetter"]
      294 CALL                             R40 1 1
      295 GETIMPORT                        R41 K9 [require]
      297 GETTABLEKS                       R42 R0 K48 ["Hooks"]
      299 GETTABLEKS                       R42 R42 K61 ["useLatest"]
      301 CALL                             R41 1 1
      302 GETIMPORT                        R42 K9 [require]
      304 GETTABLEKS                       R43 R0 K48 ["Hooks"]
      306 GETTABLEKS                       R43 R43 K62 ["useLogAssistantMessageSent"]
      308 CALL                             R42 1 1
      309 GETIMPORT                        R43 K9 [require]
      311 GETTABLEKS                       R44 R0 K48 ["Hooks"]
      313 GETTABLEKS                       R44 R44 K63 ["useLogRequestJourney"]
      315 CALL                             R43 1 1
      316 GETIMPORT                        R44 K9 [require]
      318 GETTABLEKS                       R45 R0 K48 ["Hooks"]
      320 GETTABLEKS                       R45 R45 K64 ["useMultiPlayerClientAgentStates"]
      322 CALL                             R44 1 1
      323 GETIMPORT                        R45 K9 [require]
      325 GETTABLEKS                       R46 R0 K48 ["Hooks"]
      327 GETTABLEKS                       R46 R46 K65 ["useRunSlashCommand"]
      329 CALL                             R45 1 1
      330 GETIMPORT                        R46 K9 [require]
      332 GETTABLEKS                       R47 R0 K66 ["ACPClientService"]
      334 GETTABLEKS                       R47 R47 K67 ["useSendMessageViaService"]
      336 CALL                             R46 1 1
      337 GETIMPORT                        R47 K9 [require]
      339 GETTABLEKS                       R48 R0 K48 ["Hooks"]
      341 GETTABLEKS                       R48 R48 K68 ["useSettingsContext"]
      343 CALL                             R47 1 1
      344 GETIMPORT                        R48 K9 [require]
      346 GETTABLEKS                       R49 R0 K48 ["Hooks"]
      348 GETTABLEKS                       R49 R49 K69 ["useShowError"]
      350 CALL                             R48 1 1
      351 GETIMPORT                        R49 K9 [require]
      353 GETTABLEKS                       R50 R0 K48 ["Hooks"]
      355 GETTABLEKS                       R50 R50 K70 ["useThreadId"]
      357 CALL                             R49 1 1
      358 GETIMPORT                        R50 K9 [require]
      360 GETTABLEKS                       R51 R0 K48 ["Hooks"]
      362 GETTABLEKS                       R51 R51 K71 ["useToolFormat"]
      364 CALL                             R50 1 1
      365 GETIMPORT                        R51 K9 [require]
      367 GETTABLEKS                       R52 R0 K48 ["Hooks"]
      369 GETTABLEKS                       R52 R52 K72 ["useWithClient"]
      371 CALL                             R51 1 1
      372 GETTABLEKS                       R52 R24 K73 ["getSystemReminder"]
      374 DUPCLOSURE                       R53 K74 [PROTO_0]
      375 CAPTURE                          VAL R12
      376 DUPCLOSURE                       R54 K75 [PROTO_1]
      377 CAPTURE                          VAL R24
      378 DUPCLOSURE                       R55 K76 [PROTO_6]
      379 CAPTURE                          VAL R24
      380 CAPTURE                          VAL R19
      381 CAPTURE                          VAL R16
      382 DUPCLOSURE                       R56 K77 [PROTO_9]
      383 CAPTURE                          VAL R6
      384 CAPTURE                          VAL R17
      385 CAPTURE                          VAL R22
      386 CAPTURE                          VAL R49
      387 CAPTURE                          VAL R41
      388 CAPTURE                          VAL R1
      389 DUPCLOSURE                       R57 K78 [PROTO_25]
      390 CAPTURE                          VAL R7
      391 CAPTURE                          VAL R56
      392 CAPTURE                          VAL R46
      393 CAPTURE                          VAL R30
      394 CAPTURE                          VAL R29
      395 CAPTURE                          VAL R32
      396 CAPTURE                          VAL R35
      397 CAPTURE                          VAL R51
      398 CAPTURE                          VAL R38
      399 CAPTURE                          VAL R39
      400 CAPTURE                          VAL R40
      401 CAPTURE                          VAL R50
      402 CAPTURE                          VAL R37
      403 CAPTURE                          VAL R36
      404 CAPTURE                          VAL R45
      405 CAPTURE                          VAL R48
      406 CAPTURE                          VAL R34
      407 CAPTURE                          VAL R42
      408 CAPTURE                          VAL R43
      409 CAPTURE                          VAL R49
      410 CAPTURE                          VAL R33
      411 CAPTURE                          VAL R17
      412 CAPTURE                          VAL R18
      413 CAPTURE                          VAL R9
      414 CAPTURE                          VAL R13
      415 CAPTURE                          VAL R47
      416 CAPTURE                          VAL R11
      417 CAPTURE                          VAL R15
      418 CAPTURE                          VAL R6
      419 CAPTURE                          VAL R10
      420 CAPTURE                          VAL R31
      421 CAPTURE                          VAL R44
      422 CAPTURE                          VAL R14
      423 CAPTURE                          VAL R8
      424 CAPTURE                          VAL R21
      425 CAPTURE                          VAL R28
      426 CAPTURE                          VAL R24
      427 CAPTURE                          VAL R1
      428 CAPTURE                          VAL R53
      429 CAPTURE                          VAL R26
      430 CAPTURE                          VAL R4
      431 CAPTURE                          VAL R52
      432 CAPTURE                          VAL R3
      433 CAPTURE                          VAL R27
      434 CAPTURE                          VAL R25
      435 CAPTURE                          VAL R20
      436 CAPTURE                          VAL R23
      437 CAPTURE                          VAL R19
      438 CAPTURE                          VAL R16
      439 RETURN                           R57 1
