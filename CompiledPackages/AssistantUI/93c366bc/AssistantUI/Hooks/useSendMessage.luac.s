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
       65 DUPTABLE                         R7 K17 [{"messageGuid", "sessionId", "threadId", "message", "model", "assistantMode", "attachments"}]
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
       84 GETUPVAL                         R9 10
       85 CALL                             R9 0 1
       86 JUMPIFNOT                        R9 ; [+2]
       87 GETUPVAL                         R8 11
       88 JUMPIF                           R8 ; [+1]
       89 LOADNIL                          R8
       90 SETTABLEKS                       R8 R7 K15 ["assistantMode"]
       92 GETUPVAL                         R10 12
       93 LENGTH                           R9 R10
       94 LOADN                            R10 0
       95 JUMPIFNOTLT                      R10 R9 ; [+3]
       97 GETUPVAL                         R8 12
       98 JUMP                             ; [+1]
       99 LOADNIL                          R8
      100 SETTABLEKS                       R8 R7 K16 ["attachments"]
      102 GETTABLEKS                       R8 R2 K18 ["logUserMessageSent"]
      104 MOVE                             R9 R7
      105 CALL                             R8 1 0
      106 NEWCLOSURE                       R8 P1
      107 CAPTURE                          UPVAL U13
      108 CAPTURE                          VAL R3
      109 NEWCLOSURE                       R9 P2
      110 CAPTURE                          UPVAL U14
      111 NEWCLOSURE                       R10 P3
      112 CAPTURE                          UPVAL U14
      113 DUPTABLE                         R11 K21 [{"messageGuid", "sessionId", "messageId", "contentId", "assistantMode"}]
      114 SETTABLEKS                       R3 R11 K10 ["messageGuid"]
      116 GETUPVAL                         R12 6
      117 SETTABLEKS                       R12 R11 K11 ["sessionId"]
      119 SETTABLEKS                       R0 R11 K19 ["messageId"]
      121 LOADNIL                          R12
      122 SETTABLEKS                       R12 R11 K20 ["contentId"]
      124 GETUPVAL                         R13 10
      125 CALL                             R13 0 1
      126 JUMPIFNOT                        R13 ; [+2]
      127 GETUPVAL                         R12 11
      128 JUMPIF                           R12 ; [+1]
      129 LOADNIL                          R12
      130 SETTABLEKS                       R12 R11 K15 ["assistantMode"]
      132 GETUPVAL                         R13 15
      133 GETTABLEKS                       R12 R13 K22 ["createLLMSession"]
      135 DUPTABLE                         R13 K39 [{"showError", "messageGuid", "conversationSessionId", "threadId", "requestLLM", "systemMessage", "observer", "setInputEnabled", "onToolCall", "setModelQuality", "onPacketReceived", "maxToolCalls", "timeoutMs", "initialMessages", "requestStartTime", "tools", "apiKeys", "selectedModel", "messageId", "logRequestStop", "assistantMode"}]
      136 SETTABLEKS                       R8 R13 K23 ["showError"]
      138 SETTABLEKS                       R3 R13 K10 ["messageGuid"]
      140 GETUPVAL                         R14 6
      141 SETTABLEKS                       R14 R13 K24 ["conversationSessionId"]
      143 GETUPVAL                         R14 8
      144 SETTABLEKS                       R14 R13 K12 ["threadId"]
      146 GETUPVAL                         R14 16
      147 SETTABLEKS                       R14 R13 K25 ["requestLLM"]
      149 GETUPVAL                         R14 17
      150 SETTABLEKS                       R14 R13 K26 ["systemMessage"]
      152 SETTABLEKS                       R1 R13 K27 ["observer"]
      154 GETUPVAL                         R15 18
      155 GETTABLEKS                       R14 R15 K28 ["setInputEnabled"]
      157 SETTABLEKS                       R14 R13 K28 ["setInputEnabled"]
      159 GETUPVAL                         R15 19
      160 NEWCLOSURE                       R14 P4
      161 CAPTURE                          VAL R15
      162 CAPTURE                          UPVAL U4
      163 CAPTURE                          VAL R11
      164 CAPTURE                          UPVAL U20
      165 CAPTURE                          VAL R10
      166 CAPTURE                          UPVAL U21
      167 CAPTURE                          UPVAL U22
      168 CAPTURE                          UPVAL U23
      169 CAPTURE                          UPVAL U24
      170 CAPTURE                          UPVAL U25
      171 SETTABLEKS                       R14 R13 K29 ["onToolCall"]
      173 GETUPVAL                         R15 26
      174 GETTABLEKS                       R14 R15 K30 ["setModelQuality"]
      176 SETTABLEKS                       R14 R13 K30 ["setModelQuality"]
      178 SETTABLEKS                       R9 R13 K31 ["onPacketReceived"]
      180 GETUPVAL                         R14 27
      181 CALL                             R14 0 1
      182 SETTABLEKS                       R14 R13 K32 ["maxToolCalls"]
      184 GETUPVAL                         R14 28
      185 CALL                             R14 0 1
      186 SETTABLEKS                       R14 R13 K33 ["timeoutMs"]
      188 GETUPVAL                         R14 29
      189 SETTABLEKS                       R14 R13 K34 ["initialMessages"]
      191 GETUPVAL                         R14 30
      192 SETTABLEKS                       R14 R13 K35 ["requestStartTime"]
      194 GETUPVAL                         R14 31
      195 SETTABLEKS                       R14 R13 K36 ["tools"]
      197 SETTABLEKS                       R4 R13 K37 ["apiKeys"]
      199 SETTABLEKS                       R6 R13 K9 ["selectedModel"]
      201 SETTABLEKS                       R0 R13 K19 ["messageId"]
      203 GETUPVAL                         R14 32
      204 SETTABLEKS                       R14 R13 K38 ["logRequestStop"]
      206 GETUPVAL                         R15 10
      207 CALL                             R15 0 1
      208 JUMPIFNOT                        R15 ; [+2]
      209 GETUPVAL                         R14 11
      210 JUMPIF                           R14 ; [+1]
      211 LOADNIL                          R14
      212 SETTABLEKS                       R14 R13 K15 ["assistantMode"]
      214 CALL                             R12 1 1
      215 DUPTABLE                         R13 K44 [{"threadId", "messages", "tools", "system", "messageGuid", "isFirstMessage", "isAgenticMode", "apiKeys", "selectedModel", "assistantMode"}]
      216 GETUPVAL                         R14 8
      217 SETTABLEKS                       R14 R13 K12 ["threadId"]
      219 GETUPVAL                         R14 29
      220 SETTABLEKS                       R14 R13 K40 ["messages"]
      222 GETUPVAL                         R14 31
      223 SETTABLEKS                       R14 R13 K36 ["tools"]
      225 GETUPVAL                         R14 17
      226 SETTABLEKS                       R14 R13 K41 ["system"]
      228 SETTABLEKS                       R3 R13 K10 ["messageGuid"]
      230 LOADB                            R14 1
      231 SETTABLEKS                       R14 R13 K42 ["isFirstMessage"]
      233 LOADB                            R14 0
      234 SETTABLEKS                       R14 R13 K43 ["isAgenticMode"]
      236 SETTABLEKS                       R4 R13 K37 ["apiKeys"]
      238 SETTABLEKS                       R6 R13 K9 ["selectedModel"]
      240 GETUPVAL                         R15 10
      241 CALL                             R15 0 1
      242 JUMPIFNOT                        R15 ; [+2]
      243 GETUPVAL                         R14 11
      244 JUMPIF                           R14 ; [+1]
      245 LOADNIL                          R14
      246 SETTABLEKS                       R14 R13 K15 ["assistantMode"]
      248 GETUPVAL                         R14 16
      249 MOVE                             R15 R13
      250 GETTABLEKS                       R16 R12 K45 ["processEvent"]
      252 CALL                             R14 2 0
      253 RETURN                           R0 0

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
       40 CAPTURE                          UPVAL U30
       41 CAPTURE                          UPVAL U31
       42 CAPTURE                          VAL R1
       43 CAPTURE                          UPVAL U32
       44 CAPTURE                          UPVAL U33
       45 CAPTURE                          UPVAL U34
       46 CALL                             R2 2 0
       47 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+21]
        3 DUPTABLE                         R1 K1 [{"disableScreenCapture"}]
        4 LOADB                            R2 1
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R3 R4 K2 ["selectedProvider"]
        8 JUMPIFEQKS                       R3 K3 ["Studio"] ; [+12]
       10 GETUPVAL                         R3 2
       11 CALL                             R3 0 1
       12 NOT                              R2 R3
       13 JUMPIFNOT                        R2 ; [+7]
       14 GETUPVAL                         R4 1
       15 GETTABLEKS                       R3 R4 K2 ["selectedProvider"]
       17 JUMPIFEQKS                       R3 K4 ["OpenAI"] ; [+2]
       19 LOADB                            R2 0 +1
       20 LOADB                            R2 1
       21 SETTABLEKS                       R2 R1 K0 ["disableScreenCapture"]
       23 JUMPIF                           R1 ; [+1]
       24 LOADNIL                          R1
       25 GETUPVAL                         R2 3
       26 CALL                             R2 0 1
       27 JUMPIFNOT                        R2 ; [+6]
       28 JUMPIF                           R1 ; [+2]
       29 NEWTABLE                         R1 0 0
       31 GETUPVAL                         R2 4
       32 SETTABLEKS                       R2 R1 K5 ["assistantMode"]
       34 MOVE                             R4 R1
       35 NAMECALL                         R2 R0 K6 ["listTools"]
       37 CALL                             R2 2 1
       38 NAMECALL                         R2 R2 K7 ["await"]
       40 CALL                             R2 1 2
       41 JUMPIFNOT                        R2 ; [+12]
       42 GETTABLEKS                       R6 R3 K8 ["failures"]
       44 GETUPVAL                         R8 5
       45 GETTABLEKS                       R7 R8 K9 ["getMcpClientIdentifier"]
       47 CALL                             R7 0 1
       48 GETTABLE                         R5 R6 R7
       49 JUMPIFNOTEQKNIL                  R5 ; [+2]
       51 LOADB                            R4 0 +1
       52 LOADB                            R4 1
       53 JUMPIFNOT                        R4 ; [+25]
       54 GETUPVAL                         R4 6
       55 DUPTABLE                         R5 K11 [{"errorType"}]
       56 LOADK                            R6 K12 ["client_error"]
       57 SETTABLEKS                       R6 R5 K10 ["errorType"]
       59 CALL                             R4 1 0
       60 GETUPVAL                         R5 7
       61 GETTABLEKS                       R4 R5 K13 ["setInputEnabled"]
       63 LOADB                            R5 1
       64 CALL                             R4 1 0
       65 GETIMPORT                        R4 K15 [error]
       67 LOADK                            R6 K16 ["Failed to get tools list with error: %*"]
       68 GETUPVAL                         R8 8
       69 MOVE                             R10 R3
       70 NAMECALL                         R8 R8 K17 ["JSONEncode"]
       72 CALL                             R8 2 1
       73 NAMECALL                         R6 R6 K18 ["format"]
       75 CALL                             R6 2 1
       76 MOVE                             R5 R6
       77 CALL                             R4 1 0
       78 RETURN                           R0 0
       79 LOADNIL                          R4
       80 GETUPVAL                         R5 9
       81 CALL                             R5 0 1
       82 JUMPIFNOT                        R5 ; [+11]
       83 GETUPVAL                         R5 10
       84 GETTABLEKS                       R7 R3 K19 ["result"]
       86 GETTABLEKS                       R6 R7 K20 ["tools"]
       88 CALL                             R5 1 1
       89 GETUPVAL                         R6 11
       90 MOVE                             R7 R5
       91 CALL                             R6 1 1
       92 MOVE                             R4 R6
       93 JUMP                             ; [+7]
       94 GETUPVAL                         R5 11
       95 GETTABLEKS                       R7 R3 K19 ["result"]
       97 GETTABLEKS                       R6 R7 K20 ["tools"]
       99 CALL                             R5 1 1
      100 MOVE                             R4 R5
      101 GETUPVAL                         R5 12
      102 CALL                             R5 0 1
      103 JUMPIFNOT                        R5 ; [+72]
      104 GETUPVAL                         R7 13
      105 GETTABLEKS                       R6 R7 K21 ["current"]
      107 GETUPVAL                         R7 14
      108 GETTABLE                         R5 R6 R7
      109 GETUPVAL                         R6 15
      110 MOVE                             R7 R5
      111 GETTABLEKS                       R9 R3 K19 ["result"]
      113 GETTABLEKS                       R8 R9 K20 ["tools"]
      115 CALL                             R6 2 1
      116 GETUPVAL                         R8 13
      117 GETTABLEKS                       R7 R8 K21 ["current"]
      119 GETUPVAL                         R8 14
      120 GETTABLEKS                       R11 R3 K19 ["result"]
      122 GETTABLEKS                       R10 R11 K20 ["tools"]
      124 NEWTABLE                         R11 0 0
      126 MOVE                             R12 R10
      127 LOADNIL                          R13
      128 LOADNIL                          R14
      129 FORGPREP                         R12
      130 GETTABLEKS                       R17 R16 K22 ["name"]
      132 LOADB                            R18 1
      133 SETTABLE                         R18 R11 R17
      134 FORGLOOP                         R12 2 ; [-5]
      136 MOVE                             R9 R11
      137 SETTABLE                         R9 R7 R8
      138 JUMPIFNOT                        R6 ; [+37]
      139 GETIMPORT                        R7 K25 [table.concat]
      141 MOVE                             R8 R6
      142 LOADK                            R9 K26 [", "]
      143 CALL                             R7 2 1
      144 GETUPVAL                         R8 16
      145 DUPTABLE                         R9 K29 [{"role", "hidden"}]
      146 LOADK                            R10 K30 ["user"]
      147 SETTABLEKS                       R10 R9 K27 ["role"]
      149 LOADB                            R10 1
      150 SETTABLEKS                       R10 R9 K28 ["hidden"]
      152 CALL                             R8 1 1
      153 GETUPVAL                         R9 17
      154 LOADK                            R11 K31 ["The following tools have been removed: %*"]
      155 MOVE                             R13 R7
      156 NAMECALL                         R11 R11 K18 ["format"]
      158 CALL                             R11 2 1
      159 MOVE                             R10 R11
      160 CALL                             R9 1 1
      161 GETUPVAL                         R10 18
      162 DUPTABLE                         R11 K34 [{"messageId", "content"}]
      163 SETTABLEKS                       R8 R11 K32 ["messageId"]
      165 DUPTABLE                         R12 K37 [{"type", "text"}]
      166 GETUPVAL                         R14 19
      167 GETTABLEKS                       R13 R14 K38 ["Type"]
      169 SETTABLEKS                       R13 R12 K35 ["type"]
      171 SETTABLEKS                       R9 R12 K36 ["text"]
      173 SETTABLEKS                       R12 R11 K33 ["content"]
      175 CALL                             R10 1 0
      176 GETUPVAL                         R5 3
      177 CALL                             R5 0 1
      178 JUMPIFNOT                        R5 ; [+41]
      179 GETUPVAL                         R5 20
      180 CALL                             R5 0 1
      181 JUMPIFNOT                        R5 ; [+38]
      182 GETUPVAL                         R5 21
      183 JUMPIFNOT                        R5 ; [+36]
      184 GETUPVAL                         R5 21
      185 DUPTABLE                         R6 K39 [{"assistantMode"}]
      186 GETUPVAL                         R8 4
      187 SETTABLEKS                       R8 R6 K5 ["assistantMode"]
      189 CALL                             R5 1 3
      190 FORGPREP                         R5
      191 GETUPVAL                         R10 16
      192 DUPTABLE                         R11 K29 [{"role", "hidden"}]
      193 LOADK                            R12 K30 ["user"]
      194 SETTABLEKS                       R12 R11 K27 ["role"]
      196 LOADB                            R12 1
      197 SETTABLEKS                       R12 R11 K28 ["hidden"]
      199 CALL                             R10 1 1
      200 GETUPVAL                         R11 18
      201 DUPTABLE                         R12 K34 [{"messageId", "content"}]
      202 SETTABLEKS                       R10 R12 K32 ["messageId"]
      204 DUPTABLE                         R13 K37 [{"type", "text"}]
      205 GETUPVAL                         R15 19
      206 GETTABLEKS                       R14 R15 K38 ["Type"]
      208 SETTABLEKS                       R14 R13 K35 ["type"]
      210 GETUPVAL                         R14 17
      211 MOVE                             R15 R9
      212 CALL                             R14 1 1
      213 SETTABLEKS                       R14 R13 K36 ["text"]
      215 SETTABLEKS                       R13 R12 K33 ["content"]
      217 CALL                             R11 1 0
      218 FORGLOOP                         R5 2 ; [-28]
      220 GETUPVAL                         R5 22
      221 CALL                             R5 0 1
      222 JUMPIFNOT                        R5 ; [+4]
      223 GETIMPORT                        R5 K41 [print]
      225 LOADK                            R6 K42 ["Reading conversation history..."]
      226 CALL                             R5 1 0
      227 GETUPVAL                         R5 23
      228 NEWCLOSURE                       R6 P0
      229 CAPTURE                          UPVAL U24
      230 CAPTURE                          UPVAL U22
      231 CAPTURE                          UPVAL U25
      232 CAPTURE                          UPVAL U26
      233 CAPTURE                          UPVAL U27
      234 CAPTURE                          UPVAL U28
      235 CAPTURE                          UPVAL U29
      236 CAPTURE                          UPVAL U5
      237 CAPTURE                          UPVAL U1
      238 CAPTURE                          UPVAL U14
      239 CAPTURE                          UPVAL U30
      240 CAPTURE                          UPVAL U31
      241 CAPTURE                          UPVAL U32
      242 CAPTURE                          UPVAL U3
      243 CAPTURE                          UPVAL U4
      244 CAPTURE                          UPVAL U33
      245 CAPTURE                          UPVAL U6
      246 CAPTURE                          UPVAL U34
      247 CAPTURE                          UPVAL U35
      248 CAPTURE                          UPVAL U36
      249 CAPTURE                          UPVAL U37
      250 CAPTURE                          UPVAL U7
      251 CAPTURE                          VAL R0
      252 CAPTURE                          UPVAL U38
      253 CAPTURE                          UPVAL U39
      254 CAPTURE                          UPVAL U40
      255 CAPTURE                          UPVAL U41
      256 CAPTURE                          UPVAL U42
      257 CAPTURE                          UPVAL U43
      258 CAPTURE                          UPVAL U44
      259 CAPTURE                          UPVAL U45
      260 CAPTURE                          UPVAL U46
      261 CAPTURE                          UPVAL U47
      262 CAPTURE                          REF R4
      263 CAPTURE                          UPVAL U48
      264 CALL                             R5 1 0
      265 CLOSEUPVALS                      R4
      266 RETURN                           R0 0

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
       51 CALL                             R0 1 0
       52 RETURN                           R0 0

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
       59 JUMPIF                           R2 ; [+98]
       60 GETUPVAL                         R5 4
       61 DUPTABLE                         R6 K19 [{"role"}]
       62 LOADK                            R7 K20 ["user"]
       63 SETTABLEKS                       R7 R6 K18 ["role"]
       65 CALL                             R5 1 1
       66 GETUPVAL                         R6 5
       67 CALL                             R6 0 1
       68 JUMPIFNOT                        R6 ; [+67]
       69 GETTABLEKS                       R6 R0 K21 ["images"]
       71 JUMPIFNOT                        R6 ; [+64]
       72 GETTABLEKS                       R6 R0 K21 ["images"]
       74 LOADNIL                          R7
       75 LOADNIL                          R8
       76 FORGPREP                         R6
       77 GETTABLEKS                       R11 R10 K22 ["data"]
       79 LENGTH                           R12 R11
       80 LOADN                            R14 10
       81 JUMPIFNOTLT                      R14 R12 ; [+10]
       83 SUBK                             R15 R12 K23 [9]
       84 FASTCALL3                        STRING_SUB R11 R15 R12
       86 MOVE                             R14 R11
       87 MOVE                             R16 R12
       88 GETIMPORT                        R13 K26 [string.sub]
       90 CALL                             R13 3 1
       91 JUMP                             ; [+1]
       92 MOVE                             R13 R11
       93 DUPTABLE                         R16 K30 [{"imageDataSuffix", "imageDataSize", "mimeType"}]
       94 SETTABLEKS                       R13 R16 K27 ["imageDataSuffix"]
       96 SETTABLEKS                       R12 R16 K28 ["imageDataSize"]
       98 GETTABLEKS                       R17 R10 K29 ["mimeType"]
      100 SETTABLEKS                       R17 R16 K29 ["mimeType"]
      102 FASTCALL2                        TABLE_INSERT R4 R16 ; [+4]
      104 MOVE                             R15 R4
      105 GETIMPORT                        R14 K33 [table.insert]
      107 CALL                             R14 2 0
      108 FORGLOOP                         R6 2 ; [-32]
      110 GETTABLEKS                       R7 R0 K21 ["images"]
      112 LENGTH                           R6 R7
      113 LOADN                            R7 0
      114 JUMPIFNOTLT                      R7 R6 ; [+21]
      116 DUPTABLE                         R6 K37 [{"type", "imageContents", "expanded"}]
      117 GETUPVAL                         R8 6
      118 GETTABLEKS                       R7 R8 K38 ["Type"]
      120 SETTABLEKS                       R7 R6 K34 ["type"]
      122 GETTABLEKS                       R7 R0 K21 ["images"]
      124 SETTABLEKS                       R7 R6 K35 ["imageContents"]
      126 LOADB                            R7 0
      127 SETTABLEKS                       R7 R6 K36 ["expanded"]
      129 GETUPVAL                         R7 7
      130 DUPTABLE                         R8 K41 [{"messageId", "content"}]
      131 SETTABLEKS                       R5 R8 K39 ["messageId"]
      133 SETTABLEKS                       R6 R8 K40 ["content"]
      135 CALL                             R7 1 0
      136 GETUPVAL                         R6 5
      137 CALL                             R6 0 1
      138 JUMPIFNOT                        R6 ; [+4]
      139 LENGTH                           R6 R1
      140 LOADN                            R7 0
      141 JUMPIFNOTLT                      R7 R6 ; [+16]
      143 DUPTABLE                         R6 K42 [{"type", "text"}]
      144 GETUPVAL                         R8 8
      145 GETTABLEKS                       R7 R8 K38 ["Type"]
      147 SETTABLEKS                       R7 R6 K34 ["type"]
      149 SETTABLEKS                       R1 R6 K11 ["text"]
      151 GETUPVAL                         R7 7
      152 DUPTABLE                         R8 K41 [{"messageId", "content"}]
      153 SETTABLEKS                       R5 R8 K39 ["messageId"]
      155 SETTABLEKS                       R6 R8 K40 ["content"]
      157 CALL                             R7 1 0
      158 GETUPVAL                         R5 9
      159 CALL                             R5 0 1
      160 JUMPIFNOT                        R5 ; [+5]
      161 GETIMPORT                        R5 K44 [print]
      163 LOADK                            R6 K45 ["About to send message:"]
      164 MOVE                             R7 R1
      165 CALL                             R5 2 0
      166 GETUPVAL                         R5 10
      167 DUPTABLE                         R6 K47 [{"prompt", "setInputEnabled"}]
      168 SETTABLEKS                       R1 R6 K46 ["prompt"]
      170 GETUPVAL                         R8 3
      171 GETTABLEKS                       R7 R8 K10 ["setInputEnabled"]
      173 SETTABLEKS                       R7 R6 K10 ["setInputEnabled"]
      175 CALL                             R5 1 1
      176 JUMPIFNOT                        R5 ; [+1]
      177 RETURN                           R0 0
      178 GETIMPORT                        R6 K50 [task.spawn]
      180 NEWCLOSURE                       R7 P0
      181 CAPTURE                          UPVAL U11
      182 CAPTURE                          UPVAL U12
      183 CAPTURE                          UPVAL U13
      184 CAPTURE                          UPVAL U14
      185 CAPTURE                          UPVAL U15
      186 CAPTURE                          UPVAL U16
      187 CAPTURE                          UPVAL U17
      188 CAPTURE                          UPVAL U18
      189 CAPTURE                          UPVAL U3
      190 CAPTURE                          UPVAL U19
      191 CAPTURE                          UPVAL U20
      192 CAPTURE                          UPVAL U21
      193 CAPTURE                          UPVAL U22
      194 CAPTURE                          UPVAL U23
      195 CAPTURE                          UPVAL U24
      196 CAPTURE                          UPVAL U25
      197 CAPTURE                          UPVAL U26
      198 CAPTURE                          UPVAL U4
      199 CAPTURE                          UPVAL U27
      200 CAPTURE                          UPVAL U7
      201 CAPTURE                          UPVAL U8
      202 CAPTURE                          UPVAL U28
      203 CAPTURE                          UPVAL U29
      204 CAPTURE                          UPVAL U9
      205 CAPTURE                          UPVAL U30
      206 CAPTURE                          UPVAL U31
      207 CAPTURE                          UPVAL U32
      208 CAPTURE                          UPVAL U33
      209 CAPTURE                          UPVAL U34
      210 CAPTURE                          UPVAL U35
      211 CAPTURE                          UPVAL U36
      212 CAPTURE                          UPVAL U37
      213 CAPTURE                          UPVAL U38
      214 CAPTURE                          VAL R1
      215 CAPTURE                          VAL R4
      216 CAPTURE                          UPVAL U2
      217 CAPTURE                          UPVAL U39
      218 CAPTURE                          UPVAL U40
      219 CAPTURE                          UPVAL U41
      220 CAPTURE                          UPVAL U42
      221 CAPTURE                          UPVAL U43
      222 CAPTURE                          UPVAL U44
      223 CAPTURE                          UPVAL U45
      224 CAPTURE                          UPVAL U46
      225 CAPTURE                          UPVAL U47
      226 CAPTURE                          UPVAL U48
      227 CAPTURE                          UPVAL U49
      228 CAPTURE                          UPVAL U50
      229 CAPTURE                          VAL R3
      230 CAPTURE                          UPVAL U51
      231 CALL                             R6 1 0
      232 RETURN                           R0 0

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
       12 GETUPVAL                         R8 6
       13 CALL                             R8 0 1
       14 JUMPIFNOT                        R8 ; [+3]
       15 GETUPVAL                         R7 7
       16 CALL                             R7 0 1
       17 JUMP                             ; [+1]
       18 LOADNIL                          R7
       19 GETUPVAL                         R8 8
       20 CALL                             R8 0 1
       21 GETUPVAL                         R9 9
       22 CALL                             R9 0 1
       23 GETUPVAL                         R10 10
       24 CALL                             R10 0 1
       25 GETUPVAL                         R11 11
       26 CALL                             R11 0 1
       27 GETUPVAL                         R12 12
       28 CALL                             R12 0 1
       29 GETUPVAL                         R13 13
       30 CALL                             R13 0 1
       31 GETUPVAL                         R14 14
       32 CALL                             R14 0 1
       33 GETUPVAL                         R15 15
       34 CALL                             R15 0 1
       35 GETUPVAL                         R17 16
       36 GETTABLEKS                       R16 R17 K0 ["useContext"]
       38 GETUPVAL                         R18 17
       39 GETTABLEKS                       R17 R18 K1 ["Context"]
       41 CALL                             R16 1 1
       42 GETTABLEKS                       R17 R16 K2 ["sessionId"]
       44 GETUPVAL                         R19 16
       45 GETTABLEKS                       R18 R19 K0 ["useContext"]
       47 GETUPVAL                         R20 18
       48 GETTABLEKS                       R19 R20 K1 ["Context"]
       50 CALL                             R18 1 1
       51 GETUPVAL                         R20 16
       52 GETTABLEKS                       R19 R20 K0 ["useContext"]
       54 GETUPVAL                         R21 19
       55 GETTABLEKS                       R20 R21 K1 ["Context"]
       57 CALL                             R19 1 1
       58 GETUPVAL                         R20 20
       59 CALL                             R20 0 1
       60 GETUPVAL                         R22 16
       61 GETTABLEKS                       R21 R22 K0 ["useContext"]
       63 GETUPVAL                         R23 21
       64 GETTABLEKS                       R22 R23 K1 ["Context"]
       66 CALL                             R21 1 1
       67 GETUPVAL                         R23 16
       68 GETTABLEKS                       R22 R23 K0 ["useContext"]
       70 GETUPVAL                         R24 22
       71 GETTABLEKS                       R23 R24 K1 ["Context"]
       73 CALL                             R22 1 1
       74 LOADNIL                          R23
       75 GETUPVAL                         R24 23
       76 CALL                             R24 0 1
       77 JUMPIFNOT                        R24 ; [+3]
       78 GETUPVAL                         R24 24
       79 CALL                             R24 0 1
       80 MOVE                             R23 R24
       81 LOADNIL                          R24
       82 GETUPVAL                         R25 25
       83 CALL                             R25 0 1
       84 JUMPIFNOT                        R25 ; [+7]
       85 GETUPVAL                         R26 16
       86 GETTABLEKS                       R25 R26 K3 ["useRef"]
       88 NEWTABLE                         R26 0 0
       90 CALL                             R25 1 1
       91 MOVE                             R24 R25
       92 NEWCLOSURE                       R25 P0
       93 CAPTURE                          VAL R18
       94 CAPTURE                          UPVAL U26
       95 CAPTURE                          VAL R22
       96 CAPTURE                          VAL R0
       97 CAPTURE                          VAL R1
       98 CAPTURE                          UPVAL U27
       99 CAPTURE                          UPVAL U28
      100 CAPTURE                          VAL R2
      101 CAPTURE                          UPVAL U29
      102 CAPTURE                          UPVAL U30
      103 CAPTURE                          VAL R11
      104 CAPTURE                          VAL R4
      105 CAPTURE                          UPVAL U31
      106 CAPTURE                          VAL R21
      107 CAPTURE                          UPVAL U32
      108 CAPTURE                          UPVAL U23
      109 CAPTURE                          REF R23
      110 CAPTURE                          UPVAL U33
      111 CAPTURE                          VAL R12
      112 CAPTURE                          UPVAL U34
      113 CAPTURE                          UPVAL U35
      114 CAPTURE                          UPVAL U36
      115 CAPTURE                          VAL R8
      116 CAPTURE                          UPVAL U25
      117 CAPTURE                          REF R24
      118 CAPTURE                          VAL R17
      119 CAPTURE                          UPVAL U37
      120 CAPTURE                          UPVAL U38
      121 CAPTURE                          UPVAL U6
      122 CAPTURE                          VAL R7
      123 CAPTURE                          VAL R10
      124 CAPTURE                          UPVAL U39
      125 CAPTURE                          VAL R3
      126 CAPTURE                          VAL R13
      127 CAPTURE                          UPVAL U40
      128 CAPTURE                          UPVAL U41
      129 CAPTURE                          VAL R20
      130 CAPTURE                          UPVAL U42
      131 CAPTURE                          VAL R15
      132 CAPTURE                          VAL R9
      133 CAPTURE                          VAL R5
      134 CAPTURE                          VAL R6
      135 CAPTURE                          UPVAL U43
      136 CAPTURE                          UPVAL U44
      137 CAPTURE                          UPVAL U45
      138 CAPTURE                          UPVAL U46
      139 CAPTURE                          UPVAL U47
      140 CAPTURE                          UPVAL U48
      141 CAPTURE                          VAL R19
      142 CAPTURE                          UPVAL U49
      143 CAPTURE                          UPVAL U50
      144 CAPTURE                          VAL R14
      145 CLOSEUPVALS                      R23
      146 RETURN                           R25 1

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
      259 GETTABLEKS                       R35 R36 K51 ["FFlagAssistantBYOKNewJsonEncoder"]
      261 CALL                             R34 1 1
      262 GETIMPORT                        R35 K9 [require]
      264 GETTABLEKS                       R37 R0 K50 ["Flags"]
      266 GETTABLEKS                       R36 R37 K52 ["FFlagAssistantMultipleChatSupport"]
      268 CALL                             R35 1 1
      269 GETIMPORT                        R36 K9 [require]
      271 GETTABLEKS                       R38 R0 K50 ["Flags"]
      273 GETTABLEKS                       R37 R38 K53 ["FFlagAssistantMultipleExternalMCPServers"]
      275 CALL                             R36 1 1
      276 GETIMPORT                        R37 K9 [require]
      278 GETTABLEKS                       R39 R0 K50 ["Flags"]
      280 GETTABLEKS                       R38 R39 K54 ["FFlagAssistantNewOpenAIAdapter"]
      282 CALL                             R37 1 1
      283 GETIMPORT                        R38 K9 [require]
      285 GETTABLEKS                       R40 R0 K50 ["Flags"]
      287 GETTABLEKS                       R39 R40 K55 ["FFlagAssistantPersistConversations"]
      289 CALL                             R38 1 1
      290 GETIMPORT                        R39 K9 [require]
      292 GETTABLEKS                       R41 R0 K50 ["Flags"]
      294 GETTABLEKS                       R40 R41 K56 ["FFlagAssistantSupportSlashCommandCancellation"]
      296 CALL                             R39 1 1
      297 GETIMPORT                        R40 K9 [require]
      299 GETTABLEKS                       R42 R0 K50 ["Flags"]
      301 GETTABLEKS                       R41 R42 K57 ["FFlagAssistantTestAutomation"]
      303 CALL                             R40 1 1
      304 GETIMPORT                        R41 K9 [require]
      306 GETTABLEKS                       R43 R0 K50 ["Flags"]
      308 GETTABLEKS                       R42 R43 K58 ["FFlagAssistantTestModeDropdown"]
      310 CALL                             R41 1 1
      311 GETIMPORT                        R42 K9 [require]
      313 GETTABLEKS                       R44 R0 K50 ["Flags"]
      315 GETTABLEKS                       R43 R44 K59 ["FFlagAssistantTestModeSystemReminder"]
      317 CALL                             R42 1 1
      318 GETIMPORT                        R43 K9 [require]
      320 GETTABLEKS                       R45 R0 K50 ["Flags"]
      322 GETTABLEKS                       R44 R45 K60 ["FFlagDebugLogAssistantUI"]
      324 CALL                             R43 1 1
      325 GETIMPORT                        R44 K9 [require]
      327 GETTABLEKS                       R46 R0 K50 ["Flags"]
      329 GETTABLEKS                       R45 R46 K61 ["FFlagDisableScreenCaptureForDefaultModel"]
      331 CALL                             R44 1 1
      332 GETIMPORT                        R45 K9 [require]
      334 GETTABLEKS                       R47 R0 K50 ["Flags"]
      336 GETTABLEKS                       R46 R47 K62 ["FFlagEnableAssistantInputImageAttachment"]
      338 CALL                             R45 1 1
      339 GETIMPORT                        R46 K9 [require]
      341 GETTABLEKS                       R48 R0 K50 ["Flags"]
      343 GETTABLEKS                       R47 R48 K63 ["FFlagEnablePrimitiveGenTool"]
      345 CALL                             R46 1 1
      346 GETIMPORT                        R47 K9 [require]
      348 GETTABLEKS                       R49 R0 K50 ["Flags"]
      350 GETTABLEKS                       R48 R49 K64 ["FFlagEnableSubagents"]
      352 CALL                             R47 1 1
      353 GETIMPORT                        R48 K9 [require]
      355 GETTABLEKS                       R50 R0 K50 ["Flags"]
      357 GETTABLEKS                       R49 R50 K65 ["FFlagUseToolsChangedSystemNotice"]
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
      376 GETTABLEKS                       R54 R0 K12 ["Components"]
      378 GETTABLEKS                       R53 R54 K27 ["ContentWidgets"]
      380 GETTABLEKS                       R52 R53 K68 ["ImageContentWidget"]
      382 CALL                             R51 1 1
      383 GETTABLEKS                       R52 R15 K69 ["getSystemReminder"]
      385 DUPCLOSURE                       R53 K70 [PROTO_0]
      386 CAPTURE                          VAL R7
      387 DUPCLOSURE                       R54 K71 [PROTO_1]
      388 CAPTURE                          VAL R15
      389 DUPCLOSURE                       R55 K72 [PROTO_2]
      390 DUPCLOSURE                       R56 K73 [PROTO_3]
      391 DUPCLOSURE                       R57 K74 [PROTO_8]
      392 CAPTURE                          VAL R15
      393 CAPTURE                          VAL R36
      394 CAPTURE                          VAL R40
      395 CAPTURE                          VAL R46
      396 CAPTURE                          VAL R47
      397 CAPTURE                          VAL R13
      398 CAPTURE                          VAL R10
      399 DUPCLOSURE                       R58 K75 [PROTO_18]
      400 CAPTURE                          VAL R18
      401 CAPTURE                          VAL R17
      402 CAPTURE                          VAL R21
      403 CAPTURE                          VAL R33
      404 CAPTURE                          VAL R24
      405 CAPTURE                          VAL R25
      406 CAPTURE                          VAL R42
      407 CAPTURE                          VAL R26
      408 CAPTURE                          VAL R32
      409 CAPTURE                          VAL R23
      410 CAPTURE                          VAL R22
      411 CAPTURE                          VAL R28
      412 CAPTURE                          VAL R30
      413 CAPTURE                          VAL R20
      414 CAPTURE                          VAL R27
      415 CAPTURE                          VAL R31
      416 CAPTURE                          VAL R11
      417 CAPTURE                          VAL R12
      418 CAPTURE                          VAL R3
      419 CAPTURE                          VAL R8
      420 CAPTURE                          VAL R29
      421 CAPTURE                          VAL R5
      422 CAPTURE                          VAL R9
      423 CAPTURE                          VAL R41
      424 CAPTURE                          VAL R19
      425 CAPTURE                          VAL R48
      426 CAPTURE                          VAL R39
      427 CAPTURE                          VAL R45
      428 CAPTURE                          VAL R51
      429 CAPTURE                          VAL R14
      430 CAPTURE                          VAL R43
      431 CAPTURE                          VAL R44
      432 CAPTURE                          VAL R37
      433 CAPTURE                          VAL R15
      434 CAPTURE                          VAL R1
      435 CAPTURE                          VAL R34
      436 CAPTURE                          VAL R53
      437 CAPTURE                          VAL R56
      438 CAPTURE                          VAL R52
      439 CAPTURE                          VAL R16
      440 CAPTURE                          VAL R2
      441 CAPTURE                          VAL R38
      442 CAPTURE                          VAL R35
      443 CAPTURE                          VAL R36
      444 CAPTURE                          VAL R40
      445 CAPTURE                          VAL R46
      446 CAPTURE                          VAL R47
      447 CAPTURE                          VAL R13
      448 CAPTURE                          VAL R10
      449 CAPTURE                          VAL R50
      450 CAPTURE                          VAL R49
      451 RETURN                           R58 1
