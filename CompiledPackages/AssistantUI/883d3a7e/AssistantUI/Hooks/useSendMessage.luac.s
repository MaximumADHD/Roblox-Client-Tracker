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
       11 JUMPIFNOTEQ                      R2 R3 ; [+9]
       13 GETUPVAL                         R1 2
       14 GETUPVAL                         R2 3
       15 CALL                             R2 0 1
       16 JUMPIFNOT                        R2 ; [+4]
       17 GETTABLEKS                       R2 R0 K3 ["contentId"]
       19 SETTABLEKS                       R2 R1 K3 ["contentId"]
       21 NEWTABLE                         R2 4 0
       23 GETUPVAL                         R3 4
       24 CALL                             R3 0 1
       25 JUMPIF                           R3 ; [+3]
       26 GETUPVAL                         R3 3
       27 CALL                             R3 0 1
       28 JUMPIFNOT                        R3 ; [+12]
       29 GETTABLEKS                       R4 R0 K4 ["toolCallOptions"]
       31 JUMPIFNOT                        R4 ; [+6]
       32 GETIMPORT                        R3 K7 [table.clone]
       34 GETTABLEKS                       R4 R0 K4 ["toolCallOptions"]
       36 CALL                             R3 1 1
       37 JUMPIF                           R3 ; [+2]
       38 NEWTABLE                         R3 0 0
       40 MOVE                             R2 R3
       41 GETUPVAL                         R3 5
       42 CALL                             R3 0 1
       43 JUMPIFNOT                        R3 ; [+3]
       44 LOADK                            R3 K8 [200000000]
       45 SETTABLEKS                       R3 R2 K9 ["timeout"]
       47 GETUPVAL                         R3 3
       48 CALL                             R3 0 1
       49 JUMPIFNOT                        R3 ; [+10]
       50 GETTABLEKS                       R3 R2 K10 ["onprogress"]
       52 GETTABLEKS                       R4 R2 K11 ["resetTimeoutOnProgress"]
       54 JUMPIFNOT                        R4 ; [+5]
       55 NEWCLOSURE                       R4 P0
       56 CAPTURE                          UPVAL U6
       57 CAPTURE                          VAL R3
       58 SETTABLEKS                       R4 R2 K10 ["onprogress"]
       60 GETUPVAL                         R3 7
       61 CALL                             R3 0 1
       62 JUMPIFNOT                        R3 ; [+18]
       63 GETUPVAL                         R4 8
       64 GETTABLEKS                       R3 R4 K12 ["new"]
       66 CALL                             R3 0 1
       67 SETTABLEKS                       R3 R2 K13 ["signal"]
       69 GETUPVAL                         R5 9
       70 GETTABLEKS                       R4 R5 K12 ["new"]
       72 NEWCLOSURE                       R5 P1
       73 CAPTURE                          VAL R3
       74 CAPTURE                          UPVAL U0
       75 CAPTURE                          VAL R0
       76 CAPTURE                          REF R2
       77 CAPTURE                          REF R1
       78 CALL                             R4 1 -1
       79 CLOSEUPVALS                      R1
       80 RETURN                           R4 -1
       81 GETUPVAL                         R3 0
       82 GETTABLEKS                       R5 R0 K0 ["name"]
       84 GETTABLEKS                       R6 R0 K14 ["arguments"]
       86 MOVE                             R7 R2
       87 MOVE                             R8 R1
       88 NAMECALL                         R3 R3 K15 ["callTool"]
       90 CALL                             R3 5 -1
       91 CLOSEUPVALS                      R1
       92 RETURN                           R3 -1

PROTO_8:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          VAL R2
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
       12 GETTABLEKS                       R3 R2 K3 ["getMessageGuid"]
       14 MOVE                             R4 R0
       15 CALL                             R3 1 1
       16 NEWTABLE                         R4 0 0
       18 LOADNIL                          R5
       19 GETUPVAL                         R6 2
       20 CALL                             R6 0 1
       21 JUMPIFNOT                        R6 ; [+42]
       22 NEWCLOSURE                       R6 P0
       23 CAPTURE                          UPVAL U3
       24 CAPTURE                          VAL R4
       25 GETUPVAL                         R8 4
       26 GETTABLEKS                       R7 R8 K4 ["CLAUDE_API_KEY"]
       28 GETUPVAL                         R9 3
       29 GETTABLEKS                       R8 R9 K5 ["getSetting"]
       31 MOVE                             R9 R7
       32 CALL                             R8 1 1
       33 JUMPIFNOT                        R8 ; [+3]
       34 JUMPIFEQKS                       R8 K6 [""] ; [+2]
       36 SETTABLE                         R8 R4 R7
       37 GETUPVAL                         R8 4
       38 GETTABLEKS                       R7 R8 K7 ["GEMINI_API_KEY"]
       40 GETUPVAL                         R9 3
       41 GETTABLEKS                       R8 R9 K5 ["getSetting"]
       43 MOVE                             R9 R7
       44 CALL                             R8 1 1
       45 JUMPIFNOT                        R8 ; [+3]
       46 JUMPIFEQKS                       R8 K6 [""] ; [+2]
       48 SETTABLE                         R8 R4 R7
       49 GETUPVAL                         R8 4
       50 GETTABLEKS                       R7 R8 K8 ["OPENAI_API_KEY"]
       52 GETUPVAL                         R9 3
       53 GETTABLEKS                       R8 R9 K5 ["getSetting"]
       55 MOVE                             R9 R7
       56 CALL                             R8 1 1
       57 JUMPIFNOT                        R8 ; [+3]
       58 JUMPIFEQKS                       R8 K6 [""] ; [+2]
       60 SETTABLE                         R8 R4 R7
       61 GETUPVAL                         R7 5
       62 GETTABLEKS                       R5 R7 K9 ["selectedModel"]
       64 DUPTABLE                         R6 K15 [{"messageGuid", "sessionId", "message", "model", "attachments"}]
       65 SETTABLEKS                       R3 R6 K10 ["messageGuid"]
       67 GETUPVAL                         R7 6
       68 SETTABLEKS                       R7 R6 K11 ["sessionId"]
       70 GETUPVAL                         R7 7
       71 SETTABLEKS                       R7 R6 K12 ["message"]
       73 GETUPVAL                         R8 2
       74 CALL                             R8 0 1
       75 JUMPIFNOT                        R8 ; [+2]
       76 MOVE                             R7 R5
       77 JUMP                             ; [+1]
       78 LOADNIL                          R7
       79 SETTABLEKS                       R7 R6 K13 ["model"]
       81 GETUPVAL                         R9 8
       82 LENGTH                           R8 R9
       83 LOADN                            R9 0
       84 JUMPIFNOTLT                      R9 R8 ; [+3]
       86 GETUPVAL                         R7 8
       87 JUMP                             ; [+1]
       88 LOADNIL                          R7
       89 SETTABLEKS                       R7 R6 K14 ["attachments"]
       91 GETTABLEKS                       R7 R2 K16 ["logUserMessageSent"]
       93 MOVE                             R8 R6
       94 CALL                             R7 1 0
       95 NEWCLOSURE                       R7 P1
       96 CAPTURE                          UPVAL U9
       97 CAPTURE                          VAL R3
       98 NEWCLOSURE                       R8 P2
       99 CAPTURE                          UPVAL U10
      100 NEWCLOSURE                       R9 P3
      101 CAPTURE                          UPVAL U10
      102 DUPTABLE                         R10 K19 [{"messageGuid", "sessionId", "messageId", "contentId"}]
      103 SETTABLEKS                       R3 R10 K10 ["messageGuid"]
      105 GETUPVAL                         R11 6
      106 SETTABLEKS                       R11 R10 K11 ["sessionId"]
      108 GETUPVAL                         R12 11
      109 CALL                             R12 0 1
      110 JUMPIFNOT                        R12 ; [+2]
      111 MOVE                             R11 R0
      112 JUMP                             ; [+1]
      113 LOADNIL                          R11
      114 SETTABLEKS                       R11 R10 K17 ["messageId"]
      116 LOADNIL                          R11
      117 SETTABLEKS                       R11 R10 K18 ["contentId"]
      119 GETUPVAL                         R12 12
      120 GETTABLEKS                       R11 R12 K20 ["createLLMSession"]
      122 DUPTABLE                         R12 K40 [{"showError", "messageGuid", "conversationSessionId", "threadId", "requestLLM", "systemMessage", "client", "observer", "setInputEnabled", "onToolCall", "setModelQuality", "onPacketReceived", "maxToolCalls", "timeoutMs", "initialMessages", "requestStartTime", "tools", "apiKeys", "selectedModel", "messsageId", "logRequestStop"}]
      123 SETTABLEKS                       R7 R12 K21 ["showError"]
      125 SETTABLEKS                       R3 R12 K10 ["messageGuid"]
      127 GETUPVAL                         R13 6
      128 SETTABLEKS                       R13 R12 K22 ["conversationSessionId"]
      130 GETUPVAL                         R13 13
      131 SETTABLEKS                       R13 R12 K23 ["threadId"]
      133 GETUPVAL                         R13 14
      134 SETTABLEKS                       R13 R12 K24 ["requestLLM"]
      136 GETUPVAL                         R13 15
      137 SETTABLEKS                       R13 R12 K25 ["systemMessage"]
      139 GETUPVAL                         R13 16
      140 SETTABLEKS                       R13 R12 K26 ["client"]
      142 SETTABLEKS                       R1 R12 K27 ["observer"]
      144 GETUPVAL                         R14 17
      145 GETTABLEKS                       R13 R14 K28 ["setInputEnabled"]
      147 SETTABLEKS                       R13 R12 K28 ["setInputEnabled"]
      149 GETUPVAL                         R14 16
      150 NEWCLOSURE                       R13 P4
      151 CAPTURE                          VAL R14
      152 CAPTURE                          UPVAL U4
      153 CAPTURE                          VAL R10
      154 CAPTURE                          UPVAL U11
      155 CAPTURE                          UPVAL U18
      156 CAPTURE                          UPVAL U19
      157 CAPTURE                          VAL R9
      158 CAPTURE                          UPVAL U20
      159 CAPTURE                          UPVAL U21
      160 CAPTURE                          UPVAL U22
      161 SETTABLEKS                       R13 R12 K29 ["onToolCall"]
      163 GETUPVAL                         R14 23
      164 GETTABLEKS                       R13 R14 K30 ["setModelQuality"]
      166 SETTABLEKS                       R13 R12 K30 ["setModelQuality"]
      168 SETTABLEKS                       R8 R12 K31 ["onPacketReceived"]
      170 GETUPVAL                         R13 24
      171 CALL                             R13 0 1
      172 SETTABLEKS                       R13 R12 K32 ["maxToolCalls"]
      174 GETUPVAL                         R13 25
      175 CALL                             R13 0 1
      176 SETTABLEKS                       R13 R12 K33 ["timeoutMs"]
      178 GETUPVAL                         R13 26
      179 SETTABLEKS                       R13 R12 K34 ["initialMessages"]
      181 GETUPVAL                         R13 27
      182 SETTABLEKS                       R13 R12 K35 ["requestStartTime"]
      184 GETUPVAL                         R13 28
      185 SETTABLEKS                       R13 R12 K36 ["tools"]
      187 SETTABLEKS                       R4 R12 K37 ["apiKeys"]
      189 SETTABLEKS                       R5 R12 K9 ["selectedModel"]
      191 SETTABLEKS                       R0 R12 K38 ["messsageId"]
      193 GETUPVAL                         R13 29
      194 SETTABLEKS                       R13 R12 K39 ["logRequestStop"]
      196 CALL                             R11 1 1
      197 DUPTABLE                         R12 K45 [{"threadId", "messages", "tools", "system", "messageGuid", "isFirstMessage", "isAgenticMode", "apiKeys", "selectedModel"}]
      198 GETUPVAL                         R13 13
      199 SETTABLEKS                       R13 R12 K23 ["threadId"]
      201 GETUPVAL                         R13 26
      202 SETTABLEKS                       R13 R12 K41 ["messages"]
      204 GETUPVAL                         R13 28
      205 SETTABLEKS                       R13 R12 K36 ["tools"]
      207 GETUPVAL                         R13 15
      208 SETTABLEKS                       R13 R12 K42 ["system"]
      210 SETTABLEKS                       R3 R12 K10 ["messageGuid"]
      212 LOADB                            R13 1
      213 SETTABLEKS                       R13 R12 K43 ["isFirstMessage"]
      215 LOADB                            R13 0
      216 SETTABLEKS                       R13 R12 K44 ["isAgenticMode"]
      218 SETTABLEKS                       R4 R12 K37 ["apiKeys"]
      220 SETTABLEKS                       R5 R12 K9 ["selectedModel"]
      222 GETUPVAL                         R13 14
      223 MOVE                             R14 R12
      224 GETTABLEKS                       R15 R11 K46 ["processEvent"]
      226 CALL                             R13 2 0
      227 RETURN                           R0 0

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
       39 CAPTURE                          VAL R1
       40 CAPTURE                          UPVAL U29
       41 CAPTURE                          UPVAL U30
       42 CAPTURE                          UPVAL U31
       43 CALL                             R2 2 0
       44 RETURN                           R0 0

PROTO_15:
        0 NAMECALL                         R1 R0 K0 ["listTools"]
        2 CALL                             R1 1 1
        3 NAMECALL                         R1 R1 K1 ["await"]
        5 CALL                             R1 1 2
        6 JUMPIFNOT                        R1 ; [+12]
        7 GETTABLEKS                       R5 R2 K2 ["failures"]
        9 GETUPVAL                         R7 0
       10 GETTABLEKS                       R6 R7 K3 ["getMcpClientIdentifier"]
       12 CALL                             R6 0 1
       13 GETTABLE                         R4 R5 R6
       14 JUMPIFNOTEQKNIL                  R4 ; [+2]
       16 LOADB                            R3 0 +1
       17 LOADB                            R3 1
       18 JUMPIFNOT                        R3 ; [+25]
       19 GETUPVAL                         R3 1
       20 DUPTABLE                         R4 K5 [{"errorType"}]
       21 LOADK                            R5 K6 ["client_error"]
       22 SETTABLEKS                       R5 R4 K4 ["errorType"]
       24 CALL                             R3 1 0
       25 GETUPVAL                         R4 2
       26 GETTABLEKS                       R3 R4 K7 ["setInputEnabled"]
       28 LOADB                            R4 1
       29 CALL                             R3 1 0
       30 GETIMPORT                        R3 K9 [error]
       32 LOADK                            R5 K10 ["Failed to get tools list with error: %*"]
       33 GETUPVAL                         R7 3
       34 MOVE                             R9 R2
       35 NAMECALL                         R7 R7 K11 ["JSONEncode"]
       37 CALL                             R7 2 1
       38 NAMECALL                         R5 R5 K12 ["format"]
       40 CALL                             R5 2 1
       41 MOVE                             R4 R5
       42 CALL                             R3 1 0
       43 RETURN                           R0 0
       44 LOADNIL                          R3
       45 GETUPVAL                         R4 4
       46 CALL                             R4 0 1
       47 JUMPIFNOT                        R4 ; [+11]
       48 GETUPVAL                         R4 5
       49 GETTABLEKS                       R6 R2 K13 ["result"]
       51 GETTABLEKS                       R5 R6 K14 ["tools"]
       53 CALL                             R4 1 1
       54 GETUPVAL                         R5 6
       55 MOVE                             R6 R4
       56 CALL                             R5 1 1
       57 MOVE                             R3 R5
       58 JUMP                             ; [+7]
       59 GETUPVAL                         R4 6
       60 GETTABLEKS                       R6 R2 K13 ["result"]
       62 GETTABLEKS                       R5 R6 K14 ["tools"]
       64 CALL                             R4 1 1
       65 MOVE                             R3 R4
       66 GETUPVAL                         R4 7
       67 CALL                             R4 0 1
       68 JUMPIFNOT                        R4 ; [+72]
       69 GETUPVAL                         R6 8
       70 GETTABLEKS                       R5 R6 K15 ["current"]
       72 GETUPVAL                         R6 9
       73 GETTABLE                         R4 R5 R6
       74 GETUPVAL                         R5 10
       75 MOVE                             R6 R4
       76 GETTABLEKS                       R8 R2 K13 ["result"]
       78 GETTABLEKS                       R7 R8 K14 ["tools"]
       80 CALL                             R5 2 1
       81 GETUPVAL                         R7 8
       82 GETTABLEKS                       R6 R7 K15 ["current"]
       84 GETUPVAL                         R7 9
       85 GETTABLEKS                       R10 R2 K13 ["result"]
       87 GETTABLEKS                       R9 R10 K14 ["tools"]
       89 NEWTABLE                         R10 0 0
       91 MOVE                             R11 R9
       92 LOADNIL                          R12
       93 LOADNIL                          R13
       94 FORGPREP                         R11
       95 GETTABLEKS                       R16 R15 K16 ["name"]
       97 LOADB                            R17 1
       98 SETTABLE                         R17 R10 R16
       99 FORGLOOP                         R11 2 ; [-5]
      101 MOVE                             R8 R10
      102 SETTABLE                         R8 R6 R7
      103 JUMPIFNOT                        R5 ; [+37]
      104 GETIMPORT                        R6 K19 [table.concat]
      106 MOVE                             R7 R5
      107 LOADK                            R8 K20 [", "]
      108 CALL                             R6 2 1
      109 GETUPVAL                         R7 11
      110 DUPTABLE                         R8 K23 [{"role", "hidden"}]
      111 LOADK                            R9 K24 ["user"]
      112 SETTABLEKS                       R9 R8 K21 ["role"]
      114 LOADB                            R9 1
      115 SETTABLEKS                       R9 R8 K22 ["hidden"]
      117 CALL                             R7 1 1
      118 GETUPVAL                         R8 12
      119 LOADK                            R10 K25 ["The following tools have been removed: %*"]
      120 MOVE                             R12 R6
      121 NAMECALL                         R10 R10 K12 ["format"]
      123 CALL                             R10 2 1
      124 MOVE                             R9 R10
      125 CALL                             R8 1 1
      126 GETUPVAL                         R9 13
      127 DUPTABLE                         R10 K28 [{"messageId", "content"}]
      128 SETTABLEKS                       R7 R10 K26 ["messageId"]
      130 DUPTABLE                         R11 K31 [{"type", "text"}]
      131 GETUPVAL                         R13 14
      132 GETTABLEKS                       R12 R13 K32 ["Type"]
      134 SETTABLEKS                       R12 R11 K29 ["type"]
      136 SETTABLEKS                       R8 R11 K30 ["text"]
      138 SETTABLEKS                       R11 R10 K27 ["content"]
      140 CALL                             R9 1 0
      141 GETUPVAL                         R4 15
      142 CALL                             R4 0 1
      143 JUMPIFNOT                        R4 ; [+4]
      144 GETIMPORT                        R4 K34 [print]
      146 LOADK                            R5 K35 ["Reading conversation history..."]
      147 CALL                             R4 1 0
      148 GETUPVAL                         R4 16
      149 NEWCLOSURE                       R5 P0
      150 CAPTURE                          UPVAL U17
      151 CAPTURE                          UPVAL U15
      152 CAPTURE                          UPVAL U18
      153 CAPTURE                          UPVAL U19
      154 CAPTURE                          UPVAL U20
      155 CAPTURE                          UPVAL U21
      156 CAPTURE                          UPVAL U22
      157 CAPTURE                          UPVAL U0
      158 CAPTURE                          UPVAL U23
      159 CAPTURE                          UPVAL U9
      160 CAPTURE                          UPVAL U24
      161 CAPTURE                          UPVAL U25
      162 CAPTURE                          UPVAL U1
      163 CAPTURE                          UPVAL U26
      164 CAPTURE                          UPVAL U27
      165 CAPTURE                          UPVAL U28
      166 CAPTURE                          UPVAL U29
      167 CAPTURE                          UPVAL U30
      168 CAPTURE                          UPVAL U31
      169 CAPTURE                          VAL R0
      170 CAPTURE                          UPVAL U2
      171 CAPTURE                          UPVAL U32
      172 CAPTURE                          UPVAL U33
      173 CAPTURE                          UPVAL U34
      174 CAPTURE                          UPVAL U35
      175 CAPTURE                          UPVAL U36
      176 CAPTURE                          UPVAL U37
      177 CAPTURE                          UPVAL U38
      178 CAPTURE                          UPVAL U39
      179 CAPTURE                          UPVAL U40
      180 CAPTURE                          REF R3
      181 CAPTURE                          UPVAL U41
      182 CALL                             R4 1 0
      183 CLOSEUPVALS                      R3
      184 RETURN                           R0 0

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
       44 CALL                             R0 1 0
       45 RETURN                           R0 0

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
       22 GETUPVAL                         R2 1
       23 GETTABLEKS                       R1 R2 K6 ["setInputEnabled"]
       25 LOADB                            R2 0
       26 CALL                             R1 1 0
       27 GETTABLEKS                       R1 R0 K7 ["text"]
       29 GETTABLEKS                       R3 R0 K9 ["retry"]
       31 ORK                              R2 R3 K8 [False]
       32 GETIMPORT                        R3 K12 [os.clock]
       34 CALL                             R3 0 1
       35 LOADB                            R5 1
       36 GETTABLEKS                       R6 R0 K13 ["previousMessageId"]
       38 JUMPIFNOTEQKNIL                  R6 ; [+2]
       40 NOT                              R5 R2
       41 FASTCALL2K                       ASSERT R5 K14 ; [+4]
       43 LOADK                            R6 K14 ["previousMessageId must be provided for retry messages"]
       44 GETIMPORT                        R4 K16 [assert]
       46 CALL                             R4 2 0
       47 NEWTABLE                         R4 0 0
       49 JUMPIF                           R2 ; [+91]
       50 GETUPVAL                         R5 2
       51 DUPTABLE                         R6 K18 [{"role"}]
       52 LOADK                            R7 K19 ["user"]
       53 SETTABLEKS                       R7 R6 K17 ["role"]
       55 CALL                             R5 1 1
       56 GETUPVAL                         R6 3
       57 CALL                             R6 0 1
       58 JUMPIFNOT                        R6 ; [+60]
       59 GETTABLEKS                       R6 R0 K20 ["images"]
       61 JUMPIFNOT                        R6 ; [+57]
       62 GETIMPORT                        R6 K22 [ipairs]
       64 GETTABLEKS                       R7 R0 K20 ["images"]
       66 CALL                             R6 1 3
       67 FORGPREP_INEXT                   R6
       68 GETTABLEKS                       R11 R10 K23 ["data"]
       70 LENGTH                           R12 R11
       71 LOADN                            R14 10
       72 JUMPIFNOTLT                      R14 R12 ; [+10]
       74 SUBK                             R15 R12 K24 [9]
       75 FASTCALL3                        STRING_SUB R11 R15 R12
       77 MOVE                             R14 R11
       78 MOVE                             R16 R12
       79 GETIMPORT                        R13 K27 [string.sub]
       81 CALL                             R13 3 1
       82 JUMP                             ; [+1]
       83 MOVE                             R13 R11
       84 DUPTABLE                         R16 K31 [{"imageDataSuffix", "imageDataSize", "mimeType"}]
       85 SETTABLEKS                       R13 R16 K28 ["imageDataSuffix"]
       87 SETTABLEKS                       R12 R16 K29 ["imageDataSize"]
       89 GETTABLEKS                       R17 R10 K30 ["mimeType"]
       91 SETTABLEKS                       R17 R16 K30 ["mimeType"]
       93 FASTCALL2                        TABLE_INSERT R4 R16 ; [+4]
       95 MOVE                             R15 R4
       96 GETIMPORT                        R14 K34 [table.insert]
       98 CALL                             R14 2 0
       99 DUPTABLE                         R14 K38 [{"type", "imageContent", "expanded"}]
      100 GETUPVAL                         R16 4
      101 GETTABLEKS                       R15 R16 K39 ["Type"]
      103 SETTABLEKS                       R15 R14 K35 ["type"]
      105 SETTABLEKS                       R10 R14 K36 ["imageContent"]
      107 LOADB                            R15 1
      108 SETTABLEKS                       R15 R14 K37 ["expanded"]
      110 GETUPVAL                         R15 5
      111 DUPTABLE                         R16 K42 [{"messageId", "content"}]
      112 SETTABLEKS                       R5 R16 K40 ["messageId"]
      114 SETTABLEKS                       R14 R16 K41 ["content"]
      116 CALL                             R15 1 0
      117 FORGLOOP                         R6 2 [inext] ; [-50]
      119 GETUPVAL                         R6 3
      120 CALL                             R6 0 1
      121 JUMPIFNOT                        R6 ; [+4]
      122 LENGTH                           R6 R1
      123 LOADN                            R7 0
      124 JUMPIFNOTLT                      R7 R6 ; [+16]
      126 DUPTABLE                         R6 K43 [{"type", "text"}]
      127 GETUPVAL                         R8 6
      128 GETTABLEKS                       R7 R8 K39 ["Type"]
      130 SETTABLEKS                       R7 R6 K35 ["type"]
      132 SETTABLEKS                       R1 R6 K7 ["text"]
      134 GETUPVAL                         R7 5
      135 DUPTABLE                         R8 K42 [{"messageId", "content"}]
      136 SETTABLEKS                       R5 R8 K40 ["messageId"]
      138 SETTABLEKS                       R6 R8 K41 ["content"]
      140 CALL                             R7 1 0
      141 GETUPVAL                         R5 7
      142 CALL                             R5 0 1
      143 JUMPIFNOT                        R5 ; [+5]
      144 GETIMPORT                        R5 K45 [print]
      146 LOADK                            R6 K46 ["About to send message:"]
      147 MOVE                             R7 R1
      148 CALL                             R5 2 0
      149 GETUPVAL                         R5 8
      150 DUPTABLE                         R6 K48 [{"prompt", "setInputEnabled"}]
      151 SETTABLEKS                       R1 R6 K47 ["prompt"]
      153 GETUPVAL                         R8 1
      154 GETTABLEKS                       R7 R8 K6 ["setInputEnabled"]
      156 SETTABLEKS                       R7 R6 K6 ["setInputEnabled"]
      158 CALL                             R5 1 1
      159 JUMPIFNOT                        R5 ; [+1]
      160 RETURN                           R0 0
      161 GETIMPORT                        R6 K51 [task.spawn]
      163 NEWCLOSURE                       R7 P0
      164 CAPTURE                          UPVAL U9
      165 CAPTURE                          UPVAL U10
      166 CAPTURE                          UPVAL U11
      167 CAPTURE                          UPVAL U1
      168 CAPTURE                          UPVAL U12
      169 CAPTURE                          UPVAL U13
      170 CAPTURE                          UPVAL U14
      171 CAPTURE                          UPVAL U15
      172 CAPTURE                          UPVAL U16
      173 CAPTURE                          UPVAL U17
      174 CAPTURE                          UPVAL U18
      175 CAPTURE                          UPVAL U19
      176 CAPTURE                          UPVAL U2
      177 CAPTURE                          UPVAL U20
      178 CAPTURE                          UPVAL U5
      179 CAPTURE                          UPVAL U6
      180 CAPTURE                          UPVAL U7
      181 CAPTURE                          UPVAL U21
      182 CAPTURE                          UPVAL U22
      183 CAPTURE                          UPVAL U23
      184 CAPTURE                          UPVAL U24
      185 CAPTURE                          UPVAL U25
      186 CAPTURE                          UPVAL U26
      187 CAPTURE                          UPVAL U27
      188 CAPTURE                          UPVAL U28
      189 CAPTURE                          VAL R1
      190 CAPTURE                          VAL R4
      191 CAPTURE                          UPVAL U29
      192 CAPTURE                          UPVAL U30
      193 CAPTURE                          UPVAL U31
      194 CAPTURE                          UPVAL U32
      195 CAPTURE                          UPVAL U33
      196 CAPTURE                          UPVAL U34
      197 CAPTURE                          UPVAL U35
      198 CAPTURE                          UPVAL U36
      199 CAPTURE                          UPVAL U37
      200 CAPTURE                          UPVAL U38
      201 CAPTURE                          UPVAL U39
      202 CAPTURE                          UPVAL U40
      203 CAPTURE                          UPVAL U41
      204 CAPTURE                          UPVAL U42
      205 CAPTURE                          VAL R3
      206 CAPTURE                          UPVAL U43
      207 CALL                             R6 1 0
      208 RETURN                           R0 0

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
       80 CAPTURE                          VAL R0
       81 CAPTURE                          VAL R1
       82 CAPTURE                          UPVAL U22
       83 CAPTURE                          UPVAL U23
       84 CAPTURE                          VAL R2
       85 CAPTURE                          UPVAL U24
       86 CAPTURE                          UPVAL U25
       87 CAPTURE                          VAL R10
       88 CAPTURE                          VAL R4
       89 CAPTURE                          UPVAL U26
       90 CAPTURE                          VAL R11
       91 CAPTURE                          UPVAL U27
       92 CAPTURE                          UPVAL U28
       93 CAPTURE                          UPVAL U29
       94 CAPTURE                          VAL R7
       95 CAPTURE                          UPVAL U21
       96 CAPTURE                          REF R22
       97 CAPTURE                          VAL R16
       98 CAPTURE                          UPVAL U30
       99 CAPTURE                          UPVAL U31
      100 CAPTURE                          VAL R9
      101 CAPTURE                          UPVAL U32
      102 CAPTURE                          VAL R3
      103 CAPTURE                          VAL R12
      104 CAPTURE                          UPVAL U33
      105 CAPTURE                          UPVAL U34
      106 CAPTURE                          VAL R19
      107 CAPTURE                          VAL R20
      108 CAPTURE                          VAL R21
      109 CAPTURE                          UPVAL U35
      110 CAPTURE                          VAL R8
      111 CAPTURE                          VAL R14
      112 CAPTURE                          VAL R5
      113 CAPTURE                          VAL R6
      114 CAPTURE                          UPVAL U36
      115 CAPTURE                          UPVAL U37
      116 CAPTURE                          UPVAL U38
      117 CAPTURE                          UPVAL U39
      118 CAPTURE                          UPVAL U40
      119 CAPTURE                          VAL R18
      120 CAPTURE                          UPVAL U41
      121 CAPTURE                          UPVAL U42
      122 CAPTURE                          VAL R13
      123 CLOSEUPVALS                      R22
      124 RETURN                           R23 1

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
      252 GETTABLEKS                       R34 R35 K50 ["FFlagAssistantMultipleExternalMCPServers"]
      254 CALL                             R33 1 1
      255 GETIMPORT                        R34 K9 [require]
      257 GETTABLEKS                       R36 R0 K48 ["Flags"]
      259 GETTABLEKS                       R35 R36 K51 ["FFlagAssistantTestAutomation"]
      261 CALL                             R34 1 1
      262 GETIMPORT                        R35 K9 [require]
      264 GETTABLEKS                       R37 R0 K48 ["Flags"]
      266 GETTABLEKS                       R36 R37 K52 ["FFlagDebugLogAssistantUI"]
      268 CALL                             R35 1 1
      269 GETIMPORT                        R36 K9 [require]
      271 GETTABLEKS                       R38 R0 K48 ["Flags"]
      273 GETTABLEKS                       R37 R38 K53 ["FFlagEnableAssistantImageUpload"]
      275 CALL                             R36 1 1
      276 GETIMPORT                        R37 K9 [require]
      278 GETTABLEKS                       R39 R0 K48 ["Flags"]
      280 GETTABLEKS                       R38 R39 K54 ["FFlagEnableAssistantInputImageAttachment"]
      282 CALL                             R37 1 1
      283 GETIMPORT                        R38 K9 [require]
      285 GETTABLEKS                       R40 R0 K48 ["Flags"]
      287 GETTABLEKS                       R39 R40 K55 ["FFlagMCPAssistantExternalAPIKey"]
      289 CALL                             R38 1 1
      290 GETIMPORT                        R39 K9 [require]
      292 GETTABLEKS                       R41 R0 K48 ["Flags"]
      294 GETTABLEKS                       R40 R41 K56 ["FFlagMCPAssistantLongRunningToolCalls"]
      296 CALL                             R39 1 1
      297 GETIMPORT                        R40 K9 [require]
      299 GETTABLEKS                       R42 R0 K48 ["Flags"]
      301 GETTABLEKS                       R41 R42 K57 ["FFlagUseToolsChangedSystemNotice"]
      303 CALL                             R40 1 1
      304 GETIMPORT                        R41 K9 [require]
      306 GETTABLEKS                       R43 R0 K48 ["Flags"]
      308 GETTABLEKS                       R42 R43 K58 ["FIntAssistantProcessEventTimeoutMS"]
      310 CALL                             R41 1 1
      311 GETIMPORT                        R42 K9 [require]
      313 GETTABLEKS                       R44 R0 K48 ["Flags"]
      315 GETTABLEKS                       R43 R44 K59 ["FIntMCPAssistantMaxToolCalls"]
      317 CALL                             R42 1 1
      318 GETIMPORT                        R43 K9 [require]
      320 GETTABLEKS                       R46 R0 K12 ["Components"]
      322 GETTABLEKS                       R45 R46 K27 ["ContentWidgets"]
      324 GETTABLEKS                       R44 R45 K60 ["ImageContentWidget"]
      326 CALL                             R43 1 1
      327 GETTABLEKS                       R44 R15 K61 ["getSystemReminder"]
      329 DUPCLOSURE                       R45 K62 [PROTO_0]
      330 CAPTURE                          VAL R7
      331 DUPCLOSURE                       R46 K63 [PROTO_1]
      332 CAPTURE                          VAL R15
      333 DUPCLOSURE                       R47 K64 [PROTO_2]
      334 DUPCLOSURE                       R48 K65 [PROTO_3]
      335 DUPCLOSURE                       R49 K66 [PROTO_8]
      336 CAPTURE                          VAL R15
      337 CAPTURE                          VAL R39
      338 CAPTURE                          VAL R36
      339 CAPTURE                          VAL R33
      340 CAPTURE                          VAL R34
      341 CAPTURE                          VAL R13
      342 CAPTURE                          VAL R10
      343 DUPCLOSURE                       R50 K67 [PROTO_18]
      344 CAPTURE                          VAL R18
      345 CAPTURE                          VAL R17
      346 CAPTURE                          VAL R20
      347 CAPTURE                          VAL R31
      348 CAPTURE                          VAL R23
      349 CAPTURE                          VAL R24
      350 CAPTURE                          VAL R30
      351 CAPTURE                          VAL R22
      352 CAPTURE                          VAL R21
      353 CAPTURE                          VAL R26
      354 CAPTURE                          VAL R28
      355 CAPTURE                          VAL R19
      356 CAPTURE                          VAL R25
      357 CAPTURE                          VAL R29
      358 CAPTURE                          VAL R11
      359 CAPTURE                          VAL R12
      360 CAPTURE                          VAL R3
      361 CAPTURE                          VAL R8
      362 CAPTURE                          VAL R27
      363 CAPTURE                          VAL R5
      364 CAPTURE                          VAL R9
      365 CAPTURE                          VAL R40
      366 CAPTURE                          VAL R37
      367 CAPTURE                          VAL R43
      368 CAPTURE                          VAL R14
      369 CAPTURE                          VAL R35
      370 CAPTURE                          VAL R15
      371 CAPTURE                          VAL R1
      372 CAPTURE                          VAL R32
      373 CAPTURE                          VAL R45
      374 CAPTURE                          VAL R48
      375 CAPTURE                          VAL R44
      376 CAPTURE                          VAL R16
      377 CAPTURE                          VAL R2
      378 CAPTURE                          VAL R38
      379 CAPTURE                          VAL R39
      380 CAPTURE                          VAL R36
      381 CAPTURE                          VAL R33
      382 CAPTURE                          VAL R34
      383 CAPTURE                          VAL R13
      384 CAPTURE                          VAL R10
      385 CAPTURE                          VAL R42
      386 CAPTURE                          VAL R41
      387 RETURN                           R50 1
