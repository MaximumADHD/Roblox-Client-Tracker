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
        3 JUMPIFNOT                        R2 ; [+62]
        4 GETUPVAL                         R3 1
        5 NOT                              R2 R3
        6 LOADB                            R3 1
        7 SETUPVAL                         R3 1
        8 GETUPVAL                         R3 2
        9 MOVE                             R4 R0
       10 DUPTABLE                         R5 K16 [{["client"], ["contentObserver"], ["messageId"], ["threadId"], ["toolIdPrefix"] = "slash_command_", ["isSlashCommand"] = True, ["userPromptText"], ["images"], ["eagerPlaceholder"] = True, ["cancellable"] = True, ["persistErrorResult"] = True, ["showError"], ["onComplete"]}]
       11 GETUPVAL                         R6 3
       12 SETTABLEKS                       R6 R5 K1 ["client"]
       14 GETUPVAL                         R6 4
       15 SETTABLEKS                       R6 R5 K2 ["contentObserver"]
       17 GETUPVAL                         R6 5
       18 SETTABLEKS                       R6 R5 K3 ["messageId"]
       20 GETUPVAL                         R6 6
       21 SETTABLEKS                       R6 R5 K4 ["threadId"]
       23 JUMPIFNOT                        R2 ; [+2]
       24 GETUPVAL                         R6 7
       25 JUMP                             ; [+12]
       26 GETUPVAL                         R7 7
       27 GETUPVAL                         R8 8
       28 GETTABLEKS                       R8 R8 K17 ["getSystemReminder"]
       30 LOADK                            R10 K18 ["This is a following tool call from %*"]
       31 MOVE                             R12 R7
       32 NAMECALL                         R10 R10 K19 ["format"]
       34 CALL                             R10 2 1
       35 MOVE                             R9 R10
       36 CALL                             R8 1 1
       37 MOVE                             R6 R8
       38 SETTABLEKS                       R6 R5 K9 ["userPromptText"]
       40 JUMPIFNOT                        R2 ; [+4]
       41 GETUPVAL                         R6 9
       42 GETTABLEKS                       R6 R6 K10 ["images"]
       44 JUMP                             ; [+1]
       45 LOADNIL                          R6
       46 SETTABLEKS                       R6 R5 K10 ["images"]
       48 GETUPVAL                         R7 0
       49 GETTABLEKS                       R7 R7 K20 ["FFlagAssistantSlashToolNameAndError"]
       51 JUMPIFNOT                        R7 ; [+2]
       52 GETUPVAL                         R6 10
       53 JUMP                             ; [+1]
       54 LOADNIL                          R6
       55 SETTABLEKS                       R6 R5 K14 ["showError"]
       57 NEWCLOSURE                       R6 P0
       58 CAPTURE                          VAL R1
       59 CAPTURE                          UPVAL U11
       60 CAPTURE                          UPVAL U0
       61 CAPTURE                          UPVAL U12
       62 SETTABLEKS                       R6 R5 K15 ["onComplete"]
       64 CALL                             R3 2 0
       65 RETURN                           R0 0
       66 GETUPVAL                         R2 13
       67 CALL                             R2 0 1
       68 JUMPIFNOT                        R2 ; [+5]
       69 GETUPVAL                         R2 14
       70 MOVE                             R3 R0
       71 MOVE                             R4 R1
       72 CALL                             R2 2 0
       73 RETURN                           R0 0
       74 GETUPVAL                         R2 15
       75 MOVE                             R3 R0
       76 MOVE                             R4 R1
       77 CALL                             R2 2 0
       78 RETURN                           R0 0

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
        7 DUPTABLE                         R3 K7 [{["messageId"], ["contentId"], ["threadId"], ["skipIfNoMessage"] = True, ["transformFn"]}]
        8 GETUPVAL                         R4 2
        9 SETTABLEKS                       R4 R3 K1 ["messageId"]
       11 SETTABLEKS                       R1 R3 K2 ["contentId"]
       13 GETUPVAL                         R4 3
       14 SETTABLEKS                       R4 R3 K3 ["threadId"]
       16 NEWCLOSURE                       R4 P0
       17 CAPTURE                          VAL R0
       18 SETTABLEKS                       R4 R3 K6 ["transformFn"]
       20 CALL                             R2 1 0
       21 RETURN                           R0 0

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
       78 JUMPIFNOT                        R5 ; [+20]
       79 GETUPVAL                         R5 7
       80 GETTABLEKS                       R5 R5 K17 ["current"]
       82 GETUPVAL                         R6 8
       83 DUPTABLE                         R7 K24 [{["messageId"], ["contentId"], ["threadId"], ["skipIfNoMessage"] = True, ["transformFn"]}]
       84 GETTABLEKS                       R8 R5 K18 ["messageId"]
       86 SETTABLEKS                       R8 R7 K18 ["messageId"]
       88 GETTABLEKS                       R8 R5 K19 ["contentId"]
       90 SETTABLEKS                       R8 R7 K19 ["contentId"]
       92 GETUPVAL                         R8 9
       93 SETTABLEKS                       R8 R7 K20 ["threadId"]
       95 DUPCLOSURE                       R8 K25 [PROTO_47]
       96 SETTABLEKS                       R8 R7 K23 ["transformFn"]
       98 CALL                             R6 1 0
       99 GETUPVAL                         R5 10
      100 GETTABLEKS                       R5 R5 K26 ["onContentStart"]
      102 MOVE                             R6 R4
      103 CALL                             R5 1 1
      104 JUMPIFNOT                        R5 ; [+14]
      105 GETUPVAL                         R6 7
      106 DUPTABLE                         R7 K27 [{"messageId", "contentId"}]
      107 GETUPVAL                         R8 11
      108 SETTABLEKS                       R8 R7 K18 ["messageId"]
      110 SETTABLEKS                       R5 R7 K19 ["contentId"]
      112 SETTABLEKS                       R7 R6 K17 ["current"]
      114 GETUPVAL                         R6 10
      115 GETTABLEKS                       R6 R6 K28 ["onContentFinished"]
      117 MOVE                             R7 R5
      118 CALL                             R6 1 0
      119 CLOSEUPVALS                      R3
      120 RETURN                           R0 0

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
        1 JUMPIF                           R0 ; [+28]
        2 LOADB                            R0 1
        3 SETUPVAL                         R0 0
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K0 ["onCancel"]
        7 JUMPIFNOT                        R0 ; [+4]
        8 GETUPVAL                         R0 1
        9 GETTABLEKS                       R0 R0 K0 ["onCancel"]
       11 CALL                             R0 0 0
       12 GETUPVAL                         R0 2
       13 JUMPIFNOT                        R0 ; [+16]
       14 GETUPVAL                         R0 3
       15 DUPTABLE                         R1 K5 [{"messageId", "contentId", "threadId", "transformFn"}]
       16 GETUPVAL                         R2 4
       17 SETTABLEKS                       R2 R1 K1 ["messageId"]
       19 GETUPVAL                         R2 2
       20 SETTABLEKS                       R2 R1 K2 ["contentId"]
       22 GETUPVAL                         R2 5
       23 SETTABLEKS                       R2 R1 K3 ["threadId"]
       25 DUPCLOSURE                       R2 K6 [PROTO_50]
       26 CAPTURE                          UPVAL U6
       27 SETTABLEKS                       R2 R1 K4 ["transformFn"]
       29 CALL                             R0 1 0
       30 RETURN                           R0 0

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
        1 GETUPVAL                         R2 1
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R2 R1 K0 ["onNewMessage"]
        5 MOVE                             R3 R0
        6 CALL                             R2 1 0
        7 NEWCLOSURE                       R2 P0
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
       18 CAPTURE                          UPVAL U1
       19 CAPTURE                          UPVAL U12
       20 CAPTURE                          UPVAL U13
       21 CAPTURE                          UPVAL U14
       22 CAPTURE                          UPVAL U15
       23 CAPTURE                          UPVAL U16
       24 CAPTURE                          UPVAL U17
       25 CAPTURE                          VAL R0
       26 CAPTURE                          UPVAL U18
       27 CAPTURE                          UPVAL U19
       28 CAPTURE                          UPVAL U20
       29 CAPTURE                          UPVAL U21
       30 CAPTURE                          UPVAL U22
       31 NEWCLOSURE                       R3 P1
       32 CAPTURE                          UPVAL U23
       33 CAPTURE                          UPVAL U24
       34 CAPTURE                          VAL R1
       35 CAPTURE                          VAL R0
       36 CAPTURE                          UPVAL U17
       37 CAPTURE                          UPVAL U25
       38 CAPTURE                          UPVAL U3
       39 CAPTURE                          UPVAL U7
       40 CAPTURE                          UPVAL U26
       41 CAPTURE                          UPVAL U27
       42 CAPTURE                          UPVAL U28
       43 CAPTURE                          UPVAL U29
       44 CAPTURE                          UPVAL U30
       45 CAPTURE                          UPVAL U5
       46 CAPTURE                          UPVAL U6
       47 NEWCLOSURE                       R4 P2
       48 CAPTURE                          UPVAL U7
       49 CAPTURE                          UPVAL U10
       50 CAPTURE                          UPVAL U31
       51 CAPTURE                          UPVAL U5
       52 CAPTURE                          VAL R1
       53 CAPTURE                          VAL R0
       54 CAPTURE                          UPVAL U1
       55 CAPTURE                          UPVAL U20
       56 CAPTURE                          UPVAL U6
       57 CAPTURE                          UPVAL U21
       58 CAPTURE                          UPVAL U19
       59 CAPTURE                          UPVAL U22
       60 CAPTURE                          UPVAL U3
       61 CAPTURE                          UPVAL U32
       62 CAPTURE                          VAL R2
       63 CAPTURE                          VAL R3
       64 NEWCLOSURE                       R5 P3
       65 CAPTURE                          UPVAL U27
       66 CAPTURE                          UPVAL U32
       67 CAPTURE                          UPVAL U3
       68 CAPTURE                          VAL R4
       69 CAPTURE                          UPVAL U22
       70 CAPTURE                          UPVAL U7
       71 CAPTURE                          UPVAL U33
       72 CAPTURE                          UPVAL U34
       73 CAPTURE                          UPVAL U21
       74 CAPTURE                          VAL R0
       75 GETUPVAL                         R6 35
       76 JUMPIFNOT                        R6 ; [+4]
       77 MOVE                             R6 R5
       78 GETUPVAL                         R7 35
       79 CALL                             R6 1 0
       80 RETURN                           R0 0
       81 NEWCLOSURE                       R6 P4
       82 CAPTURE                          VAL R4
       83 CAPTURE                          UPVAL U22
       84 CAPTURE                          UPVAL U7
       85 CAPTURE                          UPVAL U3
       86 NEWCLOSURE                       R7 P5
       87 CAPTURE                          UPVAL U36
       88 CAPTURE                          UPVAL U3
       89 CAPTURE                          VAL R4
       90 CAPTURE                          UPVAL U22
       91 CAPTURE                          UPVAL U7
       92 CAPTURE                          UPVAL U33
       93 CAPTURE                          UPVAL U34
       94 CAPTURE                          UPVAL U21
       95 CAPTURE                          VAL R0
       96 DUPCLOSURE                       R8 K1 [PROTO_37]
       97 CAPTURE                          UPVAL U37
       98 GETUPVAL                         R10 33
       99 FASTCALL2K                       ASSERT R10 K2 ; [+4]
      101 LOADK                            R11 K2 ["definition should always be available for slash commands"]
      102 GETIMPORT                        R9 K4 [assert]
      104 CALL                             R9 2 0
      105 GETUPVAL                         R9 33
      106 GETTABLEKS                       R9 R9 K5 ["getInputRequestArguments"]
      108 JUMPIFNOT                        R9 ; [+238]
      109 MOVE                             R10 R9
      110 CALL                             R10 0 1
      111 LOADNIL                          R11
      112 GETTABLEKS                       R12 R10 K6 ["propertyRows"]
      114 JUMPIFNOT                        R12 ; [+193]
      115 GETIMPORT                        R12 K9 [table.clone]
      117 GETTABLEKS                       R13 R10 K6 ["propertyRows"]
      119 CALL                             R12 1 1
      120 MOVE                             R11 R12
      121 MOVE                             R12 R11
      122 LOADNIL                          R13
      123 LOADNIL                          R14
      124 FORGPREP                         R12
      125 GETUPVAL                         R18 38
      126 GETTABLEKS                       R18 R18 K10 ["arguments"]
      128 GETTABLEKS                       R19 R16 K11 ["prop"]
      130 GETTABLE                         R17 R18 R19
      131 JUMPIFEQKNIL                     R17 ; [+8]
      133 GETIMPORT                        R18 K9 [table.clone]
      135 MOVE                             R19 R16
      136 CALL                             R18 1 1
      137 SETTABLEKS                       R17 R18 K12 ["initialValue"]
      139 SETTABLE                         R18 R11 R15
      140 FORGLOOP                         R12 2 ; [-16]
      142 LOADB                            R12 0
      143 DUPTABLE                         R13 K15 [{["current"] = }]
      144 NEWCLOSURE                       R14 P7
      145 CAPTURE                          VAL R13
      146 CAPTURE                          UPVAL U15
      147 CAPTURE                          VAL R0
      148 CAPTURE                          UPVAL U1
      149 NEWCLOSURE                       R15 P8
      150 CAPTURE                          VAL R14
      151 CAPTURE                          UPVAL U39
      152 DUPTABLE                         R16 K26 [{["type"] = "input_requested", ["title"], ["description"], ["confirmButtonText"], ["propertyRows"], ["canConfirm"], ["getDisabledReason"], ["imageSelection"], ["onContinue"], ["onRevive"]}]
      153 GETUPVAL                         R18 40
      154 GETUPVAL                         R19 41
      155 CONCAT                           R17 R18 R19
      156 SETTABLEKS                       R17 R16 K18 ["title"]
      158 GETTABLEKS                       R17 R10 K19 ["description"]
      160 SETTABLEKS                       R17 R16 K19 ["description"]
      162 GETTABLEKS                       R17 R10 K20 ["confirmButtonText"]
      164 SETTABLEKS                       R17 R16 K20 ["confirmButtonText"]
      166 SETTABLEKS                       R11 R16 K6 ["propertyRows"]
      168 GETTABLEKS                       R17 R10 K21 ["canConfirm"]
      170 SETTABLEKS                       R17 R16 K21 ["canConfirm"]
      172 GETTABLEKS                       R17 R10 K22 ["getDisabledReason"]
      174 SETTABLEKS                       R17 R16 K22 ["getDisabledReason"]
      176 GETTABLEKS                       R18 R10 K23 ["imageSelection"]
      178 JUMPIFNOT                        R18 ; [+12]
      179 DUPTABLE                         R17 K31 [{["wizardMode"], ["phase"] = "Form", ["slots"]}]
      180 GETTABLEKS                       R18 R10 K23 ["imageSelection"]
      182 GETTABLEKS                       R18 R18 K27 ["wizardMode"]
      184 SETTABLEKS                       R18 R17 K27 ["wizardMode"]
      186 NEWTABLE                         R18 0 0
      188 SETTABLEKS                       R18 R17 K30 ["slots"]
      190 JUMP                             ; [+1]
      191 LOADNIL                          R17
      192 SETTABLEKS                       R17 R16 K23 ["imageSelection"]
      194 NEWCLOSURE                       R17 P9
      195 CAPTURE                          UPVAL U7
      196 CAPTURE                          REF R12
      197 CAPTURE                          VAL R10
      198 CAPTURE                          VAL R13
      199 CAPTURE                          VAL R14
      200 CAPTURE                          UPVAL U39
      201 CAPTURE                          UPVAL U37
      202 CAPTURE                          UPVAL U38
      203 CAPTURE                          UPVAL U27
      204 CAPTURE                          VAL R7
      205 CAPTURE                          VAL R15
      206 SETTABLEKS                       R17 R16 K24 ["onContinue"]
      208 GETUPVAL                         R18 7
      209 GETTABLEKS                       R18 R18 K32 ["FFlagAssistantSegmentationPromptModeSelector"]
      211 JUMPIFNOT                        R18 ; [+14]
      212 NEWCLOSURE                       R17 P10
      213 CAPTURE                          VAL R10
      214 CAPTURE                          VAL R9
      215 CAPTURE                          UPVAL U40
      216 CAPTURE                          UPVAL U41
      217 CAPTURE                          UPVAL U38
      218 CAPTURE                          UPVAL U37
      219 CAPTURE                          VAL R7
      220 CAPTURE                          UPVAL U42
      221 CAPTURE                          UPVAL U15
      222 CAPTURE                          UPVAL U1
      223 CAPTURE                          VAL R1
      224 CAPTURE                          VAL R0
      225 JUMP                             ; [+1]
      226 LOADNIL                          R17
      227 SETTABLEKS                       R17 R16 K25 ["onRevive"]
      229 GETUPVAL                         R17 7
      230 GETTABLEKS                       R17 R17 K32 ["FFlagAssistantSegmentationPromptModeSelector"]
      232 JUMPIFNOT                        R17 ; [+24]
      233 GETUPVAL                         R17 42
      234 GETTABLEKS                       R17 R17 K13 ["current"]
      236 JUMPIFNOT                        R17 ; [+20]
      237 GETUPVAL                         R17 42
      238 GETTABLEKS                       R17 R17 K13 ["current"]
      240 GETUPVAL                         R18 15
      241 DUPTABLE                         R19 K39 [{["messageId"], ["contentId"], ["threadId"], ["skipIfNoMessage"] = True, ["transformFn"]}]
      242 GETTABLEKS                       R20 R17 K33 ["messageId"]
      244 SETTABLEKS                       R20 R19 K33 ["messageId"]
      246 GETTABLEKS                       R20 R17 K34 ["contentId"]
      248 SETTABLEKS                       R20 R19 K34 ["contentId"]
      250 GETUPVAL                         R20 1
      251 SETTABLEKS                       R20 R19 K35 ["threadId"]
      253 DUPCLOSURE                       R20 K40 [PROTO_49]
      254 SETTABLEKS                       R20 R19 K38 ["transformFn"]
      256 CALL                             R18 1 0
      257 GETTABLEKS                       R17 R1 K41 ["onContentStart"]
      259 MOVE                             R18 R16
      260 CALL                             R17 1 1
      261 SETTABLEKS                       R17 R13 K13 ["current"]
      263 GETUPVAL                         R18 7
      264 GETTABLEKS                       R18 R18 K32 ["FFlagAssistantSegmentationPromptModeSelector"]
      266 JUMPIFNOT                        R18 ; [+9]
      267 JUMPIFNOT                        R17 ; [+8]
      268 GETUPVAL                         R18 42
      269 DUPTABLE                         R19 K42 [{"messageId", "contentId"}]
      270 SETTABLEKS                       R0 R19 K33 ["messageId"]
      272 SETTABLEKS                       R17 R19 K34 ["contentId"]
      274 SETTABLEKS                       R19 R18 K13 ["current"]
      276 JUMPIFNOT                        R17 ; [+4]
      277 GETTABLEKS                       R18 R1 K43 ["onContentFinished"]
      279 MOVE                             R19 R17
      280 CALL                             R18 1 0
      281 GETUPVAL                         R18 7
      282 GETTABLEKS                       R18 R18 K44 ["FFlagAssistantSupportSlashCommandCancellation"]
      284 JUMPIFNOT                        R18 ; [+17]
      285 GETUPVAL                         R19 27
      286 FASTCALL2K                       ASSERT R19 K45 ; [+4]
      288 LOADK                            R20 K45 ["setSlashCommandCancel is not available"]
      289 GETIMPORT                        R18 K4 [assert]
      291 CALL                             R18 2 0
      292 GETUPVAL                         R18 27
      293 NEWCLOSURE                       R19 P12
      294 CAPTURE                          REF R12
      295 CAPTURE                          VAL R10
      296 CAPTURE                          VAL R17
      297 CAPTURE                          UPVAL U15
      298 CAPTURE                          VAL R0
      299 CAPTURE                          UPVAL U1
      300 CAPTURE                          UPVAL U39
      301 CALL                             R18 1 0
      302 GETUPVAL                         R18 3
      303 LOADB                            R19 1
      304 CALL                             R18 1 0
      305 CLOSEUPVALS                      R12
      306 RETURN                           R0 0
      307 CLOSEUPVALS                      R12
      308 LOADB                            R12 0
      309 DUPTABLE                         R13 K46 [{["type"] = "input_requested", ["title"], ["description"], ["confirmButtonText"], ["propertyRows"], ["onContinue"]}]
      310 GETUPVAL                         R15 40
      311 GETUPVAL                         R16 41
      312 CONCAT                           R14 R15 R16
      313 SETTABLEKS                       R14 R13 K18 ["title"]
      315 GETTABLEKS                       R14 R10 K19 ["description"]
      317 SETTABLEKS                       R14 R13 K19 ["description"]
      319 GETTABLEKS                       R14 R10 K20 ["confirmButtonText"]
      321 SETTABLEKS                       R14 R13 K20 ["confirmButtonText"]
      323 SETTABLEKS                       R11 R13 K6 ["propertyRows"]
      325 NEWCLOSURE                       R14 P13
      326 CAPTURE                          REF R12
      327 CAPTURE                          UPVAL U38
      328 CAPTURE                          UPVAL U37
      329 CAPTURE                          VAL R7
      330 SETTABLEKS                       R14 R13 K24 ["onContinue"]
      332 GETTABLEKS                       R14 R1 K41 ["onContentStart"]
      334 MOVE                             R15 R13
      335 CALL                             R14 1 1
      336 JUMPIFNOT                        R14 ; [+4]
      337 GETTABLEKS                       R15 R1 K43 ["onContentFinished"]
      339 MOVE                             R16 R14
      340 CALL                             R15 1 0
      341 GETUPVAL                         R15 3
      342 LOADB                            R16 1
      343 CALL                             R15 1 0
      344 CLOSEUPVALS                      R12
      345 RETURN                           R0 0
      346 CLOSEUPVALS                      R12
      347 MOVE                             R10 R7
      348 GETUPVAL                         R11 38
      349 CALL                             R10 1 0
      350 RETURN                           R0 0

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
       11 CAPTURE                          UPVAL U6
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U1
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
       50 GETUPVAL                         R4 3
       51 CALL                             R1 3 0
       52 RETURN                           R0 0

PROTO_55:
        0 GETTABLEKS                       R1 R0 K0 ["prompt"]
        2 GETTABLEKS                       R2 R0 K1 ["setInputEnabled"]
        4 GETTABLEKS                       R3 R0 K2 ["threadId"]
        6 JUMPIF                           R3 ; [+1]
        7 GETUPVAL                         R3 0
        8 GETUPVAL                         R5 0
        9 JUMPIFNOTEQ                      R3 R5 ; [+3]
       11 GETUPVAL                         R4 1
       12 JUMP                             ; [+4]
       13 GETUPVAL                         R5 2
       14 GETTABLEKS                       R5 R5 K3 ["threads"]
       16 GETTABLE                         R4 R5 R3
       17 LENGTH                           R5 R1
       18 GETUPVAL                         R7 3
       19 LENGTH                           R6 R7
       20 JUMPIFLT                         R5 R6 ; [+10]
       22 LOADN                            R7 1
       23 GETUPVAL                         R9 3
       24 LENGTH                           R8 R9
       25 NAMECALL                         R5 R1 K4 ["sub"]
       27 CALL                             R5 3 1
       28 GETUPVAL                         R6 3
       29 JUMPIFEQ                         R5 R6 ; [+3]
       31 LOADB                            R5 0
       32 RETURN                           R5 1
       33 GETUPVAL                         R9 3
       34 LENGTH                           R8 R9
       35 ADDK                             R7 R8 K5 [1]
       36 NAMECALL                         R5 R1 K4 ["sub"]
       38 CALL                             R5 2 1
       39 GETIMPORT                        R6 K8 [string.gsub]
       41 MOVE                             R7 R5
       42 LOADK                            R8 K9 ["%s+$"]
       43 LOADK                            R9 K10 [""]
       44 CALL                             R6 3 1
       45 GETUPVAL                         R7 4
       46 GETTABLEKS                       R7 R7 K11 ["getModeForCommand"]
       48 MOVE                             R8 R6
       49 CALL                             R7 1 1
       50 JUMPIFNOT                        R7 ; [+8]
       51 GETUPVAL                         R8 5
       52 MOVE                             R9 R7
       53 CALL                             R8 1 0
       54 MOVE                             R8 R2
       55 LOADB                            R9 1
       56 CALL                             R8 1 0
       57 LOADB                            R8 1
       58 RETURN                           R8 1
       59 LOADNIL                          R8
       60 LOADNIL                          R9
       61 LOADNIL                          R10
       62 LOADNIL                          R11
       63 LOADNIL                          R12
       64 LENGTH                           R13 R5
       65 JUMPIFNOTEQKN                    R13 K12 [0] ; [+4]
       67 LOADB                            R13 0
       68 CLOSEUPVALS                      R8
       69 RETURN                           R13 1
       70 GETUPVAL                         R15 6
       71 NAMECALL                         R13 R5 K13 ["find"]
       73 CALL                             R13 2 1
       74 LOADNIL                          R14
       75 JUMPIFNOT                        R13 ; [+12]
       76 LOADN                            R17 1
       77 SUBK                             R18 R13 K5 [1]
       78 NAMECALL                         R15 R5 K4 ["sub"]
       80 CALL                             R15 3 1
       81 MOVE                             R11 R15
       82 ADDK                             R17 R13 K5 [1]
       83 NAMECALL                         R15 R5 K4 ["sub"]
       85 CALL                             R15 2 1
       86 MOVE                             R14 R15
       87 JUMP                             ; [+2]
       88 MOVE                             R11 R5
       89 LOADK                            R14 K10 [""]
       90 GETUPVAL                         R15 4
       91 GETTABLEKS                       R15 R15 K14 ["getSlashCommandDefinition"]
       93 MOVE                             R16 R11
       94 CALL                             R15 1 1
       95 MOVE                             R12 R15
       96 JUMPIF                           R12 ; [+3]
       97 LOADB                            R15 0
       98 CLOSEUPVALS                      R8
       99 RETURN                           R15 1
      100 GETTABLEKS                       R16 R12 K15 ["runToolChain"]
      102 JUMPIF                           R16 ; [+4]
      103 GETUPVAL                         R16 7
      104 GETTABLEKS                       R16 R16 K16 ["FFlagAssistantAskInputTool"]
      106 JUMPIFNOT                        R16 ; [+2]
      107 LOADNIL                          R15
      108 JUMP                             ; [+5]
      109 GETUPVAL                         R15 4
      110 GETTABLEKS                       R15 R15 K17 ["getSlashCommandTransformation"]
      112 MOVE                             R16 R11
      113 CALL                             R15 1 1
      114 GETTABLEKS                       R16 R12 K15 ["runToolChain"]
      116 JUMPIF                           R16 ; [+4]
      117 JUMPIF                           R15 ; [+3]
      118 LOADB                            R16 0
      119 CLOSEUPVALS                      R8
      120 RETURN                           R16 1
      121 GETUPVAL                         R16 8
      122 GETTABLEKS                       R17 R0 K18 ["images"]
      124 CALL                             R16 1 1
      125 GETTABLEKS                       R17 R12 K15 ["runToolChain"]
      127 JUMPIFNOT                        R17 ; [+7]
      128 GETTABLEKS                       R17 R12 K15 ["runToolChain"]
      130 MOVE                             R18 R14
      131 MOVE                             R19 R16
      132 CALL                             R17 2 1
      133 MOVE                             R10 R17
      134 JUMP                             ; [+13]
      135 FASTCALL2K                       ASSERT R15 K19 ; [+5]
      137 MOVE                             R18 R15
      138 LOADK                            R19 K19 ["mapToToolCall should be defined if runToolChain is not"]
      139 GETIMPORT                        R17 K21 [assert]
      141 CALL                             R17 2 0
      142 MOVE                             R17 R15
      143 MOVE                             R18 R14
      144 MOVE                             R19 R16
      145 CALL                             R17 2 2
      146 MOVE                             R8 R17
      147 MOVE                             R9 R18
      148 GETUPVAL                         R17 9
      149 CALL                             R17 0 1
      150 JUMPIFNOT                        R17 ; [+6]
      151 GETTABLEKS                       R17 R0 K22 ["onSlashCommandRecognized"]
      153 JUMPIFNOT                        R17 ; [+3]
      154 GETTABLEKS                       R17 R0 K22 ["onSlashCommandRecognized"]
      156 CALL                             R17 0 0
      157 LOADB                            R17 0
      158 LOADB                            R18 0
      159 NEWCLOSURE                       R19 P0
      160 CAPTURE                          REF R18
      161 CAPTURE                          UPVAL U7
      162 CAPTURE                          VAL R2
      163 NEWCLOSURE                       R20 P1
      164 CAPTURE                          REF R18
      165 CAPTURE                          UPVAL U10
      166 GETUPVAL                         R21 11
      167 NEWCLOSURE                       R22 P2
      168 CAPTURE                          UPVAL U12
      169 CAPTURE                          UPVAL U13
      170 CAPTURE                          UPVAL U14
      171 CAPTURE                          VAL R3
      172 CAPTURE                          UPVAL U15
      173 CAPTURE                          VAL R2
      174 CAPTURE                          UPVAL U16
      175 CAPTURE                          UPVAL U7
      176 CAPTURE                          UPVAL U17
      177 CAPTURE                          UPVAL U18
      178 CAPTURE                          REF R17
      179 CAPTURE                          UPVAL U19
      180 CAPTURE                          VAL R4
      181 CAPTURE                          UPVAL U20
      182 CAPTURE                          UPVAL U21
      183 CAPTURE                          UPVAL U22
      184 CAPTURE                          UPVAL U23
      185 CAPTURE                          UPVAL U24
      186 CAPTURE                          UPVAL U25
      187 CAPTURE                          VAL R20
      188 CAPTURE                          VAL R1
      189 CAPTURE                          VAL R0
      190 CAPTURE                          REF R18
      191 CAPTURE                          UPVAL U26
      192 CAPTURE                          UPVAL U27
      193 CAPTURE                          UPVAL U28
      194 CAPTURE                          UPVAL U4
      195 CAPTURE                          UPVAL U29
      196 CAPTURE                          UPVAL U30
      197 CAPTURE                          UPVAL U31
      198 CAPTURE                          UPVAL U32
      199 CAPTURE                          UPVAL U33
      200 CAPTURE                          UPVAL U34
      201 CAPTURE                          REF R12
      202 CAPTURE                          UPVAL U9
      203 CAPTURE                          REF R10
      204 CAPTURE                          REF R9
      205 CAPTURE                          UPVAL U35
      206 CAPTURE                          REF R8
      207 CAPTURE                          UPVAL U36
      208 CAPTURE                          UPVAL U3
      209 CAPTURE                          REF R11
      210 CAPTURE                          UPVAL U37
      211 CALL                             R21 1 0
      212 LOADB                            R21 1
      213 CLOSEUPVALS                      R8
      214 RETURN                           R21 1

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
       37 GETUPVAL                         R12 11
       38 CALL                             R12 0 1
       39 GETUPVAL                         R13 5
       40 GETTABLEKS                       R13 R13 K1 ["useContext"]
       42 GETUPVAL                         R14 12
       43 GETTABLEKS                       R14 R14 K2 ["Context"]
       45 CALL                             R13 1 1
       46 GETUPVAL                         R14 5
       47 GETTABLEKS                       R14 R14 K1 ["useContext"]
       49 GETUPVAL                         R15 13
       50 GETTABLEKS                       R15 R15 K2 ["Context"]
       52 CALL                             R14 1 1
       53 GETUPVAL                         R15 5
       54 GETTABLEKS                       R15 R15 K1 ["useContext"]
       56 GETUPVAL                         R16 14
       57 GETTABLEKS                       R16 R16 K2 ["Context"]
       59 CALL                             R15 1 1
       60 LOADNIL                          R16
       61 LOADNIL                          R17
       62 GETUPVAL                         R18 15
       63 GETTABLEKS                       R18 R18 K4 ["FFlagAssistantSupportSlashCommandCancellation"]
       65 JUMPIFNOT                        R18 ; [+10]
       66 GETUPVAL                         R18 5
       67 GETTABLEKS                       R18 R18 K1 ["useContext"]
       69 GETUPVAL                         R19 16
       70 GETTABLEKS                       R19 R19 K2 ["Context"]
       72 CALL                             R18 1 1
       73 MOVE                             R16 R18
       74 GETTABLEKS                       R17 R16 K5 ["setSlashCommandCancel"]
       76 GETUPVAL                         R18 17
       77 CALL                             R18 0 2
       78 GETUPVAL                         R20 18
       79 CALL                             R20 0 1
       80 GETUPVAL                         R21 19
       81 CALL                             R21 0 1
       82 NEWCLOSURE                       R22 P0
       83 CAPTURE                          VAL R9
       84 CAPTURE                          VAL R10
       85 CAPTURE                          VAL R11
       86 CAPTURE                          UPVAL U20
       87 CAPTURE                          UPVAL U21
       88 CAPTURE                          VAL R19
       89 CAPTURE                          UPVAL U22
       90 CAPTURE                          UPVAL U15
       91 CAPTURE                          UPVAL U23
       92 CAPTURE                          UPVAL U24
       93 CAPTURE                          VAL R20
       94 CAPTURE                          VAL R4
       95 CAPTURE                          VAL R3
       96 CAPTURE                          UPVAL U25
       97 CAPTURE                          VAL R0
       98 CAPTURE                          VAL R13
       99 CAPTURE                          VAL R14
      100 CAPTURE                          UPVAL U26
      101 CAPTURE                          UPVAL U27
      102 CAPTURE                          UPVAL U28
      103 CAPTURE                          VAL R12
      104 CAPTURE                          VAL R1
      105 CAPTURE                          VAL R2
      106 CAPTURE                          VAL R18
      107 CAPTURE                          VAL R7
      108 CAPTURE                          VAL R15
      109 CAPTURE                          UPVAL U29
      110 CAPTURE                          UPVAL U30
      111 CAPTURE                          UPVAL U31
      112 CAPTURE                          REF R17
      113 CAPTURE                          UPVAL U32
      114 CAPTURE                          VAL R8
      115 CAPTURE                          UPVAL U33
      116 CAPTURE                          VAL R21
      117 CAPTURE                          UPVAL U34
      118 CAPTURE                          UPVAL U35
      119 CAPTURE                          UPVAL U36
      120 CAPTURE                          VAL R5
      121 GETUPVAL                         R23 5
      122 GETTABLEKS                       R23 R23 K6 ["useCallback"]
      124 MOVE                             R24 R22
      125 NEWTABLE                         R25 0 19
      127 MOVE                             R26 R0
      128 MOVE                             R27 R3
      129 MOVE                             R28 R4
      130 MOVE                             R29 R7
      131 GETUPVAL                         R31 15
      132 GETTABLEKS                       R31 R31 K4 ["FFlagAssistantSupportSlashCommandCancellation"]
      134 JUMPIFNOT                        R31 ; [+2]
      135 MOVE                             R30 R8
      136 JUMP                             ; [+1]
      137 LOADNIL                          R30
      138 GETUPVAL                         R32 15
      139 GETTABLEKS                       R32 R32 K4 ["FFlagAssistantSupportSlashCommandCancellation"]
      141 JUMPIFNOT                        R32 ; [+2]
      142 MOVE                             R31 R17
      143 JUMP                             ; [+1]
      144 LOADNIL                          R31
      145 MOVE                             R32 R19
      146 MOVE                             R33 R13
      147 MOVE                             R34 R14
      148 MOVE                             R35 R1
      149 MOVE                             R36 R18
      150 MOVE                             R37 R11
      151 MOVE                             R38 R10
      152 MOVE                             R39 R2
      153 MOVE                             R40 R12
      154 MOVE                             R41 R15
      155 SETLIST                          R25 R26 16 [1]
      157 MOVE                             R26 R20
      158 MOVE                             R27 R9
      159 MOVE                             R28 R21
      160 SETLIST                          R25 R26 3 [17]
      162 CALL                             R23 2 -1
      163 CLOSEUPVALS                      R17
      164 RETURN                           R23 -1

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
      184 GETTABLEKS                       R28 R28 K44 ["useConversation"]
      186 CALL                             R27 1 1
      187 GETIMPORT                        R28 K9 [require]
      189 GETTABLEKS                       R29 R0 K41 ["Hooks"]
      191 GETTABLEKS                       R29 R29 K45 ["useCurrentThread"]
      193 CALL                             R28 1 1
      194 GETIMPORT                        R29 K9 [require]
      196 GETTABLEKS                       R30 R0 K41 ["Hooks"]
      198 GETTABLEKS                       R30 R30 K46 ["useDispatchToolCall"]
      200 CALL                             R29 1 1
      201 GETIMPORT                        R30 K9 [require]
      203 GETTABLEKS                       R31 R0 K41 ["Hooks"]
      205 GETTABLEKS                       R31 R31 K47 ["useEditContent"]
      207 CALL                             R30 1 1
      208 GETIMPORT                        R31 K9 [require]
      210 GETTABLEKS                       R32 R0 K41 ["Hooks"]
      212 GETTABLEKS                       R32 R32 K48 ["useEditThread"]
      214 CALL                             R31 1 1
      215 GETIMPORT                        R32 K9 [require]
      217 GETTABLEKS                       R33 R0 K41 ["Hooks"]
      219 GETTABLEKS                       R33 R33 K49 ["useGetContentObserver"]
      221 CALL                             R32 1 1
      222 GETIMPORT                        R33 K9 [require]
      224 GETTABLEKS                       R34 R0 K41 ["Hooks"]
      226 GETTABLEKS                       R34 R34 K50 ["useGetOrAddMessage"]
      228 CALL                             R33 1 1
      229 GETIMPORT                        R34 K9 [require]
      231 GETTABLEKS                       R35 R0 K41 ["Hooks"]
      233 GETTABLEKS                       R35 R35 K51 ["useShowError"]
      235 CALL                             R34 1 1
      236 GETIMPORT                        R35 K9 [require]
      238 GETTABLEKS                       R36 R0 K41 ["Hooks"]
      240 GETTABLEKS                       R36 R36 K52 ["useThreadId"]
      242 CALL                             R35 1 1
      243 GETIMPORT                        R36 K9 [require]
      245 GETTABLEKS                       R37 R0 K41 ["Hooks"]
      247 GETTABLEKS                       R37 R37 K53 ["useWithClient"]
      249 CALL                             R36 1 1
      250 GETTABLEKS                       R37 R13 K54 ["ToolRegistry"]
      252 GETTABLEKS                       R38 R24 K55 ["CommandPrefix"]
      254 GETTABLEKS                       R39 R24 K56 ["CommandDelimiter"]
      256 DUPCLOSURE                       R40 K57 [PROTO_0]
      257 CAPTURE                          VAL R10
      258 DUPCLOSURE                       R41 K58 [PROTO_1]
      259 CAPTURE                          VAL R23
      260 DUPCLOSURE                       R42 K59 [PROTO_2]
      261 CAPTURE                          VAL R23
      262 CAPTURE                          VAL R7
      263 CAPTURE                          VAL R37
      264 CAPTURE                          VAL R22
      265 DUPCLOSURE                       R43 K60 [PROTO_3]
      266 DUPCLOSURE                       R44 K61 [PROTO_6]
      267 CAPTURE                          VAL R43
      268 DUPCLOSURE                       R45 K62 [PROTO_56]
      269 CAPTURE                          VAL R32
      270 CAPTURE                          VAL R25
      271 CAPTURE                          VAL R30
      272 CAPTURE                          VAL R33
      273 CAPTURE                          VAL R36
      274 CAPTURE                          VAL R17
      275 CAPTURE                          VAL R18
      276 CAPTURE                          VAL R15
      277 CAPTURE                          VAL R35
      278 CAPTURE                          VAL R28
      279 CAPTURE                          VAL R27
      280 CAPTURE                          VAL R31
      281 CAPTURE                          VAL R2
      282 CAPTURE                          VAL R3
      283 CAPTURE                          VAL R14
      284 CAPTURE                          VAL R7
      285 CAPTURE                          VAL R12
      286 CAPTURE                          VAL R26
      287 CAPTURE                          VAL R34
      288 CAPTURE                          VAL R29
      289 CAPTURE                          VAL R38
      290 CAPTURE                          VAL R24
      291 CAPTURE                          VAL R39
      292 CAPTURE                          VAL R40
      293 CAPTURE                          VAL R8
      294 CAPTURE                          VAL R23
      295 CAPTURE                          VAL R37
      296 CAPTURE                          VAL R22
      297 CAPTURE                          VAL R20
      298 CAPTURE                          VAL R1
      299 CAPTURE                          VAL R21
      300 CAPTURE                          VAL R43
      301 CAPTURE                          VAL R19
      302 CAPTURE                          VAL R16
      303 CAPTURE                          VAL R9
      304 CAPTURE                          VAL R5
      305 CAPTURE                          VAL R11
      306 RETURN                           R45 1
