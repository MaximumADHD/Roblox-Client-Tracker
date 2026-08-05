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
       22 GETUPVAL                         R10 1
       23 GETTABLEKS                       R10 R10 K10 ["FFlagPrimGenAnnotateRightMimeType"]
       25 JUMPIFNOT                        R10 ; [+3]
       26 GETTABLEKS                       R9 R6 K8 ["mimeType"]
       28 JUMP                             ; [+1]
       29 LOADK                            R9 K11 ["image/png"]
       30 SETTABLEKS                       R9 R8 K8 ["mimeType"]
       32 CALL                             R7 1 1
       33 FASTCALL2                        TABLE_INSERT R1 R7 ; [+5]
       35 MOVE                             R9 R1
       36 MOVE                             R10 R7
       37 GETIMPORT                        R8 K13 [table.insert]
       39 CALL                             R8 2 0
       40 FORGLOOP                         R2 2 ; [-27]
       42 RETURN                           R1 1

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

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setLastPacketTime"]
        3 GETIMPORT                        R1 K3 [os.clock]
        5 CALL                             R1 0 -1
        6 CALL                             R0 -1 0
        7 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["user_requested_cancellation"]
        2 NAMECALL                         R0 R0 K1 ["Fire"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_7:
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

PROTO_8:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["cancel"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 LOADB                            R2 1
        2 MOVE                             R3 R0
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_10:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R2 K2 ["Error calling tool:"]
        3 MOVE                             R3 R0
        4 CALL                             R1 2 0
        5 GETUPVAL                         R1 0
        6 LOADB                            R2 0
        7 LOADNIL                          R3
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_11:
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

PROTO_12:
        0 GETUPVAL                         R2 0
        1 FASTCALL2                        TABLE_INSERT R2 R0 ; [+4]
        3 MOVE                             R3 R0
        4 GETIMPORT                        R1 K2 [table.insert]
        6 CALL                             R1 2 0
        7 GETUPVAL                         R1 1
        8 CALL                             R1 0 0
        9 RETURN                           R0 0

PROTO_13:
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
       30 GETUPVAL                         R3 4
       31 MOVE                             R4 R2
       32 NEWCLOSURE                       R5 P0
       33 CAPTURE                          UPVAL U3
       34 CAPTURE                          UPVAL U5
       35 CALL                             R3 2 0
       36 RETURN                           R0 0

PROTO_14:
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
       13 CAPTURE                          UPVAL U3
       14 CAPTURE                          VAL R2
       15 MOVE                             R3 R2
       16 CALL                             R3 0 0
       17 CLOSEUPVALS                      R1
       18 RETURN                           R0 0

PROTO_15:
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
       11 CAPTURE                          UPVAL U0
       12 CALL                             R3 2 0
       13 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onContinueWithLLMWithResult"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onContinueWithLLM"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+23]
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
       21 CAPTURE                          UPVAL U1
       22 CAPTURE                          UPVAL U2
       23 CALL                             R3 2 0
       24 RETURN                           R0 0
       25 JUMPIFNOT                        R0 ; [+41]
       26 GETUPVAL                         R1 3
       27 JUMPIFNOT                        R1 ; [+18]
       28 GETUPVAL                         R1 3
       29 GETTABLEKS                       R1 R1 K7 ["continueWithLLM"]
       31 JUMPIFNOT                        R1 ; [+14]
       32 GETUPVAL                         R1 4
       33 CALL                             R1 0 1
       34 JUMPIFNOT                        R1 ; [+11]
       35 GETUPVAL                         R1 5
       36 GETTABLEKS                       R1 R1 K8 ["onContinueWithLLMWithResult"]
       38 JUMPIFNOT                        R1 ; [+7]
       39 GETUPVAL                         R1 2
       40 MOVE                             R2 R0
       41 NEWCLOSURE                       R3 P1
       42 CAPTURE                          UPVAL U5
       43 CAPTURE                          UPVAL U6
       44 CALL                             R1 2 0
       45 RETURN                           R0 0
       46 GETUPVAL                         R1 3
       47 JUMPIFNOT                        R1 ; [+15]
       48 GETUPVAL                         R1 3
       49 GETTABLEKS                       R1 R1 K7 ["continueWithLLM"]
       51 JUMPIFNOT                        R1 ; [+11]
       52 GETUPVAL                         R1 5
       53 GETTABLEKS                       R1 R1 K9 ["onContinueWithLLM"]
       55 JUMPIFNOT                        R1 ; [+7]
       56 GETUPVAL                         R1 2
       57 MOVE                             R2 R0
       58 NEWCLOSURE                       R3 P2
       59 CAPTURE                          UPVAL U5
       60 CAPTURE                          UPVAL U6
       61 CALL                             R1 2 0
       62 RETURN                           R0 0
       63 GETUPVAL                         R1 2
       64 MOVE                             R2 R0
       65 CALL                             R1 1 0
       66 RETURN                           R0 0
       67 GETUPVAL                         R1 1
       68 LOADB                            R2 1
       69 CALL                             R1 1 0
       70 GETIMPORT                        R1 K1 [error]
       72 LOADK                            R2 K10 ["No tool spec generated for slash command and no tool chain defined."]
       73 CALL                             R1 1 0
       74 RETURN                           R0 0

PROTO_19:
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

PROTO_20:
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

PROTO_21:
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

PROTO_22:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["InputStatus"]
        3 GETTABLEKS                       R1 R1 K1 ["Cancelled"]
        5 SETTABLEKS                       R1 R0 K2 ["status"]
        7 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R1 K0 [PROTO_22]
        2 CAPTURE                          UPVAL U1
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_24:
        0 GETTABLEKS                       R1 R0 K0 ["imageSelection"]
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["imageSelection"]
        5 LOADK                            R2 K1 ["Picker"]
        6 SETTABLEKS                       R2 R1 K2 ["phase"]
        8 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["InputStatus"]
        3 GETTABLEKS                       R1 R1 K1 ["Recorded"]
        5 SETTABLEKS                       R1 R0 K2 ["status"]
        7 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+1]
        2 RETURN                           R0 0
        3 LOADB                            R1 1
        4 SETUPVAL                         R1 0
        5 GETUPVAL                         R1 1
        6 DUPCLOSURE                       R2 K0 [PROTO_25]
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

PROTO_27:
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
       43 DUPCLOSURE                       R3 K10 [PROTO_24]
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

PROTO_28:
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

PROTO_29:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["suppressHistory"]
        3 RETURN                           R0 0

PROTO_30:
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
       98 DUPCLOSURE                       R8 K25 [PROTO_29]
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

PROTO_31:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["suppressHistory"]
        3 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["InputStatus"]
        3 GETTABLEKS                       R1 R1 K1 ["Cancelled"]
        5 SETTABLEKS                       R1 R0 K2 ["status"]
        7 RETURN                           R0 0

PROTO_33:
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
       22 DUPCLOSURE                       R2 K5 [PROTO_32]
       23 CAPTURE                          UPVAL U5
       24 SETTABLEKS                       R2 R1 K3 ["transformFn"]
       26 CALL                             R0 1 0
       27 RETURN                           R0 0

PROTO_34:
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

PROTO_35:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETTABLEKS                       R2 R1 K0 ["onNewMessage"]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 0
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          VAL R1
       10 CAPTURE                          VAL R0
       11 CAPTURE                          UPVAL U3
       12 CAPTURE                          UPVAL U4
       13 CAPTURE                          UPVAL U5
       14 CAPTURE                          UPVAL U6
       15 CAPTURE                          UPVAL U7
       16 CAPTURE                          UPVAL U8
       17 CAPTURE                          UPVAL U9
       18 CAPTURE                          UPVAL U10
       19 CAPTURE                          UPVAL U11
       20 NEWCLOSURE                       R3 P1
       21 CAPTURE                          VAL R2
       22 CAPTURE                          UPVAL U4
       23 NEWCLOSURE                       R4 P2
       24 CAPTURE                          UPVAL U12
       25 CAPTURE                          UPVAL U4
       26 CAPTURE                          VAL R2
       27 CAPTURE                          UPVAL U13
       28 CAPTURE                          UPVAL U14
       29 CAPTURE                          UPVAL U15
       30 CAPTURE                          VAL R0
       31 DUPCLOSURE                       R5 K1 [PROTO_19]
       32 CAPTURE                          UPVAL U16
       33 GETUPVAL                         R7 13
       34 FASTCALL2K                       ASSERT R7 K2 ; [+4]
       36 LOADK                            R8 K2 ["definition should always be available for slash commands"]
       37 GETIMPORT                        R6 K4 [assert]
       39 CALL                             R6 2 0
       40 GETUPVAL                         R6 13
       41 GETTABLEKS                       R6 R6 K5 ["getInputRequestArguments"]
       43 JUMPIFNOT                        R6 ; [+239]
       44 MOVE                             R7 R6
       45 CALL                             R7 0 1
       46 LOADNIL                          R8
       47 GETTABLEKS                       R9 R7 K6 ["propertyRows"]
       49 JUMPIFNOT                        R9 ; [+194]
       50 GETIMPORT                        R9 K9 [table.clone]
       52 GETTABLEKS                       R10 R7 K6 ["propertyRows"]
       54 CALL                             R9 1 1
       55 MOVE                             R8 R9
       56 MOVE                             R9 R8
       57 LOADNIL                          R10
       58 LOADNIL                          R11
       59 FORGPREP                         R9
       60 GETUPVAL                         R15 17
       61 GETTABLEKS                       R15 R15 K10 ["arguments"]
       63 GETTABLEKS                       R16 R13 K11 ["prop"]
       65 GETTABLE                         R14 R15 R16
       66 JUMPIFEQKNIL                     R14 ; [+8]
       68 GETIMPORT                        R15 K9 [table.clone]
       70 MOVE                             R16 R13
       71 CALL                             R15 1 1
       72 SETTABLEKS                       R14 R15 K12 ["initialValue"]
       74 SETTABLE                         R15 R8 R12
       75 FORGLOOP                         R9 2 ; [-16]
       77 LOADB                            R9 0
       78 DUPTABLE                         R10 K15 [{["current"] = }]
       79 NEWCLOSURE                       R11 P4
       80 CAPTURE                          VAL R10
       81 CAPTURE                          UPVAL U18
       82 CAPTURE                          VAL R0
       83 NEWCLOSURE                       R12 P5
       84 CAPTURE                          VAL R11
       85 CAPTURE                          UPVAL U19
       86 DUPTABLE                         R13 K26 [{["type"] = "input_requested", ["title"], ["description"], ["confirmButtonText"], ["propertyRows"], ["canConfirm"], ["getDisabledReason"], ["imageSelection"], ["onContinue"], ["onRevive"]}]
       87 GETUPVAL                         R15 20
       88 GETUPVAL                         R16 21
       89 CONCAT                           R14 R15 R16
       90 SETTABLEKS                       R14 R13 K18 ["title"]
       92 GETTABLEKS                       R14 R7 K19 ["description"]
       94 SETTABLEKS                       R14 R13 K19 ["description"]
       96 GETTABLEKS                       R14 R7 K20 ["confirmButtonText"]
       98 SETTABLEKS                       R14 R13 K20 ["confirmButtonText"]
      100 SETTABLEKS                       R8 R13 K6 ["propertyRows"]
      102 GETTABLEKS                       R14 R7 K21 ["canConfirm"]
      104 SETTABLEKS                       R14 R13 K21 ["canConfirm"]
      106 GETUPVAL                         R15 5
      107 GETTABLEKS                       R15 R15 K27 ["FFlagAssistantDisabledReason"]
      109 JUMPIFNOT                        R15 ; [+3]
      110 GETTABLEKS                       R14 R7 K22 ["getDisabledReason"]
      112 JUMP                             ; [+1]
      113 LOADNIL                          R14
      114 SETTABLEKS                       R14 R13 K22 ["getDisabledReason"]
      116 GETTABLEKS                       R15 R7 K23 ["imageSelection"]
      118 JUMPIFNOT                        R15 ; [+12]
      119 DUPTABLE                         R14 K32 [{["wizardMode"], ["phase"] = "Form", ["slots"]}]
      120 GETTABLEKS                       R15 R7 K23 ["imageSelection"]
      122 GETTABLEKS                       R15 R15 K28 ["wizardMode"]
      124 SETTABLEKS                       R15 R14 K28 ["wizardMode"]
      126 NEWTABLE                         R15 0 0
      128 SETTABLEKS                       R15 R14 K31 ["slots"]
      130 JUMP                             ; [+1]
      131 LOADNIL                          R14
      132 SETTABLEKS                       R14 R13 K23 ["imageSelection"]
      134 NEWCLOSURE                       R14 P6
      135 CAPTURE                          UPVAL U5
      136 CAPTURE                          REF R9
      137 CAPTURE                          VAL R7
      138 CAPTURE                          VAL R10
      139 CAPTURE                          VAL R11
      140 CAPTURE                          UPVAL U19
      141 CAPTURE                          UPVAL U16
      142 CAPTURE                          UPVAL U17
      143 CAPTURE                          UPVAL U6
      144 CAPTURE                          VAL R4
      145 CAPTURE                          VAL R12
      146 SETTABLEKS                       R14 R13 K24 ["onContinue"]
      148 GETUPVAL                         R15 5
      149 GETTABLEKS                       R15 R15 K33 ["FFlagAssistantSegmentationPromptModeSelector"]
      151 JUMPIFNOT                        R15 ; [+14]
      152 NEWCLOSURE                       R14 P7
      153 CAPTURE                          VAL R7
      154 CAPTURE                          VAL R6
      155 CAPTURE                          UPVAL U20
      156 CAPTURE                          UPVAL U21
      157 CAPTURE                          UPVAL U5
      158 CAPTURE                          UPVAL U17
      159 CAPTURE                          UPVAL U16
      160 CAPTURE                          VAL R4
      161 CAPTURE                          UPVAL U22
      162 CAPTURE                          UPVAL U18
      163 CAPTURE                          VAL R1
      164 CAPTURE                          VAL R0
      165 JUMP                             ; [+1]
      166 LOADNIL                          R14
      167 SETTABLEKS                       R14 R13 K25 ["onRevive"]
      169 GETUPVAL                         R14 5
      170 GETTABLEKS                       R14 R14 K33 ["FFlagAssistantSegmentationPromptModeSelector"]
      172 JUMPIFNOT                        R14 ; [+21]
      173 GETUPVAL                         R14 22
      174 GETTABLEKS                       R14 R14 K13 ["current"]
      176 JUMPIFNOT                        R14 ; [+17]
      177 GETUPVAL                         R14 22
      178 GETTABLEKS                       R14 R14 K13 ["current"]
      180 GETUPVAL                         R15 18
      181 DUPTABLE                         R16 K39 [{["messageId"], ["contentId"], ["skipIfNoMessage"] = True, ["transformFn"]}]
      182 GETTABLEKS                       R17 R14 K34 ["messageId"]
      184 SETTABLEKS                       R17 R16 K34 ["messageId"]
      186 GETTABLEKS                       R17 R14 K35 ["contentId"]
      188 SETTABLEKS                       R17 R16 K35 ["contentId"]
      190 DUPCLOSURE                       R17 K40 [PROTO_31]
      191 SETTABLEKS                       R17 R16 K38 ["transformFn"]
      193 CALL                             R15 1 0
      194 GETTABLEKS                       R14 R1 K41 ["onContentStart"]
      196 MOVE                             R15 R13
      197 CALL                             R14 1 1
      198 SETTABLEKS                       R14 R10 K13 ["current"]
      200 GETUPVAL                         R15 5
      201 GETTABLEKS                       R15 R15 K33 ["FFlagAssistantSegmentationPromptModeSelector"]
      203 JUMPIFNOT                        R15 ; [+9]
      204 JUMPIFNOT                        R14 ; [+8]
      205 GETUPVAL                         R15 22
      206 DUPTABLE                         R16 K42 [{"messageId", "contentId"}]
      207 SETTABLEKS                       R0 R16 K34 ["messageId"]
      209 SETTABLEKS                       R14 R16 K35 ["contentId"]
      211 SETTABLEKS                       R16 R15 K13 ["current"]
      213 JUMPIFNOT                        R14 ; [+4]
      214 GETTABLEKS                       R15 R1 K43 ["onContentFinished"]
      216 MOVE                             R16 R14
      217 CALL                             R15 1 0
      218 GETUPVAL                         R15 5
      219 GETTABLEKS                       R15 R15 K44 ["FFlagAssistantSupportSlashCommandCancellation"]
      221 JUMPIFNOT                        R15 ; [+16]
      222 GETUPVAL                         R16 6
      223 FASTCALL2K                       ASSERT R16 K45 ; [+4]
      225 LOADK                            R17 K45 ["setSlashCommandCancel is not available"]
      226 GETIMPORT                        R15 K4 [assert]
      228 CALL                             R15 2 0
      229 GETUPVAL                         R15 6
      230 NEWCLOSURE                       R16 P9
      231 CAPTURE                          REF R9
      232 CAPTURE                          VAL R7
      233 CAPTURE                          VAL R14
      234 CAPTURE                          UPVAL U18
      235 CAPTURE                          VAL R0
      236 CAPTURE                          UPVAL U19
      237 CALL                             R15 1 0
      238 GETUPVAL                         R15 4
      239 LOADB                            R16 1
      240 CALL                             R15 1 0
      241 CLOSEUPVALS                      R9
      242 RETURN                           R0 0
      243 CLOSEUPVALS                      R9
      244 LOADB                            R9 0
      245 DUPTABLE                         R10 K46 [{["type"] = "input_requested", ["title"], ["description"], ["confirmButtonText"], ["propertyRows"], ["onContinue"]}]
      246 GETUPVAL                         R12 20
      247 GETUPVAL                         R13 21
      248 CONCAT                           R11 R12 R13
      249 SETTABLEKS                       R11 R10 K18 ["title"]
      251 GETTABLEKS                       R11 R7 K19 ["description"]
      253 SETTABLEKS                       R11 R10 K19 ["description"]
      255 GETTABLEKS                       R11 R7 K20 ["confirmButtonText"]
      257 SETTABLEKS                       R11 R10 K20 ["confirmButtonText"]
      259 SETTABLEKS                       R8 R10 K6 ["propertyRows"]
      261 NEWCLOSURE                       R11 P10
      262 CAPTURE                          REF R9
      263 CAPTURE                          UPVAL U17
      264 CAPTURE                          UPVAL U16
      265 CAPTURE                          VAL R4
      266 SETTABLEKS                       R11 R10 K24 ["onContinue"]
      268 GETTABLEKS                       R11 R1 K41 ["onContentStart"]
      270 MOVE                             R12 R10
      271 CALL                             R11 1 1
      272 JUMPIFNOT                        R11 ; [+4]
      273 GETTABLEKS                       R12 R1 K43 ["onContentFinished"]
      275 MOVE                             R13 R11
      276 CALL                             R12 1 0
      277 GETUPVAL                         R12 4
      278 LOADB                            R13 1
      279 CALL                             R12 1 0
      280 CLOSEUPVALS                      R9
      281 RETURN                           R0 0
      282 CLOSEUPVALS                      R9
      283 MOVE                             R7 R4
      284 GETUPVAL                         R8 17
      285 CALL                             R7 1 0
      286 RETURN                           R0 0

PROTO_36:
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
       12 CAPTURE                          UPVAL U7
       13 CAPTURE                          UPVAL U8
       14 CAPTURE                          UPVAL U9
       15 CAPTURE                          UPVAL U10
       16 CAPTURE                          UPVAL U11
       17 CAPTURE                          VAL R0
       18 CAPTURE                          UPVAL U1
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
       30 CALL                             R1 2 0
       31 RETURN                           R0 0

PROTO_37:
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
      111 GETUPVAL                         R14 6
      112 NEWCLOSURE                       R15 P0
      113 CAPTURE                          UPVAL U7
      114 CAPTURE                          UPVAL U8
      115 CAPTURE                          UPVAL U9
      116 CAPTURE                          UPVAL U10
      117 CAPTURE                          UPVAL U11
      118 CAPTURE                          UPVAL U12
      119 CAPTURE                          VAL R2
      120 CAPTURE                          UPVAL U13
      121 CAPTURE                          UPVAL U14
      122 CAPTURE                          UPVAL U15
      123 CAPTURE                          UPVAL U16
      124 CAPTURE                          UPVAL U17
      125 CAPTURE                          REF R7
      126 CAPTURE                          REF R9
      127 CAPTURE                          UPVAL U5
      128 CAPTURE                          VAL R0
      129 CAPTURE                          UPVAL U18
      130 CAPTURE                          REF R6
      131 CAPTURE                          UPVAL U19
      132 CAPTURE                          UPVAL U20
      133 CAPTURE                          UPVAL U0
      134 CAPTURE                          REF R8
      135 CAPTURE                          UPVAL U21
      136 CALL                             R14 1 0
      137 LOADB                            R14 1
      138 CLOSEUPVALS                      R6
      139 RETURN                           R14 1

PROTO_38:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETUPVAL                         R1 1
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 2
        5 CALL                             R2 0 1
        6 GETUPVAL                         R3 3
        7 CALL                             R3 0 1
        8 GETUPVAL                         R4 4
        9 GETTABLEKS                       R4 R4 K0 ["useRef"]
       11 LOADNIL                          R5
       12 CALL                             R4 1 1
       13 GETUPVAL                         R5 4
       14 GETTABLEKS                       R5 R5 K1 ["useContext"]
       16 GETUPVAL                         R6 5
       17 GETTABLEKS                       R6 R6 K2 ["Context"]
       19 CALL                             R5 1 1
       20 GETTABLEKS                       R6 R5 K3 ["sessionId"]
       22 GETUPVAL                         R7 4
       23 GETTABLEKS                       R7 R7 K1 ["useContext"]
       25 GETUPVAL                         R8 6
       26 GETTABLEKS                       R8 R8 K2 ["Context"]
       28 CALL                             R7 1 1
       29 LOADNIL                          R8
       30 LOADNIL                          R9
       31 GETUPVAL                         R10 7
       32 GETTABLEKS                       R10 R10 K4 ["FFlagAssistantSupportSlashCommandCancellation"]
       34 JUMPIFNOT                        R10 ; [+10]
       35 GETUPVAL                         R10 4
       36 GETTABLEKS                       R10 R10 K1 ["useContext"]
       38 GETUPVAL                         R11 8
       39 GETTABLEKS                       R11 R11 K2 ["Context"]
       41 CALL                             R10 1 1
       42 MOVE                             R8 R10
       43 GETTABLEKS                       R9 R8 K5 ["setSlashCommandCancel"]
       45 GETUPVAL                         R10 9
       46 CALL                             R10 0 2
       47 NEWCLOSURE                       R12 P0
       48 CAPTURE                          UPVAL U10
       49 CAPTURE                          UPVAL U11
       50 CAPTURE                          VAL R11
       51 CAPTURE                          UPVAL U12
       52 CAPTURE                          UPVAL U13
       53 CAPTURE                          UPVAL U14
       54 CAPTURE                          VAL R3
       55 CAPTURE                          VAL R2
       56 CAPTURE                          UPVAL U15
       57 CAPTURE                          VAL R0
       58 CAPTURE                          UPVAL U16
       59 CAPTURE                          UPVAL U17
       60 CAPTURE                          VAL R6
       61 CAPTURE                          UPVAL U7
       62 CAPTURE                          REF R9
       63 CAPTURE                          UPVAL U18
       64 CAPTURE                          VAL R7
       65 CAPTURE                          UPVAL U19
       66 CAPTURE                          UPVAL U20
       67 CAPTURE                          VAL R1
       68 CAPTURE                          UPVAL U21
       69 CAPTURE                          VAL R4
       70 GETUPVAL                         R13 4
       71 GETTABLEKS                       R13 R13 K6 ["useCallback"]
       73 MOVE                             R14 R12
       74 NEWTABLE                         R15 0 7
       76 MOVE                             R16 R0
       77 MOVE                             R17 R2
       78 MOVE                             R18 R3
       79 MOVE                             R19 R6
       80 GETUPVAL                         R21 7
       81 GETTABLEKS                       R21 R21 K4 ["FFlagAssistantSupportSlashCommandCancellation"]
       83 JUMPIFNOT                        R21 ; [+2]
       84 MOVE                             R20 R7
       85 JUMP                             ; [+1]
       86 LOADNIL                          R20
       87 GETUPVAL                         R22 7
       88 GETTABLEKS                       R22 R22 K4 ["FFlagAssistantSupportSlashCommandCancellation"]
       90 JUMPIFNOT                        R22 ; [+2]
       91 MOVE                             R21 R9
       92 JUMP                             ; [+1]
       93 LOADNIL                          R21
       94 MOVE                             R22 R11
       95 SETLIST                          R15 R16 7 [1]
       97 CALL                             R13 2 -1
       98 CLOSEUPVALS                      R9
       99 RETURN                           R13 -1

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
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R0 K10 ["Parent"]
       24 GETTABLEKS                       R4 R4 K12 ["Dash"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R0 K13 ["FlagUtils"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K9 [require]
       34 GETTABLEKS                       R6 R0 K14 ["Flags"]
       36 CALL                             R5 1 1
       37 GETTABLEKS                       R6 R4 K15 ["getIsAssistantHarnessSplit"]
       39 GETIMPORT                        R7 K9 [require]
       41 GETTABLEKS                       R8 R0 K16 ["Util"]
       43 GETTABLEKS                       R8 R8 K17 ["ImageContentStore"]
       45 CALL                             R7 1 1
       46 GETIMPORT                        R8 K9 [require]
       48 GETTABLEKS                       R9 R0 K18 ["Components"]
       50 GETTABLEKS                       R9 R9 K19 ["ContentWidgets"]
       52 GETTABLEKS                       R9 R9 K20 ["InputRequestedContentWidget"]
       54 CALL                             R8 1 1
       55 GETIMPORT                        R9 K9 [require]
       57 GETTABLEKS                       R10 R0 K18 ["Components"]
       59 GETTABLEKS                       R10 R10 K21 ["Contexts"]
       61 GETTABLEKS                       R10 R10 K22 ["DefaultLLMProvider"]
       63 GETTABLEKS                       R10 R10 K23 ["LLMPackageContextProvider"]
       65 CALL                             R9 1 1
       66 GETIMPORT                        R10 K9 [require]
       68 GETTABLEKS                       R11 R0 K10 ["Parent"]
       70 GETTABLEKS                       R11 R11 K24 ["ModelContextProtocol"]
       72 CALL                             R10 1 1
       73 GETIMPORT                        R11 K9 [require]
       75 GETTABLEKS                       R12 R0 K18 ["Components"]
       77 GETTABLEKS                       R12 R12 K21 ["Contexts"]
       79 GETTABLEKS                       R12 R12 K25 ["PacketReceivedContext"]
       81 CALL                             R11 1 1
       82 GETIMPORT                        R12 K9 [require]
       84 GETTABLEKS                       R13 R0 K10 ["Parent"]
       86 GETTABLEKS                       R13 R13 K26 ["Promise"]
       88 CALL                             R12 1 1
       89 GETIMPORT                        R13 K9 [require]
       91 GETTABLEKS                       R14 R0 K10 ["Parent"]
       93 GETTABLEKS                       R14 R14 K27 ["React"]
       95 CALL                             R13 1 1
       96 GETIMPORT                        R14 K9 [require]
       98 GETTABLEKS                       R15 R0 K18 ["Components"]
      100 GETTABLEKS                       R15 R15 K21 ["Contexts"]
      102 GETTABLEKS                       R15 R15 K28 ["SessionIdContext"]
      104 CALL                             R14 1 1
      105 GETIMPORT                        R15 K9 [require]
      107 GETTABLEKS                       R16 R0 K10 ["Parent"]
      109 GETTABLEKS                       R16 R16 K29 ["Signal"]
      111 CALL                             R15 1 1
      112 GETTABLEKS                       R16 R2 K30 ["Engine"]
      114 GETTABLEKS                       R16 R16 K31 ["Time"]
      116 GETIMPORT                        R17 K9 [require]
      118 GETTABLEKS                       R18 R0 K32 ["Types"]
      120 CALL                             R17 1 1
      121 GETIMPORT                        R18 K9 [require]
      123 GETTABLEKS                       R19 R0 K18 ["Components"]
      125 GETTABLEKS                       R19 R19 K33 ["UIToolRegistry"]
      127 CALL                             R18 1 1
      128 GETIMPORT                        R19 K9 [require]
      130 GETTABLEKS                       R20 R0 K34 ["Hooks"]
      132 GETTABLEKS                       R20 R20 K35 ["useAssistantMode"]
      134 CALL                             R19 1 1
      135 GETIMPORT                        R20 K9 [require]
      137 GETTABLEKS                       R21 R0 K34 ["Hooks"]
      139 GETTABLEKS                       R21 R21 K36 ["useEditContent"]
      141 CALL                             R20 1 1
      142 GETIMPORT                        R21 K9 [require]
      144 GETTABLEKS                       R22 R0 K34 ["Hooks"]
      146 GETTABLEKS                       R22 R22 K37 ["useGetContentObserver"]
      148 CALL                             R21 1 1
      149 GETIMPORT                        R22 K9 [require]
      151 GETTABLEKS                       R23 R0 K34 ["Hooks"]
      153 GETTABLEKS                       R23 R23 K38 ["useGetOrAddMessage"]
      155 CALL                             R22 1 1
      156 GETIMPORT                        R23 K9 [require]
      158 GETTABLEKS                       R24 R0 K34 ["Hooks"]
      160 GETTABLEKS                       R24 R24 K39 ["useWithClient"]
      162 CALL                             R23 1 1
      163 GETTABLEKS                       R24 R18 K40 ["CommandPrefix"]
      165 GETTABLEKS                       R25 R18 K41 ["CommandDelimiter"]
      167 DUPCLOSURE                       R26 K42 [PROTO_0]
      168 CAPTURE                          VAL R7
      169 CAPTURE                          VAL R5
      170 DUPCLOSURE                       R27 K43 [PROTO_3]
      171 DUPCLOSURE                       R28 K44 [PROTO_38]
      172 CAPTURE                          VAL R21
      173 CAPTURE                          VAL R20
      174 CAPTURE                          VAL R22
      175 CAPTURE                          VAL R23
      176 CAPTURE                          VAL R13
      177 CAPTURE                          VAL R14
      178 CAPTURE                          VAL R11
      179 CAPTURE                          VAL R5
      180 CAPTURE                          VAL R9
      181 CAPTURE                          VAL R19
      182 CAPTURE                          VAL R24
      183 CAPTURE                          VAL R18
      184 CAPTURE                          VAL R25
      185 CAPTURE                          VAL R26
      186 CAPTURE                          VAL R6
      187 CAPTURE                          VAL R17
      188 CAPTURE                          VAL R1
      189 CAPTURE                          VAL R16
      190 CAPTURE                          VAL R15
      191 CAPTURE                          VAL R12
      192 CAPTURE                          VAL R3
      193 CAPTURE                          VAL R8
      194 RETURN                           R28 1
