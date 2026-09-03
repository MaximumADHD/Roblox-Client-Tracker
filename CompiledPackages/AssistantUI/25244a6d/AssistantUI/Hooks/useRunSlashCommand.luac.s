PROTO_0:
        0 JUMPIFNOT                        R0 ; [+3]
        1 LENGTH                           R1 R0
        2 JUMPIFNOTEQKN                    R1 K0 [0] ; [+3]
        4 LOADNIL                          R1
        5 RETURN                           R1 1
        6 GETIMPORT                        R1 K3 [table.create]
        8 LENGTH                           R2 R0
        9 CALL                             R1 1 1
       10 MOVE                             R2 R0
       11 LOADNIL                          R3
       12 LOADNIL                          R4
       13 FORGPREP                         R2
       14 GETUPVAL                         R7 0
       15 GETTABLEKS                       R7 R7 K4 ["storeImage"]
       17 DUPTABLE                         R8 K9 [{["type"] = "image", ["data"], ["mimeType"]}]
       18 GETTABLEKS                       R9 R6 K7 ["data"]
       20 SETTABLEKS                       R9 R8 K7 ["data"]
       22 GETTABLEKS                       R9 R6 K8 ["mimeType"]
       24 SETTABLEKS                       R9 R8 K8 ["mimeType"]
       26 CALL                             R7 1 1
       27 FASTCALL2                        TABLE_INSERT R1 R7 ; [+5]
       29 MOVE                             R9 R1
       30 MOVE                             R10 R7
       31 GETIMPORT                        R8 K11 [table.insert]
       33 CALL                             R8 2 0
       34 FORGLOOP                         R2 2 ; [-21]
       36 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getSystemReminder"]
        3 LOADK                            R3 K1 ["This is a following tool call from %*"]
        4 MOVE                             R5 R0
        5 NAMECALL                         R3 R3 K2 ["format"]
        7 CALL                             R3 2 1
        8 MOVE                             R2 R3
        9 CALL                             R1 1 -1
       10 RETURN                           R1 -1

PROTO_2:
        0 MOVE                             R5 R1
        1 NAMECALL                         R3 R0 K0 ["getClientForStaticTool"]
        3 CALL                             R3 2 1
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K1 ["getMcpClientIdentifier"]
        7 CALL                             R4 0 1
        8 JUMPIFEQ                         R3 R4 ; [+2]
       10 LOADB                            R2 0 +1
       11 LOADB                            R2 1
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R3 R3 K2 ["FFlagAssistantSlashToolNameAndError"]
       15 JUMPIFNOT                        R3 ; [+8]
       16 MOVE                             R3 R2
       17 JUMPIF                           R3 ; [+5]
       18 GETUPVAL                         R3 2
       19 GETTABLEKS                       R3 R3 K3 ["hasTool"]
       21 MOVE                             R4 R1
       22 CALL                             R3 1 1
       23 MOVE                             R2 R3
       24 JUMPIFNOT                        R2 ; [+6]
       25 GETUPVAL                         R3 3
       26 GETTABLEKS                       R3 R3 K4 ["addPrefix"]
       28 MOVE                             R4 R1
       29 CALL                             R3 1 1
       30 RETURN                           R3 1
       31 MOVE                             R3 R1
       32 RETURN                           R3 1

PROTO_3:
        0 DUPTABLE                         R4 K3 [{[1] = "text", ["text"] = "Error: Tool call failed. Please try a different approach."}]
        1 DUPTABLE                         R5 K14 [{[1] = "tool_result", ["id"], ["name"], ["content"], ["isError"] = True, ["structuredContent"] = , ["startTime"], ["startTimeAfterConfirmation"]}]
        2 SETTABLEKS                       R0 R5 K5 ["id"]
        4 GETTABLEKS                       R6 R1 K6 ["name"]
        6 SETTABLEKS                       R6 R5 K6 ["name"]
        8 NEWTABLE                         R6 0 1
       10 MOVE                             R7 R4
       11 SETLIST                          R6 R7 1 [1]
       13 SETTABLEKS                       R6 R5 K7 ["content"]
       15 SETTABLEKS                       R2 R5 K12 ["startTime"]
       17 SETTABLEKS                       R3 R5 K13 ["startTimeAfterConfirmation"]
       19 RETURN                           R5 1

PROTO_4:
        0 RETURN                           R0 0

PROTO_5:
        0 LOADNIL                          R3
        1 JUMPIFNOT                        R0 ; [+4]
        2 JUMPIFNOT                        R1 ; [+3]
        3 GETTABLEKS                       R4 R1 K0 ["content"]
        5 JUMPIF                           R4 ; [+8]
        6 GETUPVAL                         R4 0
        7 GETUPVAL                         R5 1
        8 GETUPVAL                         R6 2
        9 GETUPVAL                         R7 3
       10 GETUPVAL                         R8 4
       11 CALL                             R4 4 1
       12 MOVE                             R3 R4
       13 JUMP                             ; [+28]
       14 DUPTABLE                         R4 K9 [{["type"] = "tool_result", ["id"], ["name"], [4], ["isError"], ["structuredContent"], ["startTime"], ["startTimeAfterConfirmation"]}]
       15 GETUPVAL                         R5 1
       16 SETTABLEKS                       R5 R4 K3 ["id"]
       18 GETUPVAL                         R5 2
       19 GETTABLEKS                       R5 R5 K4 ["name"]
       21 SETTABLEKS                       R5 R4 K4 ["name"]
       23 GETTABLEKS                       R5 R1 K0 ["content"]
       25 SETTABLEKS                       R5 R4 K0 ["content"]
       27 GETTABLEKS                       R5 R1 K5 ["isError"]
       29 SETTABLEKS                       R5 R4 K5 ["isError"]
       31 GETTABLEKS                       R5 R1 K6 ["structuredContent"]
       33 SETTABLEKS                       R5 R4 K6 ["structuredContent"]
       35 GETUPVAL                         R5 3
       36 SETTABLEKS                       R5 R4 K7 ["startTime"]
       38 GETUPVAL                         R5 4
       39 SETTABLEKS                       R5 R4 K8 ["startTimeAfterConfirmation"]
       41 MOVE                             R3 R4
       42 GETUPVAL                         R4 5
       43 GETTABLEKS                       R4 R4 K10 ["onToolResult"]
       45 GETUPVAL                         R5 6
       46 MOVE                             R6 R3
       47 MOVE                             R7 R2
       48 CALL                             R4 3 0
       49 RETURN                           R0 0

PROTO_6:
        0 JUMPIF                           R1 ; [+2]
        1 DUPCLOSURE                       R6 K0 [PROTO_4]
        2 RETURN                           R6 1
        3 NEWCLOSURE                       R6 P1
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          VAL R2
        6 CAPTURE                          VAL R3
        7 CAPTURE                          VAL R4
        8 CAPTURE                          VAL R5
        9 CAPTURE                          VAL R0
       10 CAPTURE                          VAL R1
       11 RETURN                           R6 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+5]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantSlashToolNameAndError"]
        5 JUMPIFNOT                        R0 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 2
        8 LOADB                            R1 1
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["errorType"]
        2 JUMPIFEQKS                       R1 K1 ["quota_exceeded"] ; [+5]
        4 GETTABLEKS                       R1 R0 K0 ["errorType"]
        6 JUMPIFNOTEQKS                    R1 K2 ["too_many_request"] ; [+3]
        8 LOADB                            R1 1
        9 SETUPVAL                         R1 0
       10 GETUPVAL                         R1 1
       11 MOVE                             R2 R0
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R1 R0 K0 ["acpSessionId"]
        3 MOVE                             R1 R0
        4 DUPTABLE                         R2 K3 [{["rawTransformValues"] = True}]
        5 RETURN                           R1 2

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          VAL R0
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+21]
        2 GETIMPORT                        R1 K1 [pcall]
        4 GETUPVAL                         R2 0
        5 MOVE                             R3 R0
        6 CALL                             R1 2 1
        7 JUMPIF                           R1 ; [+25]
        8 GETIMPORT                        R2 K3 [warn]
       10 LOADK                            R3 K4 ["Error handling slash command tool completion"]
       11 CALL                             R2 1 0
       12 GETUPVAL                         R2 1
       13 JUMPIFNOT                        R2 ; [+5]
       14 GETUPVAL                         R2 2
       15 GETTABLEKS                       R2 R2 K5 ["FFlagAssistantSlashToolNameAndError"]
       17 JUMPIFNOT                        R2 ; [+1]
       18 RETURN                           R0 0
       19 GETUPVAL                         R2 3
       20 LOADB                            R3 1
       21 CALL                             R2 1 0
       22 RETURN                           R0 0
       23 GETUPVAL                         R1 1
       24 JUMPIFNOT                        R1 ; [+5]
       25 GETUPVAL                         R1 2
       26 GETTABLEKS                       R1 R1 K5 ["FFlagAssistantSlashToolNameAndError"]
       28 JUMPIFNOT                        R1 ; [+1]
       29 RETURN                           R0 0
       30 GETUPVAL                         R1 3
       31 LOADB                            R2 1
       32 CALL                             R1 1 0
       33 RETURN                           R0 0

PROTO_12:
        0 JUMPIFEQKS                       R0 K0 ["cancelled"] ; [+6]
        2 GETIMPORT                        R1 K2 [warn]
        4 LOADK                            R2 K3 ["Error running slash command via ACP:"]
        5 MOVE                             R3 R0
        6 CALL                             R1 2 0
        7 GETUPVAL                         R1 0
        8 JUMPIFNOT                        R1 ; [+5]
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R1 R1 K4 ["FFlagAssistantSlashToolNameAndError"]
       12 JUMPIFNOT                        R1 ; [+1]
       13 RETURN                           R0 0
       14 GETUPVAL                         R1 2
       15 LOADB                            R2 1
       16 CALL                             R1 1 0
       17 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["service"]
        3 JUMPIF                           R2 ; [+8]
        4 GETIMPORT                        R3 K2 [warn]
        6 LOADK                            R4 K3 ["ACPClientService not available for slash command"]
        7 CALL                             R3 1 0
        8 GETUPVAL                         R3 1
        9 LOADB                            R4 1
       10 CALL                             R3 1 0
       11 RETURN                           R0 0
       12 GETUPVAL                         R3 2
       13 GETTABLEKS                       R3 R3 K4 ["getSessionMonitor"]
       15 JUMPIF                           R3 ; [+8]
       16 GETIMPORT                        R4 K2 [warn]
       18 LOADK                            R5 K5 ["AcpSessionMonitorContext not available for slash command"]
       19 CALL                             R4 1 0
       20 GETUPVAL                         R4 1
       21 LOADB                            R5 1
       22 CALL                             R4 1 0
       23 RETURN                           R0 0
       24 GETUPVAL                         R5 3
       25 GETTABLEKS                       R6 R0 K6 ["name"]
       27 MOVE                             R10 R6
       28 NAMECALL                         R8 R5 K7 ["getClientForStaticTool"]
       30 CALL                             R8 2 1
       31 GETUPVAL                         R9 4
       32 GETTABLEKS                       R9 R9 K8 ["getMcpClientIdentifier"]
       34 CALL                             R9 0 1
       35 JUMPIFEQ                         R8 R9 ; [+2]
       37 LOADB                            R7 0 +1
       38 LOADB                            R7 1
       39 GETUPVAL                         R8 5
       40 GETTABLEKS                       R8 R8 K9 ["FFlagAssistantSlashToolNameAndError"]
       42 JUMPIFNOT                        R8 ; [+8]
       43 MOVE                             R8 R7
       44 JUMPIF                           R8 ; [+5]
       45 GETUPVAL                         R8 6
       46 GETTABLEKS                       R8 R8 K10 ["hasTool"]
       48 MOVE                             R9 R6
       49 CALL                             R8 1 1
       50 MOVE                             R7 R8
       51 JUMPIFNOT                        R7 ; [+7]
       52 GETUPVAL                         R8 7
       53 GETTABLEKS                       R8 R8 K11 ["addPrefix"]
       55 MOVE                             R9 R6
       56 CALL                             R8 1 1
       57 MOVE                             R4 R8
       58 JUMP                             ; [+1]
       59 MOVE                             R4 R6
       60 GETUPVAL                         R6 8
       61 NOT                              R5 R6
       62 LOADB                            R6 1
       63 SETUPVAL                         R6 8
       64 GETUPVAL                         R6 9
       65 DUPTABLE                         R7 K24 [{"service", "sessionMonitor", "threadId", "acpSessionId", "setAcpSessionId", "addContent", "editContent", "assistantMode", "conversationSessionId", "assistantMessageId", "registerPromptController", "unregisterPromptController", "showError"}]
       66 SETTABLEKS                       R2 R7 K0 ["service"]
       68 MOVE                             R8 R3
       69 GETUPVAL                         R9 10
       70 CALL                             R8 1 1
       71 SETTABLEKS                       R8 R7 K12 ["sessionMonitor"]
       73 GETUPVAL                         R8 10
       74 SETTABLEKS                       R8 R7 K13 ["threadId"]
       76 GETUPVAL                         R8 11
       77 JUMPIFNOT                        R8 ; [+3]
       78 GETUPVAL                         R8 11
       79 GETTABLEKS                       R8 R8 K14 ["acpSessionId"]
       81 SETTABLEKS                       R8 R7 K14 ["acpSessionId"]
       83 NEWCLOSURE                       R8 P0
       84 CAPTURE                          UPVAL U12
       85 CAPTURE                          UPVAL U10
       86 SETTABLEKS                       R8 R7 K15 ["setAcpSessionId"]
       88 GETUPVAL                         R8 13
       89 SETTABLEKS                       R8 R7 K16 ["addContent"]
       91 GETUPVAL                         R8 14
       92 SETTABLEKS                       R8 R7 K17 ["editContent"]
       94 GETUPVAL                         R8 15
       95 SETTABLEKS                       R8 R7 K18 ["assistantMode"]
       97 GETUPVAL                         R8 16
       98 SETTABLEKS                       R8 R7 K19 ["conversationSessionId"]
      100 GETUPVAL                         R8 17
      101 SETTABLEKS                       R8 R7 K20 ["assistantMessageId"]
      103 GETUPVAL                         R8 18
      104 GETTABLEKS                       R8 R8 K21 ["registerPromptController"]
      106 SETTABLEKS                       R8 R7 K21 ["registerPromptController"]
      108 GETUPVAL                         R8 18
      109 GETTABLEKS                       R8 R8 K22 ["unregisterPromptController"]
      111 SETTABLEKS                       R8 R7 K22 ["unregisterPromptController"]
      113 GETUPVAL                         R9 5
      114 GETTABLEKS                       R9 R9 K9 ["FFlagAssistantSlashToolNameAndError"]
      116 JUMPIFNOT                        R9 ; [+2]
      117 GETUPVAL                         R8 19
      118 JUMP                             ; [+1]
      119 LOADNIL                          R8
      120 SETTABLEKS                       R8 R7 K23 ["showError"]
      122 DUPTABLE                         R8 K29 [{"agentToolName", "arguments", "userPromptText", "images"}]
      123 SETTABLEKS                       R4 R8 K25 ["agentToolName"]
      125 GETTABLEKS                       R9 R0 K26 ["arguments"]
      127 SETTABLEKS                       R9 R8 K26 ["arguments"]
      129 JUMPIFNOT                        R5 ; [+2]
      130 GETUPVAL                         R9 20
      131 JUMP                             ; [+12]
      132 GETUPVAL                         R10 20
      133 GETUPVAL                         R11 4
      134 GETTABLEKS                       R11 R11 K30 ["getSystemReminder"]
      136 LOADK                            R13 K31 ["This is a following tool call from %*"]
      137 MOVE                             R15 R10
      138 NAMECALL                         R13 R13 K32 ["format"]
      140 CALL                             R13 2 1
      141 MOVE                             R12 R13
      142 CALL                             R11 1 1
      143 MOVE                             R9 R11
      144 SETTABLEKS                       R9 R8 K27 ["userPromptText"]
      146 JUMPIFNOT                        R5 ; [+4]
      147 GETUPVAL                         R9 21
      148 GETTABLEKS                       R9 R9 K28 ["images"]
      150 JUMP                             ; [+1]
      151 LOADNIL                          R9
      152 SETTABLEKS                       R9 R8 K28 ["images"]
      154 CALL                             R6 2 1
      155 GETTABLEKS                       R7 R6 K33 ["promise"]
      157 NEWCLOSURE                       R9 P1
      158 CAPTURE                          VAL R1
      159 CAPTURE                          UPVAL U22
      160 CAPTURE                          UPVAL U5
      161 CAPTURE                          UPVAL U1
      162 NAMECALL                         R7 R7 K34 ["andThen"]
      164 CALL                             R7 2 1
      165 NEWCLOSURE                       R9 P2
      166 CAPTURE                          UPVAL U22
      167 CAPTURE                          UPVAL U5
      168 CAPTURE                          UPVAL U1
      169 NAMECALL                         R7 R7 K35 ["catch"]
      171 CALL                             R7 2 0
      172 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 CALL                             R2 2 0
        4 GETUPVAL                         R2 1
        5 JUMPIFNOT                        R2 ; [+14]
        6 GETIMPORT                        R2 K1 [pcall]
        8 GETUPVAL                         R3 1
        9 MOVE                             R4 R1
       10 CALL                             R2 2 1
       11 JUMPIF                           R2 ; [+11]
       12 GETIMPORT                        R3 K3 [warn]
       14 LOADK                            R4 K4 ["Error handling slash command tool completion"]
       15 CALL                             R3 1 0
       16 GETUPVAL                         R3 2
       17 LOADB                            R4 1
       18 CALL                             R3 1 0
       19 RETURN                           R0 0
       20 GETUPVAL                         R2 2
       21 LOADB                            R3 1
       22 CALL                             R2 1 0
       23 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setLastPacketTime"]
        3 GETIMPORT                        R1 K3 [os.clock]
        5 CALL                             R1 0 -1
        6 CALL                             R0 -1 0
        7 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["user_requested_cancellation"]
        2 NAMECALL                         R0 R0 K1 ["Fire"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_17:
        0 MOVE                             R3 R2
        1 NEWCLOSURE                       R4 P0
        2 CAPTURE                          UPVAL U0
        3 CALL                             R3 1 0
        4 GETUPVAL                         R3 1
        5 GETUPVAL                         R5 2
        6 GETTABLEKS                       R5 R5 K0 ["getMcpClientIdentifier"]
        8 CALL                             R5 0 1
        9 GETUPVAL                         R6 3
       10 GETTABLEKS                       R6 R6 K1 ["name"]
       12 GETUPVAL                         R7 3
       13 GETTABLEKS                       R7 R7 K2 ["arguments"]
       15 GETUPVAL                         R8 4
       16 GETUPVAL                         R9 5
       17 NAMECALL                         R3 R3 K3 ["callToolForClient"]
       19 CALL                             R3 6 1
       20 NAMECALL                         R4 R3 K4 ["awaitStatus"]
       22 CALL                             R4 1 2
       23 GETUPVAL                         R6 6
       24 LOADNIL                          R7
       25 CALL                             R6 1 0
       26 GETUPVAL                         R6 7
       27 GETTABLEKS                       R6 R6 K5 ["Status"]
       29 GETTABLEKS                       R6 R6 K6 ["Resolved"]
       31 JUMPIFNOTEQ                      R4 R6 ; [+6]
       33 GETUPVAL                         R6 8
       34 LOADB                            R7 1
       35 MOVE                             R8 R5
       36 CALL                             R6 2 0
       37 RETURN                           R0 0
       38 GETIMPORT                        R6 K8 [warn]
       40 LOADK                            R7 K9 ["Error calling tool:"]
       41 MOVE                             R8 R5
       42 CALL                             R6 2 0
       43 GETUPVAL                         R6 8
       44 LOADB                            R7 0
       45 GETUPVAL                         R9 9
       46 GETTABLEKS                       R9 R9 K10 ["FFlagAssistantAskInputTool"]
       48 JUMPIFNOT                        R9 ; [+7]
       49 GETUPVAL                         R8 10
       50 GETUPVAL                         R9 11
       51 GETUPVAL                         R10 3
       52 GETUPVAL                         R11 12
       53 GETUPVAL                         R12 13
       54 CALL                             R8 4 1
       55 JUMP                             ; [+1]
       56 LOADNIL                          R8
       57 CALL                             R6 2 0
       58 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["cancel"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R1 0
        1 LOADB                            R2 1
        2 MOVE                             R3 R0
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_20:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R2 K2 ["Error calling tool:"]
        3 MOVE                             R3 R0
        4 CALL                             R1 2 0
        5 GETUPVAL                         R1 0
        6 LOADB                            R2 0
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R4 R4 K3 ["FFlagAssistantAskInputTool"]
       10 JUMPIFNOT                        R4 ; [+7]
       11 GETUPVAL                         R3 2
       12 GETUPVAL                         R4 3
       13 GETUPVAL                         R5 4
       14 GETUPVAL                         R6 5
       15 GETUPVAL                         R7 6
       16 CALL                             R3 4 1
       17 JUMP                             ; [+1]
       18 LOADNIL                          R3
       19 CALL                             R1 2 0
       20 RETURN                           R0 0

PROTO_21:
        0 LOADK                            R3 K0 ["slash_command_"]
        1 GETUPVAL                         R4 0
        2 LOADB                            R6 0
        3 NAMECALL                         R4 R4 K1 ["GenerateGUID"]
        5 CALL                             R4 2 1
        6 CONCAT                           R2 R3 R4
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K2 ["getTimestampMilliseconds"]
       10 CALL                             R3 0 1
       11 DUPTABLE                         R4 K8 [{["type"] = "tool_use", ["id"], ["name"], ["input"]}]
       12 SETTABLEKS                       R2 R4 K5 ["id"]
       14 GETTABLEKS                       R5 R0 K6 ["name"]
       16 SETTABLEKS                       R5 R4 K6 ["name"]
       18 GETTABLEKS                       R5 R0 K9 ["arguments"]
       20 SETTABLEKS                       R5 R4 K7 ["input"]
       22 GETUPVAL                         R5 2
       23 GETTABLEKS                       R5 R5 K10 ["onContentStart"]
       25 MOVE                             R6 R4
       26 CALL                             R5 1 1
       27 JUMPIFNOT                        R5 ; [+5]
       28 GETUPVAL                         R6 2
       29 GETTABLEKS                       R6 R6 K11 ["onContentFinished"]
       31 MOVE                             R7 R5
       32 CALL                             R6 1 0
       33 DUPTABLE                         R6 K17 [{"messageGuid", "sessionId", "messageId", "contentId", "toolId"}]
       34 GETUPVAL                         R7 3
       35 SETTABLEKS                       R7 R6 K12 ["messageGuid"]
       37 GETUPVAL                         R7 4
       38 SETTABLEKS                       R7 R6 K13 ["sessionId"]
       40 GETUPVAL                         R7 3
       41 SETTABLEKS                       R7 R6 K14 ["messageId"]
       43 SETTABLEKS                       R5 R6 K15 ["contentId"]
       45 SETTABLEKS                       R2 R6 K16 ["toolId"]
       47 GETUPVAL                         R7 1
       48 GETTABLEKS                       R7 R7 K2 ["getTimestampMilliseconds"]
       50 CALL                             R7 0 1
       51 JUMPIFNOT                        R5 ; [+7]
       52 GETUPVAL                         R8 2
       53 GETTABLEKS                       R8 R8 K18 ["onPreExecuteToolUse"]
       55 MOVE                             R9 R5
       56 MOVE                             R10 R4
       57 LOADB                            R11 1
       58 CALL                             R8 3 0
       59 GETUPVAL                         R9 2
       60 JUMPIF                           R5 ; [+2]
       61 DUPCLOSURE                       R8 K19 [PROTO_4]
       62 JUMP                             ; [+8]
       63 NEWCLOSURE                       R8 P1
       64 CAPTURE                          UPVAL U5
       65 CAPTURE                          VAL R2
       66 CAPTURE                          VAL R0
       67 CAPTURE                          VAL R3
       68 CAPTURE                          VAL R7
       69 CAPTURE                          VAL R9
       70 CAPTURE                          VAL R5
       71 NEWCLOSURE                       R9 P2
       72 CAPTURE                          VAL R8
       73 CAPTURE                          VAL R1
       74 CAPTURE                          UPVAL U6
       75 JUMPIFNOT                        R5 ; [+15]
       76 MOVE                             R10 R8
       77 LOADB                            R11 1
       78 DUPTABLE                         R12 K24 [{["content"], ["isError"] = False, ["structuredContent"]}]
       79 NEWTABLE                         R13 0 1
       81 DUPTABLE                         R14 K27 [{["type"] = "text", ["text"] = "Tool call is still running asynchronously."}]
       82 SETLIST                          R13 R14 1 [1]
       84 SETTABLEKS                       R13 R12 K20 ["content"]
       86 DUPTABLE                         R13 K30 [{["pending"] = True}]
       87 SETTABLEKS                       R13 R12 K23 ["structuredContent"]
       89 LOADB                            R13 1
       90 CALL                             R10 3 0
       91 GETUPVAL                         R11 7
       92 GETTABLEKS                       R11 R11 K31 ["FFlagAssistantAskInputTool"]
       94 JUMPIFNOT                        R11 ; [+7]
       95 GETUPVAL                         R10 8
       96 GETTABLEKS                       R10 R10 K32 ["getToolCallOptions"]
       98 GETTABLEKS                       R11 R0 K6 ["name"]
      100 CALL                             R10 1 1
      101 JUMP                             ; [+1]
      102 LOADNIL                          R10
      103 GETUPVAL                         R11 7
      104 GETTABLEKS                       R11 R11 K33 ["FFlagAssistantSupportSlashCommandCancellation"]
      106 JUMPIFNOT                        R11 ; [+48]
      107 GETUPVAL                         R12 9
      108 FASTCALL2K                       ASSERT R12 K34 ; [+4]
      110 LOADK                            R13 K34 ["setSlashCommandCancel is not available"]
      111 GETIMPORT                        R11 K36 [assert]
      113 CALL                             R11 2 0
      114 GETUPVAL                         R11 10
      115 GETTABLEKS                       R11 R11 K37 ["new"]
      117 CALL                             R11 0 1
      118 DUPTABLE                         R12 K42 [{["timeout"], ["resetTimeoutOnProgress"] = True, ["onprogress"], ["signal"]}]
      119 MOVE                             R13 R10
      120 JUMPIFNOT                        R13 ; [+2]
      121 GETTABLEKS                       R13 R10 K38 ["timeout"]
      123 SETTABLEKS                       R13 R12 K38 ["timeout"]
      125 NEWCLOSURE                       R13 P3
      126 CAPTURE                          UPVAL U11
      127 SETTABLEKS                       R13 R12 K40 ["onprogress"]
      129 SETTABLEKS                       R11 R12 K41 ["signal"]
      131 GETUPVAL                         R13 12
      132 GETTABLEKS                       R13 R13 K37 ["new"]
      134 NEWCLOSURE                       R14 P4
      135 CAPTURE                          VAL R11
      136 CAPTURE                          UPVAL U13
      137 CAPTURE                          UPVAL U14
      138 CAPTURE                          VAL R0
      139 CAPTURE                          VAL R12
      140 CAPTURE                          VAL R6
      141 CAPTURE                          UPVAL U9
      142 CAPTURE                          UPVAL U12
      143 CAPTURE                          VAL R9
      144 CAPTURE                          UPVAL U7
      145 CAPTURE                          UPVAL U5
      146 CAPTURE                          VAL R2
      147 CAPTURE                          VAL R3
      148 CAPTURE                          VAL R7
      149 CALL                             R13 1 1
      150 GETUPVAL                         R14 9
      151 NEWCLOSURE                       R15 P5
      152 CAPTURE                          VAL R13
      153 CALL                             R14 1 0
      154 RETURN                           R0 0
      155 DUPTABLE                         R11 K43 [{["timeout"], ["resetTimeoutOnProgress"] = True}]
      156 MOVE                             R12 R10
      157 JUMPIFNOT                        R12 ; [+2]
      158 GETTABLEKS                       R12 R10 K38 ["timeout"]
      160 SETTABLEKS                       R12 R11 K38 ["timeout"]
      162 GETUPVAL                         R12 13
      163 GETUPVAL                         R14 14
      164 GETTABLEKS                       R14 R14 K44 ["getMcpClientIdentifier"]
      166 CALL                             R14 0 1
      167 GETTABLEKS                       R15 R0 K6 ["name"]
      169 GETTABLEKS                       R16 R0 K9 ["arguments"]
      171 MOVE                             R17 R11
      172 MOVE                             R18 R6
      173 NAMECALL                         R12 R12 K45 ["callToolForClient"]
      175 CALL                             R12 6 1
      176 NEWCLOSURE                       R14 P6
      177 CAPTURE                          VAL R9
      178 NAMECALL                         R12 R12 K46 ["andThen"]
      180 CALL                             R12 2 1
      181 NEWCLOSURE                       R14 P7
      182 CAPTURE                          VAL R9
      183 CAPTURE                          UPVAL U7
      184 CAPTURE                          UPVAL U5
      185 CAPTURE                          VAL R2
      186 CAPTURE                          VAL R0
      187 CAPTURE                          VAL R3
      188 CAPTURE                          VAL R7
      189 NAMECALL                         R12 R12 K47 ["catch"]
      191 CALL                             R12 2 0
      192 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+21]
        2 GETIMPORT                        R1 K1 [pcall]
        4 GETUPVAL                         R2 0
        5 MOVE                             R3 R0
        6 CALL                             R1 2 1
        7 JUMPIF                           R1 ; [+25]
        8 GETIMPORT                        R2 K3 [warn]
       10 LOADK                            R3 K4 ["Error handling slash command tool completion"]
       11 CALL                             R2 1 0
       12 GETUPVAL                         R2 1
       13 JUMPIFNOT                        R2 ; [+5]
       14 GETUPVAL                         R2 2
       15 GETTABLEKS                       R2 R2 K5 ["FFlagAssistantSlashToolNameAndError"]
       17 JUMPIFNOT                        R2 ; [+1]
       18 RETURN                           R0 0
       19 GETUPVAL                         R2 3
       20 LOADB                            R3 1
       21 CALL                             R2 1 0
       22 RETURN                           R0 0
       23 GETUPVAL                         R1 1
       24 JUMPIFNOT                        R1 ; [+5]
       25 GETUPVAL                         R1 2
       26 GETTABLEKS                       R1 R1 K5 ["FFlagAssistantSlashToolNameAndError"]
       28 JUMPIFNOT                        R1 ; [+1]
       29 RETURN                           R0 0
       30 GETUPVAL                         R1 3
       31 LOADB                            R2 1
       32 CALL                             R1 1 0
       33 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["FFlagAssistantAsyncSlashCommands"]
        3 JUMPIFNOT                        R2 ; [+59]
        4 GETUPVAL                         R3 1
        5 NOT                              R2 R3
        6 LOADB                            R3 1
        7 SETUPVAL                         R3 1
        8 GETUPVAL                         R3 2
        9 MOVE                             R4 R0
       10 DUPTABLE                         R5 K15 [{["client"], ["contentObserver"], ["messageId"], ["toolIdPrefix"] = "slash_command_", ["isSlashCommand"] = True, ["userPromptText"], ["images"], ["eagerPlaceholder"] = True, ["cancellable"] = True, ["persistErrorResult"] = True, ["showError"], ["onComplete"]}]
       11 GETUPVAL                         R6 3
       12 SETTABLEKS                       R6 R5 K1 ["client"]
       14 GETUPVAL                         R6 4
       15 SETTABLEKS                       R6 R5 K2 ["contentObserver"]
       17 GETUPVAL                         R6 5
       18 SETTABLEKS                       R6 R5 K3 ["messageId"]
       20 JUMPIFNOT                        R2 ; [+2]
       21 GETUPVAL                         R6 6
       22 JUMP                             ; [+12]
       23 GETUPVAL                         R7 6
       24 GETUPVAL                         R8 7
       25 GETTABLEKS                       R8 R8 K16 ["getSystemReminder"]
       27 LOADK                            R10 K17 ["This is a following tool call from %*"]
       28 MOVE                             R12 R7
       29 NAMECALL                         R10 R10 K18 ["format"]
       31 CALL                             R10 2 1
       32 MOVE                             R9 R10
       33 CALL                             R8 1 1
       34 MOVE                             R6 R8
       35 SETTABLEKS                       R6 R5 K8 ["userPromptText"]
       37 JUMPIFNOT                        R2 ; [+4]
       38 GETUPVAL                         R6 8
       39 GETTABLEKS                       R6 R6 K9 ["images"]
       41 JUMP                             ; [+1]
       42 LOADNIL                          R6
       43 SETTABLEKS                       R6 R5 K9 ["images"]
       45 GETUPVAL                         R7 0
       46 GETTABLEKS                       R7 R7 K19 ["FFlagAssistantSlashToolNameAndError"]
       48 JUMPIFNOT                        R7 ; [+2]
       49 GETUPVAL                         R6 9
       50 JUMP                             ; [+1]
       51 LOADNIL                          R6
       52 SETTABLEKS                       R6 R5 K13 ["showError"]
       54 NEWCLOSURE                       R6 P0
       55 CAPTURE                          VAL R1
       56 CAPTURE                          UPVAL U10
       57 CAPTURE                          UPVAL U0
       58 CAPTURE                          UPVAL U11
       59 SETTABLEKS                       R6 R5 K14 ["onComplete"]
       61 CALL                             R3 2 0
       62 RETURN                           R0 0
       63 GETUPVAL                         R2 12
       64 CALL                             R2 0 1
       65 JUMPIFNOT                        R2 ; [+5]
       66 GETUPVAL                         R2 13
       67 MOVE                             R3 R0
       68 MOVE                             R4 R1
       69 CALL                             R2 2 0
       70 RETURN                           R0 0
       71 GETUPVAL                         R2 14
       72 MOVE                             R3 R0
       73 MOVE                             R4 R1
       74 CALL                             R2 2 0
       75 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLE                         R0 R1 R2
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+1]
        2 RETURN                           R0 0
        3 LOADB                            R0 1
        4 SETUPVAL                         R0 0
        5 GETUPVAL                         R3 1
        6 LENGTH                           R2 R3
        7 LOADN                            R0 1
        8 LOADN                            R1 -1
        9 FORNPREP                         R0
       10 GETIMPORT                        R3 K1 [pcall]
       12 NEWCLOSURE                       R4 P0
       13 CAPTURE                          UPVAL U1
       14 CAPTURE                          VAL R2
       15 CALL                             R3 1 2
       16 JUMPIF                           R3 ; [+5]
       17 GETIMPORT                        R5 K3 [warn]
       19 LOADK                            R6 K4 ["Error running slash command cleanup:"]
       20 MOVE                             R7 R4
       21 CALL                             R5 2 0
       22 FORNLOOP                         R0
       23 NEWTABLE                         R0 0 0
       25 SETUPVAL                         R0 1
       26 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+3]
        2 GETUPVAL                         R0 0
        3 LOADNIL                          R1
        4 CALL                             R0 1 0
        5 GETUPVAL                         R0 1
        6 JUMPIF                           R0 ; [+3]
        7 GETUPVAL                         R0 2
        8 LOADB                            R1 1
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_27:
        0 JUMPIFNOT                        R0 ; [+3]
        1 GETTABLEKS                       R1 R0 K0 ["isError"]
        3 JUMPIFNOT                        R1 ; [+13]
        4 GETUPVAL                         R1 0
        5 CALL                             R1 0 0
        6 GETUPVAL                         R1 1
        7 JUMPIFNOT                        R1 ; [+5]
        8 GETUPVAL                         R1 2
        9 GETTABLEKS                       R1 R1 K1 ["FFlagAssistantSlashToolNameAndError"]
       11 JUMPIFNOT                        R1 ; [+1]
       12 RETURN                           R0 0
       13 GETUPVAL                         R1 3
       14 LOADB                            R2 1
       15 CALL                             R1 1 0
       16 RETURN                           R0 0
       17 DUPTABLE                         R1 K7 [{["type"] = "tool_use", ["id"], ["name"], ["input"]}]
       18 LOADK                            R3 K8 ["slash_command_chain_%*"]
       19 GETUPVAL                         R6 4
       20 SUBK                             R5 R6 K9 [1]
       21 NAMECALL                         R3 R3 K10 ["format"]
       23 CALL                             R3 2 1
       24 MOVE                             R2 R3
       25 SETTABLEKS                       R2 R1 K4 ["id"]
       27 GETUPVAL                         R2 5
       28 GETTABLEKS                       R2 R2 K5 ["name"]
       30 SETTABLEKS                       R2 R1 K5 ["name"]
       32 GETUPVAL                         R2 5
       33 GETTABLEKS                       R2 R2 K11 ["arguments"]
       35 SETTABLEKS                       R2 R1 K6 ["input"]
       37 DUPTABLE                         R2 K18 [{["type"] = "tool_result", ["id"], ["name"], ["content"], [5], ["structuredContent"], ["startTime"] = 0, ["startTimeAfterConfirmation"] = 0}]
       38 GETTABLEKS                       R3 R1 K4 ["id"]
       40 SETTABLEKS                       R3 R2 K4 ["id"]
       42 GETUPVAL                         R3 5
       43 GETTABLEKS                       R3 R3 K5 ["name"]
       45 SETTABLEKS                       R3 R2 K5 ["name"]
       47 GETTABLEKS                       R3 R0 K13 ["content"]
       49 SETTABLEKS                       R3 R2 K13 ["content"]
       51 GETTABLEKS                       R3 R0 K0 ["isError"]
       53 SETTABLEKS                       R3 R2 K0 ["isError"]
       55 GETTABLEKS                       R3 R0 K14 ["structuredContent"]
       57 SETTABLEKS                       R3 R2 K14 ["structuredContent"]
       59 GETUPVAL                         R4 6
       60 DUPTABLE                         R5 K21 [{"toolUse", "toolResult"}]
       61 SETTABLEKS                       R1 R5 K19 ["toolUse"]
       63 SETTABLEKS                       R2 R5 K20 ["toolResult"]
       65 FASTCALL2                        TABLE_INSERT R4 R5 ; [+3]
       67 GETIMPORT                        R3 K24 [table.insert]
       69 CALL                             R3 2 0
       70 GETUPVAL                         R3 7
       71 JUMPIFNOT                        R3 ; [+33]
       72 GETUPVAL                         R3 8
       73 JUMPIFNOT                        R3 ; [+31]
       74 GETUPVAL                         R3 8
       75 GETTABLEKS                       R3 R3 K25 ["continueWithLLM"]
       77 JUMPIFNOT                        R3 ; [+27]
       78 GETUPVAL                         R3 9
       79 CALL                             R3 0 1
       80 JUMPIFNOT                        R3 ; [+13]
       81 GETUPVAL                         R3 10
       82 GETTABLEKS                       R3 R3 K26 ["onContinueWithLLMWithResult"]
       84 JUMPIFNOT                        R3 ; [+9]
       85 LOADB                            R3 1
       86 SETUPVAL                         R3 11
       87 GETUPVAL                         R3 10
       88 GETTABLEKS                       R3 R3 K26 ["onContinueWithLLMWithResult"]
       90 GETUPVAL                         R4 12
       91 MOVE                             R5 R0
       92 CALL                             R3 2 0
       93 JUMP                             ; [+11]
       94 GETUPVAL                         R3 10
       95 GETTABLEKS                       R3 R3 K27 ["onContinueWithLLM"]
       97 JUMPIFNOT                        R3 ; [+7]
       98 LOADB                            R3 1
       99 SETUPVAL                         R3 11
      100 GETUPVAL                         R3 10
      101 GETTABLEKS                       R3 R3 K27 ["onContinueWithLLM"]
      103 GETUPVAL                         R4 12
      104 CALL                             R3 1 0
      105 GETUPVAL                         R3 13
      106 CALL                             R3 0 0
      107 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 LENGTH                           R1 R2
        3 JUMPIFNOTLT                      R1 R0 ; [+12]
        5 GETUPVAL                         R0 2
        6 JUMPIFNOT                        R0 ; [+3]
        7 GETUPVAL                         R0 2
        8 LOADNIL                          R1
        9 CALL                             R0 1 0
       10 GETUPVAL                         R0 3
       11 JUMPIF                           R0 ; [+3]
       12 GETUPVAL                         R0 4
       13 LOADB                            R1 1
       14 CALL                             R0 1 0
       15 RETURN                           R0 0
       16 GETUPVAL                         R1 1
       17 GETUPVAL                         R2 0
       18 GETTABLE                         R0 R1 R2
       19 GETUPVAL                         R1 0
       20 ADDK                             R1 R1 K0 [1]
       21 SETUPVAL                         R1 0
       22 GETIMPORT                        R1 K2 [pcall]
       24 MOVE                             R2 R0
       25 GETUPVAL                         R3 5
       26 CALL                             R1 2 3
       27 JUMPIF                           R1 ; [+15]
       28 GETIMPORT                        R4 K4 [warn]
       30 LOADK                            R5 K5 ["Error preparing slash command chain step:"]
       31 FASTCALL1                        TOSTRING R2 ; [+3]
       32 MOVE                             R7 R2
       33 GETIMPORT                        R6 K7 [tostring]
       35 CALL                             R6 1 1
       36 CALL                             R4 2 0
       37 GETUPVAL                         R4 6
       38 CALL                             R4 0 0
       39 GETUPVAL                         R4 4
       40 LOADB                            R5 1
       41 CALL                             R4 1 0
       42 RETURN                           R0 0
       43 FASTCALL1                        TYPEOF R3 ; [+3]
       44 MOVE                             R5 R3
       45 GETIMPORT                        R4 K9 [typeof]
       47 CALL                             R4 1 1
       48 JUMPIFNOTEQKS                    R4 K10 ["function"] ; [+8]
       50 GETUPVAL                         R5 7
       51 FASTCALL2                        TABLE_INSERT R5 R3 ; [+4]
       53 MOVE                             R6 R3
       54 GETIMPORT                        R4 K13 [table.insert]
       56 CALL                             R4 2 0
       57 GETUPVAL                         R5 0
       58 GETUPVAL                         R7 1
       59 LENGTH                           R6 R7
       60 JUMPIFLT                         R6 R5 ; [+2]
       62 LOADB                            R4 0 +1
       63 LOADB                            R4 1
       64 GETUPVAL                         R5 8
       65 MOVE                             R6 R2
       66 NEWCLOSURE                       R7 P0
       67 CAPTURE                          UPVAL U6
       68 CAPTURE                          UPVAL U9
       69 CAPTURE                          UPVAL U10
       70 CAPTURE                          UPVAL U4
       71 CAPTURE                          UPVAL U0
       72 CAPTURE                          VAL R2
       73 CAPTURE                          UPVAL U5
       74 CAPTURE                          VAL R4
       75 CAPTURE                          UPVAL U11
       76 CAPTURE                          UPVAL U12
       77 CAPTURE                          UPVAL U13
       78 CAPTURE                          UPVAL U3
       79 CAPTURE                          UPVAL U14
       80 CAPTURE                          UPVAL U15
       81 CALL                             R5 2 0
       82 RETURN                           R0 0

PROTO_29:
        0 GETIMPORT                        R1 K2 [table.create]
        2 LENGTH                           R2 R0
        3 CALL                             R1 1 1
        4 NEWTABLE                         R2 0 0
        6 LOADB                            R3 0
        7 NEWCLOSURE                       R4 P0
        8 CAPTURE                          REF R3
        9 CAPTURE                          REF R2
       10 GETUPVAL                         R5 0
       11 JUMPIFNOT                        R5 ; [+6]
       12 GETUPVAL                         R5 1
       13 CALL                             R5 0 1
       14 JUMPIFNOT                        R5 ; [+3]
       15 GETUPVAL                         R5 0
       16 MOVE                             R6 R4
       17 CALL                             R5 1 0
       18 LOADB                            R5 0
       19 NEWCLOSURE                       R6 P1
       20 CAPTURE                          UPVAL U0
       21 CAPTURE                          REF R5
       22 CAPTURE                          UPVAL U2
       23 LOADN                            R7 1
       24 NEWCLOSURE                       R8 P2
       25 CAPTURE                          REF R7
       26 CAPTURE                          VAL R0
       27 CAPTURE                          UPVAL U0
       28 CAPTURE                          REF R5
       29 CAPTURE                          UPVAL U2
       30 CAPTURE                          VAL R1
       31 CAPTURE                          VAL R4
       32 CAPTURE                          REF R2
       33 CAPTURE                          UPVAL U3
       34 CAPTURE                          UPVAL U4
       35 CAPTURE                          UPVAL U5
       36 CAPTURE                          UPVAL U6
       37 CAPTURE                          UPVAL U7
       38 CAPTURE                          UPVAL U8
       39 CAPTURE                          UPVAL U9
       40 CAPTURE                          VAL R8
       41 MOVE                             R9 R8
       42 CALL                             R9 0 0
       43 CLOSEUPVALS                      R2
       44 RETURN                           R0 0

PROTO_30:
        0 JUMPIFNOT                        R0 ; [+7]
        1 GETUPVAL                         R2 0
        2 FASTCALL2                        TABLE_INSERT R2 R0 ; [+4]
        4 MOVE                             R3 R0
        5 GETIMPORT                        R1 K2 [table.insert]
        7 CALL                             R1 2 0
        8 GETUPVAL                         R1 1
        9 CALL                             R1 0 0
       10 RETURN                           R0 0

PROTO_31:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 LENGTH                           R1 R2
        3 JUMPIFNOTLT                      R1 R0 ; [+12]
        5 GETUPVAL                         R0 2
        6 JUMPIFNOT                        R0 ; [+5]
        7 GETUPVAL                         R0 3
        8 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantSlashToolNameAndError"]
       10 JUMPIFNOT                        R0 ; [+1]
       11 RETURN                           R0 0
       12 GETUPVAL                         R0 4
       13 LOADB                            R1 1
       14 CALL                             R0 1 0
       15 RETURN                           R0 0
       16 GETUPVAL                         R1 1
       17 GETUPVAL                         R2 0
       18 GETTABLE                         R0 R1 R2
       19 GETUPVAL                         R1 0
       20 ADDK                             R1 R1 K1 [1]
       21 SETUPVAL                         R1 0
       22 GETIMPORT                        R1 K3 [pcall]
       24 MOVE                             R2 R0
       25 GETUPVAL                         R3 5
       26 CALL                             R1 2 2
       27 JUMPIF                           R1 ; [+16]
       28 GETIMPORT                        R3 K5 [warn]
       30 LOADK                            R4 K6 ["Error preparing slash command chain step:"]
       31 MOVE                             R5 R2
       32 CALL                             R3 2 0
       33 GETUPVAL                         R3 2
       34 JUMPIFNOT                        R3 ; [+5]
       35 GETUPVAL                         R3 3
       36 GETTABLEKS                       R3 R3 K0 ["FFlagAssistantSlashToolNameAndError"]
       38 JUMPIFNOT                        R3 ; [+1]
       39 RETURN                           R0 0
       40 GETUPVAL                         R3 4
       41 LOADB                            R4 1
       42 CALL                             R3 1 0
       43 RETURN                           R0 0
       44 GETUPVAL                         R3 6
       45 MOVE                             R4 R2
       46 NEWCLOSURE                       R5 P0
       47 CAPTURE                          UPVAL U5
       48 CAPTURE                          UPVAL U7
       49 CALL                             R3 2 0
       50 RETURN                           R0 0

PROTO_32:
        0 JUMPIFNOT                        R0 ; [+7]
        1 GETUPVAL                         R2 0
        2 FASTCALL2                        TABLE_INSERT R2 R0 ; [+4]
        4 MOVE                             R3 R0
        5 GETIMPORT                        R1 K2 [table.insert]
        7 CALL                             R1 2 0
        8 LOADN                            R1 1
        9 NEWCLOSURE                       R2 P0
       10 CAPTURE                          REF R1
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          UPVAL U3
       14 CAPTURE                          UPVAL U4
       15 CAPTURE                          UPVAL U0
       16 CAPTURE                          UPVAL U5
       17 CAPTURE                          VAL R2
       18 MOVE                             R3 R2
       19 CALL                             R3 0 0
       20 CLOSEUPVALS                      R1
       21 RETURN                           R0 0

PROTO_33:
        0 GETIMPORT                        R2 K2 [table.create]
        2 LENGTH                           R4 R1
        3 ADDK                             R3 R4 K3 [1]
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 0
        6 MOVE                             R4 R0
        7 NEWCLOSURE                       R5 P0
        8 CAPTURE                          VAL R2
        9 CAPTURE                          VAL R1
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          UPVAL U3
       13 CAPTURE                          UPVAL U0
       14 CALL                             R3 2 0
       15 RETURN                           R0 0

PROTO_34:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onContinueWithLLMWithResult"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_35:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onContinueWithLLM"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_36:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+25]
        2 JUMPIF                           R0 ; [+7]
        3 GETUPVAL                         R1 1
        4 LOADB                            R2 1
        5 CALL                             R1 1 0
        6 GETIMPORT                        R1 K1 [error]
        8 LOADK                            R2 K2 ["No initial tool spec generated for slash command chain."]
        9 CALL                             R1 1 0
       10 GETUPVAL                         R1 0
       11 GETIMPORT                        R2 K5 [table.create]
       13 LENGTH                           R4 R1
       14 ADDK                             R3 R4 K6 [1]
       15 CALL                             R2 1 1
       16 GETUPVAL                         R3 2
       17 MOVE                             R4 R0
       18 NEWCLOSURE                       R5 P0
       19 CAPTURE                          VAL R2
       20 CAPTURE                          VAL R1
       21 CAPTURE                          UPVAL U3
       22 CAPTURE                          UPVAL U4
       23 CAPTURE                          UPVAL U1
       24 CAPTURE                          UPVAL U2
       25 CALL                             R3 2 0
       26 RETURN                           R0 0
       27 JUMPIFNOT                        R0 ; [+41]
       28 GETUPVAL                         R1 5
       29 JUMPIFNOT                        R1 ; [+18]
       30 GETUPVAL                         R1 5
       31 GETTABLEKS                       R1 R1 K7 ["continueWithLLM"]
       33 JUMPIFNOT                        R1 ; [+14]
       34 GETUPVAL                         R1 6
       35 CALL                             R1 0 1
       36 JUMPIFNOT                        R1 ; [+11]
       37 GETUPVAL                         R1 7
       38 GETTABLEKS                       R1 R1 K8 ["onContinueWithLLMWithResult"]
       40 JUMPIFNOT                        R1 ; [+7]
       41 GETUPVAL                         R1 2
       42 MOVE                             R2 R0
       43 NEWCLOSURE                       R3 P1
       44 CAPTURE                          UPVAL U7
       45 CAPTURE                          UPVAL U8
       46 CALL                             R1 2 0
       47 RETURN                           R0 0
       48 GETUPVAL                         R1 5
       49 JUMPIFNOT                        R1 ; [+15]
       50 GETUPVAL                         R1 5
       51 GETTABLEKS                       R1 R1 K7 ["continueWithLLM"]
       53 JUMPIFNOT                        R1 ; [+11]
       54 GETUPVAL                         R1 7
       55 GETTABLEKS                       R1 R1 K9 ["onContinueWithLLM"]
       57 JUMPIFNOT                        R1 ; [+7]
       58 GETUPVAL                         R1 2
       59 MOVE                             R2 R0
       60 NEWCLOSURE                       R3 P2
       61 CAPTURE                          UPVAL U7
       62 CAPTURE                          UPVAL U8
       63 CALL                             R1 2 0
       64 RETURN                           R0 0
       65 GETUPVAL                         R1 2
       66 MOVE                             R2 R0
       67 CALL                             R1 1 0
       68 RETURN                           R0 0
       69 GETUPVAL                         R1 1
       70 LOADB                            R2 1
       71 CALL                             R1 1 0
       72 GETIMPORT                        R1 K1 [error]
       74 LOADK                            R2 K10 ["No tool spec generated for slash command and no tool chain defined."]
       75 CALL                             R1 1 0
       76 RETURN                           R0 0

PROTO_37:
        0 JUMPIFNOT                        R0 ; [+1]
        1 JUMPIF                           R1 ; [+1]
        2 RETURN                           R0 1
        3 GETIMPORT                        R2 K2 [table.clone]
        5 MOVE                             R3 R0
        6 CALL                             R2 1 1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K3 ["join"]
       10 GETTABLEKS                       R4 R2 K4 ["arguments"]
       12 MOVE                             R5 R1
       13 CALL                             R3 2 1
       14 SETTABLEKS                       R3 R2 K4 ["arguments"]
       16 RETURN                           R2 1

PROTO_38:
        0 GETTABLEKS                       R1 R0 K0 ["imageSelection"]
        2 JUMPIFNOT                        R1 ; [+7]
        3 GETIMPORT                        R1 K3 [table.clone]
        5 GETTABLEKS                       R2 R0 K0 ["imageSelection"]
        7 CALL                             R1 1 1
        8 SETTABLEKS                       R1 R0 K0 ["imageSelection"]
       10 GETUPVAL                         R1 0
       11 MOVE                             R2 R0
       12 CALL                             R1 1 1
       13 RETURN                           R1 1

PROTO_39:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIFNOTEQKNIL                  R1 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R2 1
        7 DUPTABLE                         R3 K6 [{["messageId"], ["contentId"], ["skipIfNoMessage"] = True, ["transformFn"]}]
        8 GETUPVAL                         R4 2
        9 SETTABLEKS                       R4 R3 K1 ["messageId"]
       11 SETTABLEKS                       R1 R3 K2 ["contentId"]
       13 NEWCLOSURE                       R4 P0
       14 CAPTURE                          VAL R0
       15 SETTABLEKS                       R4 R3 K5 ["transformFn"]
       17 CALL                             R2 1 0
       18 RETURN                           R0 0

PROTO_40:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["InputStatus"]
        3 GETTABLEKS                       R1 R1 K1 ["Cancelled"]
        5 SETTABLEKS                       R1 R0 K2 ["status"]
        7 RETURN                           R0 0

PROTO_41:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R1 K0 [PROTO_40]
        2 CAPTURE                          UPVAL U1
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_42:
        0 GETTABLEKS                       R1 R0 K0 ["imageSelection"]
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["imageSelection"]
        5 LOADK                            R2 K1 ["Picker"]
        6 SETTABLEKS                       R2 R1 K2 ["phase"]
        8 RETURN                           R0 0

PROTO_43:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["InputStatus"]
        3 GETTABLEKS                       R1 R1 K1 ["Recorded"]
        5 SETTABLEKS                       R1 R0 K2 ["status"]
        7 RETURN                           R0 0

PROTO_44:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+1]
        2 RETURN                           R0 0
        3 LOADB                            R1 1
        4 SETUPVAL                         R1 0
        5 GETUPVAL                         R1 1
        6 DUPCLOSURE                       R2 K0 [PROTO_43]
        7 CAPTURE                          UPVAL U2
        8 CALL                             R1 1 0
        9 GETUPVAL                         R1 3
       10 GETTABLEKS                       R1 R1 K1 ["join"]
       12 GETUPVAL                         R2 4
       13 MOVE                             R3 R0
       14 CALL                             R1 2 1
       15 GETUPVAL                         R3 5
       16 JUMPIFNOT                        R3 ; [+1]
       17 JUMPIF                           R1 ; [+2]
       18 MOVE                             R2 R3
       19 JUMP                             ; [+14]
       20 GETIMPORT                        R4 K4 [table.clone]
       22 MOVE                             R5 R3
       23 CALL                             R4 1 1
       24 GETUPVAL                         R5 3
       25 GETTABLEKS                       R5 R5 K1 ["join"]
       27 GETTABLEKS                       R6 R4 K5 ["arguments"]
       29 MOVE                             R7 R1
       30 CALL                             R5 2 1
       31 SETTABLEKS                       R5 R4 K5 ["arguments"]
       33 MOVE                             R2 R4
       34 GETUPVAL                         R3 6
       35 GETTABLEKS                       R3 R3 K6 ["FFlagAssistantSupportSlashCommandCancellation"]
       37 JUMPIFNOT                        R3 ; [+5]
       38 GETUPVAL                         R3 7
       39 JUMPIFNOT                        R3 ; [+3]
       40 GETUPVAL                         R3 7
       41 LOADNIL                          R4
       42 CALL                             R3 1 0
       43 GETUPVAL                         R3 8
       44 MOVE                             R4 R2
       45 CALL                             R3 1 0
       46 RETURN                           R0 0

PROTO_45:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["FFlagDebugLogAssistantUI"]
        3 JUMPIFNOT                        R2 ; [+19]
        4 GETIMPORT                        R2 K2 [print]
        6 LOADK                            R3 K3 ["[ImageSelectionPicker] inputRequest.onContinue fired result="]
        7 MOVE                             R4 R0
        8 LOADK                            R5 K4 ["hasContinued="]
        9 GETUPVAL                         R6 1
       10 LOADK                            R7 K5 ["hasImageSelection="]
       11 GETUPVAL                         R9 2
       12 GETTABLEKS                       R9 R9 K6 ["imageSelection"]
       14 JUMPIFNOTEQKNIL                  R9 ; [+2]
       16 LOADB                            R8 0 +1
       17 LOADB                            R8 1
       18 LOADK                            R9 K7 ["inputContentIdRef.current="]
       19 GETUPVAL                         R10 3
       20 GETTABLEKS                       R10 R10 K8 ["current"]
       22 CALL                             R2 8 0
       23 JUMPIF                           R0 ; [+14]
       24 GETUPVAL                         R2 1
       25 JUMPIFNOT                        R2 ; [+1]
       26 RETURN                           R0 0
       27 LOADB                            R2 1
       28 SETUPVAL                         R2 1
       29 GETUPVAL                         R2 2
       30 GETTABLEKS                       R2 R2 K9 ["onCancel"]
       32 JUMPIFNOT                        R2 ; [+4]
       33 GETUPVAL                         R2 2
       34 GETTABLEKS                       R2 R2 K9 ["onCancel"]
       36 CALL                             R2 0 0
       37 RETURN                           R0 0
       38 GETUPVAL                         R2 2
       39 GETTABLEKS                       R2 R2 K6 ["imageSelection"]
       41 JUMPIFNOT                        R2 ; [+34]
       42 GETUPVAL                         R2 4
       43 DUPCLOSURE                       R3 K10 [PROTO_42]
       44 CALL                             R2 1 0
       45 DUPTABLE                         R2 K14 [{"editWidget", "dispatchWithOverrides", "cancelInputRequest"}]
       46 GETUPVAL                         R3 4
       47 SETTABLEKS                       R3 R2 K11 ["editWidget"]
       49 NEWCLOSURE                       R3 P1
       50 CAPTURE                          UPVAL U1
       51 CAPTURE                          UPVAL U4
       52 CAPTURE                          UPVAL U5
       53 CAPTURE                          UPVAL U6
       54 CAPTURE                          VAL R1
       55 CAPTURE                          UPVAL U7
       56 CAPTURE                          UPVAL U0
       57 CAPTURE                          UPVAL U8
       58 CAPTURE                          UPVAL U9
       59 SETTABLEKS                       R3 R2 K12 ["dispatchWithOverrides"]
       61 GETUPVAL                         R3 10
       62 SETTABLEKS                       R3 R2 K13 ["cancelInputRequest"]
       64 GETUPVAL                         R3 2
       65 GETTABLEKS                       R3 R3 K6 ["imageSelection"]
       67 GETTABLEKS                       R3 R3 K15 ["onFormSubmitted"]
       69 MOVE                             R4 R1
       70 JUMPIF                           R4 ; [+2]
       71 NEWTABLE                         R4 0 0
       73 MOVE                             R5 R2
       74 CALL                             R3 2 0
       75 RETURN                           R0 0
       76 GETUPVAL                         R2 1
       77 JUMPIFNOT                        R2 ; [+1]
       78 RETURN                           R0 0
       79 LOADB                            R2 1
       80 SETUPVAL                         R2 1
       81 GETUPVAL                         R3 7
       82 JUMPIFNOT                        R3 ; [+1]
       83 JUMPIF                           R1 ; [+2]
       84 MOVE                             R2 R3
       85 JUMP                             ; [+14]
       86 GETIMPORT                        R4 K18 [table.clone]
       88 MOVE                             R5 R3
       89 CALL                             R4 1 1
       90 GETUPVAL                         R5 6
       91 GETTABLEKS                       R5 R5 K19 ["join"]
       93 GETTABLEKS                       R6 R4 K20 ["arguments"]
       95 MOVE                             R7 R1
       96 CALL                             R5 2 1
       97 SETTABLEKS                       R5 R4 K20 ["arguments"]
       99 MOVE                             R2 R4
      100 GETUPVAL                         R3 0
      101 GETTABLEKS                       R3 R3 K21 ["FFlagAssistantSupportSlashCommandCancellation"]
      103 JUMPIFNOT                        R3 ; [+5]
      104 GETUPVAL                         R3 8
      105 JUMPIFNOT                        R3 ; [+3]
      106 GETUPVAL                         R3 8
      107 LOADNIL                          R4
      108 CALL                             R3 1 0
      109 GETUPVAL                         R3 9
      110 MOVE                             R4 R2
      111 CALL                             R3 1 0
      112 RETURN                           R0 0

PROTO_46:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+1]
        2 RETURN                           R0 0
        3 LOADB                            R2 1
        4 SETUPVAL                         R2 0
        5 JUMPIF                           R0 ; [+9]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K0 ["onCancel"]
        9 JUMPIFNOT                        R2 ; [+4]
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R2 R2 K0 ["onCancel"]
       13 CALL                             R2 0 0
       14 RETURN                           R0 0
       15 GETUPVAL                         R3 2
       16 JUMPIFNOT                        R3 ; [+1]
       17 JUMPIF                           R1 ; [+2]
       18 MOVE                             R2 R3
       19 JUMP                             ; [+14]
       20 GETIMPORT                        R4 K3 [table.clone]
       22 MOVE                             R5 R3
       23 CALL                             R4 1 1
       24 GETUPVAL                         R5 3
       25 GETTABLEKS                       R5 R5 K4 ["join"]
       27 GETTABLEKS                       R6 R4 K5 ["arguments"]
       29 MOVE                             R7 R1
       30 CALL                             R5 2 1
       31 SETTABLEKS                       R5 R4 K5 ["arguments"]
       33 MOVE                             R2 R4
       34 GETUPVAL                         R3 4
       35 MOVE                             R4 R2
       36 CALL                             R3 1 0
       37 RETURN                           R0 0

PROTO_47:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["suppressHistory"]
        3 RETURN                           R0 0

PROTO_48:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onCancel"]
        3 JUMPIFNOT                        R1 ; [+4]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K0 ["onCancel"]
        7 CALL                             R1 0 0
        8 GETUPVAL                         R1 1
        9 CALL                             R1 0 1
       10 LOADNIL                          R2
       11 GETTABLEKS                       R3 R1 K1 ["propertyRows"]
       13 JUMPIFNOT                        R3 ; [+28]
       14 GETIMPORT                        R3 K4 [table.clone]
       16 GETTABLEKS                       R4 R1 K1 ["propertyRows"]
       18 CALL                             R3 1 1
       19 MOVE                             R2 R3
       20 MOVE                             R3 R2
       21 LOADNIL                          R4
       22 LOADNIL                          R5
       23 FORGPREP                         R3
       24 GETTABLEKS                       R8 R7 K5 ["prop"]
       26 JUMPIFEQKS                       R8 K6 ["selectedInstanceRef"] ; [+13]
       28 GETTABLEKS                       R9 R7 K5 ["prop"]
       30 GETTABLE                         R8 R0 R9
       31 JUMPIFEQKNIL                     R8 ; [+8]
       33 GETIMPORT                        R9 K4 [table.clone]
       35 MOVE                             R10 R7
       36 CALL                             R9 1 1
       37 SETTABLEKS                       R8 R9 K7 ["initialValue"]
       39 SETTABLE                         R9 R2 R6
       40 FORGLOOP                         R3 2 ; [-17]
       42 LOADB                            R3 0
       43 DUPTABLE                         R4 K16 [{["type"] = "input_requested", ["title"], ["description"], ["confirmButtonText"], ["propertyRows"], ["canConfirm"], ["getDisabledReason"], ["onContinue"]}]
       44 GETUPVAL                         R6 2
       45 GETUPVAL                         R7 3
       46 CONCAT                           R5 R6 R7
       47 SETTABLEKS                       R5 R4 K10 ["title"]
       49 GETTABLEKS                       R5 R1 K11 ["description"]
       51 SETTABLEKS                       R5 R4 K11 ["description"]
       53 GETTABLEKS                       R5 R1 K12 ["confirmButtonText"]
       55 SETTABLEKS                       R5 R4 K12 ["confirmButtonText"]
       57 SETTABLEKS                       R2 R4 K1 ["propertyRows"]
       59 GETTABLEKS                       R5 R1 K13 ["canConfirm"]
       61 SETTABLEKS                       R5 R4 K13 ["canConfirm"]
       63 GETTABLEKS                       R5 R1 K14 ["getDisabledReason"]
       65 SETTABLEKS                       R5 R4 K14 ["getDisabledReason"]
       67 NEWCLOSURE                       R5 P0
       68 CAPTURE                          REF R3
       69 CAPTURE                          VAL R1
       70 CAPTURE                          UPVAL U4
       71 CAPTURE                          UPVAL U5
       72 CAPTURE                          UPVAL U6
       73 SETTABLEKS                       R5 R4 K15 ["onContinue"]
       75 GETUPVAL                         R5 7
       76 GETTABLEKS                       R5 R5 K17 ["current"]
       78 JUMPIFNOT                        R5 ; [+17]
       79 GETUPVAL                         R5 7
       80 GETTABLEKS                       R5 R5 K17 ["current"]
       82 GETUPVAL                         R6 8
       83 DUPTABLE                         R7 K23 [{["messageId"], ["contentId"], ["skipIfNoMessage"] = True, ["transformFn"]}]
       84 GETTABLEKS                       R8 R5 K18 ["messageId"]
       86 SETTABLEKS                       R8 R7 K18 ["messageId"]
       88 GETTABLEKS                       R8 R5 K19 ["contentId"]
       90 SETTABLEKS                       R8 R7 K19 ["contentId"]
       92 DUPCLOSURE                       R8 K24 [PROTO_47]
       93 SETTABLEKS                       R8 R7 K22 ["transformFn"]
       95 CALL                             R6 1 0
       96 GETUPVAL                         R5 9
       97 GETTABLEKS                       R5 R5 K25 ["onContentStart"]
       99 MOVE                             R6 R4
      100 CALL                             R5 1 1
      101 JUMPIFNOT                        R5 ; [+14]
      102 GETUPVAL                         R6 7
      103 DUPTABLE                         R7 K26 [{"messageId", "contentId"}]
      104 GETUPVAL                         R8 10
      105 SETTABLEKS                       R8 R7 K18 ["messageId"]
      107 SETTABLEKS                       R5 R7 K19 ["contentId"]
      109 SETTABLEKS                       R7 R6 K17 ["current"]
      111 GETUPVAL                         R6 9
      112 GETTABLEKS                       R6 R6 K27 ["onContentFinished"]
      114 MOVE                             R7 R5
      115 CALL                             R6 1 0
      116 CLOSEUPVALS                      R3
      117 RETURN                           R0 0

PROTO_49:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["suppressHistory"]
        3 RETURN                           R0 0

PROTO_50:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["InputStatus"]
        3 GETTABLEKS                       R1 R1 K1 ["Cancelled"]
        5 SETTABLEKS                       R1 R0 K2 ["status"]
        7 RETURN                           R0 0

PROTO_51:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+25]
        2 LOADB                            R0 1
        3 SETUPVAL                         R0 0
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K0 ["onCancel"]
        7 JUMPIFNOT                        R0 ; [+4]
        8 GETUPVAL                         R0 1
        9 GETTABLEKS                       R0 R0 K0 ["onCancel"]
       11 CALL                             R0 0 0
       12 GETUPVAL                         R0 2
       13 JUMPIFNOT                        R0 ; [+13]
       14 GETUPVAL                         R0 3
       15 DUPTABLE                         R1 K4 [{"messageId", "contentId", "transformFn"}]
       16 GETUPVAL                         R2 4
       17 SETTABLEKS                       R2 R1 K1 ["messageId"]
       19 GETUPVAL                         R2 2
       20 SETTABLEKS                       R2 R1 K2 ["contentId"]
       22 DUPCLOSURE                       R2 K5 [PROTO_50]
       23 CAPTURE                          UPVAL U5
       24 SETTABLEKS                       R2 R1 K3 ["transformFn"]
       26 CALL                             R0 1 0
       27 RETURN                           R0 0

PROTO_52:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+1]
        2 RETURN                           R0 0
        3 LOADB                            R2 1
        4 SETUPVAL                         R2 0
        5 JUMPIF                           R0 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R3 1
        8 JUMPIFNOT                        R3 ; [+1]
        9 JUMPIF                           R1 ; [+2]
       10 MOVE                             R2 R3
       11 JUMP                             ; [+14]
       12 GETIMPORT                        R4 K2 [table.clone]
       14 MOVE                             R5 R3
       15 CALL                             R4 1 1
       16 GETUPVAL                         R5 2
       17 GETTABLEKS                       R5 R5 K3 ["join"]
       19 GETTABLEKS                       R6 R4 K4 ["arguments"]
       21 MOVE                             R7 R1
       22 CALL                             R5 2 1
       23 SETTABLEKS                       R5 R4 K4 ["arguments"]
       25 MOVE                             R2 R4
       26 GETUPVAL                         R3 3
       27 MOVE                             R4 R2
       28 CALL                             R3 1 0
       29 RETURN                           R0 0

PROTO_53:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETTABLEKS                       R2 R1 K0 ["onNewMessage"]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 0
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          UPVAL U3
       10 CAPTURE                          UPVAL U4
       11 CAPTURE                          UPVAL U5
       12 CAPTURE                          UPVAL U6
       13 CAPTURE                          UPVAL U7
       14 CAPTURE                          UPVAL U8
       15 CAPTURE                          UPVAL U9
       16 CAPTURE                          UPVAL U10
       17 CAPTURE                          UPVAL U11
       18 CAPTURE                          UPVAL U12
       19 CAPTURE                          UPVAL U13
       20 CAPTURE                          UPVAL U14
       21 CAPTURE                          UPVAL U15
       22 CAPTURE                          UPVAL U16
       23 CAPTURE                          UPVAL U17
       24 CAPTURE                          VAL R0
       25 CAPTURE                          UPVAL U18
       26 CAPTURE                          UPVAL U19
       27 CAPTURE                          UPVAL U20
       28 CAPTURE                          UPVAL U21
       29 CAPTURE                          UPVAL U22
       30 NEWCLOSURE                       R3 P1
       31 CAPTURE                          UPVAL U23
       32 CAPTURE                          UPVAL U24
       33 CAPTURE                          VAL R1
       34 CAPTURE                          VAL R0
       35 CAPTURE                          UPVAL U17
       36 CAPTURE                          UPVAL U25
       37 CAPTURE                          UPVAL U2
       38 CAPTURE                          UPVAL U6
       39 CAPTURE                          UPVAL U26
       40 CAPTURE                          UPVAL U27
       41 CAPTURE                          UPVAL U28
       42 CAPTURE                          UPVAL U29
       43 CAPTURE                          UPVAL U30
       44 CAPTURE                          UPVAL U4
       45 CAPTURE                          UPVAL U5
       46 NEWCLOSURE                       R4 P2
       47 CAPTURE                          UPVAL U6
       48 CAPTURE                          UPVAL U9
       49 CAPTURE                          UPVAL U31
       50 CAPTURE                          UPVAL U4
       51 CAPTURE                          VAL R1
       52 CAPTURE                          VAL R0
       53 CAPTURE                          UPVAL U20
       54 CAPTURE                          UPVAL U5
       55 CAPTURE                          UPVAL U21
       56 CAPTURE                          UPVAL U19
       57 CAPTURE                          UPVAL U22
       58 CAPTURE                          UPVAL U2
       59 CAPTURE                          UPVAL U32
       60 CAPTURE                          VAL R2
       61 CAPTURE                          VAL R3
       62 NEWCLOSURE                       R5 P3
       63 CAPTURE                          UPVAL U27
       64 CAPTURE                          UPVAL U32
       65 CAPTURE                          UPVAL U2
       66 CAPTURE                          VAL R4
       67 CAPTURE                          UPVAL U22
       68 CAPTURE                          UPVAL U6
       69 CAPTURE                          UPVAL U33
       70 CAPTURE                          UPVAL U34
       71 CAPTURE                          UPVAL U21
       72 CAPTURE                          VAL R0
       73 GETUPVAL                         R6 35
       74 JUMPIFNOT                        R6 ; [+4]
       75 MOVE                             R6 R5
       76 GETUPVAL                         R7 35
       77 CALL                             R6 1 0
       78 RETURN                           R0 0
       79 NEWCLOSURE                       R6 P4
       80 CAPTURE                          VAL R4
       81 CAPTURE                          UPVAL U22
       82 CAPTURE                          UPVAL U6
       83 CAPTURE                          UPVAL U2
       84 NEWCLOSURE                       R7 P5
       85 CAPTURE                          UPVAL U36
       86 CAPTURE                          UPVAL U2
       87 CAPTURE                          VAL R4
       88 CAPTURE                          UPVAL U22
       89 CAPTURE                          UPVAL U6
       90 CAPTURE                          UPVAL U33
       91 CAPTURE                          UPVAL U34
       92 CAPTURE                          UPVAL U21
       93 CAPTURE                          VAL R0
       94 DUPCLOSURE                       R8 K1 [PROTO_37]
       95 CAPTURE                          UPVAL U37
       96 GETUPVAL                         R10 33
       97 FASTCALL2K                       ASSERT R10 K2 ; [+4]
       99 LOADK                            R11 K2 ["definition should always be available for slash commands"]
      100 GETIMPORT                        R9 K4 [assert]
      102 CALL                             R9 2 0
      103 GETUPVAL                         R9 33
      104 GETTABLEKS                       R9 R9 K5 ["getInputRequestArguments"]
      106 JUMPIFNOT                        R9 ; [+232]
      107 MOVE                             R10 R9
      108 CALL                             R10 0 1
      109 LOADNIL                          R11
      110 GETTABLEKS                       R12 R10 K6 ["propertyRows"]
      112 JUMPIFNOT                        R12 ; [+187]
      113 GETIMPORT                        R12 K9 [table.clone]
      115 GETTABLEKS                       R13 R10 K6 ["propertyRows"]
      117 CALL                             R12 1 1
      118 MOVE                             R11 R12
      119 MOVE                             R12 R11
      120 LOADNIL                          R13
      121 LOADNIL                          R14
      122 FORGPREP                         R12
      123 GETUPVAL                         R18 38
      124 GETTABLEKS                       R18 R18 K10 ["arguments"]
      126 GETTABLEKS                       R19 R16 K11 ["prop"]
      128 GETTABLE                         R17 R18 R19
      129 JUMPIFEQKNIL                     R17 ; [+8]
      131 GETIMPORT                        R18 K9 [table.clone]
      133 MOVE                             R19 R16
      134 CALL                             R18 1 1
      135 SETTABLEKS                       R17 R18 K12 ["initialValue"]
      137 SETTABLE                         R18 R11 R15
      138 FORGLOOP                         R12 2 ; [-16]
      140 LOADB                            R12 0
      141 DUPTABLE                         R13 K15 [{["current"] = }]
      142 NEWCLOSURE                       R14 P7
      143 CAPTURE                          VAL R13
      144 CAPTURE                          UPVAL U15
      145 CAPTURE                          VAL R0
      146 NEWCLOSURE                       R15 P8
      147 CAPTURE                          VAL R14
      148 CAPTURE                          UPVAL U39
      149 DUPTABLE                         R16 K26 [{["type"] = "input_requested", ["title"], ["description"], ["confirmButtonText"], ["propertyRows"], ["canConfirm"], ["getDisabledReason"], ["imageSelection"], ["onContinue"], ["onRevive"]}]
      150 GETUPVAL                         R18 40
      151 GETUPVAL                         R19 41
      152 CONCAT                           R17 R18 R19
      153 SETTABLEKS                       R17 R16 K18 ["title"]
      155 GETTABLEKS                       R17 R10 K19 ["description"]
      157 SETTABLEKS                       R17 R16 K19 ["description"]
      159 GETTABLEKS                       R17 R10 K20 ["confirmButtonText"]
      161 SETTABLEKS                       R17 R16 K20 ["confirmButtonText"]
      163 SETTABLEKS                       R11 R16 K6 ["propertyRows"]
      165 GETTABLEKS                       R17 R10 K21 ["canConfirm"]
      167 SETTABLEKS                       R17 R16 K21 ["canConfirm"]
      169 GETTABLEKS                       R17 R10 K22 ["getDisabledReason"]
      171 SETTABLEKS                       R17 R16 K22 ["getDisabledReason"]
      173 GETTABLEKS                       R18 R10 K23 ["imageSelection"]
      175 JUMPIFNOT                        R18 ; [+12]
      176 DUPTABLE                         R17 K31 [{["wizardMode"], ["phase"] = "Form", ["slots"]}]
      177 GETTABLEKS                       R18 R10 K23 ["imageSelection"]
      179 GETTABLEKS                       R18 R18 K27 ["wizardMode"]
      181 SETTABLEKS                       R18 R17 K27 ["wizardMode"]
      183 NEWTABLE                         R18 0 0
      185 SETTABLEKS                       R18 R17 K30 ["slots"]
      187 JUMP                             ; [+1]
      188 LOADNIL                          R17
      189 SETTABLEKS                       R17 R16 K23 ["imageSelection"]
      191 NEWCLOSURE                       R17 P9
      192 CAPTURE                          UPVAL U6
      193 CAPTURE                          REF R12
      194 CAPTURE                          VAL R10
      195 CAPTURE                          VAL R13
      196 CAPTURE                          VAL R14
      197 CAPTURE                          UPVAL U39
      198 CAPTURE                          UPVAL U37
      199 CAPTURE                          UPVAL U38
      200 CAPTURE                          UPVAL U27
      201 CAPTURE                          VAL R7
      202 CAPTURE                          VAL R15
      203 SETTABLEKS                       R17 R16 K24 ["onContinue"]
      205 GETUPVAL                         R18 6
      206 GETTABLEKS                       R18 R18 K32 ["FFlagAssistantSegmentationPromptModeSelector"]
      208 JUMPIFNOT                        R18 ; [+13]
      209 NEWCLOSURE                       R17 P10
      210 CAPTURE                          VAL R10
      211 CAPTURE                          VAL R9
      212 CAPTURE                          UPVAL U40
      213 CAPTURE                          UPVAL U41
      214 CAPTURE                          UPVAL U38
      215 CAPTURE                          UPVAL U37
      216 CAPTURE                          VAL R7
      217 CAPTURE                          UPVAL U42
      218 CAPTURE                          UPVAL U15
      219 CAPTURE                          VAL R1
      220 CAPTURE                          VAL R0
      221 JUMP                             ; [+1]
      222 LOADNIL                          R17
      223 SETTABLEKS                       R17 R16 K25 ["onRevive"]
      225 GETUPVAL                         R17 6
      226 GETTABLEKS                       R17 R17 K32 ["FFlagAssistantSegmentationPromptModeSelector"]
      228 JUMPIFNOT                        R17 ; [+21]
      229 GETUPVAL                         R17 42
      230 GETTABLEKS                       R17 R17 K13 ["current"]
      232 JUMPIFNOT                        R17 ; [+17]
      233 GETUPVAL                         R17 42
      234 GETTABLEKS                       R17 R17 K13 ["current"]
      236 GETUPVAL                         R18 15
      237 DUPTABLE                         R19 K38 [{["messageId"], ["contentId"], ["skipIfNoMessage"] = True, ["transformFn"]}]
      238 GETTABLEKS                       R20 R17 K33 ["messageId"]
      240 SETTABLEKS                       R20 R19 K33 ["messageId"]
      242 GETTABLEKS                       R20 R17 K34 ["contentId"]
      244 SETTABLEKS                       R20 R19 K34 ["contentId"]
      246 DUPCLOSURE                       R20 K39 [PROTO_49]
      247 SETTABLEKS                       R20 R19 K37 ["transformFn"]
      249 CALL                             R18 1 0
      250 GETTABLEKS                       R17 R1 K40 ["onContentStart"]
      252 MOVE                             R18 R16
      253 CALL                             R17 1 1
      254 SETTABLEKS                       R17 R13 K13 ["current"]
      256 GETUPVAL                         R18 6
      257 GETTABLEKS                       R18 R18 K32 ["FFlagAssistantSegmentationPromptModeSelector"]
      259 JUMPIFNOT                        R18 ; [+9]
      260 JUMPIFNOT                        R17 ; [+8]
      261 GETUPVAL                         R18 42
      262 DUPTABLE                         R19 K41 [{"messageId", "contentId"}]
      263 SETTABLEKS                       R0 R19 K33 ["messageId"]
      265 SETTABLEKS                       R17 R19 K34 ["contentId"]
      267 SETTABLEKS                       R19 R18 K13 ["current"]
      269 JUMPIFNOT                        R17 ; [+4]
      270 GETTABLEKS                       R18 R1 K42 ["onContentFinished"]
      272 MOVE                             R19 R17
      273 CALL                             R18 1 0
      274 GETUPVAL                         R18 6
      275 GETTABLEKS                       R18 R18 K43 ["FFlagAssistantSupportSlashCommandCancellation"]
      277 JUMPIFNOT                        R18 ; [+16]
      278 GETUPVAL                         R19 27
      279 FASTCALL2K                       ASSERT R19 K44 ; [+4]
      281 LOADK                            R20 K44 ["setSlashCommandCancel is not available"]
      282 GETIMPORT                        R18 K4 [assert]
      284 CALL                             R18 2 0
      285 GETUPVAL                         R18 27
      286 NEWCLOSURE                       R19 P12
      287 CAPTURE                          REF R12
      288 CAPTURE                          VAL R10
      289 CAPTURE                          VAL R17
      290 CAPTURE                          UPVAL U15
      291 CAPTURE                          VAL R0
      292 CAPTURE                          UPVAL U39
      293 CALL                             R18 1 0
      294 GETUPVAL                         R18 2
      295 LOADB                            R19 1
      296 CALL                             R18 1 0
      297 CLOSEUPVALS                      R12
      298 RETURN                           R0 0
      299 CLOSEUPVALS                      R12
      300 LOADB                            R12 0
      301 DUPTABLE                         R13 K45 [{["type"] = "input_requested", ["title"], ["description"], ["confirmButtonText"], ["propertyRows"], ["onContinue"]}]
      302 GETUPVAL                         R15 40
      303 GETUPVAL                         R16 41
      304 CONCAT                           R14 R15 R16
      305 SETTABLEKS                       R14 R13 K18 ["title"]
      307 GETTABLEKS                       R14 R10 K19 ["description"]
      309 SETTABLEKS                       R14 R13 K19 ["description"]
      311 GETTABLEKS                       R14 R10 K20 ["confirmButtonText"]
      313 SETTABLEKS                       R14 R13 K20 ["confirmButtonText"]
      315 SETTABLEKS                       R11 R13 K6 ["propertyRows"]
      317 NEWCLOSURE                       R14 P13
      318 CAPTURE                          REF R12
      319 CAPTURE                          UPVAL U38
      320 CAPTURE                          UPVAL U37
      321 CAPTURE                          VAL R7
      322 SETTABLEKS                       R14 R13 K24 ["onContinue"]
      324 GETTABLEKS                       R14 R1 K40 ["onContentStart"]
      326 MOVE                             R15 R13
      327 CALL                             R14 1 1
      328 JUMPIFNOT                        R14 ; [+4]
      329 GETTABLEKS                       R15 R1 K42 ["onContentFinished"]
      331 MOVE                             R16 R14
      332 CALL                             R15 1 0
      333 GETUPVAL                         R15 2
      334 LOADB                            R16 1
      335 CALL                             R15 1 0
      336 CLOSEUPVALS                      R12
      337 RETURN                           R0 0
      338 CLOSEUPVALS                      R12
      339 MOVE                             R10 R7
      340 GETUPVAL                         R11 38
      341 CALL                             R10 1 0
      342 RETURN                           R0 0

PROTO_54:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["ROLE"]
        4 GETTABLEKS                       R2 R2 K1 ["Assistant"]
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 CAPTURE                          UPVAL U4
       10 CAPTURE                          UPVAL U5
       11 CAPTURE                          VAL R0
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          UPVAL U6
       14 CAPTURE                          UPVAL U7
       15 CAPTURE                          UPVAL U8
       16 CAPTURE                          UPVAL U9
       17 CAPTURE                          UPVAL U10
       18 CAPTURE                          UPVAL U11
       19 CAPTURE                          UPVAL U12
       20 CAPTURE                          UPVAL U13
       21 CAPTURE                          UPVAL U14
       22 CAPTURE                          UPVAL U15
       23 CAPTURE                          UPVAL U16
       24 CAPTURE                          UPVAL U17
       25 CAPTURE                          UPVAL U18
       26 CAPTURE                          UPVAL U19
       27 CAPTURE                          UPVAL U20
       28 CAPTURE                          UPVAL U21
       29 CAPTURE                          UPVAL U22
       30 CAPTURE                          UPVAL U23
       31 CAPTURE                          UPVAL U24
       32 CAPTURE                          UPVAL U25
       33 CAPTURE                          UPVAL U26
       34 CAPTURE                          UPVAL U27
       35 CAPTURE                          UPVAL U28
       36 CAPTURE                          UPVAL U29
       37 CAPTURE                          UPVAL U30
       38 CAPTURE                          UPVAL U31
       39 CAPTURE                          UPVAL U32
       40 CAPTURE                          UPVAL U33
       41 CAPTURE                          UPVAL U34
       42 CAPTURE                          UPVAL U35
       43 CAPTURE                          UPVAL U36
       44 CAPTURE                          UPVAL U37
       45 CAPTURE                          UPVAL U38
       46 CAPTURE                          UPVAL U39
       47 CAPTURE                          UPVAL U40
       48 CAPTURE                          UPVAL U41
       49 CAPTURE                          UPVAL U42
       50 CALL                             R1 2 0
       51 RETURN                           R0 0

PROTO_55:
        0 GETTABLEKS                       R1 R0 K0 ["prompt"]
        2 GETTABLEKS                       R2 R0 K1 ["setInputEnabled"]
        4 LENGTH                           R3 R1
        5 GETUPVAL                         R5 0
        6 LENGTH                           R4 R5
        7 JUMPIFLT                         R3 R4 ; [+10]
        9 LOADN                            R5 1
       10 GETUPVAL                         R7 0
       11 LENGTH                           R6 R7
       12 NAMECALL                         R3 R1 K2 ["sub"]
       14 CALL                             R3 3 1
       15 GETUPVAL                         R4 0
       16 JUMPIFEQ                         R3 R4 ; [+3]
       18 LOADB                            R3 0
       19 RETURN                           R3 1
       20 GETUPVAL                         R7 0
       21 LENGTH                           R6 R7
       22 ADDK                             R5 R6 K3 [1]
       23 NAMECALL                         R3 R1 K2 ["sub"]
       25 CALL                             R3 2 1
       26 GETIMPORT                        R4 K6 [string.gsub]
       28 MOVE                             R5 R3
       29 LOADK                            R6 K7 ["%s+$"]
       30 LOADK                            R7 K8 [""]
       31 CALL                             R4 3 1
       32 GETUPVAL                         R5 1
       33 GETTABLEKS                       R5 R5 K9 ["getModeForCommand"]
       35 MOVE                             R6 R4
       36 CALL                             R5 1 1
       37 JUMPIFNOT                        R5 ; [+8]
       38 GETUPVAL                         R6 2
       39 MOVE                             R7 R5
       40 CALL                             R6 1 0
       41 MOVE                             R6 R2
       42 LOADB                            R7 1
       43 CALL                             R6 1 0
       44 LOADB                            R6 1
       45 RETURN                           R6 1
       46 LOADNIL                          R6
       47 LOADNIL                          R7
       48 LOADNIL                          R8
       49 LOADNIL                          R9
       50 LOADNIL                          R10
       51 LENGTH                           R11 R3
       52 JUMPIFNOTEQKN                    R11 K10 [0] ; [+4]
       54 LOADB                            R11 0
       55 CLOSEUPVALS                      R6
       56 RETURN                           R11 1
       57 GETUPVAL                         R13 3
       58 NAMECALL                         R11 R3 K11 ["find"]
       60 CALL                             R11 2 1
       61 LOADNIL                          R12
       62 JUMPIFNOT                        R11 ; [+12]
       63 LOADN                            R15 1
       64 SUBK                             R16 R11 K3 [1]
       65 NAMECALL                         R13 R3 K2 ["sub"]
       67 CALL                             R13 3 1
       68 MOVE                             R9 R13
       69 ADDK                             R15 R11 K3 [1]
       70 NAMECALL                         R13 R3 K2 ["sub"]
       72 CALL                             R13 2 1
       73 MOVE                             R12 R13
       74 JUMP                             ; [+2]
       75 MOVE                             R9 R3
       76 LOADK                            R12 K8 [""]
       77 GETUPVAL                         R13 1
       78 GETTABLEKS                       R13 R13 K12 ["getSlashCommandDefinition"]
       80 MOVE                             R14 R9
       81 CALL                             R13 1 1
       82 MOVE                             R10 R13
       83 JUMPIF                           R10 ; [+3]
       84 LOADB                            R13 0
       85 CLOSEUPVALS                      R6
       86 RETURN                           R13 1
       87 GETTABLEKS                       R14 R10 K13 ["runToolChain"]
       89 JUMPIF                           R14 ; [+4]
       90 GETUPVAL                         R14 4
       91 GETTABLEKS                       R14 R14 K14 ["FFlagAssistantAskInputTool"]
       93 JUMPIFNOT                        R14 ; [+2]
       94 LOADNIL                          R13
       95 JUMP                             ; [+5]
       96 GETUPVAL                         R13 1
       97 GETTABLEKS                       R13 R13 K15 ["getSlashCommandTransformation"]
       99 MOVE                             R14 R9
      100 CALL                             R13 1 1
      101 GETTABLEKS                       R14 R10 K13 ["runToolChain"]
      103 JUMPIF                           R14 ; [+4]
      104 JUMPIF                           R13 ; [+3]
      105 LOADB                            R14 0
      106 CLOSEUPVALS                      R6
      107 RETURN                           R14 1
      108 GETUPVAL                         R14 5
      109 GETTABLEKS                       R15 R0 K16 ["images"]
      111 CALL                             R14 1 1
      112 GETTABLEKS                       R15 R10 K13 ["runToolChain"]
      114 JUMPIFNOT                        R15 ; [+7]
      115 GETTABLEKS                       R15 R10 K13 ["runToolChain"]
      117 MOVE                             R16 R12
      118 MOVE                             R17 R14
      119 CALL                             R15 2 1
      120 MOVE                             R8 R15
      121 JUMP                             ; [+13]
      122 FASTCALL2K                       ASSERT R13 K17 ; [+5]
      124 MOVE                             R16 R13
      125 LOADK                            R17 K17 ["mapToToolCall should be defined if runToolChain is not"]
      126 GETIMPORT                        R15 K19 [assert]
      128 CALL                             R15 2 0
      129 MOVE                             R15 R13
      130 MOVE                             R16 R12
      131 MOVE                             R17 R14
      132 CALL                             R15 2 2
      133 MOVE                             R6 R15
      134 MOVE                             R7 R16
      135 GETUPVAL                         R15 6
      136 CALL                             R15 0 1
      137 JUMPIFNOT                        R15 ; [+6]
      138 GETTABLEKS                       R15 R0 K20 ["onSlashCommandRecognized"]
      140 JUMPIFNOT                        R15 ; [+3]
      141 GETTABLEKS                       R15 R0 K20 ["onSlashCommandRecognized"]
      143 CALL                             R15 0 0
      144 LOADB                            R15 0
      145 LOADB                            R16 0
      146 NEWCLOSURE                       R17 P0
      147 CAPTURE                          REF R16
      148 CAPTURE                          UPVAL U4
      149 CAPTURE                          VAL R2
      150 NEWCLOSURE                       R18 P1
      151 CAPTURE                          REF R16
      152 CAPTURE                          UPVAL U7
      153 GETUPVAL                         R19 8
      154 NEWCLOSURE                       R20 P2
      155 CAPTURE                          UPVAL U9
      156 CAPTURE                          UPVAL U10
      157 CAPTURE                          UPVAL U11
      158 CAPTURE                          UPVAL U12
      159 CAPTURE                          VAL R2
      160 CAPTURE                          UPVAL U13
      161 CAPTURE                          UPVAL U4
      162 CAPTURE                          UPVAL U14
      163 CAPTURE                          UPVAL U15
      164 CAPTURE                          REF R15
      165 CAPTURE                          UPVAL U16
      166 CAPTURE                          UPVAL U17
      167 CAPTURE                          UPVAL U18
      168 CAPTURE                          UPVAL U19
      169 CAPTURE                          UPVAL U20
      170 CAPTURE                          UPVAL U21
      171 CAPTURE                          UPVAL U22
      172 CAPTURE                          UPVAL U23
      173 CAPTURE                          UPVAL U24
      174 CAPTURE                          VAL R18
      175 CAPTURE                          VAL R1
      176 CAPTURE                          VAL R0
      177 CAPTURE                          REF R16
      178 CAPTURE                          UPVAL U25
      179 CAPTURE                          UPVAL U26
      180 CAPTURE                          UPVAL U27
      181 CAPTURE                          UPVAL U1
      182 CAPTURE                          UPVAL U28
      183 CAPTURE                          UPVAL U29
      184 CAPTURE                          UPVAL U30
      185 CAPTURE                          UPVAL U31
      186 CAPTURE                          UPVAL U32
      187 CAPTURE                          UPVAL U33
      188 CAPTURE                          REF R10
      189 CAPTURE                          UPVAL U6
      190 CAPTURE                          REF R8
      191 CAPTURE                          REF R7
      192 CAPTURE                          UPVAL U34
      193 CAPTURE                          REF R6
      194 CAPTURE                          UPVAL U35
      195 CAPTURE                          UPVAL U0
      196 CAPTURE                          REF R9
      197 CAPTURE                          UPVAL U36
      198 CALL                             R19 1 0
      199 LOADB                            R19 1
      200 CLOSEUPVALS                      R6
      201 RETURN                           R19 1

PROTO_56:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETUPVAL                         R1 1
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 2
        5 CALL                             R2 0 1
        6 GETUPVAL                         R3 3
        7 CALL                             R3 0 1
        8 GETUPVAL                         R4 4
        9 CALL                             R4 0 1
       10 GETUPVAL                         R5 5
       11 GETTABLEKS                       R5 R5 K0 ["useRef"]
       13 LOADNIL                          R6
       14 CALL                             R5 1 1
       15 GETUPVAL                         R6 5
       16 GETTABLEKS                       R6 R6 K1 ["useContext"]
       18 GETUPVAL                         R7 6
       19 GETTABLEKS                       R7 R7 K2 ["Context"]
       21 CALL                             R6 1 1
       22 GETTABLEKS                       R7 R6 K3 ["sessionId"]
       24 GETUPVAL                         R8 5
       25 GETTABLEKS                       R8 R8 K1 ["useContext"]
       27 GETUPVAL                         R9 7
       28 GETTABLEKS                       R9 R9 K2 ["Context"]
       30 CALL                             R8 1 1
       31 GETUPVAL                         R9 8
       32 CALL                             R9 0 1
       33 GETUPVAL                         R10 9
       34 CALL                             R10 0 1
       35 GETUPVAL                         R11 10
       36 CALL                             R11 0 1
       37 GETUPVAL                         R12 5
       38 GETTABLEKS                       R12 R12 K1 ["useContext"]
       40 GETUPVAL                         R13 11
       41 GETTABLEKS                       R13 R13 K2 ["Context"]
       43 CALL                             R12 1 1
       44 GETUPVAL                         R13 5
       45 GETTABLEKS                       R13 R13 K1 ["useContext"]
       47 GETUPVAL                         R14 12
       48 GETTABLEKS                       R14 R14 K2 ["Context"]
       50 CALL                             R13 1 1
       51 GETUPVAL                         R14 5
       52 GETTABLEKS                       R14 R14 K1 ["useContext"]
       54 GETUPVAL                         R15 13
       55 GETTABLEKS                       R15 R15 K2 ["Context"]
       57 CALL                             R14 1 1
       58 LOADNIL                          R15
       59 LOADNIL                          R16
       60 GETUPVAL                         R17 14
       61 GETTABLEKS                       R17 R17 K4 ["FFlagAssistantSupportSlashCommandCancellation"]
       63 JUMPIFNOT                        R17 ; [+10]
       64 GETUPVAL                         R17 5
       65 GETTABLEKS                       R17 R17 K1 ["useContext"]
       67 GETUPVAL                         R18 15
       68 GETTABLEKS                       R18 R18 K2 ["Context"]
       70 CALL                             R17 1 1
       71 MOVE                             R15 R17
       72 GETTABLEKS                       R16 R15 K5 ["setSlashCommandCancel"]
       74 GETUPVAL                         R17 16
       75 CALL                             R17 0 2
       76 GETUPVAL                         R19 17
       77 CALL                             R19 0 1
       78 GETUPVAL                         R20 18
       79 CALL                             R20 0 1
       80 NEWCLOSURE                       R21 P0
       81 CAPTURE                          UPVAL U19
       82 CAPTURE                          UPVAL U20
       83 CAPTURE                          VAL R18
       84 CAPTURE                          UPVAL U21
       85 CAPTURE                          UPVAL U14
       86 CAPTURE                          UPVAL U22
       87 CAPTURE                          UPVAL U23
       88 CAPTURE                          VAL R19
       89 CAPTURE                          VAL R4
       90 CAPTURE                          VAL R3
       91 CAPTURE                          UPVAL U24
       92 CAPTURE                          VAL R0
       93 CAPTURE                          VAL R12
       94 CAPTURE                          VAL R13
       95 CAPTURE                          UPVAL U25
       96 CAPTURE                          UPVAL U26
       97 CAPTURE                          UPVAL U27
       98 CAPTURE                          VAL R9
       99 CAPTURE                          VAL R10
      100 CAPTURE                          VAL R11
      101 CAPTURE                          VAL R1
      102 CAPTURE                          VAL R2
      103 CAPTURE                          VAL R17
      104 CAPTURE                          VAL R7
      105 CAPTURE                          VAL R14
      106 CAPTURE                          UPVAL U28
      107 CAPTURE                          UPVAL U29
      108 CAPTURE                          UPVAL U30
      109 CAPTURE                          REF R16
      110 CAPTURE                          UPVAL U31
      111 CAPTURE                          VAL R8
      112 CAPTURE                          UPVAL U32
      113 CAPTURE                          VAL R20
      114 CAPTURE                          UPVAL U33
      115 CAPTURE                          UPVAL U34
      116 CAPTURE                          UPVAL U35
      117 CAPTURE                          VAL R5
      118 GETUPVAL                         R22 5
      119 GETTABLEKS                       R22 R22 K6 ["useCallback"]
      121 MOVE                             R23 R21
      122 NEWTABLE                         R24 0 18
      124 MOVE                             R25 R0
      125 MOVE                             R26 R3
      126 MOVE                             R27 R4
      127 MOVE                             R28 R7
      128 GETUPVAL                         R30 14
      129 GETTABLEKS                       R30 R30 K4 ["FFlagAssistantSupportSlashCommandCancellation"]
      131 JUMPIFNOT                        R30 ; [+2]
      132 MOVE                             R29 R8
      133 JUMP                             ; [+1]
      134 LOADNIL                          R29
      135 GETUPVAL                         R31 14
      136 GETTABLEKS                       R31 R31 K4 ["FFlagAssistantSupportSlashCommandCancellation"]
      138 JUMPIFNOT                        R31 ; [+2]
      139 MOVE                             R30 R16
      140 JUMP                             ; [+1]
      141 LOADNIL                          R30
      142 MOVE                             R31 R18
      143 MOVE                             R32 R12
      144 MOVE                             R33 R13
      145 MOVE                             R34 R1
      146 MOVE                             R35 R17
      147 MOVE                             R36 R10
      148 MOVE                             R37 R2
      149 MOVE                             R38 R11
      150 MOVE                             R39 R14
      151 MOVE                             R40 R19
      152 SETLIST                          R24 R25 16 [1]
      154 MOVE                             R25 R9
      155 MOVE                             R26 R20
      156 SETLIST                          R24 R25 2 [17]
      158 CALL                             R22 2 -1
      159 CLOSEUPVALS                      R16
      160 RETURN                           R22 -1

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
       15 GETTABLEKS                       R3 R0 K10 ["Components"]
       17 GETTABLEKS                       R3 R3 K11 ["Contexts"]
       19 GETTABLEKS                       R3 R3 K12 ["ACPClientServiceContext"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K9 [require]
       24 GETTABLEKS                       R4 R0 K10 ["Components"]
       26 GETTABLEKS                       R4 R4 K11 ["Contexts"]
       28 GETTABLEKS                       R4 R4 K13 ["AcpSessionMonitorContext"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R4 K9 [require]
       33 GETTABLEKS                       R5 R0 K14 ["Parent"]
       35 GETTABLEKS                       R5 R5 K15 ["AssistantHarness"]
       37 CALL                             R4 1 1
       38 GETIMPORT                        R5 K9 [require]
       40 GETTABLEKS                       R6 R0 K14 ["Parent"]
       42 GETTABLEKS                       R6 R6 K16 ["Dash"]
       44 CALL                             R5 1 1
       45 GETIMPORT                        R6 K9 [require]
       47 GETTABLEKS                       R7 R0 K17 ["FlagUtils"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K9 [require]
       52 GETTABLEKS                       R8 R0 K18 ["Flags"]
       54 CALL                             R7 1 1
       55 GETTABLEKS                       R8 R6 K19 ["getIsAssistantHarnessSplit"]
       57 GETTABLEKS                       R9 R6 K20 ["getIsSlashCommandViaAcp"]
       59 GETIMPORT                        R10 K9 [require]
       61 GETTABLEKS                       R11 R0 K21 ["Util"]
       63 GETTABLEKS                       R11 R11 K22 ["ImageContentStore"]
       65 CALL                             R10 1 1
       66 GETIMPORT                        R11 K9 [require]
       68 GETTABLEKS                       R12 R0 K10 ["Components"]
       70 GETTABLEKS                       R12 R12 K23 ["ContentWidgets"]
       72 GETTABLEKS                       R12 R12 K24 ["InputRequestedContentWidget"]
       74 CALL                             R11 1 1
       75 GETIMPORT                        R12 K9 [require]
       77 GETTABLEKS                       R13 R0 K10 ["Components"]
       79 GETTABLEKS                       R13 R13 K11 ["Contexts"]
       81 GETTABLEKS                       R13 R13 K25 ["DefaultLLMProvider"]
       83 GETTABLEKS                       R13 R13 K26 ["LLMPackageContextProvider"]
       85 CALL                             R12 1 1
       86 GETIMPORT                        R13 K9 [require]
       88 GETTABLEKS                       R14 R0 K14 ["Parent"]
       90 GETTABLEKS                       R14 R14 K27 ["ModelContextProtocol"]
       92 CALL                             R13 1 1
       93 GETIMPORT                        R14 K9 [require]
       95 GETTABLEKS                       R15 R0 K10 ["Components"]
       97 GETTABLEKS                       R15 R15 K11 ["Contexts"]
       99 GETTABLEKS                       R15 R15 K28 ["OngoingAcpPromptContext"]
      101 CALL                             R14 1 1
      102 GETIMPORT                        R15 K9 [require]
      104 GETTABLEKS                       R16 R0 K10 ["Components"]
      106 GETTABLEKS                       R16 R16 K11 ["Contexts"]
      108 GETTABLEKS                       R16 R16 K29 ["PacketReceivedContext"]
      110 CALL                             R15 1 1
      111 GETIMPORT                        R16 K9 [require]
      113 GETTABLEKS                       R17 R0 K14 ["Parent"]
      115 GETTABLEKS                       R17 R17 K30 ["Promise"]
      117 CALL                             R16 1 1
      118 GETIMPORT                        R17 K9 [require]
      120 GETTABLEKS                       R18 R0 K14 ["Parent"]
      122 GETTABLEKS                       R18 R18 K31 ["React"]
      124 CALL                             R17 1 1
      125 GETIMPORT                        R18 K9 [require]
      127 GETTABLEKS                       R19 R0 K10 ["Components"]
      129 GETTABLEKS                       R19 R19 K11 ["Contexts"]
      131 GETTABLEKS                       R19 R19 K32 ["SessionIdContext"]
      133 CALL                             R18 1 1
      134 GETIMPORT                        R19 K9 [require]
      136 GETTABLEKS                       R20 R0 K14 ["Parent"]
      138 GETTABLEKS                       R20 R20 K33 ["Signal"]
      140 CALL                             R19 1 1
      141 GETIMPORT                        R20 K9 [require]
      143 GETTABLEKS                       R21 R0 K34 ["ACPClientService"]
      145 GETTABLEKS                       R21 R21 K35 ["runSlashCommandViaService"]
      147 CALL                             R20 1 1
      148 GETTABLEKS                       R21 R4 K36 ["Engine"]
      150 GETTABLEKS                       R21 R21 K37 ["Time"]
      152 GETTABLEKS                       R22 R4 K38 ["ToolNaming"]
      154 GETIMPORT                        R23 K9 [require]
      156 GETTABLEKS                       R24 R0 K39 ["Types"]
      158 CALL                             R23 1 1
      159 GETIMPORT                        R24 K9 [require]
      161 GETTABLEKS                       R25 R0 K10 ["Components"]
      163 GETTABLEKS                       R25 R25 K40 ["UIToolRegistry"]
      165 CALL                             R24 1 1
      166 GETIMPORT                        R25 K9 [require]
      168 GETTABLEKS                       R26 R0 K41 ["Hooks"]
      170 GETTABLEKS                       R26 R26 K42 ["useAddContent"]
      172 CALL                             R25 1 1
      173 GETIMPORT                        R26 K9 [require]
      175 GETTABLEKS                       R27 R0 K41 ["Hooks"]
      177 GETTABLEKS                       R27 R27 K43 ["useAssistantMode"]
      179 CALL                             R26 1 1
      180 GETIMPORT                        R27 K9 [require]
      182 GETTABLEKS                       R28 R0 K41 ["Hooks"]
      184 GETTABLEKS                       R28 R28 K44 ["useCurrentThread"]
      186 CALL                             R27 1 1
      187 GETIMPORT                        R28 K9 [require]
      189 GETTABLEKS                       R29 R0 K41 ["Hooks"]
      191 GETTABLEKS                       R29 R29 K45 ["useDispatchToolCall"]
      193 CALL                             R28 1 1
      194 GETIMPORT                        R29 K9 [require]
      196 GETTABLEKS                       R30 R0 K41 ["Hooks"]
      198 GETTABLEKS                       R30 R30 K46 ["useEditContent"]
      200 CALL                             R29 1 1
      201 GETIMPORT                        R30 K9 [require]
      203 GETTABLEKS                       R31 R0 K41 ["Hooks"]
      205 GETTABLEKS                       R31 R31 K47 ["useEditThread"]
      207 CALL                             R30 1 1
      208 GETIMPORT                        R31 K9 [require]
      210 GETTABLEKS                       R32 R0 K41 ["Hooks"]
      212 GETTABLEKS                       R32 R32 K48 ["useGetContentObserver"]
      214 CALL                             R31 1 1
      215 GETIMPORT                        R32 K9 [require]
      217 GETTABLEKS                       R33 R0 K41 ["Hooks"]
      219 GETTABLEKS                       R33 R33 K49 ["useGetOrAddMessage"]
      221 CALL                             R32 1 1
      222 GETIMPORT                        R33 K9 [require]
      224 GETTABLEKS                       R34 R0 K41 ["Hooks"]
      226 GETTABLEKS                       R34 R34 K50 ["useShowError"]
      228 CALL                             R33 1 1
      229 GETIMPORT                        R34 K9 [require]
      231 GETTABLEKS                       R35 R0 K41 ["Hooks"]
      233 GETTABLEKS                       R35 R35 K51 ["useThreadId"]
      235 CALL                             R34 1 1
      236 GETIMPORT                        R35 K9 [require]
      238 GETTABLEKS                       R36 R0 K41 ["Hooks"]
      240 GETTABLEKS                       R36 R36 K52 ["useWithClient"]
      242 CALL                             R35 1 1
      243 GETTABLEKS                       R36 R13 K53 ["ToolRegistry"]
      245 GETTABLEKS                       R37 R24 K54 ["CommandPrefix"]
      247 GETTABLEKS                       R38 R24 K55 ["CommandDelimiter"]
      249 DUPCLOSURE                       R39 K56 [PROTO_0]
      250 CAPTURE                          VAL R10
      251 DUPCLOSURE                       R40 K57 [PROTO_1]
      252 CAPTURE                          VAL R23
      253 DUPCLOSURE                       R41 K58 [PROTO_2]
      254 CAPTURE                          VAL R23
      255 CAPTURE                          VAL R7
      256 CAPTURE                          VAL R36
      257 CAPTURE                          VAL R22
      258 DUPCLOSURE                       R42 K59 [PROTO_3]
      259 DUPCLOSURE                       R43 K60 [PROTO_6]
      260 CAPTURE                          VAL R42
      261 DUPCLOSURE                       R44 K61 [PROTO_56]
      262 CAPTURE                          VAL R31
      263 CAPTURE                          VAL R25
      264 CAPTURE                          VAL R29
      265 CAPTURE                          VAL R32
      266 CAPTURE                          VAL R35
      267 CAPTURE                          VAL R17
      268 CAPTURE                          VAL R18
      269 CAPTURE                          VAL R15
      270 CAPTURE                          VAL R34
      271 CAPTURE                          VAL R27
      272 CAPTURE                          VAL R30
      273 CAPTURE                          VAL R2
      274 CAPTURE                          VAL R3
      275 CAPTURE                          VAL R14
      276 CAPTURE                          VAL R7
      277 CAPTURE                          VAL R12
      278 CAPTURE                          VAL R26
      279 CAPTURE                          VAL R33
      280 CAPTURE                          VAL R28
      281 CAPTURE                          VAL R37
      282 CAPTURE                          VAL R24
      283 CAPTURE                          VAL R38
      284 CAPTURE                          VAL R39
      285 CAPTURE                          VAL R8
      286 CAPTURE                          VAL R23
      287 CAPTURE                          VAL R36
      288 CAPTURE                          VAL R22
      289 CAPTURE                          VAL R20
      290 CAPTURE                          VAL R1
      291 CAPTURE                          VAL R21
      292 CAPTURE                          VAL R42
      293 CAPTURE                          VAL R19
      294 CAPTURE                          VAL R16
      295 CAPTURE                          VAL R9
      296 CAPTURE                          VAL R5
      297 CAPTURE                          VAL R11
      298 RETURN                           R44 1
