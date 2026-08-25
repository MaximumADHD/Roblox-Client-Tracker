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

PROTO_2:
        0 RETURN                           R0 0

PROTO_3:
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

PROTO_4:
        0 JUMPIF                           R1 ; [+2]
        1 DUPCLOSURE                       R6 K0 [PROTO_2]
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
        1 JUMPIFNOT                        R1 ; [+14]
        2 GETIMPORT                        R1 K1 [pcall]
        4 GETUPVAL                         R2 0
        5 MOVE                             R3 R0
        6 CALL                             R1 2 1
        7 JUMPIF                           R1 ; [+11]
        8 GETIMPORT                        R2 K3 [warn]
       10 LOADK                            R3 K4 ["Error handling slash command tool completion"]
       11 CALL                             R2 1 0
       12 GETUPVAL                         R2 1
       13 LOADB                            R3 1
       14 CALL                             R2 1 0
       15 RETURN                           R0 0
       16 GETUPVAL                         R1 1
       17 LOADB                            R2 1
       18 CALL                             R1 1 0
       19 RETURN                           R0 0

PROTO_8:
        0 JUMPIFEQKS                       R0 K0 ["cancelled"] ; [+6]
        2 GETIMPORT                        R1 K2 [warn]
        4 LOADK                            R2 K3 ["Error running slash command via ACP:"]
        5 MOVE                             R3 R0
        6 CALL                             R1 2 0
        7 GETUPVAL                         R1 0
        8 LOADB                            R2 1
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

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
       24 GETTABLEKS                       R4 R0 K6 ["name"]
       26 GETUPVAL                         R5 3
       27 GETTABLEKS                       R7 R0 K6 ["name"]
       29 NAMECALL                         R5 R5 K7 ["getClientForStaticTool"]
       31 CALL                             R5 2 1
       32 GETUPVAL                         R6 4
       33 GETTABLEKS                       R6 R6 K8 ["getMcpClientIdentifier"]
       35 CALL                             R6 0 1
       36 JUMPIFNOTEQ                      R5 R6 ; [+8]
       38 GETUPVAL                         R5 5
       39 GETTABLEKS                       R5 R5 K9 ["addPrefix"]
       41 GETTABLEKS                       R6 R0 K6 ["name"]
       43 CALL                             R5 1 1
       44 MOVE                             R4 R5
       45 GETUPVAL                         R6 6
       46 NOT                              R5 R6
       47 LOADB                            R6 1
       48 SETUPVAL                         R6 6
       49 GETUPVAL                         R6 7
       50 DUPTABLE                         R7 K21 [{"service", "sessionMonitor", "threadId", "acpSessionId", "setAcpSessionId", "addContent", "editContent", "assistantMode", "conversationSessionId", "assistantMessageId", "registerPromptController", "unregisterPromptController"}]
       51 SETTABLEKS                       R2 R7 K0 ["service"]
       53 MOVE                             R8 R3
       54 GETUPVAL                         R9 8
       55 CALL                             R8 1 1
       56 SETTABLEKS                       R8 R7 K10 ["sessionMonitor"]
       58 GETUPVAL                         R8 8
       59 SETTABLEKS                       R8 R7 K11 ["threadId"]
       61 GETUPVAL                         R8 9
       62 JUMPIFNOT                        R8 ; [+3]
       63 GETUPVAL                         R8 9
       64 GETTABLEKS                       R8 R8 K12 ["acpSessionId"]
       66 SETTABLEKS                       R8 R7 K12 ["acpSessionId"]
       68 NEWCLOSURE                       R8 P0
       69 CAPTURE                          UPVAL U10
       70 CAPTURE                          UPVAL U8
       71 SETTABLEKS                       R8 R7 K13 ["setAcpSessionId"]
       73 GETUPVAL                         R8 11
       74 SETTABLEKS                       R8 R7 K14 ["addContent"]
       76 GETUPVAL                         R8 12
       77 SETTABLEKS                       R8 R7 K15 ["editContent"]
       79 GETUPVAL                         R8 13
       80 SETTABLEKS                       R8 R7 K16 ["assistantMode"]
       82 GETUPVAL                         R8 14
       83 SETTABLEKS                       R8 R7 K17 ["conversationSessionId"]
       85 GETUPVAL                         R8 15
       86 SETTABLEKS                       R8 R7 K18 ["assistantMessageId"]
       88 GETUPVAL                         R8 16
       89 GETTABLEKS                       R8 R8 K19 ["registerPromptController"]
       91 SETTABLEKS                       R8 R7 K19 ["registerPromptController"]
       93 GETUPVAL                         R8 16
       94 GETTABLEKS                       R8 R8 K20 ["unregisterPromptController"]
       96 SETTABLEKS                       R8 R7 K20 ["unregisterPromptController"]
       98 DUPTABLE                         R8 K26 [{"agentToolName", "arguments", "userPromptText", "images"}]
       99 SETTABLEKS                       R4 R8 K22 ["agentToolName"]
      101 GETTABLEKS                       R9 R0 K23 ["arguments"]
      103 SETTABLEKS                       R9 R8 K23 ["arguments"]
      105 JUMPIFNOT                        R5 ; [+2]
      106 GETUPVAL                         R9 17
      107 JUMP                             ; [+1]
      108 LOADNIL                          R9
      109 SETTABLEKS                       R9 R8 K24 ["userPromptText"]
      111 JUMPIFNOT                        R5 ; [+4]
      112 GETUPVAL                         R9 18
      113 GETTABLEKS                       R9 R9 K25 ["images"]
      115 JUMP                             ; [+1]
      116 LOADNIL                          R9
      117 SETTABLEKS                       R9 R8 K25 ["images"]
      119 CALL                             R6 2 1
      120 GETTABLEKS                       R7 R6 K27 ["promise"]
      122 NEWCLOSURE                       R9 P1
      123 CAPTURE                          VAL R1
      124 CAPTURE                          UPVAL U1
      125 NAMECALL                         R7 R7 K28 ["andThen"]
      127 CALL                             R7 2 1
      128 NEWCLOSURE                       R9 P2
      129 CAPTURE                          UPVAL U1
      130 NAMECALL                         R7 R7 K29 ["catch"]
      132 CALL                             R7 2 0
      133 RETURN                           R0 0

PROTO_10:
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

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setLastPacketTime"]
        3 GETIMPORT                        R1 K3 [os.clock]
        5 CALL                             R1 0 -1
        6 CALL                             R0 -1 0
        7 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["user_requested_cancellation"]
        2 NAMECALL                         R0 R0 K1 ["Fire"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_13:
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

PROTO_14:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["cancel"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 LOADB                            R2 1
        2 MOVE                             R3 R0
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_16:
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

PROTO_17:
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
       61 DUPCLOSURE                       R8 K19 [PROTO_2]
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
       75 JUMPIFNOT                        R5 ; [+21]
       76 MOVE                             R10 R8
       77 LOADB                            R11 1
       78 DUPTABLE                         R12 K24 [{["content"], ["isError"] = False, ["structuredContent"]}]
       79 NEWTABLE                         R13 0 1
       81 DUPTABLE                         R14 K27 [{["type"] = "text", ["text"] = "Tool call is still running asynchronously."}]
       82 SETLIST                          R13 R14 1 [1]
       84 SETTABLEKS                       R13 R12 K20 ["content"]
       86 GETUPVAL                         R14 7
       87 GETTABLEKS                       R14 R14 K28 ["FFlagAssistantSplitToolsAndWidgets"]
       89 JUMPIFNOT                        R14 ; [+2]
       90 DUPTABLE                         R13 K31 [{["pending"] = True}]
       91 JUMP                             ; [+1]
       92 LOADNIL                          R13
       93 SETTABLEKS                       R13 R12 K23 ["structuredContent"]
       95 LOADB                            R13 1
       96 CALL                             R10 3 0
       97 GETUPVAL                         R11 8
       98 GETTABLEKS                       R11 R11 K32 ["getIsAskInputToolEnabled"]
      100 CALL                             R11 0 1
      101 JUMPIFNOT                        R11 ; [+7]
      102 GETUPVAL                         R10 9
      103 GETTABLEKS                       R10 R10 K33 ["getToolCallOptions"]
      105 GETTABLEKS                       R11 R0 K6 ["name"]
      107 CALL                             R10 1 1
      108 JUMP                             ; [+1]
      109 LOADNIL                          R10
      110 GETUPVAL                         R11 7
      111 GETTABLEKS                       R11 R11 K34 ["FFlagAssistantSupportSlashCommandCancellation"]
      113 JUMPIFNOT                        R11 ; [+48]
      114 GETUPVAL                         R12 10
      115 FASTCALL2K                       ASSERT R12 K35 ; [+4]
      117 LOADK                            R13 K35 ["setSlashCommandCancel is not available"]
      118 GETIMPORT                        R11 K37 [assert]
      120 CALL                             R11 2 0
      121 GETUPVAL                         R11 11
      122 GETTABLEKS                       R11 R11 K38 ["new"]
      124 CALL                             R11 0 1
      125 DUPTABLE                         R12 K43 [{["timeout"], ["resetTimeoutOnProgress"] = True, ["onprogress"], ["signal"]}]
      126 MOVE                             R13 R10
      127 JUMPIFNOT                        R13 ; [+2]
      128 GETTABLEKS                       R13 R10 K39 ["timeout"]
      130 SETTABLEKS                       R13 R12 K39 ["timeout"]
      132 NEWCLOSURE                       R13 P3
      133 CAPTURE                          UPVAL U12
      134 SETTABLEKS                       R13 R12 K41 ["onprogress"]
      136 SETTABLEKS                       R11 R12 K42 ["signal"]
      138 GETUPVAL                         R13 13
      139 GETTABLEKS                       R13 R13 K38 ["new"]
      141 NEWCLOSURE                       R14 P4
      142 CAPTURE                          VAL R11
      143 CAPTURE                          UPVAL U14
      144 CAPTURE                          UPVAL U15
      145 CAPTURE                          VAL R0
      146 CAPTURE                          VAL R12
      147 CAPTURE                          VAL R6
      148 CAPTURE                          UPVAL U10
      149 CAPTURE                          UPVAL U13
      150 CAPTURE                          VAL R9
      151 CAPTURE                          UPVAL U7
      152 CAPTURE                          UPVAL U5
      153 CAPTURE                          VAL R2
      154 CAPTURE                          VAL R3
      155 CAPTURE                          VAL R7
      156 CALL                             R13 1 1
      157 GETUPVAL                         R14 10
      158 NEWCLOSURE                       R15 P5
      159 CAPTURE                          VAL R13
      160 CALL                             R14 1 0
      161 RETURN                           R0 0
      162 DUPTABLE                         R11 K44 [{["timeout"], ["resetTimeoutOnProgress"] = True}]
      163 MOVE                             R12 R10
      164 JUMPIFNOT                        R12 ; [+2]
      165 GETTABLEKS                       R12 R10 K39 ["timeout"]
      167 SETTABLEKS                       R12 R11 K39 ["timeout"]
      169 GETUPVAL                         R12 14
      170 GETUPVAL                         R14 15
      171 GETTABLEKS                       R14 R14 K45 ["getMcpClientIdentifier"]
      173 CALL                             R14 0 1
      174 GETTABLEKS                       R15 R0 K6 ["name"]
      176 GETTABLEKS                       R16 R0 K9 ["arguments"]
      178 MOVE                             R17 R11
      179 MOVE                             R18 R6
      180 NAMECALL                         R12 R12 K46 ["callToolForClient"]
      182 CALL                             R12 6 1
      183 NEWCLOSURE                       R14 P6
      184 CAPTURE                          VAL R9
      185 NAMECALL                         R12 R12 K47 ["andThen"]
      187 CALL                             R12 2 1
      188 NEWCLOSURE                       R14 P7
      189 CAPTURE                          VAL R9
      190 CAPTURE                          UPVAL U7
      191 CAPTURE                          UPVAL U5
      192 CAPTURE                          VAL R2
      193 CAPTURE                          VAL R0
      194 CAPTURE                          VAL R3
      195 CAPTURE                          VAL R7
      196 NAMECALL                         R12 R12 K48 ["catch"]
      198 CALL                             R12 2 0
      199 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+5]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 MOVE                             R4 R1
        6 CALL                             R2 2 0
        7 RETURN                           R0 0
        8 GETUPVAL                         R2 2
        9 MOVE                             R3 R0
       10 MOVE                             R4 R1
       11 CALL                             R2 2 0
       12 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLE                         R0 R1 R2
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_20:
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

PROTO_21:
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

PROTO_22:
        0 JUMPIFNOT                        R0 ; [+3]
        1 GETTABLEKS                       R1 R0 K0 ["isError"]
        3 JUMPIFNOT                        R1 ; [+6]
        4 GETUPVAL                         R1 0
        5 CALL                             R1 0 0
        6 GETUPVAL                         R1 1
        7 LOADB                            R2 1
        8 CALL                             R1 1 0
        9 RETURN                           R0 0
       10 DUPTABLE                         R1 K6 [{["type"] = "tool_use", ["id"], ["name"], ["input"]}]
       11 LOADK                            R3 K7 ["slash_command_chain_%*"]
       12 GETUPVAL                         R6 2
       13 SUBK                             R5 R6 K8 [1]
       14 NAMECALL                         R3 R3 K9 ["format"]
       16 CALL                             R3 2 1
       17 MOVE                             R2 R3
       18 SETTABLEKS                       R2 R1 K3 ["id"]
       20 GETUPVAL                         R2 3
       21 GETTABLEKS                       R2 R2 K4 ["name"]
       23 SETTABLEKS                       R2 R1 K4 ["name"]
       25 GETUPVAL                         R2 3
       26 GETTABLEKS                       R2 R2 K10 ["arguments"]
       28 SETTABLEKS                       R2 R1 K5 ["input"]
       30 DUPTABLE                         R2 K17 [{["type"] = "tool_result", ["id"], ["name"], ["content"], [5], ["structuredContent"], ["startTime"] = 0, ["startTimeAfterConfirmation"] = 0}]
       31 GETTABLEKS                       R3 R1 K3 ["id"]
       33 SETTABLEKS                       R3 R2 K3 ["id"]
       35 GETUPVAL                         R3 3
       36 GETTABLEKS                       R3 R3 K4 ["name"]
       38 SETTABLEKS                       R3 R2 K4 ["name"]
       40 GETTABLEKS                       R3 R0 K12 ["content"]
       42 SETTABLEKS                       R3 R2 K12 ["content"]
       44 GETTABLEKS                       R3 R0 K0 ["isError"]
       46 SETTABLEKS                       R3 R2 K0 ["isError"]
       48 GETTABLEKS                       R3 R0 K13 ["structuredContent"]
       50 SETTABLEKS                       R3 R2 K13 ["structuredContent"]
       52 GETUPVAL                         R4 4
       53 DUPTABLE                         R5 K20 [{"toolUse", "toolResult"}]
       54 SETTABLEKS                       R1 R5 K18 ["toolUse"]
       56 SETTABLEKS                       R2 R5 K19 ["toolResult"]
       58 FASTCALL2                        TABLE_INSERT R4 R5 ; [+3]
       60 GETIMPORT                        R3 K23 [table.insert]
       62 CALL                             R3 2 0
       63 GETUPVAL                         R3 5
       64 JUMPIFNOT                        R3 ; [+33]
       65 GETUPVAL                         R3 6
       66 JUMPIFNOT                        R3 ; [+31]
       67 GETUPVAL                         R3 6
       68 GETTABLEKS                       R3 R3 K24 ["continueWithLLM"]
       70 JUMPIFNOT                        R3 ; [+27]
       71 GETUPVAL                         R3 7
       72 CALL                             R3 0 1
       73 JUMPIFNOT                        R3 ; [+13]
       74 GETUPVAL                         R3 8
       75 GETTABLEKS                       R3 R3 K25 ["onContinueWithLLMWithResult"]
       77 JUMPIFNOT                        R3 ; [+9]
       78 LOADB                            R3 1
       79 SETUPVAL                         R3 9
       80 GETUPVAL                         R3 8
       81 GETTABLEKS                       R3 R3 K25 ["onContinueWithLLMWithResult"]
       83 GETUPVAL                         R4 10
       84 MOVE                             R5 R0
       85 CALL                             R3 2 0
       86 JUMP                             ; [+11]
       87 GETUPVAL                         R3 8
       88 GETTABLEKS                       R3 R3 K26 ["onContinueWithLLM"]
       90 JUMPIFNOT                        R3 ; [+7]
       91 LOADB                            R3 1
       92 SETUPVAL                         R3 9
       93 GETUPVAL                         R3 8
       94 GETTABLEKS                       R3 R3 K26 ["onContinueWithLLM"]
       96 GETUPVAL                         R4 10
       97 CALL                             R3 1 0
       98 GETUPVAL                         R3 11
       99 CALL                             R3 0 0
      100 RETURN                           R0 0

PROTO_23:
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
       64 NEWCLOSURE                       R5 P0
       65 CAPTURE                          UPVAL U6
       66 CAPTURE                          UPVAL U4
       67 CAPTURE                          UPVAL U0
       68 CAPTURE                          VAL R2
       69 CAPTURE                          UPVAL U5
       70 CAPTURE                          VAL R4
       71 CAPTURE                          UPVAL U8
       72 CAPTURE                          UPVAL U9
       73 CAPTURE                          UPVAL U10
       74 CAPTURE                          UPVAL U3
       75 CAPTURE                          UPVAL U11
       76 CAPTURE                          UPVAL U12
       77 GETUPVAL                         R6 13
       78 CALL                             R6 0 1
       79 JUMPIFNOT                        R6 ; [+5]
       80 GETUPVAL                         R6 14
       81 MOVE                             R7 R2
       82 MOVE                             R8 R5
       83 CALL                             R6 2 0
       84 RETURN                           R0 0
       85 GETUPVAL                         R6 15
       86 MOVE                             R7 R2
       87 MOVE                             R8 R5
       88 CALL                             R6 2 0
       89 RETURN                           R0 0

PROTO_24:
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
       37 CAPTURE                          VAL R8
       38 CAPTURE                          UPVAL U1
       39 CAPTURE                          UPVAL U7
       40 CAPTURE                          UPVAL U8
       41 MOVE                             R9 R8
       42 CALL                             R9 0 0
       43 CLOSEUPVALS                      R2
       44 RETURN                           R0 0

PROTO_25:
        0 JUMPIFNOT                        R0 ; [+7]
        1 GETUPVAL                         R2 0
        2 FASTCALL2                        TABLE_INSERT R2 R0 ; [+4]
        4 MOVE                             R3 R0
        5 GETIMPORT                        R1 K2 [table.insert]
        7 CALL                             R1 2 0
        8 GETUPVAL                         R1 1
        9 CALL                             R1 0 0
       10 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 LENGTH                           R1 R2
        3 JUMPIFNOTLT                      R1 R0 ; [+5]
        5 GETUPVAL                         R0 2
        6 LOADB                            R1 1
        7 CALL                             R0 1 0
        8 RETURN                           R0 0
        9 GETUPVAL                         R1 1
       10 GETUPVAL                         R2 0
       11 GETTABLE                         R0 R1 R2
       12 GETUPVAL                         R1 0
       13 ADDK                             R1 R1 K0 [1]
       14 SETUPVAL                         R1 0
       15 GETIMPORT                        R1 K2 [pcall]
       17 MOVE                             R2 R0
       18 GETUPVAL                         R3 3
       19 CALL                             R1 2 2
       20 JUMPIF                           R1 ; [+9]
       21 GETIMPORT                        R3 K4 [warn]
       23 LOADK                            R4 K5 ["Error preparing slash command chain step:"]
       24 MOVE                             R5 R2
       25 CALL                             R3 2 0
       26 GETUPVAL                         R3 2
       27 LOADB                            R4 1
       28 CALL                             R3 1 0
       29 RETURN                           R0 0
       30 NEWCLOSURE                       R3 P0
       31 CAPTURE                          UPVAL U3
       32 CAPTURE                          UPVAL U4
       33 GETUPVAL                         R4 5
       34 CALL                             R4 0 1
       35 JUMPIFNOT                        R4 ; [+5]
       36 GETUPVAL                         R4 6
       37 MOVE                             R5 R2
       38 MOVE                             R6 R3
       39 CALL                             R4 2 0
       40 RETURN                           R0 0
       41 GETUPVAL                         R4 7
       42 MOVE                             R5 R2
       43 MOVE                             R6 R3
       44 CALL                             R4 2 0
       45 RETURN                           R0 0

PROTO_27:
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
       13 CAPTURE                          UPVAL U0
       14 CAPTURE                          VAL R2
       15 CAPTURE                          UPVAL U3
       16 CAPTURE                          UPVAL U4
       17 CAPTURE                          UPVAL U5
       18 MOVE                             R3 R2
       19 CALL                             R3 0 0
       20 CLOSEUPVALS                      R1
       21 RETURN                           R0 0

PROTO_28:
        0 GETIMPORT                        R2 K2 [table.create]
        2 LENGTH                           R4 R1
        3 ADDK                             R3 R4 K3 [1]
        4 CALL                             R2 1 1
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          VAL R2
        7 CAPTURE                          VAL R1
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          UPVAL U3
       12 GETUPVAL                         R4 1
       13 CALL                             R4 0 1
       14 JUMPIFNOT                        R4 ; [+5]
       15 GETUPVAL                         R4 2
       16 MOVE                             R5 R0
       17 MOVE                             R6 R3
       18 CALL                             R4 2 0
       19 RETURN                           R0 0
       20 GETUPVAL                         R4 3
       21 MOVE                             R5 R0
       22 MOVE                             R6 R3
       23 CALL                             R4 2 0
       24 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onContinueWithLLMWithResult"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onContinueWithLLM"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_31:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+34]
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
       16 NEWCLOSURE                       R3 P0
       17 CAPTURE                          VAL R2
       18 CAPTURE                          VAL R1
       19 CAPTURE                          UPVAL U1
       20 CAPTURE                          UPVAL U2
       21 CAPTURE                          UPVAL U3
       22 CAPTURE                          UPVAL U4
       23 GETUPVAL                         R4 2
       24 CALL                             R4 0 1
       25 JUMPIFNOT                        R4 ; [+5]
       26 GETUPVAL                         R4 3
       27 MOVE                             R5 R0
       28 MOVE                             R6 R3
       29 CALL                             R4 2 0
       30 RETURN                           R0 0
       31 GETUPVAL                         R4 4
       32 MOVE                             R5 R0
       33 MOVE                             R6 R3
       34 CALL                             R4 2 0
       35 RETURN                           R0 0
       36 JUMPIFNOT                        R0 ; [+68]
       37 GETUPVAL                         R1 5
       38 JUMPIFNOT                        R1 ; [+27]
       39 GETUPVAL                         R1 5
       40 GETTABLEKS                       R1 R1 K7 ["continueWithLLM"]
       42 JUMPIFNOT                        R1 ; [+23]
       43 GETUPVAL                         R1 6
       44 CALL                             R1 0 1
       45 JUMPIFNOT                        R1 ; [+20]
       46 GETUPVAL                         R1 7
       47 GETTABLEKS                       R1 R1 K8 ["onContinueWithLLMWithResult"]
       49 JUMPIFNOT                        R1 ; [+16]
       50 NEWCLOSURE                       R1 P1
       51 CAPTURE                          UPVAL U7
       52 CAPTURE                          UPVAL U8
       53 GETUPVAL                         R2 2
       54 CALL                             R2 0 1
       55 JUMPIFNOT                        R2 ; [+5]
       56 GETUPVAL                         R2 3
       57 MOVE                             R3 R0
       58 MOVE                             R4 R1
       59 CALL                             R2 2 0
       60 RETURN                           R0 0
       61 GETUPVAL                         R2 4
       62 MOVE                             R3 R0
       63 MOVE                             R4 R1
       64 CALL                             R2 2 0
       65 RETURN                           R0 0
       66 GETUPVAL                         R1 5
       67 JUMPIFNOT                        R1 ; [+24]
       68 GETUPVAL                         R1 5
       69 GETTABLEKS                       R1 R1 K7 ["continueWithLLM"]
       71 JUMPIFNOT                        R1 ; [+20]
       72 GETUPVAL                         R1 7
       73 GETTABLEKS                       R1 R1 K9 ["onContinueWithLLM"]
       75 JUMPIFNOT                        R1 ; [+16]
       76 NEWCLOSURE                       R1 P2
       77 CAPTURE                          UPVAL U7
       78 CAPTURE                          UPVAL U8
       79 GETUPVAL                         R2 2
       80 CALL                             R2 0 1
       81 JUMPIFNOT                        R2 ; [+5]
       82 GETUPVAL                         R2 3
       83 MOVE                             R3 R0
       84 MOVE                             R4 R1
       85 CALL                             R2 2 0
       86 RETURN                           R0 0
       87 GETUPVAL                         R2 4
       88 MOVE                             R3 R0
       89 MOVE                             R4 R1
       90 CALL                             R2 2 0
       91 RETURN                           R0 0
       92 GETUPVAL                         R1 2
       93 CALL                             R1 0 1
       94 JUMPIFNOT                        R1 ; [+5]
       95 GETUPVAL                         R1 3
       96 MOVE                             R2 R0
       97 LOADNIL                          R3
       98 CALL                             R1 2 0
       99 RETURN                           R0 0
      100 GETUPVAL                         R1 4
      101 MOVE                             R2 R0
      102 LOADNIL                          R3
      103 CALL                             R1 2 0
      104 RETURN                           R0 0
      105 GETUPVAL                         R1 1
      106 LOADB                            R2 1
      107 CALL                             R1 1 0
      108 GETIMPORT                        R1 K1 [error]
      110 LOADK                            R2 K10 ["No tool spec generated for slash command and no tool chain defined."]
      111 CALL                             R1 1 0
      112 RETURN                           R0 0

PROTO_32:
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

PROTO_33:
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

PROTO_34:
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

PROTO_35:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["InputStatus"]
        3 GETTABLEKS                       R1 R1 K1 ["Cancelled"]
        5 SETTABLEKS                       R1 R0 K2 ["status"]
        7 RETURN                           R0 0

PROTO_36:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R1 K0 [PROTO_35]
        2 CAPTURE                          UPVAL U1
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_37:
        0 GETTABLEKS                       R1 R0 K0 ["imageSelection"]
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["imageSelection"]
        5 LOADK                            R2 K1 ["Picker"]
        6 SETTABLEKS                       R2 R1 K2 ["phase"]
        8 RETURN                           R0 0

PROTO_38:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["InputStatus"]
        3 GETTABLEKS                       R1 R1 K1 ["Recorded"]
        5 SETTABLEKS                       R1 R0 K2 ["status"]
        7 RETURN                           R0 0

PROTO_39:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+1]
        2 RETURN                           R0 0
        3 LOADB                            R1 1
        4 SETUPVAL                         R1 0
        5 GETUPVAL                         R1 1
        6 DUPCLOSURE                       R2 K0 [PROTO_38]
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

PROTO_40:
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
       43 DUPCLOSURE                       R3 K10 [PROTO_37]
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

PROTO_41:
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

PROTO_42:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["suppressHistory"]
        3 RETURN                           R0 0

PROTO_43:
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
       63 GETUPVAL                         R6 4
       64 GETTABLEKS                       R6 R6 K17 ["FFlagAssistantDisabledReason"]
       66 JUMPIFNOT                        R6 ; [+3]
       67 GETTABLEKS                       R5 R1 K14 ["getDisabledReason"]
       69 JUMP                             ; [+1]
       70 LOADNIL                          R5
       71 SETTABLEKS                       R5 R4 K14 ["getDisabledReason"]
       73 NEWCLOSURE                       R5 P0
       74 CAPTURE                          REF R3
       75 CAPTURE                          VAL R1
       76 CAPTURE                          UPVAL U5
       77 CAPTURE                          UPVAL U6
       78 CAPTURE                          UPVAL U7
       79 SETTABLEKS                       R5 R4 K15 ["onContinue"]
       81 GETUPVAL                         R5 8
       82 GETTABLEKS                       R5 R5 K18 ["current"]
       84 JUMPIFNOT                        R5 ; [+17]
       85 GETUPVAL                         R5 8
       86 GETTABLEKS                       R5 R5 K18 ["current"]
       88 GETUPVAL                         R6 9
       89 DUPTABLE                         R7 K24 [{["messageId"], ["contentId"], ["skipIfNoMessage"] = True, ["transformFn"]}]
       90 GETTABLEKS                       R8 R5 K19 ["messageId"]
       92 SETTABLEKS                       R8 R7 K19 ["messageId"]
       94 GETTABLEKS                       R8 R5 K20 ["contentId"]
       96 SETTABLEKS                       R8 R7 K20 ["contentId"]
       98 DUPCLOSURE                       R8 K25 [PROTO_42]
       99 SETTABLEKS                       R8 R7 K23 ["transformFn"]
      101 CALL                             R6 1 0
      102 GETUPVAL                         R5 10
      103 GETTABLEKS                       R5 R5 K26 ["onContentStart"]
      105 MOVE                             R6 R4
      106 CALL                             R5 1 1
      107 JUMPIFNOT                        R5 ; [+14]
      108 GETUPVAL                         R6 8
      109 DUPTABLE                         R7 K27 [{"messageId", "contentId"}]
      110 GETUPVAL                         R8 11
      111 SETTABLEKS                       R8 R7 K19 ["messageId"]
      113 SETTABLEKS                       R5 R7 K20 ["contentId"]
      115 SETTABLEKS                       R7 R6 K18 ["current"]
      117 GETUPVAL                         R6 10
      118 GETTABLEKS                       R6 R6 K28 ["onContentFinished"]
      120 MOVE                             R7 R5
      121 CALL                             R6 1 0
      122 CLOSEUPVALS                      R3
      123 RETURN                           R0 0

PROTO_44:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["suppressHistory"]
        3 RETURN                           R0 0

PROTO_45:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["InputStatus"]
        3 GETTABLEKS                       R1 R1 K1 ["Cancelled"]
        5 SETTABLEKS                       R1 R0 K2 ["status"]
        7 RETURN                           R0 0

PROTO_46:
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
       22 DUPCLOSURE                       R2 K5 [PROTO_45]
       23 CAPTURE                          UPVAL U5
       24 SETTABLEKS                       R2 R1 K3 ["transformFn"]
       26 CALL                             R0 1 0
       27 RETURN                           R0 0

PROTO_47:
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

PROTO_48:
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
       22 CAPTURE                          VAL R0
       23 CAPTURE                          UPVAL U16
       24 CAPTURE                          UPVAL U17
       25 CAPTURE                          UPVAL U18
       26 NEWCLOSURE                       R3 P1
       27 CAPTURE                          UPVAL U19
       28 CAPTURE                          UPVAL U20
       29 CAPTURE                          VAL R1
       30 CAPTURE                          VAL R0
       31 CAPTURE                          UPVAL U15
       32 CAPTURE                          UPVAL U21
       33 CAPTURE                          UPVAL U2
       34 CAPTURE                          UPVAL U22
       35 CAPTURE                          UPVAL U23
       36 CAPTURE                          UPVAL U24
       37 CAPTURE                          UPVAL U25
       38 CAPTURE                          UPVAL U26
       39 CAPTURE                          UPVAL U27
       40 CAPTURE                          UPVAL U28
       41 CAPTURE                          UPVAL U4
       42 CAPTURE                          UPVAL U5
       43 NEWCLOSURE                       R4 P2
       44 CAPTURE                          UPVAL U29
       45 CAPTURE                          VAL R2
       46 CAPTURE                          VAL R3
       47 NEWCLOSURE                       R5 P3
       48 CAPTURE                          UPVAL U25
       49 CAPTURE                          UPVAL U29
       50 CAPTURE                          UPVAL U2
       51 CAPTURE                          UPVAL U30
       52 CAPTURE                          UPVAL U31
       53 CAPTURE                          UPVAL U18
       54 CAPTURE                          VAL R0
       55 CAPTURE                          VAL R2
       56 CAPTURE                          VAL R3
       57 GETUPVAL                         R6 32
       58 JUMPIFNOT                        R6 ; [+4]
       59 MOVE                             R6 R5
       60 GETUPVAL                         R7 32
       61 CALL                             R6 1 0
       62 RETURN                           R0 0
       63 NEWCLOSURE                       R6 P4
       64 CAPTURE                          UPVAL U2
       65 CAPTURE                          UPVAL U29
       66 CAPTURE                          VAL R2
       67 CAPTURE                          VAL R3
       68 NEWCLOSURE                       R7 P5
       69 CAPTURE                          UPVAL U33
       70 CAPTURE                          UPVAL U2
       71 CAPTURE                          UPVAL U29
       72 CAPTURE                          VAL R2
       73 CAPTURE                          VAL R3
       74 CAPTURE                          UPVAL U30
       75 CAPTURE                          UPVAL U31
       76 CAPTURE                          UPVAL U18
       77 CAPTURE                          VAL R0
       78 DUPCLOSURE                       R8 K1 [PROTO_32]
       79 CAPTURE                          UPVAL U34
       80 GETUPVAL                         R10 30
       81 FASTCALL2K                       ASSERT R10 K2 ; [+4]
       83 LOADK                            R11 K2 ["definition should always be available for slash commands"]
       84 GETIMPORT                        R9 K4 [assert]
       86 CALL                             R9 2 0
       87 GETUPVAL                         R9 30
       88 GETTABLEKS                       R9 R9 K5 ["getInputRequestArguments"]
       90 JUMPIFNOT                        R9 ; [+239]
       91 MOVE                             R10 R9
       92 CALL                             R10 0 1
       93 LOADNIL                          R11
       94 GETTABLEKS                       R12 R10 K6 ["propertyRows"]
       96 JUMPIFNOT                        R12 ; [+194]
       97 GETIMPORT                        R12 K9 [table.clone]
       99 GETTABLEKS                       R13 R10 K6 ["propertyRows"]
      101 CALL                             R12 1 1
      102 MOVE                             R11 R12
      103 MOVE                             R12 R11
      104 LOADNIL                          R13
      105 LOADNIL                          R14
      106 FORGPREP                         R12
      107 GETUPVAL                         R18 35
      108 GETTABLEKS                       R18 R18 K10 ["arguments"]
      110 GETTABLEKS                       R19 R16 K11 ["prop"]
      112 GETTABLE                         R17 R18 R19
      113 JUMPIFEQKNIL                     R17 ; [+8]
      115 GETIMPORT                        R18 K9 [table.clone]
      117 MOVE                             R19 R16
      118 CALL                             R18 1 1
      119 SETTABLEKS                       R17 R18 K12 ["initialValue"]
      121 SETTABLE                         R18 R11 R15
      122 FORGLOOP                         R12 2 ; [-16]
      124 LOADB                            R12 0
      125 DUPTABLE                         R13 K15 [{["current"] = }]
      126 NEWCLOSURE                       R14 P7
      127 CAPTURE                          VAL R13
      128 CAPTURE                          UPVAL U13
      129 CAPTURE                          VAL R0
      130 NEWCLOSURE                       R15 P8
      131 CAPTURE                          VAL R14
      132 CAPTURE                          UPVAL U36
      133 DUPTABLE                         R16 K26 [{["type"] = "input_requested", ["title"], ["description"], ["confirmButtonText"], ["propertyRows"], ["canConfirm"], ["getDisabledReason"], ["imageSelection"], ["onContinue"], ["onRevive"]}]
      134 GETUPVAL                         R18 37
      135 GETUPVAL                         R19 38
      136 CONCAT                           R17 R18 R19
      137 SETTABLEKS                       R17 R16 K18 ["title"]
      139 GETTABLEKS                       R17 R10 K19 ["description"]
      141 SETTABLEKS                       R17 R16 K19 ["description"]
      143 GETTABLEKS                       R17 R10 K20 ["confirmButtonText"]
      145 SETTABLEKS                       R17 R16 K20 ["confirmButtonText"]
      147 SETTABLEKS                       R11 R16 K6 ["propertyRows"]
      149 GETTABLEKS                       R17 R10 K21 ["canConfirm"]
      151 SETTABLEKS                       R17 R16 K21 ["canConfirm"]
      153 GETUPVAL                         R18 22
      154 GETTABLEKS                       R18 R18 K27 ["FFlagAssistantDisabledReason"]
      156 JUMPIFNOT                        R18 ; [+3]
      157 GETTABLEKS                       R17 R10 K22 ["getDisabledReason"]
      159 JUMP                             ; [+1]
      160 LOADNIL                          R17
      161 SETTABLEKS                       R17 R16 K22 ["getDisabledReason"]
      163 GETTABLEKS                       R18 R10 K23 ["imageSelection"]
      165 JUMPIFNOT                        R18 ; [+12]
      166 DUPTABLE                         R17 K32 [{["wizardMode"], ["phase"] = "Form", ["slots"]}]
      167 GETTABLEKS                       R18 R10 K23 ["imageSelection"]
      169 GETTABLEKS                       R18 R18 K28 ["wizardMode"]
      171 SETTABLEKS                       R18 R17 K28 ["wizardMode"]
      173 NEWTABLE                         R18 0 0
      175 SETTABLEKS                       R18 R17 K31 ["slots"]
      177 JUMP                             ; [+1]
      178 LOADNIL                          R17
      179 SETTABLEKS                       R17 R16 K23 ["imageSelection"]
      181 NEWCLOSURE                       R17 P9
      182 CAPTURE                          UPVAL U22
      183 CAPTURE                          REF R12
      184 CAPTURE                          VAL R10
      185 CAPTURE                          VAL R13
      186 CAPTURE                          VAL R14
      187 CAPTURE                          UPVAL U36
      188 CAPTURE                          UPVAL U34
      189 CAPTURE                          UPVAL U35
      190 CAPTURE                          UPVAL U25
      191 CAPTURE                          VAL R7
      192 CAPTURE                          VAL R15
      193 SETTABLEKS                       R17 R16 K24 ["onContinue"]
      195 GETUPVAL                         R18 22
      196 GETTABLEKS                       R18 R18 K33 ["FFlagAssistantSegmentationPromptModeSelector"]
      198 JUMPIFNOT                        R18 ; [+14]
      199 NEWCLOSURE                       R17 P10
      200 CAPTURE                          VAL R10
      201 CAPTURE                          VAL R9
      202 CAPTURE                          UPVAL U37
      203 CAPTURE                          UPVAL U38
      204 CAPTURE                          UPVAL U22
      205 CAPTURE                          UPVAL U35
      206 CAPTURE                          UPVAL U34
      207 CAPTURE                          VAL R7
      208 CAPTURE                          UPVAL U39
      209 CAPTURE                          UPVAL U13
      210 CAPTURE                          VAL R1
      211 CAPTURE                          VAL R0
      212 JUMP                             ; [+1]
      213 LOADNIL                          R17
      214 SETTABLEKS                       R17 R16 K25 ["onRevive"]
      216 GETUPVAL                         R17 22
      217 GETTABLEKS                       R17 R17 K33 ["FFlagAssistantSegmentationPromptModeSelector"]
      219 JUMPIFNOT                        R17 ; [+21]
      220 GETUPVAL                         R17 39
      221 GETTABLEKS                       R17 R17 K13 ["current"]
      223 JUMPIFNOT                        R17 ; [+17]
      224 GETUPVAL                         R17 39
      225 GETTABLEKS                       R17 R17 K13 ["current"]
      227 GETUPVAL                         R18 13
      228 DUPTABLE                         R19 K39 [{["messageId"], ["contentId"], ["skipIfNoMessage"] = True, ["transformFn"]}]
      229 GETTABLEKS                       R20 R17 K34 ["messageId"]
      231 SETTABLEKS                       R20 R19 K34 ["messageId"]
      233 GETTABLEKS                       R20 R17 K35 ["contentId"]
      235 SETTABLEKS                       R20 R19 K35 ["contentId"]
      237 DUPCLOSURE                       R20 K40 [PROTO_44]
      238 SETTABLEKS                       R20 R19 K38 ["transformFn"]
      240 CALL                             R18 1 0
      241 GETTABLEKS                       R17 R1 K41 ["onContentStart"]
      243 MOVE                             R18 R16
      244 CALL                             R17 1 1
      245 SETTABLEKS                       R17 R13 K13 ["current"]
      247 GETUPVAL                         R18 22
      248 GETTABLEKS                       R18 R18 K33 ["FFlagAssistantSegmentationPromptModeSelector"]
      250 JUMPIFNOT                        R18 ; [+9]
      251 JUMPIFNOT                        R17 ; [+8]
      252 GETUPVAL                         R18 39
      253 DUPTABLE                         R19 K42 [{"messageId", "contentId"}]
      254 SETTABLEKS                       R0 R19 K34 ["messageId"]
      256 SETTABLEKS                       R17 R19 K35 ["contentId"]
      258 SETTABLEKS                       R19 R18 K13 ["current"]
      260 JUMPIFNOT                        R17 ; [+4]
      261 GETTABLEKS                       R18 R1 K43 ["onContentFinished"]
      263 MOVE                             R19 R17
      264 CALL                             R18 1 0
      265 GETUPVAL                         R18 22
      266 GETTABLEKS                       R18 R18 K44 ["FFlagAssistantSupportSlashCommandCancellation"]
      268 JUMPIFNOT                        R18 ; [+16]
      269 GETUPVAL                         R19 25
      270 FASTCALL2K                       ASSERT R19 K45 ; [+4]
      272 LOADK                            R20 K45 ["setSlashCommandCancel is not available"]
      273 GETIMPORT                        R18 K4 [assert]
      275 CALL                             R18 2 0
      276 GETUPVAL                         R18 25
      277 NEWCLOSURE                       R19 P12
      278 CAPTURE                          REF R12
      279 CAPTURE                          VAL R10
      280 CAPTURE                          VAL R17
      281 CAPTURE                          UPVAL U13
      282 CAPTURE                          VAL R0
      283 CAPTURE                          UPVAL U36
      284 CALL                             R18 1 0
      285 GETUPVAL                         R18 2
      286 LOADB                            R19 1
      287 CALL                             R18 1 0
      288 CLOSEUPVALS                      R12
      289 RETURN                           R0 0
      290 CLOSEUPVALS                      R12
      291 LOADB                            R12 0
      292 DUPTABLE                         R13 K46 [{["type"] = "input_requested", ["title"], ["description"], ["confirmButtonText"], ["propertyRows"], ["onContinue"]}]
      293 GETUPVAL                         R15 37
      294 GETUPVAL                         R16 38
      295 CONCAT                           R14 R15 R16
      296 SETTABLEKS                       R14 R13 K18 ["title"]
      298 GETTABLEKS                       R14 R10 K19 ["description"]
      300 SETTABLEKS                       R14 R13 K19 ["description"]
      302 GETTABLEKS                       R14 R10 K20 ["confirmButtonText"]
      304 SETTABLEKS                       R14 R13 K20 ["confirmButtonText"]
      306 SETTABLEKS                       R11 R13 K6 ["propertyRows"]
      308 NEWCLOSURE                       R14 P13
      309 CAPTURE                          REF R12
      310 CAPTURE                          UPVAL U35
      311 CAPTURE                          UPVAL U34
      312 CAPTURE                          VAL R7
      313 SETTABLEKS                       R14 R13 K24 ["onContinue"]
      315 GETTABLEKS                       R14 R1 K41 ["onContentStart"]
      317 MOVE                             R15 R13
      318 CALL                             R14 1 1
      319 JUMPIFNOT                        R14 ; [+4]
      320 GETTABLEKS                       R15 R1 K43 ["onContentFinished"]
      322 MOVE                             R16 R14
      323 CALL                             R15 1 0
      324 GETUPVAL                         R15 2
      325 LOADB                            R16 1
      326 CALL                             R15 1 0
      327 CLOSEUPVALS                      R12
      328 RETURN                           R0 0
      329 CLOSEUPVALS                      R12
      330 MOVE                             R10 R7
      331 GETUPVAL                         R11 35
      332 CALL                             R10 1 0
      333 RETURN                           R0 0

PROTO_49:
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
       47 CALL                             R1 2 0
       48 RETURN                           R0 0

PROTO_50:
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
       89 JUMPIF                           R14 ; [+5]
       90 GETUPVAL                         R14 4
       91 GETTABLEKS                       R14 R14 K14 ["getIsAskInputToolEnabled"]
       93 CALL                             R14 0 1
       94 JUMPIFNOT                        R14 ; [+2]
       95 LOADNIL                          R13
       96 JUMP                             ; [+5]
       97 GETUPVAL                         R13 1
       98 GETTABLEKS                       R13 R13 K15 ["getSlashCommandTransformation"]
      100 MOVE                             R14 R9
      101 CALL                             R13 1 1
      102 GETTABLEKS                       R14 R10 K13 ["runToolChain"]
      104 JUMPIF                           R14 ; [+4]
      105 JUMPIF                           R13 ; [+3]
      106 LOADB                            R14 0
      107 CLOSEUPVALS                      R6
      108 RETURN                           R14 1
      109 GETUPVAL                         R14 5
      110 GETTABLEKS                       R15 R0 K16 ["images"]
      112 CALL                             R14 1 1
      113 GETTABLEKS                       R15 R10 K13 ["runToolChain"]
      115 JUMPIFNOT                        R15 ; [+7]
      116 GETTABLEKS                       R15 R10 K13 ["runToolChain"]
      118 MOVE                             R16 R12
      119 MOVE                             R17 R14
      120 CALL                             R15 2 1
      121 MOVE                             R8 R15
      122 JUMP                             ; [+13]
      123 FASTCALL2K                       ASSERT R13 K17 ; [+5]
      125 MOVE                             R16 R13
      126 LOADK                            R17 K17 ["mapToToolCall should be defined if runToolChain is not"]
      127 GETIMPORT                        R15 K19 [assert]
      129 CALL                             R15 2 0
      130 MOVE                             R15 R13
      131 MOVE                             R16 R12
      132 MOVE                             R17 R14
      133 CALL                             R15 2 2
      134 MOVE                             R6 R15
      135 MOVE                             R7 R16
      136 GETUPVAL                         R15 6
      137 CALL                             R15 0 1
      138 JUMPIFNOT                        R15 ; [+6]
      139 GETTABLEKS                       R15 R0 K20 ["onSlashCommandRecognized"]
      141 JUMPIFNOT                        R15 ; [+3]
      142 GETTABLEKS                       R15 R0 K20 ["onSlashCommandRecognized"]
      144 CALL                             R15 0 0
      145 LOADB                            R15 0
      146 GETUPVAL                         R16 7
      147 NEWCLOSURE                       R17 P0
      148 CAPTURE                          UPVAL U8
      149 CAPTURE                          UPVAL U9
      150 CAPTURE                          UPVAL U10
      151 CAPTURE                          UPVAL U11
      152 CAPTURE                          VAL R2
      153 CAPTURE                          UPVAL U12
      154 CAPTURE                          UPVAL U13
      155 CAPTURE                          REF R15
      156 CAPTURE                          UPVAL U14
      157 CAPTURE                          UPVAL U15
      158 CAPTURE                          UPVAL U16
      159 CAPTURE                          UPVAL U17
      160 CAPTURE                          UPVAL U18
      161 CAPTURE                          UPVAL U19
      162 CAPTURE                          UPVAL U20
      163 CAPTURE                          UPVAL U21
      164 CAPTURE                          UPVAL U22
      165 CAPTURE                          VAL R1
      166 CAPTURE                          VAL R0
      167 CAPTURE                          UPVAL U23
      168 CAPTURE                          UPVAL U24
      169 CAPTURE                          UPVAL U25
      170 CAPTURE                          UPVAL U26
      171 CAPTURE                          UPVAL U4
      172 CAPTURE                          UPVAL U1
      173 CAPTURE                          UPVAL U27
      174 CAPTURE                          UPVAL U28
      175 CAPTURE                          UPVAL U29
      176 CAPTURE                          UPVAL U30
      177 CAPTURE                          UPVAL U31
      178 CAPTURE                          REF R10
      179 CAPTURE                          UPVAL U6
      180 CAPTURE                          REF R8
      181 CAPTURE                          REF R7
      182 CAPTURE                          UPVAL U32
      183 CAPTURE                          REF R6
      184 CAPTURE                          UPVAL U33
      185 CAPTURE                          UPVAL U0
      186 CAPTURE                          REF R9
      187 CAPTURE                          UPVAL U34
      188 CALL                             R16 1 0
      189 LOADB                            R16 1
      190 CLOSEUPVALS                      R6
      191 RETURN                           R16 1

PROTO_51:
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
       76 NEWCLOSURE                       R19 P0
       77 CAPTURE                          UPVAL U17
       78 CAPTURE                          UPVAL U18
       79 CAPTURE                          VAL R18
       80 CAPTURE                          UPVAL U19
       81 CAPTURE                          UPVAL U20
       82 CAPTURE                          UPVAL U21
       83 CAPTURE                          UPVAL U22
       84 CAPTURE                          VAL R4
       85 CAPTURE                          VAL R3
       86 CAPTURE                          UPVAL U23
       87 CAPTURE                          VAL R0
       88 CAPTURE                          VAL R12
       89 CAPTURE                          VAL R13
       90 CAPTURE                          UPVAL U24
       91 CAPTURE                          UPVAL U25
       92 CAPTURE                          VAL R9
       93 CAPTURE                          VAL R10
       94 CAPTURE                          VAL R11
       95 CAPTURE                          VAL R1
       96 CAPTURE                          VAL R2
       97 CAPTURE                          VAL R17
       98 CAPTURE                          VAL R7
       99 CAPTURE                          VAL R14
      100 CAPTURE                          UPVAL U26
      101 CAPTURE                          UPVAL U27
      102 CAPTURE                          UPVAL U28
      103 CAPTURE                          UPVAL U14
      104 CAPTURE                          REF R16
      105 CAPTURE                          UPVAL U29
      106 CAPTURE                          VAL R8
      107 CAPTURE                          UPVAL U30
      108 CAPTURE                          UPVAL U31
      109 CAPTURE                          UPVAL U32
      110 CAPTURE                          UPVAL U33
      111 CAPTURE                          VAL R5
      112 GETUPVAL                         R20 5
      113 GETTABLEKS                       R20 R20 K6 ["useCallback"]
      115 MOVE                             R21 R19
      116 NEWTABLE                         R22 0 16
      118 MOVE                             R23 R0
      119 MOVE                             R24 R3
      120 MOVE                             R25 R4
      121 MOVE                             R26 R7
      122 GETUPVAL                         R28 14
      123 GETTABLEKS                       R28 R28 K4 ["FFlagAssistantSupportSlashCommandCancellation"]
      125 JUMPIFNOT                        R28 ; [+2]
      126 MOVE                             R27 R8
      127 JUMP                             ; [+1]
      128 LOADNIL                          R27
      129 GETUPVAL                         R29 14
      130 GETTABLEKS                       R29 R29 K4 ["FFlagAssistantSupportSlashCommandCancellation"]
      132 JUMPIFNOT                        R29 ; [+2]
      133 MOVE                             R28 R16
      134 JUMP                             ; [+1]
      135 LOADNIL                          R28
      136 MOVE                             R29 R18
      137 MOVE                             R30 R12
      138 MOVE                             R31 R13
      139 MOVE                             R32 R1
      140 MOVE                             R33 R17
      141 MOVE                             R34 R10
      142 MOVE                             R35 R2
      143 MOVE                             R36 R11
      144 MOVE                             R37 R14
      145 MOVE                             R38 R9
      146 SETLIST                          R22 R23 16 [1]
      148 CALL                             R20 2 -1
      149 CLOSEUPVALS                      R16
      150 RETURN                           R20 -1

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
      191 GETTABLEKS                       R29 R29 K45 ["useEditContent"]
      193 CALL                             R28 1 1
      194 GETIMPORT                        R29 K9 [require]
      196 GETTABLEKS                       R30 R0 K41 ["Hooks"]
      198 GETTABLEKS                       R30 R30 K46 ["useEditThread"]
      200 CALL                             R29 1 1
      201 GETIMPORT                        R30 K9 [require]
      203 GETTABLEKS                       R31 R0 K41 ["Hooks"]
      205 GETTABLEKS                       R31 R31 K47 ["useGetContentObserver"]
      207 CALL                             R30 1 1
      208 GETIMPORT                        R31 K9 [require]
      210 GETTABLEKS                       R32 R0 K41 ["Hooks"]
      212 GETTABLEKS                       R32 R32 K48 ["useGetOrAddMessage"]
      214 CALL                             R31 1 1
      215 GETIMPORT                        R32 K9 [require]
      217 GETTABLEKS                       R33 R0 K41 ["Hooks"]
      219 GETTABLEKS                       R33 R33 K49 ["useThreadId"]
      221 CALL                             R32 1 1
      222 GETIMPORT                        R33 K9 [require]
      224 GETTABLEKS                       R34 R0 K41 ["Hooks"]
      226 GETTABLEKS                       R34 R34 K50 ["useWithClient"]
      228 CALL                             R33 1 1
      229 GETTABLEKS                       R34 R24 K51 ["CommandPrefix"]
      231 GETTABLEKS                       R35 R24 K52 ["CommandDelimiter"]
      233 DUPCLOSURE                       R36 K53 [PROTO_0]
      234 CAPTURE                          VAL R10
      235 DUPCLOSURE                       R37 K54 [PROTO_1]
      236 DUPCLOSURE                       R38 K55 [PROTO_4]
      237 CAPTURE                          VAL R37
      238 DUPCLOSURE                       R39 K56 [PROTO_51]
      239 CAPTURE                          VAL R30
      240 CAPTURE                          VAL R25
      241 CAPTURE                          VAL R28
      242 CAPTURE                          VAL R31
      243 CAPTURE                          VAL R33
      244 CAPTURE                          VAL R17
      245 CAPTURE                          VAL R18
      246 CAPTURE                          VAL R15
      247 CAPTURE                          VAL R32
      248 CAPTURE                          VAL R27
      249 CAPTURE                          VAL R29
      250 CAPTURE                          VAL R2
      251 CAPTURE                          VAL R3
      252 CAPTURE                          VAL R14
      253 CAPTURE                          VAL R7
      254 CAPTURE                          VAL R12
      255 CAPTURE                          VAL R26
      256 CAPTURE                          VAL R34
      257 CAPTURE                          VAL R24
      258 CAPTURE                          VAL R35
      259 CAPTURE                          VAL R6
      260 CAPTURE                          VAL R36
      261 CAPTURE                          VAL R8
      262 CAPTURE                          VAL R23
      263 CAPTURE                          VAL R22
      264 CAPTURE                          VAL R20
      265 CAPTURE                          VAL R1
      266 CAPTURE                          VAL R21
      267 CAPTURE                          VAL R37
      268 CAPTURE                          VAL R19
      269 CAPTURE                          VAL R16
      270 CAPTURE                          VAL R9
      271 CAPTURE                          VAL R5
      272 CAPTURE                          VAL R11
      273 RETURN                           R39 1
