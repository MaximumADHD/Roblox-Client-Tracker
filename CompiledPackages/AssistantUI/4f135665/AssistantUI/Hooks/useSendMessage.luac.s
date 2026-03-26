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
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 GETTABLEKS                       R7 R6 K0 ["name"]
        8 LOADB                            R8 1
        9 SETTABLE                         R8 R1 R7
       10 FORGLOOP                         R2 2 ; [-5]
       12 RETURN                           R1 1

PROTO_3:
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 LOADNIL                          R2
        3 RETURN                           R2 1
        4 NEWTABLE                         R3 0 0
        6 MOVE                             R4 R1
        7 LOADNIL                          R5
        8 LOADNIL                          R6
        9 FORGPREP                         R4
       10 GETTABLEKS                       R9 R8 K0 ["name"]
       12 LOADB                            R10 1
       13 SETTABLE                         R10 R3 R9
       14 FORGLOOP                         R4 2 ; [-5]
       16 MOVE                             R2 R3
       17 NEWTABLE                         R3 0 0
       19 MOVE                             R4 R0
       20 LOADNIL                          R5
       21 LOADNIL                          R6
       22 FORGPREP                         R4
       23 GETTABLE                         R9 R2 R7
       24 JUMPIF                           R9 ; [+7]
       25 FASTCALL2                        TABLE_INSERT R3 R7 ; [+5]
       27 MOVE                             R10 R3
       28 MOVE                             R11 R7
       29 GETIMPORT                        R9 K3 [table.insert]
       31 CALL                             R9 2 0
       32 FORGLOOP                         R4 1 ; [-10]
       34 LENGTH                           R4 R3
       35 JUMPIFNOTEQKN                    R4 K4 [0] ; [+3]
       37 LOADNIL                          R4
       38 RETURN                           R4 1
       39 RETURN                           R3 1

PROTO_4:
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

PROTO_5:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["user_requested_cancellation"]
        2 NAMECALL                         R0 R0 K1 ["Fire"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_6:
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

PROTO_7:
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
       29 GETUPVAL                         R3 3
       30 CALL                             R3 0 1
       31 JUMPIFNOT                        R3 ; [+3]
       32 LOADK                            R3 K8 [200000000]
       33 SETTABLEKS                       R3 R2 K9 ["timeout"]
       35 GETTABLEKS                       R3 R2 K10 ["onprogress"]
       37 GETTABLEKS                       R4 R2 K11 ["resetTimeoutOnProgress"]
       39 JUMPIFNOT                        R4 ; [+5]
       40 NEWCLOSURE                       R4 P0
       41 CAPTURE                          UPVAL U4
       42 CAPTURE                          VAL R3
       43 SETTABLEKS                       R4 R2 K10 ["onprogress"]
       45 GETUPVAL                         R4 5
       46 CALL                             R4 0 1
       47 JUMPIF                           R4 ; [+6]
       48 GETUPVAL                         R4 6
       49 CALL                             R4 0 1
       50 JUMPIF                           R4 ; [+3]
       51 GETUPVAL                         R4 7
       52 CALL                             R4 0 1
       53 JUMPIFNOT                        R4 ; [+18]
       54 GETUPVAL                         R5 8
       55 GETTABLEKS                       R4 R5 K12 ["new"]
       57 CALL                             R4 0 1
       58 SETTABLEKS                       R4 R2 K13 ["signal"]
       60 GETUPVAL                         R6 9
       61 GETTABLEKS                       R5 R6 K12 ["new"]
       63 NEWCLOSURE                       R6 P1
       64 CAPTURE                          VAL R4
       65 CAPTURE                          UPVAL U0
       66 CAPTURE                          VAL R0
       67 CAPTURE                          VAL R2
       68 CAPTURE                          REF R1
       69 CALL                             R5 1 -1
       70 CLOSEUPVALS                      R1
       71 RETURN                           R5 -1
       72 GETUPVAL                         R4 0
       73 GETTABLEKS                       R6 R0 K0 ["name"]
       75 GETTABLEKS                       R7 R0 K14 ["arguments"]
       77 MOVE                             R8 R2
       78 MOVE                             R9 R1
       79 NAMECALL                         R4 R4 K15 ["callTool"]
       81 CALL                             R4 5 -1
       82 CLOSEUPVALS                      R1
       83 RETURN                           R4 -1

PROTO_8:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R2
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 CAPTURE                          UPVAL U5
       10 CAPTURE                          UPVAL U6
       11 RETURN                           R3 1

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
       65 DUPTABLE                         R7 K16 [{"messageGuid", "sessionId", "threadId", "message", "model", "attachments"}]
       66 SETTABLEKS                       R3 R7 K10 ["messageGuid"]
       68 GETUPVAL                         R8 6
       69 SETTABLEKS                       R8 R7 K11 ["sessionId"]
       71 GETUPVAL                         R9 7
       72 CALL                             R9 0 1
       73 JUMPIFNOT                        R9 ; [+2]
       74 GETUPVAL                         R8 8
       75 JUMP                             ; [+1]
       76 LOADNIL                          R8
       77 SETTABLEKS                       R8 R7 K12 ["threadId"]
       79 GETUPVAL                         R8 9
       80 SETTABLEKS                       R8 R7 K13 ["message"]
       82 SETTABLEKS                       R6 R7 K14 ["model"]
       84 GETUPVAL                         R10 10
       85 LENGTH                           R9 R10
       86 LOADN                            R10 0
       87 JUMPIFNOTLT                      R10 R9 ; [+3]
       89 GETUPVAL                         R8 10
       90 JUMP                             ; [+1]
       91 LOADNIL                          R8
       92 SETTABLEKS                       R8 R7 K15 ["attachments"]
       94 GETTABLEKS                       R8 R2 K17 ["logUserMessageSent"]
       96 MOVE                             R9 R7
       97 CALL                             R8 1 0
       98 NEWCLOSURE                       R8 P1
       99 CAPTURE                          UPVAL U11
      100 CAPTURE                          VAL R3
      101 NEWCLOSURE                       R9 P2
      102 CAPTURE                          UPVAL U12
      103 NEWCLOSURE                       R10 P3
      104 CAPTURE                          UPVAL U12
      105 DUPTABLE                         R11 K20 [{"messageGuid", "sessionId", "messageId", "contentId"}]
      106 SETTABLEKS                       R3 R11 K10 ["messageGuid"]
      108 GETUPVAL                         R12 6
      109 SETTABLEKS                       R12 R11 K11 ["sessionId"]
      111 SETTABLEKS                       R0 R11 K18 ["messageId"]
      113 LOADNIL                          R12
      114 SETTABLEKS                       R12 R11 K19 ["contentId"]
      116 GETUPVAL                         R13 13
      117 GETTABLEKS                       R12 R13 K21 ["createLLMSession"]
      119 DUPTABLE                         R13 K38 [{"showError", "messageGuid", "conversationSessionId", "threadId", "requestLLM", "systemMessage", "observer", "setInputEnabled", "onToolCall", "setModelQuality", "onPacketReceived", "maxToolCalls", "timeoutMs", "initialMessages", "requestStartTime", "tools", "apiKeys", "selectedModel", "messageId", "logRequestStop"}]
      120 SETTABLEKS                       R8 R13 K22 ["showError"]
      122 SETTABLEKS                       R3 R13 K10 ["messageGuid"]
      124 GETUPVAL                         R14 6
      125 SETTABLEKS                       R14 R13 K23 ["conversationSessionId"]
      127 GETUPVAL                         R14 8
      128 SETTABLEKS                       R14 R13 K12 ["threadId"]
      130 GETUPVAL                         R14 14
      131 SETTABLEKS                       R14 R13 K24 ["requestLLM"]
      133 GETUPVAL                         R14 15
      134 SETTABLEKS                       R14 R13 K25 ["systemMessage"]
      136 SETTABLEKS                       R1 R13 K26 ["observer"]
      138 GETUPVAL                         R15 16
      139 GETTABLEKS                       R14 R15 K27 ["setInputEnabled"]
      141 SETTABLEKS                       R14 R13 K27 ["setInputEnabled"]
      143 GETUPVAL                         R15 17
      144 NEWCLOSURE                       R14 P4
      145 CAPTURE                          VAL R15
      146 CAPTURE                          UPVAL U4
      147 CAPTURE                          VAL R11
      148 CAPTURE                          UPVAL U18
      149 CAPTURE                          VAL R10
      150 CAPTURE                          UPVAL U19
      151 CAPTURE                          UPVAL U20
      152 CAPTURE                          UPVAL U21
      153 CAPTURE                          UPVAL U22
      154 CAPTURE                          UPVAL U23
      155 SETTABLEKS                       R14 R13 K28 ["onToolCall"]
      157 GETUPVAL                         R15 24
      158 GETTABLEKS                       R14 R15 K29 ["setModelQuality"]
      160 SETTABLEKS                       R14 R13 K29 ["setModelQuality"]
      162 SETTABLEKS                       R9 R13 K30 ["onPacketReceived"]
      164 GETUPVAL                         R14 25
      165 CALL                             R14 0 1
      166 SETTABLEKS                       R14 R13 K31 ["maxToolCalls"]
      168 GETUPVAL                         R14 26
      169 CALL                             R14 0 1
      170 SETTABLEKS                       R14 R13 K32 ["timeoutMs"]
      172 GETUPVAL                         R14 27
      173 SETTABLEKS                       R14 R13 K33 ["initialMessages"]
      175 GETUPVAL                         R14 28
      176 SETTABLEKS                       R14 R13 K34 ["requestStartTime"]
      178 GETUPVAL                         R14 29
      179 SETTABLEKS                       R14 R13 K35 ["tools"]
      181 SETTABLEKS                       R4 R13 K36 ["apiKeys"]
      183 SETTABLEKS                       R6 R13 K9 ["selectedModel"]
      185 SETTABLEKS                       R0 R13 K18 ["messageId"]
      187 GETUPVAL                         R14 30
      188 SETTABLEKS                       R14 R13 K37 ["logRequestStop"]
      190 CALL                             R12 1 1
      191 DUPTABLE                         R13 K43 [{"threadId", "messages", "tools", "system", "messageGuid", "isFirstMessage", "isAgenticMode", "apiKeys", "selectedModel"}]
      192 GETUPVAL                         R14 8
      193 SETTABLEKS                       R14 R13 K12 ["threadId"]
      195 GETUPVAL                         R14 27
      196 SETTABLEKS                       R14 R13 K39 ["messages"]
      198 GETUPVAL                         R14 29
      199 SETTABLEKS                       R14 R13 K35 ["tools"]
      201 GETUPVAL                         R14 15
      202 SETTABLEKS                       R14 R13 K40 ["system"]
      204 SETTABLEKS                       R3 R13 K10 ["messageGuid"]
      206 LOADB                            R14 1
      207 SETTABLEKS                       R14 R13 K41 ["isFirstMessage"]
      209 LOADB                            R14 0
      210 SETTABLEKS                       R14 R13 K42 ["isAgenticMode"]
      212 SETTABLEKS                       R4 R13 K36 ["apiKeys"]
      214 SETTABLEKS                       R6 R13 K9 ["selectedModel"]
      216 GETUPVAL                         R14 14
      217 MOVE                             R15 R13
      218 GETTABLEKS                       R16 R12 K44 ["processEvent"]
      220 CALL                             R14 2 0
      221 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 CALL                             R2 0 1
        5 JUMPIFNOT                        R2 ; [+4]
        6 GETIMPORT                        R2 K1 [print]
        8 LOADK                            R3 K2 ["Preparing message for response contents..."]
        9 CALL                             R2 1 0
       10 GETUPVAL                         R2 2
       11 LOADK                            R3 K3 ["assistant"]
       12 NEWCLOSURE                       R4 P0
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
       40 CAPTURE                          VAL R1
       41 CAPTURE                          UPVAL U30
       42 CAPTURE                          UPVAL U31
       43 CAPTURE                          UPVAL U32
       44 CALL                             R2 2 0
       45 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+17]
        3 DUPTABLE                         R1 K1 [{"disableScreenCapture"}]
        4 LOADB                            R2 1
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R3 R4 K2 ["selectedProvider"]
        8 JUMPIFEQKS                       R3 K3 ["Studio"] ; [+8]
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R3 R4 K2 ["selectedProvider"]
       13 JUMPIFEQKS                       R3 K4 ["OpenAI"] ; [+2]
       15 LOADB                            R2 0 +1
       16 LOADB                            R2 1
       17 SETTABLEKS                       R2 R1 K0 ["disableScreenCapture"]
       19 JUMPIF                           R1 ; [+1]
       20 LOADNIL                          R1
       21 MOVE                             R4 R1
       22 NAMECALL                         R2 R0 K5 ["listTools"]
       24 CALL                             R2 2 1
       25 NAMECALL                         R2 R2 K6 ["await"]
       27 CALL                             R2 1 2
       28 JUMPIFNOT                        R2 ; [+12]
       29 GETTABLEKS                       R6 R3 K7 ["failures"]
       31 GETUPVAL                         R8 2
       32 GETTABLEKS                       R7 R8 K8 ["getMcpClientIdentifier"]
       34 CALL                             R7 0 1
       35 GETTABLE                         R5 R6 R7
       36 JUMPIFNOTEQKNIL                  R5 ; [+2]
       38 LOADB                            R4 0 +1
       39 LOADB                            R4 1
       40 JUMPIFNOT                        R4 ; [+25]
       41 GETUPVAL                         R4 3
       42 DUPTABLE                         R5 K10 [{"errorType"}]
       43 LOADK                            R6 K11 ["client_error"]
       44 SETTABLEKS                       R6 R5 K9 ["errorType"]
       46 CALL                             R4 1 0
       47 GETUPVAL                         R5 4
       48 GETTABLEKS                       R4 R5 K12 ["setInputEnabled"]
       50 LOADB                            R5 1
       51 CALL                             R4 1 0
       52 GETIMPORT                        R4 K14 [error]
       54 LOADK                            R6 K15 ["Failed to get tools list with error: %*"]
       55 GETUPVAL                         R8 5
       56 MOVE                             R10 R3
       57 NAMECALL                         R8 R8 K16 ["JSONEncode"]
       59 CALL                             R8 2 1
       60 NAMECALL                         R6 R6 K17 ["format"]
       62 CALL                             R6 2 1
       63 MOVE                             R5 R6
       64 CALL                             R4 1 0
       65 RETURN                           R0 0
       66 LOADNIL                          R4
       67 GETUPVAL                         R5 6
       68 CALL                             R5 0 1
       69 JUMPIFNOT                        R5 ; [+11]
       70 GETUPVAL                         R5 7
       71 GETTABLEKS                       R7 R3 K18 ["result"]
       73 GETTABLEKS                       R6 R7 K19 ["tools"]
       75 CALL                             R5 1 1
       76 GETUPVAL                         R6 8
       77 MOVE                             R7 R5
       78 CALL                             R6 1 1
       79 MOVE                             R4 R6
       80 JUMP                             ; [+7]
       81 GETUPVAL                         R5 8
       82 GETTABLEKS                       R7 R3 K18 ["result"]
       84 GETTABLEKS                       R6 R7 K19 ["tools"]
       86 CALL                             R5 1 1
       87 MOVE                             R4 R5
       88 GETUPVAL                         R5 9
       89 CALL                             R5 0 1
       90 JUMPIFNOT                        R5 ; [+72]
       91 GETUPVAL                         R7 10
       92 GETTABLEKS                       R6 R7 K20 ["current"]
       94 GETUPVAL                         R7 11
       95 GETTABLE                         R5 R6 R7
       96 GETUPVAL                         R6 12
       97 MOVE                             R7 R5
       98 GETTABLEKS                       R9 R3 K18 ["result"]
      100 GETTABLEKS                       R8 R9 K19 ["tools"]
      102 CALL                             R6 2 1
      103 GETUPVAL                         R8 10
      104 GETTABLEKS                       R7 R8 K20 ["current"]
      106 GETUPVAL                         R8 11
      107 GETTABLEKS                       R11 R3 K18 ["result"]
      109 GETTABLEKS                       R10 R11 K19 ["tools"]
      111 NEWTABLE                         R11 0 0
      113 MOVE                             R12 R10
      114 LOADNIL                          R13
      115 LOADNIL                          R14
      116 FORGPREP                         R12
      117 GETTABLEKS                       R17 R16 K21 ["name"]
      119 LOADB                            R18 1
      120 SETTABLE                         R18 R11 R17
      121 FORGLOOP                         R12 2 ; [-5]
      123 MOVE                             R9 R11
      124 SETTABLE                         R9 R7 R8
      125 JUMPIFNOT                        R6 ; [+37]
      126 GETIMPORT                        R7 K24 [table.concat]
      128 MOVE                             R8 R6
      129 LOADK                            R9 K25 [", "]
      130 CALL                             R7 2 1
      131 GETUPVAL                         R8 13
      132 DUPTABLE                         R9 K28 [{"role", "hidden"}]
      133 LOADK                            R10 K29 ["user"]
      134 SETTABLEKS                       R10 R9 K26 ["role"]
      136 LOADB                            R10 1
      137 SETTABLEKS                       R10 R9 K27 ["hidden"]
      139 CALL                             R8 1 1
      140 GETUPVAL                         R9 14
      141 LOADK                            R11 K30 ["The following tools have been removed: %*"]
      142 MOVE                             R13 R7
      143 NAMECALL                         R11 R11 K17 ["format"]
      145 CALL                             R11 2 1
      146 MOVE                             R10 R11
      147 CALL                             R9 1 1
      148 GETUPVAL                         R10 15
      149 DUPTABLE                         R11 K33 [{"messageId", "content"}]
      150 SETTABLEKS                       R8 R11 K31 ["messageId"]
      152 DUPTABLE                         R12 K36 [{"type", "text"}]
      153 GETUPVAL                         R14 16
      154 GETTABLEKS                       R13 R14 K37 ["Type"]
      156 SETTABLEKS                       R13 R12 K34 ["type"]
      158 SETTABLEKS                       R9 R12 K35 ["text"]
      160 SETTABLEKS                       R12 R11 K32 ["content"]
      162 CALL                             R10 1 0
      163 GETUPVAL                         R5 17
      164 CALL                             R5 0 1
      165 JUMPIFNOT                        R5 ; [+4]
      166 GETIMPORT                        R5 K39 [print]
      168 LOADK                            R6 K40 ["Reading conversation history..."]
      169 CALL                             R5 1 0
      170 GETUPVAL                         R5 18
      171 NEWCLOSURE                       R6 P0
      172 CAPTURE                          UPVAL U19
      173 CAPTURE                          UPVAL U17
      174 CAPTURE                          UPVAL U20
      175 CAPTURE                          UPVAL U21
      176 CAPTURE                          UPVAL U22
      177 CAPTURE                          UPVAL U23
      178 CAPTURE                          UPVAL U24
      179 CAPTURE                          UPVAL U2
      180 CAPTURE                          UPVAL U1
      181 CAPTURE                          UPVAL U11
      182 CAPTURE                          UPVAL U25
      183 CAPTURE                          UPVAL U26
      184 CAPTURE                          UPVAL U27
      185 CAPTURE                          UPVAL U28
      186 CAPTURE                          UPVAL U3
      187 CAPTURE                          UPVAL U29
      188 CAPTURE                          UPVAL U30
      189 CAPTURE                          UPVAL U31
      190 CAPTURE                          UPVAL U32
      191 CAPTURE                          UPVAL U4
      192 CAPTURE                          VAL R0
      193 CAPTURE                          UPVAL U33
      194 CAPTURE                          UPVAL U34
      195 CAPTURE                          UPVAL U35
      196 CAPTURE                          UPVAL U36
      197 CAPTURE                          UPVAL U37
      198 CAPTURE                          UPVAL U38
      199 CAPTURE                          UPVAL U39
      200 CAPTURE                          UPVAL U40
      201 CAPTURE                          UPVAL U41
      202 CAPTURE                          UPVAL U42
      203 CAPTURE                          REF R4
      204 CAPTURE                          UPVAL U43
      205 CALL                             R5 1 0
      206 CLOSEUPVALS                      R4
      207 RETURN                           R0 0

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
       46 CALL                             R0 1 0
       47 RETURN                           R0 0

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
       42 GETIMPORT                        R3 K9 [os.clock]
       44 CALL                             R3 0 1
       45 LOADB                            R5 1
       46 GETTABLEKS                       R6 R0 K14 ["previousMessageId"]
       48 JUMPIFNOTEQKNIL                  R6 ; [+2]
       50 NOT                              R5 R2
       51 FASTCALL2K                       ASSERT R5 K15 ; [+4]
       53 LOADK                            R6 K15 ["previousMessageId must be provided for retry messages"]
       54 GETIMPORT                        R4 K17 [assert]
       56 CALL                             R4 2 0
       57 NEWTABLE                         R4 0 0
       59 JUMPIF                           R2 ; [+91]
       60 GETUPVAL                         R5 4
       61 DUPTABLE                         R6 K19 [{"role"}]
       62 LOADK                            R7 K20 ["user"]
       63 SETTABLEKS                       R7 R6 K18 ["role"]
       65 CALL                             R5 1 1
       66 GETUPVAL                         R6 5
       67 CALL                             R6 0 1
       68 JUMPIFNOT                        R6 ; [+60]
       69 GETTABLEKS                       R6 R0 K21 ["images"]
       71 JUMPIFNOT                        R6 ; [+57]
       72 GETIMPORT                        R6 K23 [ipairs]
       74 GETTABLEKS                       R7 R0 K21 ["images"]
       76 CALL                             R6 1 3
       77 FORGPREP_INEXT                   R6
       78 GETTABLEKS                       R11 R10 K24 ["data"]
       80 LENGTH                           R12 R11
       81 LOADN                            R14 10
       82 JUMPIFNOTLT                      R14 R12 ; [+10]
       84 SUBK                             R15 R12 K25 [9]
       85 FASTCALL3                        STRING_SUB R11 R15 R12
       87 MOVE                             R14 R11
       88 MOVE                             R16 R12
       89 GETIMPORT                        R13 K28 [string.sub]
       91 CALL                             R13 3 1
       92 JUMP                             ; [+1]
       93 MOVE                             R13 R11
       94 DUPTABLE                         R16 K32 [{"imageDataSuffix", "imageDataSize", "mimeType"}]
       95 SETTABLEKS                       R13 R16 K29 ["imageDataSuffix"]
       97 SETTABLEKS                       R12 R16 K30 ["imageDataSize"]
       99 GETTABLEKS                       R17 R10 K31 ["mimeType"]
      101 SETTABLEKS                       R17 R16 K31 ["mimeType"]
      103 FASTCALL2                        TABLE_INSERT R4 R16 ; [+4]
      105 MOVE                             R15 R4
      106 GETIMPORT                        R14 K35 [table.insert]
      108 CALL                             R14 2 0
      109 DUPTABLE                         R14 K39 [{"type", "imageContent", "expanded"}]
      110 GETUPVAL                         R16 6
      111 GETTABLEKS                       R15 R16 K40 ["Type"]
      113 SETTABLEKS                       R15 R14 K36 ["type"]
      115 SETTABLEKS                       R10 R14 K37 ["imageContent"]
      117 LOADB                            R15 1
      118 SETTABLEKS                       R15 R14 K38 ["expanded"]
      120 GETUPVAL                         R15 7
      121 DUPTABLE                         R16 K43 [{"messageId", "content"}]
      122 SETTABLEKS                       R5 R16 K41 ["messageId"]
      124 SETTABLEKS                       R14 R16 K42 ["content"]
      126 CALL                             R15 1 0
      127 FORGLOOP                         R6 2 [inext] ; [-50]
      129 GETUPVAL                         R6 5
      130 CALL                             R6 0 1
      131 JUMPIFNOT                        R6 ; [+4]
      132 LENGTH                           R6 R1
      133 LOADN                            R7 0
      134 JUMPIFNOTLT                      R7 R6 ; [+16]
      136 DUPTABLE                         R6 K44 [{"type", "text"}]
      137 GETUPVAL                         R8 8
      138 GETTABLEKS                       R7 R8 K40 ["Type"]
      140 SETTABLEKS                       R7 R6 K36 ["type"]
      142 SETTABLEKS                       R1 R6 K11 ["text"]
      144 GETUPVAL                         R7 7
      145 DUPTABLE                         R8 K43 [{"messageId", "content"}]
      146 SETTABLEKS                       R5 R8 K41 ["messageId"]
      148 SETTABLEKS                       R6 R8 K42 ["content"]
      150 CALL                             R7 1 0
      151 GETUPVAL                         R5 9
      152 CALL                             R5 0 1
      153 JUMPIFNOT                        R5 ; [+5]
      154 GETIMPORT                        R5 K46 [print]
      156 LOADK                            R6 K47 ["About to send message:"]
      157 MOVE                             R7 R1
      158 CALL                             R5 2 0
      159 GETUPVAL                         R5 10
      160 DUPTABLE                         R6 K49 [{"prompt", "setInputEnabled"}]
      161 SETTABLEKS                       R1 R6 K48 ["prompt"]
      163 GETUPVAL                         R8 3
      164 GETTABLEKS                       R7 R8 K10 ["setInputEnabled"]
      166 SETTABLEKS                       R7 R6 K10 ["setInputEnabled"]
      168 CALL                             R5 1 1
      169 JUMPIFNOT                        R5 ; [+1]
      170 RETURN                           R0 0
      171 GETIMPORT                        R6 K52 [task.spawn]
      173 NEWCLOSURE                       R7 P0
      174 CAPTURE                          UPVAL U11
      175 CAPTURE                          UPVAL U12
      176 CAPTURE                          UPVAL U13
      177 CAPTURE                          UPVAL U14
      178 CAPTURE                          UPVAL U15
      179 CAPTURE                          UPVAL U3
      180 CAPTURE                          UPVAL U16
      181 CAPTURE                          UPVAL U17
      182 CAPTURE                          UPVAL U18
      183 CAPTURE                          UPVAL U19
      184 CAPTURE                          UPVAL U20
      185 CAPTURE                          UPVAL U21
      186 CAPTURE                          UPVAL U22
      187 CAPTURE                          UPVAL U23
      188 CAPTURE                          UPVAL U4
      189 CAPTURE                          UPVAL U24
      190 CAPTURE                          UPVAL U7
      191 CAPTURE                          UPVAL U8
      192 CAPTURE                          UPVAL U9
      193 CAPTURE                          UPVAL U25
      194 CAPTURE                          UPVAL U26
      195 CAPTURE                          UPVAL U27
      196 CAPTURE                          UPVAL U28
      197 CAPTURE                          UPVAL U29
      198 CAPTURE                          UPVAL U30
      199 CAPTURE                          UPVAL U31
      200 CAPTURE                          UPVAL U32
      201 CAPTURE                          UPVAL U33
      202 CAPTURE                          VAL R1
      203 CAPTURE                          VAL R4
      204 CAPTURE                          UPVAL U2
      205 CAPTURE                          UPVAL U34
      206 CAPTURE                          UPVAL U35
      207 CAPTURE                          UPVAL U36
      208 CAPTURE                          UPVAL U37
      209 CAPTURE                          UPVAL U38
      210 CAPTURE                          UPVAL U39
      211 CAPTURE                          UPVAL U40
      212 CAPTURE                          UPVAL U41
      213 CAPTURE                          UPVAL U42
      214 CAPTURE                          UPVAL U43
      215 CAPTURE                          UPVAL U44
      216 CAPTURE                          UPVAL U45
      217 CAPTURE                          VAL R3
      218 CAPTURE                          UPVAL U46
      219 CALL                             R6 1 0
      220 RETURN                           R0 0

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
       28 GETUPVAL                         R16 14
       29 GETTABLEKS                       R15 R16 K0 ["useContext"]
       31 GETUPVAL                         R17 15
       32 GETTABLEKS                       R16 R17 K1 ["Context"]
       34 CALL                             R15 1 1
       35 GETTABLEKS                       R16 R15 K2 ["sessionId"]
       37 GETUPVAL                         R18 14
       38 GETTABLEKS                       R17 R18 K0 ["useContext"]
       40 GETUPVAL                         R19 16
       41 GETTABLEKS                       R18 R19 K1 ["Context"]
       43 CALL                             R17 1 1
       44 GETUPVAL                         R19 14
       45 GETTABLEKS                       R18 R19 K0 ["useContext"]
       47 GETUPVAL                         R20 17
       48 GETTABLEKS                       R19 R20 K1 ["Context"]
       50 CALL                             R18 1 1
       51 GETUPVAL                         R19 18
       52 CALL                             R19 0 1
       53 GETUPVAL                         R21 14
       54 GETTABLEKS                       R20 R21 K0 ["useContext"]
       56 GETUPVAL                         R22 19
       57 GETTABLEKS                       R21 R22 K1 ["Context"]
       59 CALL                             R20 1 1
       60 GETUPVAL                         R22 14
       61 GETTABLEKS                       R21 R22 K0 ["useContext"]
       63 GETUPVAL                         R23 20
       64 GETTABLEKS                       R22 R23 K1 ["Context"]
       66 CALL                             R21 1 1
       67 LOADNIL                          R22
       68 GETUPVAL                         R23 21
       69 CALL                             R23 0 1
       70 JUMPIFNOT                        R23 ; [+7]
       71 GETUPVAL                         R24 14
       72 GETTABLEKS                       R23 R24 K3 ["useRef"]
       74 NEWTABLE                         R24 0 0
       76 CALL                             R23 1 1
       77 MOVE                             R22 R23
       78 NEWCLOSURE                       R23 P0
       79 CAPTURE                          VAL R17
       80 CAPTURE                          UPVAL U22
       81 CAPTURE                          VAL R21
       82 CAPTURE                          VAL R0
       83 CAPTURE                          VAL R1
       84 CAPTURE                          UPVAL U23
       85 CAPTURE                          UPVAL U24
       86 CAPTURE                          VAL R2
       87 CAPTURE                          UPVAL U25
       88 CAPTURE                          UPVAL U26
       89 CAPTURE                          VAL R10
       90 CAPTURE                          VAL R4
       91 CAPTURE                          UPVAL U27
       92 CAPTURE                          VAL R20
       93 CAPTURE                          UPVAL U28
       94 CAPTURE                          VAL R11
       95 CAPTURE                          UPVAL U29
       96 CAPTURE                          UPVAL U30
       97 CAPTURE                          UPVAL U31
       98 CAPTURE                          VAL R7
       99 CAPTURE                          UPVAL U21
      100 CAPTURE                          REF R22
      101 CAPTURE                          VAL R16
      102 CAPTURE                          UPVAL U32
      103 CAPTURE                          UPVAL U33
      104 CAPTURE                          VAL R9
      105 CAPTURE                          UPVAL U34
      106 CAPTURE                          VAL R3
      107 CAPTURE                          VAL R12
      108 CAPTURE                          UPVAL U35
      109 CAPTURE                          UPVAL U36
      110 CAPTURE                          VAL R19
      111 CAPTURE                          UPVAL U37
      112 CAPTURE                          VAL R14
      113 CAPTURE                          VAL R8
      114 CAPTURE                          VAL R5
      115 CAPTURE                          VAL R6
      116 CAPTURE                          UPVAL U38
      117 CAPTURE                          UPVAL U39
      118 CAPTURE                          UPVAL U40
      119 CAPTURE                          UPVAL U41
      120 CAPTURE                          UPVAL U42
      121 CAPTURE                          UPVAL U43
      122 CAPTURE                          VAL R18
      123 CAPTURE                          UPVAL U44
      124 CAPTURE                          UPVAL U45
      125 CAPTURE                          VAL R13
      126 CLOSEUPVALS                      R22
      127 RETURN                           R23 1

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
      154 GETTABLEKS                       R20 R21 K35 ["useGetContentObserver"]
      156 CALL                             R19 1 1
      157 GETIMPORT                        R20 K9 [require]
      159 GETTABLEKS                       R22 R0 K32 ["Hooks"]
      161 GETTABLEKS                       R21 R22 K36 ["useGetOrAddMessage"]
      163 CALL                             R20 1 1
      164 GETIMPORT                        R21 K9 [require]
      166 GETTABLEKS                       R23 R0 K32 ["Hooks"]
      168 GETTABLEKS                       R22 R23 K37 ["useGetThread"]
      170 CALL                             R21 1 1
      171 GETIMPORT                        R22 K9 [require]
      173 GETTABLEKS                       R24 R0 K32 ["Hooks"]
      175 GETTABLEKS                       R23 R24 K38 ["useLLMProcessEvent"]
      177 CALL                             R22 1 1
      178 GETIMPORT                        R23 K9 [require]
      180 GETTABLEKS                       R25 R0 K32 ["Hooks"]
      182 GETTABLEKS                       R24 R25 K39 ["useLLMRequest"]
      184 CALL                             R23 1 1
      185 GETIMPORT                        R24 K9 [require]
      187 GETTABLEKS                       R26 R0 K32 ["Hooks"]
      189 GETTABLEKS                       R25 R26 K40 ["useLLMSystemMessage"]
      191 CALL                             R24 1 1
      192 GETIMPORT                        R25 K9 [require]
      194 GETTABLEKS                       R27 R0 K32 ["Hooks"]
      196 GETTABLEKS                       R26 R27 K41 ["useLogRequestJourney"]
      198 CALL                             R25 1 1
      199 GETIMPORT                        R26 K9 [require]
      201 GETTABLEKS                       R28 R0 K32 ["Hooks"]
      203 GETTABLEKS                       R27 R28 K42 ["useRunSlashCommand"]
      205 CALL                             R26 1 1
      206 GETIMPORT                        R27 K9 [require]
      208 GETTABLEKS                       R29 R0 K32 ["Hooks"]
      210 GETTABLEKS                       R28 R29 K43 ["useSettingsContext"]
      212 CALL                             R27 1 1
      213 GETIMPORT                        R28 K9 [require]
      215 GETTABLEKS                       R30 R0 K32 ["Hooks"]
      217 GETTABLEKS                       R29 R30 K44 ["useShowError"]
      219 CALL                             R28 1 1
      220 GETIMPORT                        R29 K9 [require]
      222 GETTABLEKS                       R31 R0 K32 ["Hooks"]
      224 GETTABLEKS                       R30 R31 K45 ["useThreadId"]
      226 CALL                             R29 1 1
      227 GETIMPORT                        R30 K9 [require]
      229 GETTABLEKS                       R32 R0 K32 ["Hooks"]
      231 GETTABLEKS                       R31 R32 K46 ["useToolFormat"]
      233 CALL                             R30 1 1
      234 GETIMPORT                        R31 K9 [require]
      236 GETTABLEKS                       R33 R0 K32 ["Hooks"]
      238 GETTABLEKS                       R32 R33 K47 ["useWithClient"]
      240 CALL                             R31 1 1
      241 GETIMPORT                        R32 K9 [require]
      243 GETTABLEKS                       R34 R0 K48 ["Flags"]
      245 GETTABLEKS                       R33 R34 K49 ["FFlagAssistantBYOKNewJsonEncoder"]
      247 CALL                             R32 1 1
      248 GETIMPORT                        R33 K9 [require]
      250 GETTABLEKS                       R35 R0 K48 ["Flags"]
      252 GETTABLEKS                       R34 R35 K50 ["FFlagAssistantMultipleChatSupport"]
      254 CALL                             R33 1 1
      255 GETIMPORT                        R34 K9 [require]
      257 GETTABLEKS                       R36 R0 K48 ["Flags"]
      259 GETTABLEKS                       R35 R36 K51 ["FFlagAssistantMultipleExternalMCPServers"]
      261 CALL                             R34 1 1
      262 GETIMPORT                        R35 K9 [require]
      264 GETTABLEKS                       R37 R0 K48 ["Flags"]
      266 GETTABLEKS                       R36 R37 K52 ["FFlagAssistantPersistConversations"]
      268 CALL                             R35 1 1
      269 GETIMPORT                        R36 K9 [require]
      271 GETTABLEKS                       R38 R0 K48 ["Flags"]
      273 GETTABLEKS                       R37 R38 K53 ["FFlagAssistantSupportSlashCommandCancellation"]
      275 CALL                             R36 1 1
      276 GETIMPORT                        R37 K9 [require]
      278 GETTABLEKS                       R39 R0 K48 ["Flags"]
      280 GETTABLEKS                       R38 R39 K54 ["FFlagAssistantTestAutomation"]
      282 CALL                             R37 1 1
      283 GETIMPORT                        R38 K9 [require]
      285 GETTABLEKS                       R40 R0 K48 ["Flags"]
      287 GETTABLEKS                       R39 R40 K55 ["FFlagDebugLogAssistantUI"]
      289 CALL                             R38 1 1
      290 GETIMPORT                        R39 K9 [require]
      292 GETTABLEKS                       R41 R0 K48 ["Flags"]
      294 GETTABLEKS                       R40 R41 K56 ["FFlagDisableScreenCaptureForDefaultModel"]
      296 CALL                             R39 1 1
      297 GETIMPORT                        R40 K9 [require]
      299 GETTABLEKS                       R42 R0 K48 ["Flags"]
      301 GETTABLEKS                       R41 R42 K57 ["FFlagEnableAssistantInputImageAttachment"]
      303 CALL                             R40 1 1
      304 GETIMPORT                        R41 K9 [require]
      306 GETTABLEKS                       R43 R0 K48 ["Flags"]
      308 GETTABLEKS                       R42 R43 K58 ["FFlagEnablePrimitiveGenTool"]
      310 CALL                             R41 1 1
      311 GETIMPORT                        R42 K9 [require]
      313 GETTABLEKS                       R44 R0 K48 ["Flags"]
      315 GETTABLEKS                       R43 R44 K59 ["FFlagEnableSubagents"]
      317 CALL                             R42 1 1
      318 GETIMPORT                        R43 K9 [require]
      320 GETTABLEKS                       R45 R0 K48 ["Flags"]
      322 GETTABLEKS                       R44 R45 K60 ["FFlagUseToolsChangedSystemNotice"]
      324 CALL                             R43 1 1
      325 GETIMPORT                        R44 K9 [require]
      327 GETTABLEKS                       R46 R0 K48 ["Flags"]
      329 GETTABLEKS                       R45 R46 K61 ["FIntAssistantProcessEventTimeoutMS"]
      331 CALL                             R44 1 1
      332 GETIMPORT                        R45 K9 [require]
      334 GETTABLEKS                       R47 R0 K48 ["Flags"]
      336 GETTABLEKS                       R46 R47 K62 ["FIntMCPAssistantMaxToolCalls"]
      338 CALL                             R45 1 1
      339 GETIMPORT                        R46 K9 [require]
      341 GETTABLEKS                       R49 R0 K12 ["Components"]
      343 GETTABLEKS                       R48 R49 K27 ["ContentWidgets"]
      345 GETTABLEKS                       R47 R48 K63 ["ImageContentWidget"]
      347 CALL                             R46 1 1
      348 GETTABLEKS                       R47 R15 K64 ["getSystemReminder"]
      350 DUPCLOSURE                       R48 K65 [PROTO_0]
      351 CAPTURE                          VAL R7
      352 DUPCLOSURE                       R49 K66 [PROTO_1]
      353 CAPTURE                          VAL R15
      354 DUPCLOSURE                       R50 K67 [PROTO_2]
      355 DUPCLOSURE                       R51 K68 [PROTO_3]
      356 DUPCLOSURE                       R52 K69 [PROTO_8]
      357 CAPTURE                          VAL R15
      358 CAPTURE                          VAL R34
      359 CAPTURE                          VAL R37
      360 CAPTURE                          VAL R41
      361 CAPTURE                          VAL R42
      362 CAPTURE                          VAL R13
      363 CAPTURE                          VAL R10
      364 DUPCLOSURE                       R53 K70 [PROTO_18]
      365 CAPTURE                          VAL R18
      366 CAPTURE                          VAL R17
      367 CAPTURE                          VAL R20
      368 CAPTURE                          VAL R31
      369 CAPTURE                          VAL R23
      370 CAPTURE                          VAL R24
      371 CAPTURE                          VAL R30
      372 CAPTURE                          VAL R22
      373 CAPTURE                          VAL R21
      374 CAPTURE                          VAL R26
      375 CAPTURE                          VAL R28
      376 CAPTURE                          VAL R19
      377 CAPTURE                          VAL R25
      378 CAPTURE                          VAL R29
      379 CAPTURE                          VAL R11
      380 CAPTURE                          VAL R12
      381 CAPTURE                          VAL R3
      382 CAPTURE                          VAL R8
      383 CAPTURE                          VAL R27
      384 CAPTURE                          VAL R5
      385 CAPTURE                          VAL R9
      386 CAPTURE                          VAL R43
      387 CAPTURE                          VAL R36
      388 CAPTURE                          VAL R40
      389 CAPTURE                          VAL R46
      390 CAPTURE                          VAL R14
      391 CAPTURE                          VAL R38
      392 CAPTURE                          VAL R39
      393 CAPTURE                          VAL R15
      394 CAPTURE                          VAL R1
      395 CAPTURE                          VAL R32
      396 CAPTURE                          VAL R48
      397 CAPTURE                          VAL R51
      398 CAPTURE                          VAL R47
      399 CAPTURE                          VAL R16
      400 CAPTURE                          VAL R2
      401 CAPTURE                          VAL R35
      402 CAPTURE                          VAL R33
      403 CAPTURE                          VAL R34
      404 CAPTURE                          VAL R37
      405 CAPTURE                          VAL R41
      406 CAPTURE                          VAL R42
      407 CAPTURE                          VAL R13
      408 CAPTURE                          VAL R10
      409 CAPTURE                          VAL R45
      410 CAPTURE                          VAL R44
      411 RETURN                           R53 1
