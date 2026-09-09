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

PROTO_4:
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

PROTO_5:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R1 R0 K0 ["acpSessionId"]
        3 MOVE                             R1 R0
        4 DUPTABLE                         R2 K3 [{["rawTransformValues"] = True}]
        5 RETURN                           R1 2

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          VAL R0
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_7:
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

PROTO_8:
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

PROTO_9:
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

PROTO_10:
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

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["FFlagAssistantAsyncSlashCommands"]
        3 JUMPIFNOT                        R2 ; [+59]
        4 GETUPVAL                         R3 1
        5 NOT                              R2 R3
        6 LOADB                            R3 1
        7 SETUPVAL                         R3 1
        8 GETUPVAL                         R3 2
        9 MOVE                             R4 R0
       10 DUPTABLE                         R5 K8 [{"client", "messageId", "threadId", "userPromptText", "images", "showError", "onComplete"}]
       11 GETUPVAL                         R6 3
       12 SETTABLEKS                       R6 R5 K1 ["client"]
       14 GETUPVAL                         R6 4
       15 SETTABLEKS                       R6 R5 K2 ["messageId"]
       17 GETUPVAL                         R6 5
       18 SETTABLEKS                       R6 R5 K3 ["threadId"]
       20 JUMPIFNOT                        R2 ; [+2]
       21 GETUPVAL                         R6 6
       22 JUMP                             ; [+12]
       23 GETUPVAL                         R7 6
       24 GETUPVAL                         R8 7
       25 GETTABLEKS                       R8 R8 K9 ["getSystemReminder"]
       27 LOADK                            R10 K10 ["This is a following tool call from %*"]
       28 MOVE                             R12 R7
       29 NAMECALL                         R10 R10 K11 ["format"]
       31 CALL                             R10 2 1
       32 MOVE                             R9 R10
       33 CALL                             R8 1 1
       34 MOVE                             R6 R8
       35 SETTABLEKS                       R6 R5 K4 ["userPromptText"]
       37 JUMPIFNOT                        R2 ; [+4]
       38 GETUPVAL                         R6 8
       39 GETTABLEKS                       R6 R6 K5 ["images"]
       41 JUMP                             ; [+1]
       42 LOADNIL                          R6
       43 SETTABLEKS                       R6 R5 K5 ["images"]
       45 GETUPVAL                         R7 0
       46 GETTABLEKS                       R7 R7 K12 ["FFlagAssistantSlashToolNameAndError"]
       48 JUMPIFNOT                        R7 ; [+2]
       49 GETUPVAL                         R6 9
       50 JUMP                             ; [+1]
       51 LOADNIL                          R6
       52 SETTABLEKS                       R6 R5 K6 ["showError"]
       54 NEWCLOSURE                       R6 P0
       55 CAPTURE                          VAL R1
       56 CAPTURE                          UPVAL U10
       57 CAPTURE                          UPVAL U0
       58 CAPTURE                          UPVAL U11
       59 SETTABLEKS                       R6 R5 K7 ["onComplete"]
       61 CALL                             R3 2 0
       62 RETURN                           R0 0
       63 GETUPVAL                         R2 12
       64 MOVE                             R3 R0
       65 MOVE                             R4 R1
       66 CALL                             R2 2 0
       67 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLE                         R0 R1 R2
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_13:
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

PROTO_14:
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

PROTO_15:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

PROTO_16:
        0 JUMPIFNOT                        R0 ; [+3]
        1 GETTABLEKS                       R1 R0 K0 ["isError"]
        3 JUMPIFNOT                        R1 ; [+18]
        4 GETUPVAL                         R1 0
        5 JUMPIFNOT                        R1 ; [+3]
        6 GETUPVAL                         R1 0
        7 LOADNIL                          R2
        8 CALL                             R1 1 0
        9 GETUPVAL                         R1 1
       10 CALL                             R1 0 0
       11 GETUPVAL                         R1 2
       12 JUMPIFNOT                        R1 ; [+5]
       13 GETUPVAL                         R1 3
       14 GETTABLEKS                       R1 R1 K1 ["FFlagAssistantSlashToolNameAndError"]
       16 JUMPIFNOT                        R1 ; [+1]
       17 RETURN                           R0 0
       18 GETUPVAL                         R1 4
       19 LOADB                            R2 1
       20 CALL                             R1 1 0
       21 RETURN                           R0 0
       22 GETUPVAL                         R1 5
       23 JUMPIFNOT                        R1 ; [+19]
       24 GETUPVAL                         R1 6
       25 LOADN                            R2 1
       26 JUMPIFNOTLT                      R2 R1 ; [+16]
       28 GETIMPORT                        R1 K4 [table.remove]
       30 GETUPVAL                         R2 7
       31 CALL                             R1 1 0
       32 GETUPVAL                         R2 6
       33 SUBK                             R1 R2 K5 [1]
       34 SETUPVAL                         R1 8
       35 GETUPVAL                         R1 0
       36 JUMPIFNOT                        R1 ; [+3]
       37 GETUPVAL                         R1 0
       38 LOADNIL                          R2
       39 CALL                             R1 1 0
       40 GETUPVAL                         R1 9
       41 CALL                             R1 0 0
       42 RETURN                           R0 0
       43 DUPTABLE                         R1 K11 [{["type"] = "tool_use", ["id"], ["name"], ["input"]}]
       44 LOADK                            R3 K12 ["slash_command_chain_%*"]
       45 GETUPVAL                         R5 6
       46 NAMECALL                         R3 R3 K13 ["format"]
       48 CALL                             R3 2 1
       49 MOVE                             R2 R3
       50 SETTABLEKS                       R2 R1 K8 ["id"]
       52 GETUPVAL                         R2 10
       53 GETTABLEKS                       R2 R2 K9 ["name"]
       55 SETTABLEKS                       R2 R1 K9 ["name"]
       57 GETUPVAL                         R2 10
       58 GETTABLEKS                       R2 R2 K14 ["arguments"]
       60 SETTABLEKS                       R2 R1 K10 ["input"]
       62 DUPTABLE                         R2 K21 [{["type"] = "tool_result", ["id"], ["name"], ["content"], [5], ["structuredContent"], ["startTime"] = 0, ["startTimeAfterConfirmation"] = 0}]
       63 GETTABLEKS                       R3 R1 K8 ["id"]
       65 SETTABLEKS                       R3 R2 K8 ["id"]
       67 GETUPVAL                         R3 10
       68 GETTABLEKS                       R3 R3 K9 ["name"]
       70 SETTABLEKS                       R3 R2 K9 ["name"]
       72 GETTABLEKS                       R3 R0 K16 ["content"]
       74 SETTABLEKS                       R3 R2 K16 ["content"]
       76 GETTABLEKS                       R3 R0 K0 ["isError"]
       78 SETTABLEKS                       R3 R2 K0 ["isError"]
       80 GETTABLEKS                       R3 R0 K17 ["structuredContent"]
       82 SETTABLEKS                       R3 R2 K17 ["structuredContent"]
       84 GETUPVAL                         R4 7
       85 DUPTABLE                         R5 K24 [{"toolUse", "toolResult"}]
       86 SETTABLEKS                       R1 R5 K22 ["toolUse"]
       88 SETTABLEKS                       R2 R5 K23 ["toolResult"]
       90 FASTCALL2                        TABLE_INSERT R4 R5 ; [+3]
       92 GETIMPORT                        R3 K26 [table.insert]
       94 CALL                             R3 2 0
       95 GETUPVAL                         R3 11
       96 JUMPIFNOT                        R3 ; [+30]
       97 GETUPVAL                         R3 12
       98 JUMPIFNOT                        R3 ; [+28]
       99 GETUPVAL                         R3 12
      100 GETTABLEKS                       R3 R3 K27 ["continueWithLLM"]
      102 JUMPIFNOT                        R3 ; [+24]
      103 GETUPVAL                         R3 13
      104 GETTABLEKS                       R3 R3 K28 ["onContinueWithLLMWithResult"]
      106 JUMPIFNOT                        R3 ; [+9]
      107 LOADB                            R3 1
      108 SETUPVAL                         R3 14
      109 GETUPVAL                         R3 13
      110 GETTABLEKS                       R3 R3 K28 ["onContinueWithLLMWithResult"]
      112 GETUPVAL                         R4 15
      113 MOVE                             R5 R0
      114 CALL                             R3 2 0
      115 JUMP                             ; [+11]
      116 GETUPVAL                         R3 13
      117 GETTABLEKS                       R3 R3 K29 ["onContinueWithLLM"]
      119 JUMPIFNOT                        R3 ; [+7]
      120 LOADB                            R3 1
      121 SETUPVAL                         R3 14
      122 GETUPVAL                         R3 13
      123 GETTABLEKS                       R3 R3 K29 ["onContinueWithLLM"]
      125 GETUPVAL                         R4 15
      126 CALL                             R3 1 0
      127 GETUPVAL                         R3 9
      128 CALL                             R3 0 0
      129 RETURN                           R0 0

PROTO_17:
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
       20 GETUPVAL                         R2 0
       21 ADDK                             R2 R2 K0 [1]
       22 SETUPVAL                         R2 0
       23 GETIMPORT                        R2 K2 [pcall]
       25 MOVE                             R3 R0
       26 GETUPVAL                         R4 5
       27 CALL                             R2 2 3
       28 JUMPIF                           R2 ; [+20]
       29 GETIMPORT                        R5 K4 [warn]
       31 LOADK                            R6 K5 ["Error preparing slash command chain step:"]
       32 FASTCALL1                        TOSTRING R3 ; [+3]
       33 MOVE                             R8 R3
       34 GETIMPORT                        R7 K7 [tostring]
       36 CALL                             R7 1 1
       37 CALL                             R5 2 0
       38 GETUPVAL                         R5 2
       39 JUMPIFNOT                        R5 ; [+3]
       40 GETUPVAL                         R5 2
       41 LOADNIL                          R6
       42 CALL                             R5 1 0
       43 GETUPVAL                         R5 6
       44 CALL                             R5 0 0
       45 GETUPVAL                         R5 4
       46 LOADB                            R6 1
       47 CALL                             R5 1 0
       48 RETURN                           R0 0
       49 FASTCALL1                        TYPEOF R4 ; [+3]
       50 MOVE                             R6 R4
       51 GETIMPORT                        R5 K9 [typeof]
       53 CALL                             R5 1 1
       54 JUMPIFNOTEQKS                    R5 K10 ["function"] ; [+8]
       56 GETUPVAL                         R6 7
       57 FASTCALL2                        TABLE_INSERT R6 R4 ; [+4]
       59 MOVE                             R7 R4
       60 GETIMPORT                        R5 K13 [table.insert]
       62 CALL                             R5 2 0
       63 GETUPVAL                         R6 0
       64 GETUPVAL                         R8 1
       65 LENGTH                           R7 R8
       66 JUMPIFLT                         R7 R6 ; [+2]
       68 LOADB                            R5 0 +1
       69 LOADB                            R5 1
       70 LOADB                            R6 0
       71 GETUPVAL                         R7 2
       72 JUMPIFNOT                        R7 ; [+18]
       73 GETUPVAL                         R7 2
       74 DUPTABLE                         R8 K17 [{"currentStep", "totalSteps", "onBack"}]
       75 SETTABLEKS                       R1 R8 K14 ["currentStep"]
       77 GETUPVAL                         R10 1
       78 LENGTH                           R9 R10
       79 SETTABLEKS                       R9 R8 K15 ["totalSteps"]
       81 LOADN                            R10 1
       82 JUMPIFNOTLT                      R10 R1 ; [+4]
       84 NEWCLOSURE                       R9 P0
       85 CAPTURE                          REF R6
       86 JUMP                             ; [+1]
       87 LOADNIL                          R9
       88 SETTABLEKS                       R9 R8 K16 ["onBack"]
       90 CALL                             R7 1 0
       91 GETUPVAL                         R7 8
       92 MOVE                             R8 R3
       93 NEWCLOSURE                       R9 P1
       94 CAPTURE                          UPVAL U2
       95 CAPTURE                          UPVAL U6
       96 CAPTURE                          UPVAL U9
       97 CAPTURE                          UPVAL U10
       98 CAPTURE                          UPVAL U4
       99 CAPTURE                          REF R6
      100 CAPTURE                          VAL R1
      101 CAPTURE                          UPVAL U5
      102 CAPTURE                          UPVAL U0
      103 CAPTURE                          UPVAL U11
      104 CAPTURE                          VAL R3
      105 CAPTURE                          VAL R5
      106 CAPTURE                          UPVAL U12
      107 CAPTURE                          UPVAL U13
      108 CAPTURE                          UPVAL U3
      109 CAPTURE                          UPVAL U14
      110 CALL                             R7 2 0
      111 CLOSEUPVALS                      R6
      112 RETURN                           R0 0

PROTO_18:
        0 GETIMPORT                        R1 K2 [table.create]
        2 LENGTH                           R2 R0
        3 CALL                             R1 1 1
        4 NEWTABLE                         R2 0 0
        6 LOADB                            R3 0
        7 NEWCLOSURE                       R4 P0
        8 CAPTURE                          REF R3
        9 CAPTURE                          REF R2
       10 LOADB                            R5 0
       11 NEWCLOSURE                       R6 P1
       12 CAPTURE                          UPVAL U0
       13 CAPTURE                          REF R5
       14 CAPTURE                          UPVAL U1
       15 LOADN                            R7 1
       16 NEWCLOSURE                       R8 P2
       17 CAPTURE                          REF R7
       18 CAPTURE                          VAL R0
       19 CAPTURE                          UPVAL U0
       20 CAPTURE                          REF R5
       21 CAPTURE                          UPVAL U1
       22 CAPTURE                          VAL R1
       23 CAPTURE                          VAL R4
       24 CAPTURE                          REF R2
       25 CAPTURE                          UPVAL U2
       26 CAPTURE                          UPVAL U3
       27 CAPTURE                          UPVAL U4
       28 CAPTURE                          VAL R8
       29 CAPTURE                          UPVAL U5
       30 CAPTURE                          UPVAL U6
       31 CAPTURE                          UPVAL U7
       32 MOVE                             R9 R8
       33 CALL                             R9 0 0
       34 CLOSEUPVALS                      R2
       35 RETURN                           R0 0

PROTO_19:
        0 JUMPIFNOT                        R0 ; [+7]
        1 GETUPVAL                         R2 0
        2 FASTCALL2                        TABLE_INSERT R2 R0 ; [+4]
        4 MOVE                             R3 R0
        5 GETIMPORT                        R1 K2 [table.insert]
        7 CALL                             R1 2 0
        8 GETUPVAL                         R1 1
        9 CALL                             R1 0 0
       10 RETURN                           R0 0

PROTO_20:
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

PROTO_21:
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

PROTO_22:
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

PROTO_23:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onContinueWithLLMWithResult"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onContinueWithLLM"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_25:
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
       27 JUMPIFNOT                        R0 ; [+38]
       28 GETUPVAL                         R1 5
       29 JUMPIFNOT                        R1 ; [+15]
       30 GETUPVAL                         R1 5
       31 GETTABLEKS                       R1 R1 K7 ["continueWithLLM"]
       33 JUMPIFNOT                        R1 ; [+11]
       34 GETUPVAL                         R1 6
       35 GETTABLEKS                       R1 R1 K8 ["onContinueWithLLMWithResult"]
       37 JUMPIFNOT                        R1 ; [+7]
       38 GETUPVAL                         R1 2
       39 MOVE                             R2 R0
       40 NEWCLOSURE                       R3 P1
       41 CAPTURE                          UPVAL U6
       42 CAPTURE                          UPVAL U7
       43 CALL                             R1 2 0
       44 RETURN                           R0 0
       45 GETUPVAL                         R1 5
       46 JUMPIFNOT                        R1 ; [+15]
       47 GETUPVAL                         R1 5
       48 GETTABLEKS                       R1 R1 K7 ["continueWithLLM"]
       50 JUMPIFNOT                        R1 ; [+11]
       51 GETUPVAL                         R1 6
       52 GETTABLEKS                       R1 R1 K9 ["onContinueWithLLM"]
       54 JUMPIFNOT                        R1 ; [+7]
       55 GETUPVAL                         R1 2
       56 MOVE                             R2 R0
       57 NEWCLOSURE                       R3 P2
       58 CAPTURE                          UPVAL U6
       59 CAPTURE                          UPVAL U7
       60 CALL                             R1 2 0
       61 RETURN                           R0 0
       62 GETUPVAL                         R1 2
       63 MOVE                             R2 R0
       64 CALL                             R1 1 0
       65 RETURN                           R0 0
       66 GETUPVAL                         R1 1
       67 LOADB                            R2 1
       68 CALL                             R1 1 0
       69 GETIMPORT                        R1 K1 [error]
       71 LOADK                            R2 K10 ["No tool spec generated for slash command and no tool chain defined."]
       72 CALL                             R1 1 0
       73 RETURN                           R0 0

PROTO_26:
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

PROTO_27:
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

PROTO_28:
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

PROTO_29:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["InputStatus"]
        3 GETTABLEKS                       R1 R1 K1 ["Cancelled"]
        5 SETTABLEKS                       R1 R0 K2 ["status"]
        7 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R1 K0 [PROTO_29]
        2 CAPTURE                          UPVAL U1
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_31:
        0 GETTABLEKS                       R1 R0 K0 ["imageSelection"]
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["imageSelection"]
        5 LOADK                            R2 K1 ["Picker"]
        6 SETTABLEKS                       R2 R1 K2 ["phase"]
        8 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["InputStatus"]
        3 GETTABLEKS                       R1 R1 K1 ["Recorded"]
        5 SETTABLEKS                       R1 R0 K2 ["status"]
        7 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+1]
        2 RETURN                           R0 0
        3 LOADB                            R1 1
        4 SETUPVAL                         R1 0
        5 GETUPVAL                         R1 1
        6 DUPCLOSURE                       R2 K0 [PROTO_32]
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
       35 MOVE                             R4 R2
       36 CALL                             R3 1 0
       37 RETURN                           R0 0

PROTO_34:
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
       41 JUMPIFNOT                        R2 ; [+32]
       42 GETUPVAL                         R2 4
       43 DUPCLOSURE                       R3 K10 [PROTO_31]
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
       56 CAPTURE                          UPVAL U8
       57 SETTABLEKS                       R3 R2 K12 ["dispatchWithOverrides"]
       59 GETUPVAL                         R3 9
       60 SETTABLEKS                       R3 R2 K13 ["cancelInputRequest"]
       62 GETUPVAL                         R3 2
       63 GETTABLEKS                       R3 R3 K6 ["imageSelection"]
       65 GETTABLEKS                       R3 R3 K15 ["onFormSubmitted"]
       67 MOVE                             R4 R1
       68 JUMPIF                           R4 ; [+2]
       69 NEWTABLE                         R4 0 0
       71 MOVE                             R5 R2
       72 CALL                             R3 2 0
       73 RETURN                           R0 0
       74 GETUPVAL                         R2 1
       75 JUMPIFNOT                        R2 ; [+1]
       76 RETURN                           R0 0
       77 LOADB                            R2 1
       78 SETUPVAL                         R2 1
       79 GETUPVAL                         R3 7
       80 JUMPIFNOT                        R3 ; [+1]
       81 JUMPIF                           R1 ; [+2]
       82 MOVE                             R2 R3
       83 JUMP                             ; [+14]
       84 GETIMPORT                        R4 K18 [table.clone]
       86 MOVE                             R5 R3
       87 CALL                             R4 1 1
       88 GETUPVAL                         R5 6
       89 GETTABLEKS                       R5 R5 K19 ["join"]
       91 GETTABLEKS                       R6 R4 K20 ["arguments"]
       93 MOVE                             R7 R1
       94 CALL                             R5 2 1
       95 SETTABLEKS                       R5 R4 K20 ["arguments"]
       97 MOVE                             R2 R4
       98 GETUPVAL                         R3 8
       99 MOVE                             R4 R2
      100 CALL                             R3 1 0
      101 RETURN                           R0 0

PROTO_35:
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

PROTO_36:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["suppressHistory"]
        3 RETURN                           R0 0

PROTO_37:
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
       95 DUPCLOSURE                       R8 K25 [PROTO_36]
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

PROTO_38:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["suppressHistory"]
        3 RETURN                           R0 0

PROTO_39:
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

PROTO_40:
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
       32 CAPTURE                          UPVAL U7
       33 CAPTURE                          UPVAL U10
       34 CAPTURE                          UPVAL U23
       35 CAPTURE                          UPVAL U5
       36 CAPTURE                          VAL R0
       37 CAPTURE                          UPVAL U1
       38 CAPTURE                          UPVAL U20
       39 CAPTURE                          UPVAL U6
       40 CAPTURE                          UPVAL U21
       41 CAPTURE                          UPVAL U19
       42 CAPTURE                          UPVAL U22
       43 CAPTURE                          UPVAL U3
       44 CAPTURE                          VAL R2
       45 NEWCLOSURE                       R4 P2
       46 CAPTURE                          UPVAL U24
       47 CAPTURE                          UPVAL U3
       48 CAPTURE                          VAL R3
       49 CAPTURE                          UPVAL U22
       50 CAPTURE                          UPVAL U7
       51 CAPTURE                          UPVAL U25
       52 CAPTURE                          UPVAL U21
       53 CAPTURE                          VAL R0
       54 GETUPVAL                         R5 26
       55 JUMPIFNOT                        R5 ; [+4]
       56 MOVE                             R5 R4
       57 GETUPVAL                         R6 26
       58 CALL                             R5 1 0
       59 RETURN                           R0 0
       60 NEWCLOSURE                       R5 P3
       61 CAPTURE                          VAL R3
       62 CAPTURE                          UPVAL U22
       63 CAPTURE                          UPVAL U7
       64 CAPTURE                          UPVAL U3
       65 NEWCLOSURE                       R6 P4
       66 CAPTURE                          UPVAL U27
       67 CAPTURE                          UPVAL U3
       68 CAPTURE                          VAL R3
       69 CAPTURE                          UPVAL U22
       70 CAPTURE                          UPVAL U7
       71 CAPTURE                          UPVAL U25
       72 CAPTURE                          UPVAL U21
       73 CAPTURE                          VAL R0
       74 DUPCLOSURE                       R7 K1 [PROTO_26]
       75 CAPTURE                          UPVAL U28
       76 GETUPVAL                         R9 25
       77 FASTCALL2K                       ASSERT R9 K2 ; [+4]
       79 LOADK                            R10 K2 ["definition should always be available for slash commands"]
       80 GETIMPORT                        R8 K4 [assert]
       82 CALL                             R8 2 0
       83 GETUPVAL                         R8 25
       84 GETTABLEKS                       R8 R8 K5 ["getInputRequestArguments"]
       86 JUMPIFNOT                        R8 ; [+216]
       87 MOVE                             R9 R8
       88 CALL                             R9 0 1
       89 LOADNIL                          R10
       90 GETTABLEKS                       R11 R9 K6 ["propertyRows"]
       92 JUMPIFNOT                        R11 ; [+171]
       93 GETIMPORT                        R11 K9 [table.clone]
       95 GETTABLEKS                       R12 R9 K6 ["propertyRows"]
       97 CALL                             R11 1 1
       98 MOVE                             R10 R11
       99 MOVE                             R11 R10
      100 LOADNIL                          R12
      101 LOADNIL                          R13
      102 FORGPREP                         R11
      103 GETUPVAL                         R17 29
      104 GETTABLEKS                       R17 R17 K10 ["arguments"]
      106 GETTABLEKS                       R18 R15 K11 ["prop"]
      108 GETTABLE                         R16 R17 R18
      109 JUMPIFEQKNIL                     R16 ; [+8]
      111 GETIMPORT                        R17 K9 [table.clone]
      113 MOVE                             R18 R15
      114 CALL                             R17 1 1
      115 SETTABLEKS                       R16 R17 K12 ["initialValue"]
      117 SETTABLE                         R17 R10 R14
      118 FORGLOOP                         R11 2 ; [-16]
      120 LOADB                            R11 0
      121 DUPTABLE                         R12 K15 [{["current"] = }]
      122 NEWCLOSURE                       R13 P6
      123 CAPTURE                          VAL R12
      124 CAPTURE                          UPVAL U15
      125 CAPTURE                          VAL R0
      126 CAPTURE                          UPVAL U1
      127 NEWCLOSURE                       R14 P7
      128 CAPTURE                          VAL R13
      129 CAPTURE                          UPVAL U30
      130 DUPTABLE                         R15 K26 [{["type"] = "input_requested", ["title"], ["description"], ["confirmButtonText"], ["propertyRows"], ["canConfirm"], ["getDisabledReason"], ["imageSelection"], ["onContinue"], ["onRevive"]}]
      131 GETUPVAL                         R17 31
      132 GETUPVAL                         R18 32
      133 CONCAT                           R16 R17 R18
      134 SETTABLEKS                       R16 R15 K18 ["title"]
      136 GETTABLEKS                       R16 R9 K19 ["description"]
      138 SETTABLEKS                       R16 R15 K19 ["description"]
      140 GETTABLEKS                       R16 R9 K20 ["confirmButtonText"]
      142 SETTABLEKS                       R16 R15 K20 ["confirmButtonText"]
      144 SETTABLEKS                       R10 R15 K6 ["propertyRows"]
      146 GETTABLEKS                       R16 R9 K21 ["canConfirm"]
      148 SETTABLEKS                       R16 R15 K21 ["canConfirm"]
      150 GETTABLEKS                       R16 R9 K22 ["getDisabledReason"]
      152 SETTABLEKS                       R16 R15 K22 ["getDisabledReason"]
      154 GETTABLEKS                       R17 R9 K23 ["imageSelection"]
      156 JUMPIFNOT                        R17 ; [+12]
      157 DUPTABLE                         R16 K31 [{["wizardMode"], ["phase"] = "Form", ["slots"]}]
      158 GETTABLEKS                       R17 R9 K23 ["imageSelection"]
      160 GETTABLEKS                       R17 R17 K27 ["wizardMode"]
      162 SETTABLEKS                       R17 R16 K27 ["wizardMode"]
      164 NEWTABLE                         R17 0 0
      166 SETTABLEKS                       R17 R16 K30 ["slots"]
      168 JUMP                             ; [+1]
      169 LOADNIL                          R16
      170 SETTABLEKS                       R16 R15 K23 ["imageSelection"]
      172 NEWCLOSURE                       R16 P8
      173 CAPTURE                          UPVAL U7
      174 CAPTURE                          REF R11
      175 CAPTURE                          VAL R9
      176 CAPTURE                          VAL R12
      177 CAPTURE                          VAL R13
      178 CAPTURE                          UPVAL U30
      179 CAPTURE                          UPVAL U28
      180 CAPTURE                          UPVAL U29
      181 CAPTURE                          VAL R6
      182 CAPTURE                          VAL R14
      183 SETTABLEKS                       R16 R15 K24 ["onContinue"]
      185 GETUPVAL                         R17 7
      186 GETTABLEKS                       R17 R17 K32 ["FFlagAssistantSegmentationPromptModeSelector"]
      188 JUMPIFNOT                        R17 ; [+14]
      189 NEWCLOSURE                       R16 P9
      190 CAPTURE                          VAL R9
      191 CAPTURE                          VAL R8
      192 CAPTURE                          UPVAL U31
      193 CAPTURE                          UPVAL U32
      194 CAPTURE                          UPVAL U29
      195 CAPTURE                          UPVAL U28
      196 CAPTURE                          VAL R6
      197 CAPTURE                          UPVAL U33
      198 CAPTURE                          UPVAL U15
      199 CAPTURE                          UPVAL U1
      200 CAPTURE                          VAL R1
      201 CAPTURE                          VAL R0
      202 JUMP                             ; [+1]
      203 LOADNIL                          R16
      204 SETTABLEKS                       R16 R15 K25 ["onRevive"]
      206 GETUPVAL                         R16 7
      207 GETTABLEKS                       R16 R16 K32 ["FFlagAssistantSegmentationPromptModeSelector"]
      209 JUMPIFNOT                        R16 ; [+24]
      210 GETUPVAL                         R16 33
      211 GETTABLEKS                       R16 R16 K13 ["current"]
      213 JUMPIFNOT                        R16 ; [+20]
      214 GETUPVAL                         R16 33
      215 GETTABLEKS                       R16 R16 K13 ["current"]
      217 GETUPVAL                         R17 15
      218 DUPTABLE                         R18 K39 [{["messageId"], ["contentId"], ["threadId"], ["skipIfNoMessage"] = True, ["transformFn"]}]
      219 GETTABLEKS                       R19 R16 K33 ["messageId"]
      221 SETTABLEKS                       R19 R18 K33 ["messageId"]
      223 GETTABLEKS                       R19 R16 K34 ["contentId"]
      225 SETTABLEKS                       R19 R18 K34 ["contentId"]
      227 GETUPVAL                         R19 1
      228 SETTABLEKS                       R19 R18 K35 ["threadId"]
      230 DUPCLOSURE                       R19 K40 [PROTO_38]
      231 SETTABLEKS                       R19 R18 K38 ["transformFn"]
      233 CALL                             R17 1 0
      234 GETTABLEKS                       R16 R1 K41 ["onContentStart"]
      236 MOVE                             R17 R15
      237 CALL                             R16 1 1
      238 SETTABLEKS                       R16 R12 K13 ["current"]
      240 GETUPVAL                         R17 7
      241 GETTABLEKS                       R17 R17 K32 ["FFlagAssistantSegmentationPromptModeSelector"]
      243 JUMPIFNOT                        R17 ; [+9]
      244 JUMPIFNOT                        R16 ; [+8]
      245 GETUPVAL                         R17 33
      246 DUPTABLE                         R18 K42 [{"messageId", "contentId"}]
      247 SETTABLEKS                       R0 R18 K33 ["messageId"]
      249 SETTABLEKS                       R16 R18 K34 ["contentId"]
      251 SETTABLEKS                       R18 R17 K13 ["current"]
      253 JUMPIFNOT                        R16 ; [+4]
      254 GETTABLEKS                       R17 R1 K43 ["onContentFinished"]
      256 MOVE                             R18 R16
      257 CALL                             R17 1 0
      258 GETUPVAL                         R17 3
      259 LOADB                            R18 1
      260 CALL                             R17 1 0
      261 CLOSEUPVALS                      R11
      262 RETURN                           R0 0
      263 CLOSEUPVALS                      R11
      264 LOADB                            R11 0
      265 DUPTABLE                         R12 K44 [{["type"] = "input_requested", ["title"], ["description"], ["confirmButtonText"], ["propertyRows"], ["onContinue"]}]
      266 GETUPVAL                         R14 31
      267 GETUPVAL                         R15 32
      268 CONCAT                           R13 R14 R15
      269 SETTABLEKS                       R13 R12 K18 ["title"]
      271 GETTABLEKS                       R13 R9 K19 ["description"]
      273 SETTABLEKS                       R13 R12 K19 ["description"]
      275 GETTABLEKS                       R13 R9 K20 ["confirmButtonText"]
      277 SETTABLEKS                       R13 R12 K20 ["confirmButtonText"]
      279 SETTABLEKS                       R10 R12 K6 ["propertyRows"]
      281 NEWCLOSURE                       R13 P11
      282 CAPTURE                          REF R11
      283 CAPTURE                          UPVAL U29
      284 CAPTURE                          UPVAL U28
      285 CAPTURE                          VAL R6
      286 SETTABLEKS                       R13 R12 K24 ["onContinue"]
      288 GETTABLEKS                       R13 R1 K41 ["onContentStart"]
      290 MOVE                             R14 R12
      291 CALL                             R13 1 1
      292 JUMPIFNOT                        R13 ; [+4]
      293 GETTABLEKS                       R14 R1 K43 ["onContentFinished"]
      295 MOVE                             R15 R13
      296 CALL                             R14 1 0
      297 GETUPVAL                         R14 3
      298 LOADB                            R15 1
      299 CALL                             R14 1 0
      300 CLOSEUPVALS                      R11
      301 RETURN                           R0 0
      302 CLOSEUPVALS                      R11
      303 MOVE                             R9 R6
      304 GETUPVAL                         R10 29
      305 CALL                             R9 1 0
      306 RETURN                           R0 0

PROTO_41:
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
       41 GETUPVAL                         R4 3
       42 CALL                             R1 3 0
       43 RETURN                           R0 0

PROTO_42:
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
      148 GETTABLEKS                       R17 R0 K22 ["onSlashCommandRecognized"]
      150 JUMPIFNOT                        R17 ; [+3]
      151 GETTABLEKS                       R17 R0 K22 ["onSlashCommandRecognized"]
      153 CALL                             R17 0 0
      154 LOADB                            R17 0
      155 LOADB                            R18 0
      156 NEWCLOSURE                       R19 P0
      157 CAPTURE                          REF R18
      158 CAPTURE                          UPVAL U7
      159 CAPTURE                          VAL R2
      160 NEWCLOSURE                       R20 P1
      161 CAPTURE                          REF R18
      162 CAPTURE                          UPVAL U9
      163 GETUPVAL                         R21 10
      164 NEWCLOSURE                       R22 P2
      165 CAPTURE                          UPVAL U11
      166 CAPTURE                          UPVAL U12
      167 CAPTURE                          UPVAL U13
      168 CAPTURE                          VAL R3
      169 CAPTURE                          UPVAL U14
      170 CAPTURE                          VAL R2
      171 CAPTURE                          UPVAL U15
      172 CAPTURE                          UPVAL U7
      173 CAPTURE                          UPVAL U16
      174 CAPTURE                          UPVAL U17
      175 CAPTURE                          REF R17
      176 CAPTURE                          UPVAL U18
      177 CAPTURE                          VAL R4
      178 CAPTURE                          UPVAL U19
      179 CAPTURE                          UPVAL U20
      180 CAPTURE                          UPVAL U21
      181 CAPTURE                          UPVAL U22
      182 CAPTURE                          UPVAL U23
      183 CAPTURE                          UPVAL U24
      184 CAPTURE                          VAL R20
      185 CAPTURE                          VAL R1
      186 CAPTURE                          VAL R0
      187 CAPTURE                          REF R18
      188 CAPTURE                          UPVAL U25
      189 CAPTURE                          UPVAL U26
      190 CAPTURE                          REF R12
      191 CAPTURE                          REF R10
      192 CAPTURE                          REF R9
      193 CAPTURE                          UPVAL U27
      194 CAPTURE                          REF R8
      195 CAPTURE                          UPVAL U28
      196 CAPTURE                          UPVAL U3
      197 CAPTURE                          REF R11
      198 CAPTURE                          UPVAL U29
      199 CALL                             R21 1 0
      200 LOADB                            R21 1
      201 CLOSEUPVALS                      R8
      202 RETURN                           R21 1

PROTO_43:
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
       24 GETUPVAL                         R8 7
       25 CALL                             R8 0 1
       26 GETUPVAL                         R9 8
       27 CALL                             R9 0 1
       28 GETUPVAL                         R10 9
       29 CALL                             R10 0 1
       30 GETUPVAL                         R11 10
       31 CALL                             R11 0 1
       32 GETUPVAL                         R12 5
       33 GETTABLEKS                       R12 R12 K1 ["useContext"]
       35 GETUPVAL                         R13 11
       36 GETTABLEKS                       R13 R13 K2 ["Context"]
       38 CALL                             R12 1 1
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
       53 LOADNIL                          R15
       54 GETUPVAL                         R16 14
       55 GETTABLEKS                       R16 R16 K4 ["FFlagAssistantSlashCommandStepBackNavigation"]
       57 JUMPIFNOT                        R16 ; [+8]
       58 GETUPVAL                         R16 5
       59 GETTABLEKS                       R16 R16 K1 ["useContext"]
       61 GETUPVAL                         R17 15
       62 GETTABLEKS                       R17 R17 K2 ["Context"]
       64 CALL                             R16 1 1
       65 MOVE                             R15 R16
       66 GETUPVAL                         R17 14
       67 GETTABLEKS                       R17 R17 K4 ["FFlagAssistantSlashCommandStepBackNavigation"]
       69 JUMPIFNOT                        R17 ; [+3]
       70 GETTABLEKS                       R16 R15 K5 ["setSlashCommandStepInfo"]
       72 JUMP                             ; [+1]
       73 LOADNIL                          R16
       74 GETUPVAL                         R17 16
       75 CALL                             R17 0 2
       76 GETUPVAL                         R19 17
       77 CALL                             R19 0 1
       78 GETUPVAL                         R20 18
       79 CALL                             R20 0 1
       80 NEWCLOSURE                       R21 P0
       81 CAPTURE                          VAL R8
       82 CAPTURE                          VAL R9
       83 CAPTURE                          VAL R10
       84 CAPTURE                          UPVAL U19
       85 CAPTURE                          UPVAL U20
       86 CAPTURE                          VAL R18
       87 CAPTURE                          UPVAL U21
       88 CAPTURE                          UPVAL U14
       89 CAPTURE                          UPVAL U22
       90 CAPTURE                          VAL R19
       91 CAPTURE                          VAL R4
       92 CAPTURE                          VAL R3
       93 CAPTURE                          UPVAL U23
       94 CAPTURE                          VAL R0
       95 CAPTURE                          VAL R12
       96 CAPTURE                          VAL R13
       97 CAPTURE                          UPVAL U24
       98 CAPTURE                          UPVAL U25
       99 CAPTURE                          UPVAL U26
      100 CAPTURE                          VAL R11
      101 CAPTURE                          VAL R1
      102 CAPTURE                          VAL R2
      103 CAPTURE                          VAL R17
      104 CAPTURE                          VAL R7
      105 CAPTURE                          VAL R14
      106 CAPTURE                          VAL R20
      107 CAPTURE                          VAL R16
      108 CAPTURE                          UPVAL U27
      109 CAPTURE                          UPVAL U28
      110 CAPTURE                          VAL R5
      111 GETUPVAL                         R22 5
      112 GETTABLEKS                       R22 R22 K6 ["useCallback"]
      114 MOVE                             R23 R21
      115 NEWTABLE                         R24 0 17
      117 MOVE                             R25 R0
      118 MOVE                             R26 R3
      119 MOVE                             R27 R4
      120 MOVE                             R28 R7
      121 MOVE                             R29 R18
      122 MOVE                             R30 R12
      123 MOVE                             R31 R13
      124 MOVE                             R32 R1
      125 MOVE                             R33 R17
      126 MOVE                             R34 R10
      127 MOVE                             R35 R9
      128 MOVE                             R36 R2
      129 MOVE                             R37 R11
      130 MOVE                             R38 R14
      131 MOVE                             R39 R19
      132 MOVE                             R40 R8
      133 SETLIST                          R24 R25 16 [1]
      135 MOVE                             R25 R20
      136 SETLIST                          R24 R25 1 [17]
      138 CALL                             R22 2 -1
      139 RETURN                           R22 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["Contexts"]
       13 GETTABLEKS                       R2 R2 K8 ["ACPClientServiceContext"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Components"]
       20 GETTABLEKS                       R3 R3 K7 ["Contexts"]
       22 GETTABLEKS                       R3 R3 K9 ["AcpSessionMonitorContext"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K10 ["Parent"]
       29 GETTABLEKS                       R4 R4 K11 ["AssistantHarness"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K10 ["Parent"]
       36 GETTABLEKS                       R5 R5 K12 ["Dash"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K13 ["Flags"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K14 ["Util"]
       48 GETTABLEKS                       R7 R7 K15 ["ImageContentStore"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K6 ["Components"]
       55 GETTABLEKS                       R8 R8 K16 ["ContentWidgets"]
       57 GETTABLEKS                       R8 R8 K17 ["InputRequestedContentWidget"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R9 R0 K6 ["Components"]
       64 GETTABLEKS                       R9 R9 K7 ["Contexts"]
       66 GETTABLEKS                       R9 R9 K18 ["DefaultLLMProvider"]
       68 GETTABLEKS                       R9 R9 K19 ["LLMPackageContextProvider"]
       70 CALL                             R8 1 1
       71 GETIMPORT                        R9 K5 [require]
       73 GETTABLEKS                       R10 R0 K10 ["Parent"]
       75 GETTABLEKS                       R10 R10 K20 ["ModelContextProtocol"]
       77 CALL                             R9 1 1
       78 GETIMPORT                        R10 K5 [require]
       80 GETTABLEKS                       R11 R0 K6 ["Components"]
       82 GETTABLEKS                       R11 R11 K7 ["Contexts"]
       84 GETTABLEKS                       R11 R11 K21 ["OngoingAcpPromptContext"]
       86 CALL                             R10 1 1
       87 GETIMPORT                        R11 K5 [require]
       89 GETTABLEKS                       R12 R0 K10 ["Parent"]
       91 GETTABLEKS                       R12 R12 K22 ["React"]
       93 CALL                             R11 1 1
       94 GETIMPORT                        R12 K5 [require]
       96 GETTABLEKS                       R13 R0 K6 ["Components"]
       98 GETTABLEKS                       R13 R13 K7 ["Contexts"]
      100 GETTABLEKS                       R13 R13 K23 ["SessionIdContext"]
      102 CALL                             R12 1 1
      103 GETIMPORT                        R13 K5 [require]
      105 GETTABLEKS                       R14 R0 K24 ["ACPClientService"]
      107 GETTABLEKS                       R14 R14 K25 ["runSlashCommandViaService"]
      109 CALL                             R13 1 1
      110 GETTABLEKS                       R14 R3 K26 ["ToolNaming"]
      112 GETIMPORT                        R15 K5 [require]
      114 GETTABLEKS                       R16 R0 K27 ["Types"]
      116 CALL                             R15 1 1
      117 GETIMPORT                        R16 K5 [require]
      119 GETTABLEKS                       R17 R0 K6 ["Components"]
      121 GETTABLEKS                       R17 R17 K28 ["UIToolRegistry"]
      123 CALL                             R16 1 1
      124 GETIMPORT                        R17 K5 [require]
      126 GETTABLEKS                       R18 R0 K29 ["Hooks"]
      128 GETTABLEKS                       R18 R18 K30 ["useAddContent"]
      130 CALL                             R17 1 1
      131 GETIMPORT                        R18 K5 [require]
      133 GETTABLEKS                       R19 R0 K29 ["Hooks"]
      135 GETTABLEKS                       R19 R19 K31 ["useAssistantMode"]
      137 CALL                             R18 1 1
      138 GETIMPORT                        R19 K5 [require]
      140 GETTABLEKS                       R20 R0 K29 ["Hooks"]
      142 GETTABLEKS                       R20 R20 K32 ["useConversation"]
      144 CALL                             R19 1 1
      145 GETIMPORT                        R20 K5 [require]
      147 GETTABLEKS                       R21 R0 K29 ["Hooks"]
      149 GETTABLEKS                       R21 R21 K33 ["useCurrentThread"]
      151 CALL                             R20 1 1
      152 GETIMPORT                        R21 K5 [require]
      154 GETTABLEKS                       R22 R0 K29 ["Hooks"]
      156 GETTABLEKS                       R22 R22 K34 ["useDispatchToolCall"]
      158 CALL                             R21 1 1
      159 GETIMPORT                        R22 K5 [require]
      161 GETTABLEKS                       R23 R0 K29 ["Hooks"]
      163 GETTABLEKS                       R23 R23 K35 ["useEditContent"]
      165 CALL                             R22 1 1
      166 GETIMPORT                        R23 K5 [require]
      168 GETTABLEKS                       R24 R0 K29 ["Hooks"]
      170 GETTABLEKS                       R24 R24 K36 ["useEditThread"]
      172 CALL                             R23 1 1
      173 GETIMPORT                        R24 K5 [require]
      175 GETTABLEKS                       R25 R0 K29 ["Hooks"]
      177 GETTABLEKS                       R25 R25 K37 ["useGetContentObserver"]
      179 CALL                             R24 1 1
      180 GETIMPORT                        R25 K5 [require]
      182 GETTABLEKS                       R26 R0 K29 ["Hooks"]
      184 GETTABLEKS                       R26 R26 K38 ["useGetOrAddMessage"]
      186 CALL                             R25 1 1
      187 GETIMPORT                        R26 K5 [require]
      189 GETTABLEKS                       R27 R0 K29 ["Hooks"]
      191 GETTABLEKS                       R27 R27 K39 ["useShowError"]
      193 CALL                             R26 1 1
      194 GETIMPORT                        R27 K5 [require]
      196 GETTABLEKS                       R28 R0 K29 ["Hooks"]
      198 GETTABLEKS                       R28 R28 K40 ["useThreadId"]
      200 CALL                             R27 1 1
      201 GETIMPORT                        R28 K5 [require]
      203 GETTABLEKS                       R29 R0 K29 ["Hooks"]
      205 GETTABLEKS                       R29 R29 K41 ["useWithClient"]
      207 CALL                             R28 1 1
      208 GETTABLEKS                       R29 R9 K42 ["ToolRegistry"]
      210 GETTABLEKS                       R30 R16 K43 ["CommandPrefix"]
      212 GETTABLEKS                       R31 R16 K44 ["CommandDelimiter"]
      214 DUPCLOSURE                       R32 K45 [PROTO_0]
      215 CAPTURE                          VAL R6
      216 DUPCLOSURE                       R33 K46 [PROTO_1]
      217 CAPTURE                          VAL R15
      218 DUPCLOSURE                       R34 K47 [PROTO_2]
      219 CAPTURE                          VAL R15
      220 CAPTURE                          VAL R5
      221 CAPTURE                          VAL R29
      222 CAPTURE                          VAL R14
      223 DUPCLOSURE                       R35 K48 [PROTO_43]
      224 CAPTURE                          VAL R24
      225 CAPTURE                          VAL R17
      226 CAPTURE                          VAL R22
      227 CAPTURE                          VAL R25
      228 CAPTURE                          VAL R28
      229 CAPTURE                          VAL R11
      230 CAPTURE                          VAL R12
      231 CAPTURE                          VAL R27
      232 CAPTURE                          VAL R20
      233 CAPTURE                          VAL R19
      234 CAPTURE                          VAL R23
      235 CAPTURE                          VAL R1
      236 CAPTURE                          VAL R2
      237 CAPTURE                          VAL R10
      238 CAPTURE                          VAL R5
      239 CAPTURE                          VAL R8
      240 CAPTURE                          VAL R18
      241 CAPTURE                          VAL R26
      242 CAPTURE                          VAL R21
      243 CAPTURE                          VAL R30
      244 CAPTURE                          VAL R16
      245 CAPTURE                          VAL R31
      246 CAPTURE                          VAL R32
      247 CAPTURE                          VAL R15
      248 CAPTURE                          VAL R29
      249 CAPTURE                          VAL R14
      250 CAPTURE                          VAL R13
      251 CAPTURE                          VAL R4
      252 CAPTURE                          VAL R7
      253 RETURN                           R35 1
