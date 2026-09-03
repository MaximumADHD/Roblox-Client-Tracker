PROTO_0:
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
        0 JUMPIF                           R1 ; [+1]
        1 RETURN                           R0 0
        2 LOADNIL                          R9
        3 JUMPIFNOT                        R6 ; [+4]
        4 JUMPIFNOT                        R7 ; [+3]
        5 GETTABLEKS                       R10 R7 K0 ["content"]
        7 JUMPIF                           R10 ; [+8]
        8 GETUPVAL                         R10 0
        9 MOVE                             R11 R2
       10 MOVE                             R12 R3
       11 MOVE                             R13 R4
       12 MOVE                             R14 R5
       13 CALL                             R10 4 1
       14 MOVE                             R9 R10
       15 JUMP                             ; [+24]
       16 DUPTABLE                         R10 K9 [{["type"] = "tool_result", ["id"], ["name"], [4], ["isError"], ["structuredContent"], ["startTime"], ["startTimeAfterConfirmation"]}]
       17 SETTABLEKS                       R2 R10 K3 ["id"]
       19 GETTABLEKS                       R11 R3 K4 ["name"]
       21 SETTABLEKS                       R11 R10 K4 ["name"]
       23 GETTABLEKS                       R11 R7 K0 ["content"]
       25 SETTABLEKS                       R11 R10 K0 ["content"]
       27 GETTABLEKS                       R11 R7 K5 ["isError"]
       29 SETTABLEKS                       R11 R10 K5 ["isError"]
       31 GETTABLEKS                       R11 R7 K6 ["structuredContent"]
       33 SETTABLEKS                       R11 R10 K6 ["structuredContent"]
       35 SETTABLEKS                       R4 R10 K7 ["startTime"]
       37 SETTABLEKS                       R5 R10 K8 ["startTimeAfterConfirmation"]
       39 MOVE                             R9 R10
       40 GETTABLEKS                       R10 R0 K10 ["onToolResult"]
       42 MOVE                             R11 R1
       43 MOVE                             R12 R9
       44 MOVE                             R13 R8
       45 CALL                             R10 3 0
       46 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R1 R0 K0 ["acpSessionId"]
        3 MOVE                             R1 R0
        4 DUPTABLE                         R2 K3 [{["rawTransformValues"] = True}]
        5 RETURN                           R1 2

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          VAL R0
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onComplete"]
        3 JUMPIFNOT                        R1 ; [+12]
        4 GETIMPORT                        R1 K2 [pcall]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K0 ["onComplete"]
        9 MOVE                             R3 R0
       10 CALL                             R1 2 1
       11 JUMPIF                           R1 ; [+4]
       12 GETIMPORT                        R2 K4 [warn]
       14 LOADK                            R3 K5 ["Error handling tool call completion"]
       15 CALL                             R2 1 0
       16 RETURN                           R0 0

PROTO_6:
        0 JUMPIFEQKS                       R0 K0 ["cancelled"] ; [+6]
        2 GETIMPORT                        R1 K2 [warn]
        4 LOADK                            R2 K3 ["Error running tool call via ACP:"]
        5 MOVE                             R3 R0
        6 CALL                             R1 2 0
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K4 ["onComplete"]
       10 JUMPIFNOT                        R1 ; [+5]
       11 GETUPVAL                         R1 0
       12 GETTABLEKS                       R1 R1 K4 ["onComplete"]
       14 LOADNIL                          R2
       15 CALL                             R1 1 0
       16 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["service"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["getSessionMonitor"]
        6 JUMPIFNOT                        R2 ; [+1]
        7 JUMPIF                           R3 ; [+12]
        8 GETIMPORT                        R4 K3 [warn]
       10 LOADK                            R5 K4 ["ACP service unavailable for tool call dispatch"]
       11 CALL                             R4 1 0
       12 GETTABLEKS                       R4 R1 K5 ["onComplete"]
       14 JUMPIFNOT                        R4 ; [+4]
       15 GETTABLEKS                       R4 R1 K5 ["onComplete"]
       17 LOADNIL                          R5
       18 CALL                             R4 1 0
       19 RETURN                           R0 0
       20 GETTABLEKS                       R4 R1 K6 ["client"]
       22 GETTABLEKS                       R6 R0 K7 ["name"]
       24 MOVE                             R10 R6
       25 NAMECALL                         R8 R4 K8 ["getClientForStaticTool"]
       27 CALL                             R8 2 1
       28 GETUPVAL                         R9 2
       29 GETTABLEKS                       R9 R9 K9 ["getMcpClientIdentifier"]
       31 CALL                             R9 0 1
       32 JUMPIFEQ                         R8 R9 ; [+2]
       34 LOADB                            R7 0 +1
       35 LOADB                            R7 1
       36 GETUPVAL                         R8 3
       37 GETTABLEKS                       R8 R8 K10 ["FFlagAssistantSlashToolNameAndError"]
       39 JUMPIFNOT                        R8 ; [+8]
       40 MOVE                             R8 R7
       41 JUMPIF                           R8 ; [+5]
       42 GETUPVAL                         R8 4
       43 GETTABLEKS                       R8 R8 K11 ["hasTool"]
       45 MOVE                             R9 R6
       46 CALL                             R8 1 1
       47 MOVE                             R7 R8
       48 JUMPIFNOT                        R7 ; [+7]
       49 GETUPVAL                         R8 5
       50 GETTABLEKS                       R8 R8 K12 ["addPrefix"]
       52 MOVE                             R9 R6
       53 CALL                             R8 1 1
       54 MOVE                             R5 R8
       55 JUMP                             ; [+1]
       56 MOVE                             R5 R6
       57 GETTABLEKS                       R6 R1 K13 ["threadId"]
       59 JUMPIF                           R6 ; [+1]
       60 GETUPVAL                         R6 6
       61 GETUPVAL                         R8 6
       62 JUMPIFNOTEQ                      R6 R8 ; [+3]
       64 GETUPVAL                         R7 7
       65 JUMP                             ; [+4]
       66 GETUPVAL                         R8 8
       67 GETTABLEKS                       R8 R8 K14 ["threads"]
       69 GETTABLE                         R7 R8 R6
       70 GETUPVAL                         R8 9
       71 DUPTABLE                         R9 K26 [{"service", "sessionMonitor", "threadId", "acpSessionId", "setAcpSessionId", "addContent", "editContent", "assistantMode", "conversationSessionId", "assistantMessageId", "registerPromptController", "unregisterPromptController", "showError"}]
       72 SETTABLEKS                       R2 R9 K0 ["service"]
       74 MOVE                             R10 R3
       75 MOVE                             R11 R6
       76 CALL                             R10 1 1
       77 SETTABLEKS                       R10 R9 K15 ["sessionMonitor"]
       79 SETTABLEKS                       R6 R9 K13 ["threadId"]
       81 JUMPIFNOT                        R7 ; [+3]
       82 GETTABLEKS                       R10 R7 K16 ["acpSessionId"]
       84 JUMP                             ; [+1]
       85 LOADNIL                          R10
       86 SETTABLEKS                       R10 R9 K16 ["acpSessionId"]
       88 NEWCLOSURE                       R10 P0
       89 CAPTURE                          UPVAL U10
       90 CAPTURE                          VAL R6
       91 SETTABLEKS                       R10 R9 K17 ["setAcpSessionId"]
       93 GETUPVAL                         R10 11
       94 SETTABLEKS                       R10 R9 K18 ["addContent"]
       96 GETUPVAL                         R10 12
       97 SETTABLEKS                       R10 R9 K19 ["editContent"]
       99 GETUPVAL                         R10 13
      100 SETTABLEKS                       R10 R9 K20 ["assistantMode"]
      102 GETUPVAL                         R10 14
      103 SETTABLEKS                       R10 R9 K21 ["conversationSessionId"]
      105 GETTABLEKS                       R10 R1 K27 ["messageId"]
      107 SETTABLEKS                       R10 R9 K22 ["assistantMessageId"]
      109 GETUPVAL                         R10 15
      110 GETTABLEKS                       R10 R10 K23 ["registerPromptController"]
      112 SETTABLEKS                       R10 R9 K23 ["registerPromptController"]
      114 GETUPVAL                         R10 15
      115 GETTABLEKS                       R10 R10 K24 ["unregisterPromptController"]
      117 SETTABLEKS                       R10 R9 K24 ["unregisterPromptController"]
      119 GETTABLEKS                       R10 R1 K25 ["showError"]
      121 SETTABLEKS                       R10 R9 K25 ["showError"]
      123 DUPTABLE                         R10 K32 [{"agentToolName", "arguments", "userPromptText", "images"}]
      124 SETTABLEKS                       R5 R10 K28 ["agentToolName"]
      126 GETTABLEKS                       R11 R0 K29 ["arguments"]
      128 SETTABLEKS                       R11 R10 K29 ["arguments"]
      130 GETTABLEKS                       R11 R1 K30 ["userPromptText"]
      132 SETTABLEKS                       R11 R10 K30 ["userPromptText"]
      134 GETTABLEKS                       R11 R1 K31 ["images"]
      136 SETTABLEKS                       R11 R10 K31 ["images"]
      138 CALL                             R8 2 1
      139 GETTABLEKS                       R9 R8 K33 ["promise"]
      141 NEWCLOSURE                       R11 P1
      142 CAPTURE                          VAL R1
      143 NAMECALL                         R9 R9 K34 ["andThen"]
      145 CALL                             R9 2 1
      146 NEWCLOSURE                       R11 P2
      147 CAPTURE                          VAL R1
      148 NAMECALL                         R9 R9 K35 ["catch"]
      150 CALL                             R9 2 0
      151 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETUPVAL                         R4 2
        3 GETUPVAL                         R5 3
        4 GETUPVAL                         R6 4
        5 GETUPVAL                         R7 5
        6 GETUPVAL                         R8 6
        7 MOVE                             R9 R0
        8 MOVE                             R10 R1
        9 CALL                             R2 8 0
       10 GETUPVAL                         R2 7
       11 GETTABLEKS                       R2 R2 K0 ["onComplete"]
       13 JUMPIFNOT                        R2 ; [+12]
       14 GETIMPORT                        R2 K2 [pcall]
       16 GETUPVAL                         R3 7
       17 GETTABLEKS                       R3 R3 K0 ["onComplete"]
       19 MOVE                             R4 R1
       20 CALL                             R2 2 1
       21 JUMPIF                           R2 ; [+4]
       22 GETIMPORT                        R3 K4 [warn]
       24 LOADK                            R4 K5 ["Error handling tool call completion"]
       25 CALL                             R3 1 0
       26 RETURN                           R0 0

PROTO_9:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R2 K2 ["Error calling tool:"]
        3 MOVE                             R3 R0
        4 CALL                             R1 2 0
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K3 ["persistErrorResult"]
        8 JUMPIFNOT                        R2 ; [+11]
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R2 R2 K4 ["FFlagAssistantAskInputTool"]
       12 JUMPIFNOT                        R2 ; [+7]
       13 GETUPVAL                         R1 2
       14 GETUPVAL                         R2 3
       15 GETUPVAL                         R3 4
       16 GETUPVAL                         R4 5
       17 GETUPVAL                         R5 6
       18 CALL                             R1 4 1
       19 JUMP                             ; [+1]
       20 LOADNIL                          R1
       21 GETUPVAL                         R2 7
       22 GETUPVAL                         R3 8
       23 GETUPVAL                         R4 3
       24 GETUPVAL                         R5 4
       25 GETUPVAL                         R6 5
       26 GETUPVAL                         R7 6
       27 JUMPIF                           R3 ; [+1]
       28 JUMP                             ; [+14]
       29 LOADNIL                          R8
       30 GETUPVAL                         R9 2
       31 MOVE                             R10 R4
       32 MOVE                             R11 R5
       33 MOVE                             R12 R6
       34 MOVE                             R13 R7
       35 CALL                             R9 4 1
       36 MOVE                             R8 R9
       37 GETTABLEKS                       R9 R2 K5 ["onToolResult"]
       39 MOVE                             R10 R3
       40 MOVE                             R11 R8
       41 LOADNIL                          R12
       42 CALL                             R9 3 0
       43 GETUPVAL                         R2 0
       44 GETTABLEKS                       R2 R2 K6 ["onComplete"]
       46 JUMPIFNOT                        R2 ; [+12]
       47 GETIMPORT                        R2 K8 [pcall]
       49 GETUPVAL                         R3 0
       50 GETTABLEKS                       R3 R3 K6 ["onComplete"]
       52 MOVE                             R4 R1
       53 CALL                             R2 2 1
       54 JUMPIF                           R2 ; [+4]
       55 GETIMPORT                        R3 K1 [warn]
       57 LOADK                            R4 K9 ["Error handling tool call completion"]
       58 CALL                             R3 1 0
       59 RETURN                           R0 0

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
       31 JUMPIFNOTEQ                      R4 R6 ; [+28]
       33 GETUPVAL                         R6 8
       34 GETUPVAL                         R7 9
       35 GETUPVAL                         R8 10
       36 GETUPVAL                         R9 11
       37 GETUPVAL                         R10 3
       38 GETUPVAL                         R11 12
       39 GETUPVAL                         R12 13
       40 LOADB                            R13 1
       41 MOVE                             R14 R5
       42 CALL                             R6 8 0
       43 GETUPVAL                         R6 14
       44 GETTABLEKS                       R6 R6 K7 ["onComplete"]
       46 JUMPIFNOT                        R6 ; [+72]
       47 GETIMPORT                        R6 K9 [pcall]
       49 GETUPVAL                         R7 14
       50 GETTABLEKS                       R7 R7 K7 ["onComplete"]
       52 MOVE                             R8 R5
       53 CALL                             R6 2 1
       54 JUMPIF                           R6 ; [+64]
       55 GETIMPORT                        R7 K11 [warn]
       57 LOADK                            R8 K12 ["Error handling tool call completion"]
       58 CALL                             R7 1 0
       59 RETURN                           R0 0
       60 GETIMPORT                        R6 K11 [warn]
       62 LOADK                            R7 K13 ["Error calling tool:"]
       63 MOVE                             R8 R5
       64 CALL                             R6 2 0
       65 GETUPVAL                         R7 14
       66 GETTABLEKS                       R7 R7 K14 ["persistErrorResult"]
       68 JUMPIFNOT                        R7 ; [+11]
       69 GETUPVAL                         R7 15
       70 GETTABLEKS                       R7 R7 K15 ["FFlagAssistantAskInputTool"]
       72 JUMPIFNOT                        R7 ; [+7]
       73 GETUPVAL                         R6 16
       74 GETUPVAL                         R7 11
       75 GETUPVAL                         R8 3
       76 GETUPVAL                         R9 12
       77 GETUPVAL                         R10 13
       78 CALL                             R6 4 1
       79 JUMP                             ; [+1]
       80 LOADNIL                          R6
       81 GETUPVAL                         R7 9
       82 GETUPVAL                         R8 10
       83 GETUPVAL                         R9 11
       84 GETUPVAL                         R10 3
       85 GETUPVAL                         R11 12
       86 GETUPVAL                         R12 13
       87 JUMPIF                           R8 ; [+1]
       88 JUMP                             ; [+14]
       89 LOADNIL                          R13
       90 GETUPVAL                         R14 16
       91 MOVE                             R15 R9
       92 MOVE                             R16 R10
       93 MOVE                             R17 R11
       94 MOVE                             R18 R12
       95 CALL                             R14 4 1
       96 MOVE                             R13 R14
       97 GETTABLEKS                       R14 R7 K16 ["onToolResult"]
       99 MOVE                             R15 R8
      100 MOVE                             R16 R13
      101 LOADNIL                          R17
      102 CALL                             R14 3 0
      103 GETUPVAL                         R7 14
      104 GETTABLEKS                       R7 R7 K7 ["onComplete"]
      106 JUMPIFNOT                        R7 ; [+12]
      107 GETIMPORT                        R7 K9 [pcall]
      109 GETUPVAL                         R8 14
      110 GETTABLEKS                       R8 R8 K7 ["onComplete"]
      112 MOVE                             R9 R6
      113 CALL                             R7 2 1
      114 JUMPIF                           R7 ; [+4]
      115 GETIMPORT                        R8 K11 [warn]
      117 LOADK                            R9 K12 ["Error handling tool call completion"]
      118 CALL                             R8 1 0
      119 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["cancel"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 GETUPVAL                         R4 3
        4 GETUPVAL                         R5 4
        5 GETUPVAL                         R6 5
        6 GETUPVAL                         R7 6
        7 LOADB                            R8 1
        8 MOVE                             R9 R0
        9 CALL                             R1 8 0
       10 GETUPVAL                         R1 7
       11 GETTABLEKS                       R1 R1 K0 ["onComplete"]
       13 JUMPIFNOT                        R1 ; [+12]
       14 GETIMPORT                        R1 K2 [pcall]
       16 GETUPVAL                         R2 7
       17 GETTABLEKS                       R2 R2 K0 ["onComplete"]
       19 MOVE                             R3 R0
       20 CALL                             R1 2 1
       21 JUMPIF                           R1 ; [+4]
       22 GETIMPORT                        R2 K4 [warn]
       24 LOADK                            R3 K5 ["Error handling tool call completion"]
       25 CALL                             R2 1 0
       26 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R2 R1 K0 ["client"]
        2 GETTABLEKS                       R3 R1 K1 ["contentObserver"]
        4 FASTCALL2K                       ASSERT R3 K2 ; [+5]
        6 MOVE                             R5 R3
        7 LOADK                            R6 K2 ["contentObserver is required for local tool call dispatch"]
        8 GETIMPORT                        R4 K4 [assert]
       10 CALL                             R4 2 0
       11 GETTABLEKS                       R5 R1 K5 ["toolIdPrefix"]
       13 GETUPVAL                         R6 0
       14 LOADB                            R8 0
       15 NAMECALL                         R6 R6 K6 ["GenerateGUID"]
       17 CALL                             R6 2 1
       18 CONCAT                           R4 R5 R6
       19 GETUPVAL                         R5 1
       20 GETTABLEKS                       R5 R5 K7 ["getTimestampMilliseconds"]
       22 CALL                             R5 0 1
       23 DUPTABLE                         R6 K13 [{["type"] = "tool_use", ["id"], ["name"], ["input"]}]
       24 SETTABLEKS                       R4 R6 K10 ["id"]
       26 GETTABLEKS                       R7 R0 K11 ["name"]
       28 SETTABLEKS                       R7 R6 K11 ["name"]
       30 GETTABLEKS                       R7 R0 K14 ["arguments"]
       32 SETTABLEKS                       R7 R6 K12 ["input"]
       34 GETTABLEKS                       R7 R3 K15 ["onContentStart"]
       36 MOVE                             R8 R6
       37 CALL                             R7 1 1
       38 JUMPIFNOT                        R7 ; [+4]
       39 GETTABLEKS                       R8 R3 K16 ["onContentFinished"]
       41 MOVE                             R9 R7
       42 CALL                             R8 1 0
       43 DUPTABLE                         R8 K27 [{["messageGuid"], ["sessionId"], ["threadId"], ["messageId"], ["contentId"], ["isThirdPartyRequest"] = , ["targetDataModel"] = , ["assistantMode"] = , ["toolId"]}]
       44 GETTABLEKS                       R9 R1 K20 ["messageId"]
       46 SETTABLEKS                       R9 R8 K17 ["messageGuid"]
       48 GETUPVAL                         R9 2
       49 SETTABLEKS                       R9 R8 K18 ["sessionId"]
       51 GETTABLEKS                       R9 R1 K19 ["threadId"]
       53 JUMPIF                           R9 ; [+1]
       54 GETUPVAL                         R9 3
       55 SETTABLEKS                       R9 R8 K19 ["threadId"]
       57 GETTABLEKS                       R9 R1 K20 ["messageId"]
       59 SETTABLEKS                       R9 R8 K20 ["messageId"]
       61 SETTABLEKS                       R7 R8 K21 ["contentId"]
       63 SETTABLEKS                       R4 R8 K26 ["toolId"]
       65 GETUPVAL                         R9 1
       66 GETTABLEKS                       R9 R9 K7 ["getTimestampMilliseconds"]
       68 CALL                             R9 0 1
       69 JUMPIFNOT                        R7 ; [+7]
       70 GETTABLEKS                       R10 R3 K28 ["onPreExecuteToolUse"]
       72 MOVE                             R11 R7
       73 MOVE                             R12 R6
       74 GETTABLEKS                       R13 R1 K29 ["isSlashCommand"]
       76 CALL                             R10 3 0
       77 NEWCLOSURE                       R10 P0
       78 CAPTURE                          UPVAL U4
       79 CAPTURE                          VAL R3
       80 CAPTURE                          VAL R7
       81 CAPTURE                          VAL R4
       82 CAPTURE                          VAL R0
       83 CAPTURE                          VAL R5
       84 CAPTURE                          VAL R9
       85 CAPTURE                          VAL R1
       86 GETTABLEKS                       R11 R1 K30 ["eagerPlaceholder"]
       88 JUMPIFNOT                        R11 ; [+22]
       89 JUMPIFNOT                        R7 ; [+21]
       90 GETUPVAL                         R11 4
       91 MOVE                             R12 R3
       92 MOVE                             R13 R7
       93 MOVE                             R14 R4
       94 MOVE                             R15 R0
       95 MOVE                             R16 R5
       96 MOVE                             R17 R9
       97 LOADB                            R18 1
       98 DUPTABLE                         R19 K35 [{["content"], ["isError"] = False, ["structuredContent"]}]
       99 NEWTABLE                         R20 0 1
      101 DUPTABLE                         R21 K38 [{["type"] = "text", ["text"] = "Tool call is still running asynchronously."}]
      102 SETLIST                          R20 R21 1 [1]
      104 SETTABLEKS                       R20 R19 K31 ["content"]
      106 DUPTABLE                         R20 K41 [{["pending"] = True}]
      107 SETTABLEKS                       R20 R19 K34 ["structuredContent"]
      109 LOADB                            R20 1
      110 CALL                             R11 9 0
      111 NEWCLOSURE                       R11 P1
      112 CAPTURE                          VAL R1
      113 CAPTURE                          UPVAL U5
      114 CAPTURE                          UPVAL U6
      115 CAPTURE                          VAL R4
      116 CAPTURE                          VAL R0
      117 CAPTURE                          VAL R5
      118 CAPTURE                          VAL R9
      119 CAPTURE                          VAL R3
      120 CAPTURE                          VAL R7
      121 GETUPVAL                         R13 5
      122 GETTABLEKS                       R13 R13 K42 ["FFlagAssistantAskInputTool"]
      124 JUMPIFNOT                        R13 ; [+7]
      125 GETUPVAL                         R12 7
      126 GETTABLEKS                       R12 R12 K43 ["getToolCallOptions"]
      128 GETTABLEKS                       R13 R0 K11 ["name"]
      130 CALL                             R12 1 1
      131 JUMP                             ; [+1]
      132 LOADNIL                          R12
      133 GETTABLEKS                       R13 R1 K44 ["cancellable"]
      135 JUMPIFNOT                        R13 ; [+55]
      136 GETUPVAL                         R13 5
      137 GETTABLEKS                       R13 R13 K45 ["FFlagAssistantSupportSlashCommandCancellation"]
      139 JUMPIFNOT                        R13 ; [+51]
      140 GETUPVAL                         R14 8
      141 FASTCALL2K                       ASSERT R14 K46 ; [+4]
      143 LOADK                            R15 K46 ["setSlashCommandCancel is not available"]
      144 GETIMPORT                        R13 K4 [assert]
      146 CALL                             R13 2 0
      147 GETUPVAL                         R13 9
      148 GETTABLEKS                       R13 R13 K47 ["new"]
      150 CALL                             R13 0 1
      151 DUPTABLE                         R14 K52 [{["timeout"], ["resetTimeoutOnProgress"] = True, ["onprogress"], ["signal"]}]
      152 MOVE                             R15 R12
      153 JUMPIFNOT                        R15 ; [+2]
      154 GETTABLEKS                       R15 R12 K48 ["timeout"]
      156 SETTABLEKS                       R15 R14 K48 ["timeout"]
      158 NEWCLOSURE                       R15 P2
      159 CAPTURE                          UPVAL U10
      160 SETTABLEKS                       R15 R14 K50 ["onprogress"]
      162 SETTABLEKS                       R13 R14 K51 ["signal"]
      164 GETUPVAL                         R15 11
      165 GETTABLEKS                       R15 R15 K47 ["new"]
      167 NEWCLOSURE                       R16 P3
      168 CAPTURE                          VAL R13
      169 CAPTURE                          VAL R2
      170 CAPTURE                          UPVAL U12
      171 CAPTURE                          VAL R0
      172 CAPTURE                          VAL R14
      173 CAPTURE                          VAL R8
      174 CAPTURE                          UPVAL U8
      175 CAPTURE                          UPVAL U11
      176 CAPTURE                          UPVAL U4
      177 CAPTURE                          VAL R3
      178 CAPTURE                          VAL R7
      179 CAPTURE                          VAL R4
      180 CAPTURE                          VAL R5
      181 CAPTURE                          VAL R9
      182 CAPTURE                          VAL R1
      183 CAPTURE                          UPVAL U5
      184 CAPTURE                          UPVAL U6
      185 CALL                             R15 1 1
      186 GETUPVAL                         R16 8
      187 NEWCLOSURE                       R17 P4
      188 CAPTURE                          VAL R15
      189 CALL                             R16 1 0
      190 RETURN                           R0 0
      191 DUPTABLE                         R13 K53 [{["timeout"], ["resetTimeoutOnProgress"] = True}]
      192 MOVE                             R14 R12
      193 JUMPIFNOT                        R14 ; [+2]
      194 GETTABLEKS                       R14 R12 K48 ["timeout"]
      196 SETTABLEKS                       R14 R13 K48 ["timeout"]
      198 GETUPVAL                         R16 12
      199 GETTABLEKS                       R16 R16 K54 ["getMcpClientIdentifier"]
      201 CALL                             R16 0 1
      202 GETTABLEKS                       R17 R0 K11 ["name"]
      204 GETTABLEKS                       R18 R0 K14 ["arguments"]
      206 MOVE                             R19 R13
      207 MOVE                             R20 R8
      208 NAMECALL                         R14 R2 K55 ["callToolForClient"]
      210 CALL                             R14 6 1
      211 NEWCLOSURE                       R16 P5
      212 CAPTURE                          UPVAL U4
      213 CAPTURE                          VAL R3
      214 CAPTURE                          VAL R7
      215 CAPTURE                          VAL R4
      216 CAPTURE                          VAL R0
      217 CAPTURE                          VAL R5
      218 CAPTURE                          VAL R9
      219 CAPTURE                          VAL R1
      220 NAMECALL                         R14 R14 K56 ["andThen"]
      222 CALL                             R14 2 1
      223 MOVE                             R16 R11
      224 NAMECALL                         R14 R14 K57 ["catch"]
      226 CALL                             R14 2 0
      227 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+9]
        2 LOADB                            R1 1
        3 SETUPVAL                         R1 0
        4 GETUPVAL                         R1 1
        5 LOADB                            R2 1
        6 DUPTABLE                         R3 K1 [{"threadId"}]
        7 GETUPVAL                         R4 2
        8 SETTABLEKS                       R4 R3 K0 ["threadId"]
       10 CALL                             R1 2 0
       11 GETUPVAL                         R1 3
       12 JUMPIFNOT                        R1 ; [+3]
       13 GETUPVAL                         R1 3
       14 MOVE                             R2 R0
       15 CALL                             R1 1 0
       16 RETURN                           R0 0

PROTO_17:
        0 MOVE                             R2 R1
        1 GETTABLEKS                       R3 R1 K0 ["blockInput"]
        3 JUMPIFNOT                        R3 ; [+24]
        4 GETTABLEKS                       R3 R1 K1 ["threadId"]
        6 GETUPVAL                         R4 0
        7 LOADB                            R5 0
        8 DUPTABLE                         R6 K2 [{"threadId"}]
        9 SETTABLEKS                       R3 R6 K1 ["threadId"]
       11 CALL                             R4 2 0
       12 LOADB                            R4 0
       13 GETTABLEKS                       R5 R1 K3 ["onComplete"]
       15 GETIMPORT                        R6 K6 [table.clone]
       17 MOVE                             R7 R1
       18 CALL                             R6 1 1
       19 MOVE                             R2 R6
       20 NEWCLOSURE                       R6 P0
       21 CAPTURE                          REF R4
       22 CAPTURE                          UPVAL U0
       23 CAPTURE                          VAL R3
       24 CAPTURE                          VAL R5
       25 SETTABLEKS                       R6 R2 K3 ["onComplete"]
       27 CLOSEUPVALS                      R4
       28 GETUPVAL                         R3 1
       29 CALL                             R3 0 1
       30 JUMPIFNOT                        R3 ; [+5]
       31 GETUPVAL                         R3 2
       32 MOVE                             R4 R0
       33 MOVE                             R5 R2
       34 CALL                             R3 2 0
       35 RETURN                           R0 0
       36 GETUPVAL                         R3 3
       37 MOVE                             R4 R0
       38 MOVE                             R5 R2
       39 CALL                             R3 2 0
       40 RETURN                           R0 0

PROTO_18:
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
       11 CALL                             R5 0 1
       12 GETUPVAL                         R6 6
       13 CALL                             R6 0 1
       14 GETUPVAL                         R7 7
       15 GETTABLEKS                       R7 R7 K0 ["useContext"]
       17 GETUPVAL                         R8 8
       18 GETTABLEKS                       R8 R8 K1 ["Context"]
       20 CALL                             R7 1 1
       21 GETTABLEKS                       R8 R7 K2 ["sessionId"]
       23 GETUPVAL                         R9 7
       24 GETTABLEKS                       R9 R9 K0 ["useContext"]
       26 GETUPVAL                         R10 9
       27 GETTABLEKS                       R10 R10 K1 ["Context"]
       29 CALL                             R9 1 1
       30 GETUPVAL                         R10 7
       31 GETTABLEKS                       R10 R10 K0 ["useContext"]
       33 GETUPVAL                         R11 10
       34 GETTABLEKS                       R11 R11 K1 ["Context"]
       36 CALL                             R10 1 1
       37 GETUPVAL                         R11 7
       38 GETTABLEKS                       R11 R11 K0 ["useContext"]
       40 GETUPVAL                         R12 11
       41 GETTABLEKS                       R12 R12 K1 ["Context"]
       43 CALL                             R11 1 1
       44 GETUPVAL                         R12 7
       45 GETTABLEKS                       R12 R12 K0 ["useContext"]
       47 GETUPVAL                         R13 12
       48 GETTABLEKS                       R13 R13 K1 ["Context"]
       50 CALL                             R12 1 1
       51 GETUPVAL                         R13 7
       52 GETTABLEKS                       R13 R13 K0 ["useContext"]
       54 GETUPVAL                         R14 13
       55 GETTABLEKS                       R14 R14 K1 ["Context"]
       57 CALL                             R13 1 1
       58 GETUPVAL                         R14 14
       59 MOVE                             R15 R13
       60 CALL                             R14 1 1
       61 LOADNIL                          R15
       62 GETUPVAL                         R16 15
       63 GETTABLEKS                       R16 R16 K3 ["FFlagAssistantSupportSlashCommandCancellation"]
       65 JUMPIFNOT                        R16 ; [+9]
       66 GETUPVAL                         R16 7
       67 GETTABLEKS                       R16 R16 K0 ["useContext"]
       69 GETUPVAL                         R17 16
       70 GETTABLEKS                       R17 R17 K1 ["Context"]
       72 CALL                             R16 1 1
       73 GETTABLEKS                       R15 R16 K4 ["setSlashCommandCancel"]
       75 NEWCLOSURE                       R16 P0
       76 CAPTURE                          VAL R10
       77 CAPTURE                          VAL R11
       78 CAPTURE                          UPVAL U17
       79 CAPTURE                          UPVAL U15
       80 CAPTURE                          UPVAL U18
       81 CAPTURE                          UPVAL U19
       82 CAPTURE                          VAL R4
       83 CAPTURE                          VAL R3
       84 CAPTURE                          VAL R6
       85 CAPTURE                          UPVAL U20
       86 CAPTURE                          VAL R2
       87 CAPTURE                          VAL R0
       88 CAPTURE                          VAL R1
       89 CAPTURE                          VAL R5
       90 CAPTURE                          VAL R8
       91 CAPTURE                          VAL R12
       92 NEWCLOSURE                       R17 P1
       93 CAPTURE                          UPVAL U21
       94 CAPTURE                          UPVAL U22
       95 CAPTURE                          VAL R8
       96 CAPTURE                          VAL R4
       97 CAPTURE                          UPVAL U23
       98 CAPTURE                          UPVAL U15
       99 CAPTURE                          UPVAL U24
      100 CAPTURE                          UPVAL U25
      101 CAPTURE                          REF R15
      102 CAPTURE                          UPVAL U26
      103 CAPTURE                          VAL R9
      104 CAPTURE                          UPVAL U27
      105 CAPTURE                          UPVAL U17
      106 NEWCLOSURE                       R18 P2
      107 CAPTURE                          VAL R14
      108 CAPTURE                          UPVAL U28
      109 CAPTURE                          VAL R16
      110 CAPTURE                          VAL R17
      111 CLOSEUPVALS                      R15
      112 RETURN                           R18 1

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
       40 GETTABLEKS                       R6 R0 K16 ["FlagUtils"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K9 [require]
       45 GETTABLEKS                       R7 R0 K17 ["Flags"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K9 [require]
       50 GETTABLEKS                       R8 R0 K10 ["Components"]
       52 GETTABLEKS                       R8 R8 K11 ["Contexts"]
       54 GETTABLEKS                       R8 R8 K18 ["InputStateContext"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K9 [require]
       59 GETTABLEKS                       R9 R0 K10 ["Components"]
       61 GETTABLEKS                       R9 R9 K11 ["Contexts"]
       63 GETTABLEKS                       R9 R9 K19 ["DefaultLLMProvider"]
       65 GETTABLEKS                       R9 R9 K20 ["LLMPackageContextProvider"]
       67 CALL                             R8 1 1
       68 GETIMPORT                        R9 K9 [require]
       70 GETTABLEKS                       R10 R0 K14 ["Parent"]
       72 GETTABLEKS                       R10 R10 K21 ["ModelContextProtocol"]
       74 CALL                             R9 1 1
       75 GETIMPORT                        R10 K9 [require]
       77 GETTABLEKS                       R11 R0 K10 ["Components"]
       79 GETTABLEKS                       R11 R11 K11 ["Contexts"]
       81 GETTABLEKS                       R11 R11 K22 ["OngoingAcpPromptContext"]
       83 CALL                             R10 1 1
       84 GETIMPORT                        R11 K9 [require]
       86 GETTABLEKS                       R12 R0 K10 ["Components"]
       88 GETTABLEKS                       R12 R12 K11 ["Contexts"]
       90 GETTABLEKS                       R12 R12 K23 ["PacketReceivedContext"]
       92 CALL                             R11 1 1
       93 GETIMPORT                        R12 K9 [require]
       95 GETTABLEKS                       R13 R0 K14 ["Parent"]
       97 GETTABLEKS                       R13 R13 K24 ["Promise"]
       99 CALL                             R12 1 1
      100 GETIMPORT                        R13 K9 [require]
      102 GETTABLEKS                       R14 R0 K14 ["Parent"]
      104 GETTABLEKS                       R14 R14 K25 ["React"]
      106 CALL                             R13 1 1
      107 GETIMPORT                        R14 K9 [require]
      109 GETTABLEKS                       R15 R0 K10 ["Components"]
      111 GETTABLEKS                       R15 R15 K11 ["Contexts"]
      113 GETTABLEKS                       R15 R15 K26 ["SessionIdContext"]
      115 CALL                             R14 1 1
      116 GETIMPORT                        R15 K9 [require]
      118 GETTABLEKS                       R16 R0 K14 ["Parent"]
      120 GETTABLEKS                       R16 R16 K27 ["Signal"]
      122 CALL                             R15 1 1
      123 GETTABLEKS                       R16 R4 K28 ["Engine"]
      125 GETTABLEKS                       R16 R16 K29 ["Time"]
      127 GETTABLEKS                       R17 R4 K30 ["ToolNaming"]
      129 GETIMPORT                        R18 K9 [require]
      131 GETTABLEKS                       R19 R0 K31 ["Types"]
      133 CALL                             R18 1 1
      134 GETIMPORT                        R19 K9 [require]
      136 GETTABLEKS                       R20 R0 K10 ["Components"]
      138 GETTABLEKS                       R20 R20 K32 ["UIToolRegistry"]
      140 CALL                             R19 1 1
      141 GETIMPORT                        R20 K9 [require]
      143 GETTABLEKS                       R21 R0 K33 ["Util"]
      145 GETTABLEKS                       R21 R21 K34 ["getToggleGenerationInputFunc"]
      147 CALL                             R20 1 1
      148 GETIMPORT                        R21 K9 [require]
      150 GETTABLEKS                       R22 R0 K35 ["ACPClientService"]
      152 GETTABLEKS                       R22 R22 K36 ["runSlashCommandViaService"]
      154 CALL                             R21 1 1
      155 GETIMPORT                        R22 K9 [require]
      157 GETTABLEKS                       R23 R0 K37 ["Hooks"]
      159 GETTABLEKS                       R23 R23 K38 ["useAddContent"]
      161 CALL                             R22 1 1
      162 GETIMPORT                        R23 K9 [require]
      164 GETTABLEKS                       R24 R0 K37 ["Hooks"]
      166 GETTABLEKS                       R24 R24 K39 ["useAssistantMode"]
      168 CALL                             R23 1 1
      169 GETIMPORT                        R24 K9 [require]
      171 GETTABLEKS                       R25 R0 K37 ["Hooks"]
      173 GETTABLEKS                       R25 R25 K40 ["useConversation"]
      175 CALL                             R24 1 1
      176 GETIMPORT                        R25 K9 [require]
      178 GETTABLEKS                       R26 R0 K37 ["Hooks"]
      180 GETTABLEKS                       R26 R26 K41 ["useCurrentThread"]
      182 CALL                             R25 1 1
      183 GETIMPORT                        R26 K9 [require]
      185 GETTABLEKS                       R27 R0 K37 ["Hooks"]
      187 GETTABLEKS                       R27 R27 K42 ["useEditContent"]
      189 CALL                             R26 1 1
      190 GETIMPORT                        R27 K9 [require]
      192 GETTABLEKS                       R28 R0 K37 ["Hooks"]
      194 GETTABLEKS                       R28 R28 K43 ["useEditThread"]
      196 CALL                             R27 1 1
      197 GETIMPORT                        R28 K9 [require]
      199 GETTABLEKS                       R29 R0 K37 ["Hooks"]
      201 GETTABLEKS                       R29 R29 K44 ["useThreadId"]
      203 CALL                             R28 1 1
      204 GETTABLEKS                       R29 R9 K45 ["ToolRegistry"]
      206 GETTABLEKS                       R30 R5 K46 ["getIsSlashCommandViaAcp"]
      208 DUPCLOSURE                       R31 K47 [PROTO_0]
      209 CAPTURE                          VAL R18
      210 CAPTURE                          VAL R6
      211 CAPTURE                          VAL R29
      212 CAPTURE                          VAL R17
      213 DUPCLOSURE                       R32 K48 [PROTO_1]
      214 DUPCLOSURE                       R33 K49 [PROTO_2]
      215 CAPTURE                          VAL R32
      216 DUPCLOSURE                       R34 K50 [PROTO_18]
      217 CAPTURE                          VAL R22
      218 CAPTURE                          VAL R26
      219 CAPTURE                          VAL R27
      220 CAPTURE                          VAL R25
      221 CAPTURE                          VAL R28
      222 CAPTURE                          VAL R23
      223 CAPTURE                          VAL R24
      224 CAPTURE                          VAL R13
      225 CAPTURE                          VAL R14
      226 CAPTURE                          VAL R11
      227 CAPTURE                          VAL R2
      228 CAPTURE                          VAL R3
      229 CAPTURE                          VAL R10
      230 CAPTURE                          VAL R7
      231 CAPTURE                          VAL R20
      232 CAPTURE                          VAL R6
      233 CAPTURE                          VAL R8
      234 CAPTURE                          VAL R18
      235 CAPTURE                          VAL R29
      236 CAPTURE                          VAL R17
      237 CAPTURE                          VAL R21
      238 CAPTURE                          VAL R1
      239 CAPTURE                          VAL R16
      240 CAPTURE                          VAL R33
      241 CAPTURE                          VAL R32
      242 CAPTURE                          VAL R19
      243 CAPTURE                          VAL R15
      244 CAPTURE                          VAL R12
      245 CAPTURE                          VAL R30
      246 RETURN                           R34 1
