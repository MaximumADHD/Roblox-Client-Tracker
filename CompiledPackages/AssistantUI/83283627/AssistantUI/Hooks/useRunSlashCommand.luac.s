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
        0 RETURN                           R0 0

PROTO_2:
        0 LOADNIL                          R3
        1 JUMPIFNOT                        R0 ; [+4]
        2 JUMPIFNOT                        R1 ; [+3]
        3 GETTABLEKS                       R4 R1 K0 ["content"]
        5 JUMPIF                           R4 ; [+25]
        6 DUPTABLE                         R4 K4 [{["type"] = "text", ["text"] = "Error: Tool call failed. Please try a different approach."}]
        7 DUPTABLE                         R5 K14 [{["type"] = "tool_result", ["id"], ["name"], [4], ["isError"] = True, ["structuredContent"] = , ["startTime"], ["startTimeAfterConfirmation"]}]
        8 GETUPVAL                         R6 0
        9 SETTABLEKS                       R6 R5 K6 ["id"]
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K7 ["name"]
       14 SETTABLEKS                       R6 R5 K7 ["name"]
       16 NEWTABLE                         R6 0 1
       18 MOVE                             R7 R4
       19 SETLIST                          R6 R7 1 [1]
       21 SETTABLEKS                       R6 R5 K0 ["content"]
       23 GETUPVAL                         R6 2
       24 SETTABLEKS                       R6 R5 K12 ["startTime"]
       26 GETUPVAL                         R6 3
       27 SETTABLEKS                       R6 R5 K13 ["startTimeAfterConfirmation"]
       29 MOVE                             R3 R5
       30 JUMP                             ; [+28]
       31 DUPTABLE                         R4 K15 [{["type"] = "tool_result", ["id"], ["name"], [4], ["isError"], ["structuredContent"], ["startTime"], ["startTimeAfterConfirmation"]}]
       32 GETUPVAL                         R5 0
       33 SETTABLEKS                       R5 R4 K6 ["id"]
       35 GETUPVAL                         R5 1
       36 GETTABLEKS                       R5 R5 K7 ["name"]
       38 SETTABLEKS                       R5 R4 K7 ["name"]
       40 GETTABLEKS                       R5 R1 K0 ["content"]
       42 SETTABLEKS                       R5 R4 K0 ["content"]
       44 GETTABLEKS                       R5 R1 K8 ["isError"]
       46 SETTABLEKS                       R5 R4 K8 ["isError"]
       48 GETTABLEKS                       R5 R1 K10 ["structuredContent"]
       50 SETTABLEKS                       R5 R4 K10 ["structuredContent"]
       52 GETUPVAL                         R5 2
       53 SETTABLEKS                       R5 R4 K12 ["startTime"]
       55 GETUPVAL                         R5 3
       56 SETTABLEKS                       R5 R4 K13 ["startTimeAfterConfirmation"]
       58 MOVE                             R3 R4
       59 GETUPVAL                         R4 4
       60 GETTABLEKS                       R4 R4 K16 ["onToolResult"]
       62 GETUPVAL                         R5 5
       63 MOVE                             R6 R3
       64 MOVE                             R7 R2
       65 CALL                             R4 3 0
       66 RETURN                           R0 0

PROTO_3:
        0 JUMPIF                           R1 ; [+2]
        1 DUPCLOSURE                       R6 K0 [PROTO_1]
        2 RETURN                           R6 1
        3 NEWCLOSURE                       R6 P1
        4 CAPTURE                          VAL R2
        5 CAPTURE                          VAL R3
        6 CAPTURE                          VAL R4
        7 CAPTURE                          VAL R5
        8 CAPTURE                          VAL R0
        9 CAPTURE                          VAL R1
       10 RETURN                           R6 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R1 R0 K0 ["acpSessionId"]
        3 MOVE                             R1 R0
        4 DUPTABLE                         R2 K3 [{["rawTransformValues"] = True}]
        5 RETURN                           R1 2

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          VAL R0
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_6:
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

PROTO_7:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R2 K2 ["Error running slash command via ACP:"]
        3 MOVE                             R3 R0
        4 CALL                             R1 2 0
        5 GETUPVAL                         R1 0
        6 LOADB                            R2 1
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_8:
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

PROTO_9:
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

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setLastPacketTime"]
        3 GETIMPORT                        R1 K3 [os.clock]
        5 CALL                             R1 0 -1
        6 CALL                             R0 -1 0
        7 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["user_requested_cancellation"]
        2 NAMECALL                         R0 R0 K1 ["Fire"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_12:
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
       45 LOADNIL                          R8
       46 CALL                             R6 2 0
       47 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["cancel"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 LOADB                            R2 1
        2 MOVE                             R3 R0
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_15:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R2 K2 ["Error calling tool:"]
        3 MOVE                             R3 R0
        4 CALL                             R1 2 0
        5 GETUPVAL                         R1 0
        6 LOADB                            R2 0
        7 LOADNIL                          R3
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_16:
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
       61 DUPCLOSURE                       R8 K19 [PROTO_1]
       62 JUMP                             ; [+7]
       63 NEWCLOSURE                       R8 P1
       64 CAPTURE                          VAL R2
       65 CAPTURE                          VAL R0
       66 CAPTURE                          VAL R3
       67 CAPTURE                          VAL R7
       68 CAPTURE                          VAL R9
       69 CAPTURE                          VAL R5
       70 NEWCLOSURE                       R9 P2
       71 CAPTURE                          VAL R8
       72 CAPTURE                          VAL R1
       73 CAPTURE                          UPVAL U5
       74 JUMPIFNOT                        R5 ; [+21]
       75 MOVE                             R10 R8
       76 LOADB                            R11 1
       77 DUPTABLE                         R12 K24 [{["content"], ["isError"] = False, ["structuredContent"]}]
       78 NEWTABLE                         R13 0 1
       80 DUPTABLE                         R14 K27 [{["type"] = "text", ["text"] = "Tool call is still running asynchronously."}]
       81 SETLIST                          R13 R14 1 [1]
       83 SETTABLEKS                       R13 R12 K20 ["content"]
       85 GETUPVAL                         R14 6
       86 GETTABLEKS                       R14 R14 K28 ["FFlagAssistantSplitToolsAndWidgets"]
       88 JUMPIFNOT                        R14 ; [+2]
       89 DUPTABLE                         R13 K31 [{["pending"] = True}]
       90 JUMP                             ; [+1]
       91 LOADNIL                          R13
       92 SETTABLEKS                       R13 R12 K23 ["structuredContent"]
       94 LOADB                            R13 1
       95 CALL                             R10 3 0
       96 GETUPVAL                         R10 6
       97 GETTABLEKS                       R10 R10 K32 ["FFlagAssistantSupportSlashCommandCancellation"]
       99 JUMPIFNOT                        R10 ; [+37]
      100 GETUPVAL                         R11 7
      101 FASTCALL2K                       ASSERT R11 K33 ; [+4]
      103 LOADK                            R12 K33 ["setSlashCommandCancel is not available"]
      104 GETIMPORT                        R10 K35 [assert]
      106 CALL                             R10 2 0
      107 GETUPVAL                         R10 8
      108 GETTABLEKS                       R10 R10 K36 ["new"]
      110 CALL                             R10 0 1
      111 DUPTABLE                         R11 K40 [{["resetTimeoutOnProgress"] = True, ["onprogress"], ["signal"]}]
      112 NEWCLOSURE                       R12 P3
      113 CAPTURE                          UPVAL U9
      114 SETTABLEKS                       R12 R11 K38 ["onprogress"]
      116 SETTABLEKS                       R10 R11 K39 ["signal"]
      118 GETUPVAL                         R12 10
      119 GETTABLEKS                       R12 R12 K36 ["new"]
      121 NEWCLOSURE                       R13 P4
      122 CAPTURE                          VAL R10
      123 CAPTURE                          UPVAL U11
      124 CAPTURE                          UPVAL U12
      125 CAPTURE                          VAL R0
      126 CAPTURE                          VAL R11
      127 CAPTURE                          VAL R6
      128 CAPTURE                          UPVAL U7
      129 CAPTURE                          UPVAL U10
      130 CAPTURE                          VAL R9
      131 CALL                             R12 1 1
      132 GETUPVAL                         R13 7
      133 NEWCLOSURE                       R14 P5
      134 CAPTURE                          VAL R12
      135 CALL                             R13 1 0
      136 RETURN                           R0 0
      137 DUPTABLE                         R10 K41 [{["resetTimeoutOnProgress"] = True}]
      138 GETUPVAL                         R11 11
      139 GETUPVAL                         R13 12
      140 GETTABLEKS                       R13 R13 K42 ["getMcpClientIdentifier"]
      142 CALL                             R13 0 1
      143 GETTABLEKS                       R14 R0 K6 ["name"]
      145 GETTABLEKS                       R15 R0 K9 ["arguments"]
      147 MOVE                             R16 R10
      148 MOVE                             R17 R6
      149 NAMECALL                         R11 R11 K43 ["callToolForClient"]
      151 CALL                             R11 6 1
      152 NEWCLOSURE                       R13 P6
      153 CAPTURE                          VAL R9
      154 NAMECALL                         R11 R11 K44 ["andThen"]
      156 CALL                             R11 2 1
      157 NEWCLOSURE                       R13 P7
      158 CAPTURE                          VAL R9
      159 NAMECALL                         R11 R11 K45 ["catch"]
      161 CALL                             R11 2 0
      162 RETURN                           R0 0

PROTO_17:
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

PROTO_18:
        0 GETUPVAL                         R2 0
        1 FASTCALL2                        TABLE_INSERT R2 R0 ; [+4]
        3 MOVE                             R3 R0
        4 GETIMPORT                        R1 K2 [table.insert]
        6 CALL                             R1 2 0
        7 GETUPVAL                         R1 1
        8 CALL                             R1 0 0
        9 RETURN                           R0 0

PROTO_19:
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

PROTO_20:
        0 GETUPVAL                         R2 0
        1 FASTCALL2                        TABLE_INSERT R2 R0 ; [+4]
        3 MOVE                             R3 R0
        4 GETIMPORT                        R1 K2 [table.insert]
        6 CALL                             R1 2 0
        7 LOADN                            R1 1
        8 NEWCLOSURE                       R2 P0
        9 CAPTURE                          REF R1
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          UPVAL U0
       13 CAPTURE                          VAL R2
       14 CAPTURE                          UPVAL U3
       15 CAPTURE                          UPVAL U4
       16 CAPTURE                          UPVAL U5
       17 MOVE                             R3 R2
       18 CALL                             R3 0 0
       19 CLOSEUPVALS                      R1
       20 RETURN                           R0 0

PROTO_21:
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

PROTO_22:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onContinueWithLLMWithResult"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onContinueWithLLM"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_24:
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

PROTO_25:
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

PROTO_26:
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

PROTO_27:
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

PROTO_28:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["InputStatus"]
        3 GETTABLEKS                       R1 R1 K1 ["Cancelled"]
        5 SETTABLEKS                       R1 R0 K2 ["status"]
        7 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R1 K0 [PROTO_28]
        2 CAPTURE                          UPVAL U1
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_30:
        0 GETTABLEKS                       R1 R0 K0 ["imageSelection"]
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["imageSelection"]
        5 LOADK                            R2 K1 ["Picker"]
        6 SETTABLEKS                       R2 R1 K2 ["phase"]
        8 RETURN                           R0 0

PROTO_31:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["InputStatus"]
        3 GETTABLEKS                       R1 R1 K1 ["Recorded"]
        5 SETTABLEKS                       R1 R0 K2 ["status"]
        7 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+1]
        2 RETURN                           R0 0
        3 LOADB                            R1 1
        4 SETUPVAL                         R1 0
        5 GETUPVAL                         R1 1
        6 DUPCLOSURE                       R2 K0 [PROTO_31]
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

PROTO_33:
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
       43 DUPCLOSURE                       R3 K10 [PROTO_30]
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

PROTO_34:
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

PROTO_35:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["suppressHistory"]
        3 RETURN                           R0 0

PROTO_36:
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
       98 DUPCLOSURE                       R8 K25 [PROTO_35]
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

PROTO_37:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["suppressHistory"]
        3 RETURN                           R0 0

PROTO_38:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["InputStatus"]
        3 GETTABLEKS                       R1 R1 K1 ["Cancelled"]
        5 SETTABLEKS                       R1 R0 K2 ["status"]
        7 RETURN                           R0 0

PROTO_39:
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
       22 DUPCLOSURE                       R2 K5 [PROTO_38]
       23 CAPTURE                          UPVAL U5
       24 SETTABLEKS                       R2 R1 K3 ["transformFn"]
       26 CALL                             R0 1 0
       27 RETURN                           R0 0

PROTO_40:
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

PROTO_41:
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
       32 CAPTURE                          UPVAL U2
       33 CAPTURE                          UPVAL U21
       34 CAPTURE                          UPVAL U22
       35 CAPTURE                          UPVAL U23
       36 CAPTURE                          UPVAL U24
       37 CAPTURE                          UPVAL U25
       38 CAPTURE                          UPVAL U4
       39 CAPTURE                          UPVAL U5
       40 NEWCLOSURE                       R4 P2
       41 CAPTURE                          UPVAL U26
       42 CAPTURE                          VAL R2
       43 CAPTURE                          VAL R3
       44 NEWCLOSURE                       R5 P3
       45 CAPTURE                          UPVAL U2
       46 CAPTURE                          UPVAL U26
       47 CAPTURE                          VAL R2
       48 CAPTURE                          VAL R3
       49 NEWCLOSURE                       R6 P4
       50 CAPTURE                          UPVAL U27
       51 CAPTURE                          UPVAL U2
       52 CAPTURE                          UPVAL U26
       53 CAPTURE                          VAL R2
       54 CAPTURE                          VAL R3
       55 CAPTURE                          UPVAL U28
       56 CAPTURE                          UPVAL U29
       57 CAPTURE                          UPVAL U18
       58 CAPTURE                          VAL R0
       59 DUPCLOSURE                       R7 K1 [PROTO_25]
       60 CAPTURE                          UPVAL U30
       61 GETUPVAL                         R9 28
       62 FASTCALL2K                       ASSERT R9 K2 ; [+4]
       64 LOADK                            R10 K2 ["definition should always be available for slash commands"]
       65 GETIMPORT                        R8 K4 [assert]
       67 CALL                             R8 2 0
       68 GETUPVAL                         R8 28
       69 GETTABLEKS                       R8 R8 K5 ["getInputRequestArguments"]
       71 JUMPIFNOT                        R8 ; [+239]
       72 MOVE                             R9 R8
       73 CALL                             R9 0 1
       74 LOADNIL                          R10
       75 GETTABLEKS                       R11 R9 K6 ["propertyRows"]
       77 JUMPIFNOT                        R11 ; [+194]
       78 GETIMPORT                        R11 K9 [table.clone]
       80 GETTABLEKS                       R12 R9 K6 ["propertyRows"]
       82 CALL                             R11 1 1
       83 MOVE                             R10 R11
       84 MOVE                             R11 R10
       85 LOADNIL                          R12
       86 LOADNIL                          R13
       87 FORGPREP                         R11
       88 GETUPVAL                         R17 31
       89 GETTABLEKS                       R17 R17 K10 ["arguments"]
       91 GETTABLEKS                       R18 R15 K11 ["prop"]
       93 GETTABLE                         R16 R17 R18
       94 JUMPIFEQKNIL                     R16 ; [+8]
       96 GETIMPORT                        R17 K9 [table.clone]
       98 MOVE                             R18 R15
       99 CALL                             R17 1 1
      100 SETTABLEKS                       R16 R17 K12 ["initialValue"]
      102 SETTABLE                         R17 R10 R14
      103 FORGLOOP                         R11 2 ; [-16]
      105 LOADB                            R11 0
      106 DUPTABLE                         R12 K15 [{["current"] = }]
      107 NEWCLOSURE                       R13 P6
      108 CAPTURE                          VAL R12
      109 CAPTURE                          UPVAL U13
      110 CAPTURE                          VAL R0
      111 NEWCLOSURE                       R14 P7
      112 CAPTURE                          VAL R13
      113 CAPTURE                          UPVAL U32
      114 DUPTABLE                         R15 K26 [{["type"] = "input_requested", ["title"], ["description"], ["confirmButtonText"], ["propertyRows"], ["canConfirm"], ["getDisabledReason"], ["imageSelection"], ["onContinue"], ["onRevive"]}]
      115 GETUPVAL                         R17 33
      116 GETUPVAL                         R18 34
      117 CONCAT                           R16 R17 R18
      118 SETTABLEKS                       R16 R15 K18 ["title"]
      120 GETTABLEKS                       R16 R9 K19 ["description"]
      122 SETTABLEKS                       R16 R15 K19 ["description"]
      124 GETTABLEKS                       R16 R9 K20 ["confirmButtonText"]
      126 SETTABLEKS                       R16 R15 K20 ["confirmButtonText"]
      128 SETTABLEKS                       R10 R15 K6 ["propertyRows"]
      130 GETTABLEKS                       R16 R9 K21 ["canConfirm"]
      132 SETTABLEKS                       R16 R15 K21 ["canConfirm"]
      134 GETUPVAL                         R17 21
      135 GETTABLEKS                       R17 R17 K27 ["FFlagAssistantDisabledReason"]
      137 JUMPIFNOT                        R17 ; [+3]
      138 GETTABLEKS                       R16 R9 K22 ["getDisabledReason"]
      140 JUMP                             ; [+1]
      141 LOADNIL                          R16
      142 SETTABLEKS                       R16 R15 K22 ["getDisabledReason"]
      144 GETTABLEKS                       R17 R9 K23 ["imageSelection"]
      146 JUMPIFNOT                        R17 ; [+12]
      147 DUPTABLE                         R16 K32 [{["wizardMode"], ["phase"] = "Form", ["slots"]}]
      148 GETTABLEKS                       R17 R9 K23 ["imageSelection"]
      150 GETTABLEKS                       R17 R17 K28 ["wizardMode"]
      152 SETTABLEKS                       R17 R16 K28 ["wizardMode"]
      154 NEWTABLE                         R17 0 0
      156 SETTABLEKS                       R17 R16 K31 ["slots"]
      158 JUMP                             ; [+1]
      159 LOADNIL                          R16
      160 SETTABLEKS                       R16 R15 K23 ["imageSelection"]
      162 NEWCLOSURE                       R16 P8
      163 CAPTURE                          UPVAL U21
      164 CAPTURE                          REF R11
      165 CAPTURE                          VAL R9
      166 CAPTURE                          VAL R12
      167 CAPTURE                          VAL R13
      168 CAPTURE                          UPVAL U32
      169 CAPTURE                          UPVAL U30
      170 CAPTURE                          UPVAL U31
      171 CAPTURE                          UPVAL U22
      172 CAPTURE                          VAL R6
      173 CAPTURE                          VAL R14
      174 SETTABLEKS                       R16 R15 K24 ["onContinue"]
      176 GETUPVAL                         R17 21
      177 GETTABLEKS                       R17 R17 K33 ["FFlagAssistantSegmentationPromptModeSelector"]
      179 JUMPIFNOT                        R17 ; [+14]
      180 NEWCLOSURE                       R16 P9
      181 CAPTURE                          VAL R9
      182 CAPTURE                          VAL R8
      183 CAPTURE                          UPVAL U33
      184 CAPTURE                          UPVAL U34
      185 CAPTURE                          UPVAL U21
      186 CAPTURE                          UPVAL U31
      187 CAPTURE                          UPVAL U30
      188 CAPTURE                          VAL R6
      189 CAPTURE                          UPVAL U35
      190 CAPTURE                          UPVAL U13
      191 CAPTURE                          VAL R1
      192 CAPTURE                          VAL R0
      193 JUMP                             ; [+1]
      194 LOADNIL                          R16
      195 SETTABLEKS                       R16 R15 K25 ["onRevive"]
      197 GETUPVAL                         R16 21
      198 GETTABLEKS                       R16 R16 K33 ["FFlagAssistantSegmentationPromptModeSelector"]
      200 JUMPIFNOT                        R16 ; [+21]
      201 GETUPVAL                         R16 35
      202 GETTABLEKS                       R16 R16 K13 ["current"]
      204 JUMPIFNOT                        R16 ; [+17]
      205 GETUPVAL                         R16 35
      206 GETTABLEKS                       R16 R16 K13 ["current"]
      208 GETUPVAL                         R17 13
      209 DUPTABLE                         R18 K39 [{["messageId"], ["contentId"], ["skipIfNoMessage"] = True, ["transformFn"]}]
      210 GETTABLEKS                       R19 R16 K34 ["messageId"]
      212 SETTABLEKS                       R19 R18 K34 ["messageId"]
      214 GETTABLEKS                       R19 R16 K35 ["contentId"]
      216 SETTABLEKS                       R19 R18 K35 ["contentId"]
      218 DUPCLOSURE                       R19 K40 [PROTO_37]
      219 SETTABLEKS                       R19 R18 K38 ["transformFn"]
      221 CALL                             R17 1 0
      222 GETTABLEKS                       R16 R1 K41 ["onContentStart"]
      224 MOVE                             R17 R15
      225 CALL                             R16 1 1
      226 SETTABLEKS                       R16 R12 K13 ["current"]
      228 GETUPVAL                         R17 21
      229 GETTABLEKS                       R17 R17 K33 ["FFlagAssistantSegmentationPromptModeSelector"]
      231 JUMPIFNOT                        R17 ; [+9]
      232 JUMPIFNOT                        R16 ; [+8]
      233 GETUPVAL                         R17 35
      234 DUPTABLE                         R18 K42 [{"messageId", "contentId"}]
      235 SETTABLEKS                       R0 R18 K34 ["messageId"]
      237 SETTABLEKS                       R16 R18 K35 ["contentId"]
      239 SETTABLEKS                       R18 R17 K13 ["current"]
      241 JUMPIFNOT                        R16 ; [+4]
      242 GETTABLEKS                       R17 R1 K43 ["onContentFinished"]
      244 MOVE                             R18 R16
      245 CALL                             R17 1 0
      246 GETUPVAL                         R17 21
      247 GETTABLEKS                       R17 R17 K44 ["FFlagAssistantSupportSlashCommandCancellation"]
      249 JUMPIFNOT                        R17 ; [+16]
      250 GETUPVAL                         R18 22
      251 FASTCALL2K                       ASSERT R18 K45 ; [+4]
      253 LOADK                            R19 K45 ["setSlashCommandCancel is not available"]
      254 GETIMPORT                        R17 K4 [assert]
      256 CALL                             R17 2 0
      257 GETUPVAL                         R17 22
      258 NEWCLOSURE                       R18 P11
      259 CAPTURE                          REF R11
      260 CAPTURE                          VAL R9
      261 CAPTURE                          VAL R16
      262 CAPTURE                          UPVAL U13
      263 CAPTURE                          VAL R0
      264 CAPTURE                          UPVAL U32
      265 CALL                             R17 1 0
      266 GETUPVAL                         R17 2
      267 LOADB                            R18 1
      268 CALL                             R17 1 0
      269 CLOSEUPVALS                      R11
      270 RETURN                           R0 0
      271 CLOSEUPVALS                      R11
      272 LOADB                            R11 0
      273 DUPTABLE                         R12 K46 [{["type"] = "input_requested", ["title"], ["description"], ["confirmButtonText"], ["propertyRows"], ["onContinue"]}]
      274 GETUPVAL                         R14 33
      275 GETUPVAL                         R15 34
      276 CONCAT                           R13 R14 R15
      277 SETTABLEKS                       R13 R12 K18 ["title"]
      279 GETTABLEKS                       R13 R9 K19 ["description"]
      281 SETTABLEKS                       R13 R12 K19 ["description"]
      283 GETTABLEKS                       R13 R9 K20 ["confirmButtonText"]
      285 SETTABLEKS                       R13 R12 K20 ["confirmButtonText"]
      287 SETTABLEKS                       R10 R12 K6 ["propertyRows"]
      289 NEWCLOSURE                       R13 P12
      290 CAPTURE                          REF R11
      291 CAPTURE                          UPVAL U31
      292 CAPTURE                          UPVAL U30
      293 CAPTURE                          VAL R6
      294 SETTABLEKS                       R13 R12 K24 ["onContinue"]
      296 GETTABLEKS                       R13 R1 K41 ["onContentStart"]
      298 MOVE                             R14 R12
      299 CALL                             R13 1 1
      300 JUMPIFNOT                        R13 ; [+4]
      301 GETTABLEKS                       R14 R1 K43 ["onContentFinished"]
      303 MOVE                             R15 R13
      304 CALL                             R14 1 0
      305 GETUPVAL                         R14 2
      306 LOADB                            R15 1
      307 CALL                             R14 1 0
      308 CLOSEUPVALS                      R11
      309 RETURN                           R0 0
      310 CLOSEUPVALS                      R11
      311 MOVE                             R9 R6
      312 GETUPVAL                         R10 31
      313 CALL                             R9 1 0
      314 RETURN                           R0 0

PROTO_42:
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
       43 CALL                             R1 2 0
       44 RETURN                           R0 0

PROTO_43:
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
       50 LENGTH                           R10 R3
       51 JUMPIFNOTEQKN                    R10 K10 [0] ; [+4]
       53 LOADB                            R10 0
       54 CLOSEUPVALS                      R6
       55 RETURN                           R10 1
       56 GETUPVAL                         R12 3
       57 NAMECALL                         R10 R3 K11 ["find"]
       59 CALL                             R10 2 1
       60 LOADNIL                          R11
       61 JUMPIFNOT                        R10 ; [+12]
       62 LOADN                            R14 1
       63 SUBK                             R15 R10 K3 [1]
       64 NAMECALL                         R12 R3 K2 ["sub"]
       66 CALL                             R12 3 1
       67 MOVE                             R8 R12
       68 ADDK                             R14 R10 K3 [1]
       69 NAMECALL                         R12 R3 K2 ["sub"]
       71 CALL                             R12 2 1
       72 MOVE                             R11 R12
       73 JUMP                             ; [+2]
       74 MOVE                             R8 R3
       75 LOADK                            R11 K8 [""]
       76 GETUPVAL                         R12 1
       77 GETTABLEKS                       R12 R12 K12 ["getSlashCommandTransformation"]
       79 MOVE                             R13 R8
       80 CALL                             R12 1 1
       81 GETUPVAL                         R13 1
       82 GETTABLEKS                       R13 R13 K13 ["getSlashCommandDefinition"]
       84 MOVE                             R14 R8
       85 CALL                             R13 1 1
       86 MOVE                             R9 R13
       87 JUMPIFNOT                        R9 ; [+1]
       88 JUMPIF                           R12 ; [+3]
       89 LOADB                            R13 0
       90 CLOSEUPVALS                      R6
       91 RETURN                           R13 1
       92 GETUPVAL                         R13 4
       93 GETTABLEKS                       R14 R0 K14 ["images"]
       95 CALL                             R13 1 1
       96 MOVE                             R14 R12
       97 MOVE                             R15 R11
       98 MOVE                             R16 R13
       99 CALL                             R14 2 2
      100 MOVE                             R6 R14
      101 MOVE                             R7 R15
      102 GETUPVAL                         R14 5
      103 CALL                             R14 0 1
      104 JUMPIFNOT                        R14 ; [+6]
      105 GETTABLEKS                       R14 R0 K15 ["onSlashCommandRecognized"]
      107 JUMPIFNOT                        R14 ; [+3]
      108 GETTABLEKS                       R14 R0 K15 ["onSlashCommandRecognized"]
      110 CALL                             R14 0 0
      111 LOADB                            R14 0
      112 GETUPVAL                         R15 6
      113 NEWCLOSURE                       R16 P0
      114 CAPTURE                          UPVAL U7
      115 CAPTURE                          UPVAL U8
      116 CAPTURE                          UPVAL U9
      117 CAPTURE                          UPVAL U10
      118 CAPTURE                          VAL R2
      119 CAPTURE                          UPVAL U11
      120 CAPTURE                          UPVAL U12
      121 CAPTURE                          REF R14
      122 CAPTURE                          UPVAL U13
      123 CAPTURE                          UPVAL U14
      124 CAPTURE                          UPVAL U15
      125 CAPTURE                          UPVAL U16
      126 CAPTURE                          UPVAL U17
      127 CAPTURE                          UPVAL U18
      128 CAPTURE                          UPVAL U19
      129 CAPTURE                          UPVAL U20
      130 CAPTURE                          UPVAL U21
      131 CAPTURE                          VAL R1
      132 CAPTURE                          VAL R0
      133 CAPTURE                          UPVAL U22
      134 CAPTURE                          UPVAL U23
      135 CAPTURE                          UPVAL U24
      136 CAPTURE                          UPVAL U25
      137 CAPTURE                          UPVAL U26
      138 CAPTURE                          UPVAL U27
      139 CAPTURE                          UPVAL U28
      140 CAPTURE                          UPVAL U29
      141 CAPTURE                          REF R7
      142 CAPTURE                          REF R9
      143 CAPTURE                          UPVAL U5
      144 CAPTURE                          UPVAL U30
      145 CAPTURE                          REF R6
      146 CAPTURE                          UPVAL U31
      147 CAPTURE                          UPVAL U0
      148 CAPTURE                          REF R8
      149 CAPTURE                          UPVAL U32
      150 CALL                             R15 1 0
      151 LOADB                            R15 1
      152 CLOSEUPVALS                      R6
      153 RETURN                           R15 1

PROTO_44:
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
       83 CAPTURE                          VAL R4
       84 CAPTURE                          VAL R3
       85 CAPTURE                          UPVAL U22
       86 CAPTURE                          VAL R0
       87 CAPTURE                          VAL R12
       88 CAPTURE                          VAL R13
       89 CAPTURE                          UPVAL U23
       90 CAPTURE                          UPVAL U24
       91 CAPTURE                          VAL R9
       92 CAPTURE                          VAL R10
       93 CAPTURE                          VAL R11
       94 CAPTURE                          VAL R1
       95 CAPTURE                          VAL R2
       96 CAPTURE                          VAL R17
       97 CAPTURE                          VAL R7
       98 CAPTURE                          VAL R14
       99 CAPTURE                          UPVAL U25
      100 CAPTURE                          UPVAL U26
      101 CAPTURE                          UPVAL U14
      102 CAPTURE                          REF R16
      103 CAPTURE                          UPVAL U27
      104 CAPTURE                          VAL R8
      105 CAPTURE                          UPVAL U28
      106 CAPTURE                          UPVAL U29
      107 CAPTURE                          UPVAL U30
      108 CAPTURE                          UPVAL U31
      109 CAPTURE                          VAL R5
      110 GETUPVAL                         R20 5
      111 GETTABLEKS                       R20 R20 K6 ["useCallback"]
      113 MOVE                             R21 R19
      114 NEWTABLE                         R22 0 16
      116 MOVE                             R23 R0
      117 MOVE                             R24 R3
      118 MOVE                             R25 R4
      119 MOVE                             R26 R7
      120 GETUPVAL                         R28 14
      121 GETTABLEKS                       R28 R28 K4 ["FFlagAssistantSupportSlashCommandCancellation"]
      123 JUMPIFNOT                        R28 ; [+2]
      124 MOVE                             R27 R8
      125 JUMP                             ; [+1]
      126 LOADNIL                          R27
      127 GETUPVAL                         R29 14
      128 GETTABLEKS                       R29 R29 K4 ["FFlagAssistantSupportSlashCommandCancellation"]
      130 JUMPIFNOT                        R29 ; [+2]
      131 MOVE                             R28 R16
      132 JUMP                             ; [+1]
      133 LOADNIL                          R28
      134 MOVE                             R29 R18
      135 MOVE                             R30 R12
      136 MOVE                             R31 R13
      137 MOVE                             R32 R1
      138 MOVE                             R33 R17
      139 MOVE                             R34 R10
      140 MOVE                             R35 R2
      141 MOVE                             R36 R11
      142 MOVE                             R37 R14
      143 MOVE                             R38 R9
      144 SETLIST                          R22 R23 16 [1]
      146 CALL                             R20 2 -1
      147 CLOSEUPVALS                      R16
      148 RETURN                           R20 -1

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
      235 DUPCLOSURE                       R37 K54 [PROTO_3]
      236 DUPCLOSURE                       R38 K55 [PROTO_44]
      237 CAPTURE                          VAL R30
      238 CAPTURE                          VAL R25
      239 CAPTURE                          VAL R28
      240 CAPTURE                          VAL R31
      241 CAPTURE                          VAL R33
      242 CAPTURE                          VAL R17
      243 CAPTURE                          VAL R18
      244 CAPTURE                          VAL R15
      245 CAPTURE                          VAL R32
      246 CAPTURE                          VAL R27
      247 CAPTURE                          VAL R29
      248 CAPTURE                          VAL R2
      249 CAPTURE                          VAL R3
      250 CAPTURE                          VAL R14
      251 CAPTURE                          VAL R7
      252 CAPTURE                          VAL R12
      253 CAPTURE                          VAL R26
      254 CAPTURE                          VAL R34
      255 CAPTURE                          VAL R24
      256 CAPTURE                          VAL R35
      257 CAPTURE                          VAL R36
      258 CAPTURE                          VAL R8
      259 CAPTURE                          VAL R23
      260 CAPTURE                          VAL R22
      261 CAPTURE                          VAL R20
      262 CAPTURE                          VAL R1
      263 CAPTURE                          VAL R21
      264 CAPTURE                          VAL R19
      265 CAPTURE                          VAL R16
      266 CAPTURE                          VAL R9
      267 CAPTURE                          VAL R5
      268 CAPTURE                          VAL R11
      269 RETURN                           R38 1
