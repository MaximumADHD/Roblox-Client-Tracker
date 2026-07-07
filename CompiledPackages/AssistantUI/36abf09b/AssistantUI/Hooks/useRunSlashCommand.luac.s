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
        7 DUPTABLE                         R5 K12 [{["type"] = "tool_result", ["id"], ["name"], [4], ["isError"] = True, ["startTime"], ["startTimeAfterConfirmation"]}]
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
       24 SETTABLEKS                       R6 R5 K10 ["startTime"]
       26 GETUPVAL                         R6 3
       27 SETTABLEKS                       R6 R5 K11 ["startTimeAfterConfirmation"]
       29 MOVE                             R3 R5
       30 JUMP                             ; [+24]
       31 DUPTABLE                         R4 K13 [{["type"] = "tool_result", ["id"], ["name"], [4], ["isError"], ["startTime"], ["startTimeAfterConfirmation"]}]
       32 GETUPVAL                         R5 0
       33 SETTABLEKS                       R5 R4 K6 ["id"]
       35 GETUPVAL                         R5 1
       36 GETTABLEKS                       R5 R5 K7 ["name"]
       38 SETTABLEKS                       R5 R4 K7 ["name"]
       40 GETTABLEKS                       R5 R1 K0 ["content"]
       42 SETTABLEKS                       R5 R4 K0 ["content"]
       44 GETTABLEKS                       R5 R1 K8 ["isError"]
       46 SETTABLEKS                       R5 R4 K8 ["isError"]
       48 GETUPVAL                         R5 2
       49 SETTABLEKS                       R5 R4 K10 ["startTime"]
       51 GETUPVAL                         R5 3
       52 SETTABLEKS                       R5 R4 K11 ["startTimeAfterConfirmation"]
       54 MOVE                             R3 R4
       55 GETUPVAL                         R4 4
       56 GETTABLEKS                       R4 R4 K14 ["onToolResult"]
       58 GETUPVAL                         R5 5
       59 MOVE                             R6 R3
       60 MOVE                             R7 R2
       61 CALL                             R4 3 0
       62 RETURN                           R0 0

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
       74 JUMPIFNOT                        R5 ; [+12]
       75 MOVE                             R10 R8
       76 LOADB                            R11 1
       77 DUPTABLE                         R12 K23 [{["content"], ["isError"] = False}]
       78 NEWTABLE                         R13 0 1
       80 DUPTABLE                         R14 K26 [{["type"] = "text", ["text"] = "Tool call is still running asynchronously."}]
       81 SETLIST                          R13 R14 1 [1]
       83 SETTABLEKS                       R13 R12 K20 ["content"]
       85 LOADB                            R13 1
       86 CALL                             R10 3 0
       87 GETUPVAL                         R10 6
       88 GETTABLEKS                       R10 R10 K27 ["FFlagAssistantSupportSlashCommandCancellation"]
       90 JUMPIFNOT                        R10 ; [+37]
       91 GETUPVAL                         R11 7
       92 FASTCALL2K                       ASSERT R11 K28 ; [+4]
       94 LOADK                            R12 K28 ["setSlashCommandCancel is not available"]
       95 GETIMPORT                        R10 K30 [assert]
       97 CALL                             R10 2 0
       98 GETUPVAL                         R10 8
       99 GETTABLEKS                       R10 R10 K31 ["new"]
      101 CALL                             R10 0 1
      102 DUPTABLE                         R11 K36 [{["resetTimeoutOnProgress"] = True, ["onprogress"], ["signal"]}]
      103 NEWCLOSURE                       R12 P3
      104 CAPTURE                          UPVAL U9
      105 SETTABLEKS                       R12 R11 K34 ["onprogress"]
      107 SETTABLEKS                       R10 R11 K35 ["signal"]
      109 GETUPVAL                         R12 10
      110 GETTABLEKS                       R12 R12 K31 ["new"]
      112 NEWCLOSURE                       R13 P4
      113 CAPTURE                          VAL R10
      114 CAPTURE                          UPVAL U11
      115 CAPTURE                          UPVAL U12
      116 CAPTURE                          VAL R0
      117 CAPTURE                          VAL R11
      118 CAPTURE                          VAL R6
      119 CAPTURE                          UPVAL U7
      120 CAPTURE                          UPVAL U10
      121 CAPTURE                          VAL R9
      122 CALL                             R12 1 1
      123 GETUPVAL                         R13 7
      124 NEWCLOSURE                       R14 P5
      125 CAPTURE                          VAL R12
      126 CALL                             R13 1 0
      127 RETURN                           R0 0
      128 DUPTABLE                         R10 K37 [{["resetTimeoutOnProgress"] = True}]
      129 GETUPVAL                         R11 11
      130 GETUPVAL                         R13 12
      131 GETTABLEKS                       R13 R13 K38 ["getMcpClientIdentifier"]
      133 CALL                             R13 0 1
      134 GETTABLEKS                       R14 R0 K6 ["name"]
      136 GETTABLEKS                       R15 R0 K9 ["arguments"]
      138 MOVE                             R16 R10
      139 MOVE                             R17 R6
      140 NAMECALL                         R11 R11 K39 ["callToolForClient"]
      142 CALL                             R11 6 1
      143 NEWCLOSURE                       R13 P6
      144 CAPTURE                          VAL R9
      145 NAMECALL                         R11 R11 K40 ["andThen"]
      147 CALL                             R11 2 1
      148 NEWCLOSURE                       R13 P7
      149 CAPTURE                          VAL R9
      150 NAMECALL                         R11 R11 K41 ["catch"]
      152 CALL                             R11 2 0
      153 RETURN                           R0 0

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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onContinueWithLLM"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_17:
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
       25 JUMPIFNOT                        R0 ; [+21]
       26 GETUPVAL                         R1 3
       27 JUMPIFNOT                        R1 ; [+15]
       28 GETUPVAL                         R1 3
       29 GETTABLEKS                       R1 R1 K7 ["continueWithLLM"]
       31 JUMPIFNOT                        R1 ; [+11]
       32 GETUPVAL                         R1 4
       33 GETTABLEKS                       R1 R1 K8 ["onContinueWithLLM"]
       35 JUMPIFNOT                        R1 ; [+7]
       36 GETUPVAL                         R1 2
       37 MOVE                             R2 R0
       38 NEWCLOSURE                       R3 P1
       39 CAPTURE                          UPVAL U4
       40 CAPTURE                          UPVAL U5
       41 CALL                             R1 2 0
       42 RETURN                           R0 0
       43 GETUPVAL                         R1 2
       44 MOVE                             R2 R0
       45 CALL                             R1 1 0
       46 RETURN                           R0 0
       47 GETUPVAL                         R1 1
       48 LOADB                            R2 1
       49 CALL                             R1 1 0
       50 GETIMPORT                        R1 K1 [error]
       52 LOADK                            R2 K9 ["No tool spec generated for slash command and no tool chain defined."]
       53 CALL                             R1 1 0
       54 RETURN                           R0 0

PROTO_18:
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

PROTO_19:
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
       35 GETTABLEKS                       R3 R3 K6 ["FFlagAssistantSupportSlashCommandCancellation"]
       37 JUMPIFNOT                        R3 ; [+5]
       38 GETUPVAL                         R3 5
       39 JUMPIFNOT                        R3 ; [+3]
       40 GETUPVAL                         R3 5
       41 LOADNIL                          R4
       42 CALL                             R3 1 0
       43 GETUPVAL                         R3 6
       44 MOVE                             R4 R2
       45 CALL                             R3 1 0
       46 RETURN                           R0 0

PROTO_20:
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

PROTO_21:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["suppressHistory"]
        3 RETURN                           R0 0

PROTO_22:
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
       43 DUPTABLE                         R4 K15 [{["type"] = "input_requested", ["title"], ["description"], ["confirmButtonText"], ["propertyRows"], ["canConfirm"], ["onContinue"]}]
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
       63 NEWCLOSURE                       R5 P0
       64 CAPTURE                          REF R3
       65 CAPTURE                          VAL R1
       66 CAPTURE                          UPVAL U4
       67 CAPTURE                          UPVAL U5
       68 CAPTURE                          UPVAL U6
       69 SETTABLEKS                       R5 R4 K14 ["onContinue"]
       71 GETUPVAL                         R5 7
       72 GETTABLEKS                       R5 R5 K16 ["current"]
       74 JUMPIFNOT                        R5 ; [+17]
       75 GETUPVAL                         R5 7
       76 GETTABLEKS                       R5 R5 K16 ["current"]
       78 GETUPVAL                         R6 8
       79 DUPTABLE                         R7 K22 [{["messageId"], ["contentId"], ["skipIfNoMessage"] = True, ["transformFn"]}]
       80 GETTABLEKS                       R8 R5 K17 ["messageId"]
       82 SETTABLEKS                       R8 R7 K17 ["messageId"]
       84 GETTABLEKS                       R8 R5 K18 ["contentId"]
       86 SETTABLEKS                       R8 R7 K18 ["contentId"]
       88 DUPCLOSURE                       R8 K23 [PROTO_21]
       89 SETTABLEKS                       R8 R7 K21 ["transformFn"]
       91 CALL                             R6 1 0
       92 GETUPVAL                         R5 9
       93 GETTABLEKS                       R5 R5 K24 ["onContentStart"]
       95 MOVE                             R6 R4
       96 CALL                             R5 1 1
       97 JUMPIFNOT                        R5 ; [+14]
       98 GETUPVAL                         R6 7
       99 DUPTABLE                         R7 K25 [{"messageId", "contentId"}]
      100 GETUPVAL                         R8 10
      101 SETTABLEKS                       R8 R7 K17 ["messageId"]
      103 SETTABLEKS                       R5 R7 K18 ["contentId"]
      105 SETTABLEKS                       R7 R6 K16 ["current"]
      107 GETUPVAL                         R6 9
      108 GETTABLEKS                       R6 R6 K26 ["onContentFinished"]
      110 MOVE                             R7 R5
      111 CALL                             R6 1 0
      112 CLOSEUPVALS                      R3
      113 RETURN                           R0 0

PROTO_23:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["suppressHistory"]
        3 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["InputStatus"]
        3 GETTABLEKS                       R1 R1 K1 ["Cancelled"]
        5 SETTABLEKS                       R1 R0 K2 ["status"]
        7 RETURN                           R0 0

PROTO_25:
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
       22 DUPCLOSURE                       R2 K5 [PROTO_24]
       23 CAPTURE                          UPVAL U5
       24 SETTABLEKS                       R2 R1 K3 ["transformFn"]
       26 CALL                             R0 1 0
       27 RETURN                           R0 0

PROTO_26:
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

PROTO_27:
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
       29 CAPTURE                          VAL R0
       30 DUPCLOSURE                       R5 K1 [PROTO_18]
       31 CAPTURE                          UPVAL U15
       32 GETUPVAL                         R7 13
       33 FASTCALL2K                       ASSERT R7 K2 ; [+4]
       35 LOADK                            R8 K2 ["definition should always be available for slash commands"]
       36 GETIMPORT                        R6 K4 [assert]
       38 CALL                             R6 2 0
       39 GETUPVAL                         R6 13
       40 GETTABLEKS                       R6 R6 K5 ["getInputRequestArguments"]
       42 JUMPIFNOT                        R6 ; [+196]
       43 MOVE                             R7 R6
       44 CALL                             R7 0 1
       45 LOADNIL                          R8
       46 GETTABLEKS                       R9 R7 K6 ["propertyRows"]
       48 JUMPIFNOT                        R9 ; [+151]
       49 GETIMPORT                        R9 K9 [table.clone]
       51 GETTABLEKS                       R10 R7 K6 ["propertyRows"]
       53 CALL                             R9 1 1
       54 MOVE                             R8 R9
       55 MOVE                             R9 R8
       56 LOADNIL                          R10
       57 LOADNIL                          R11
       58 FORGPREP                         R9
       59 GETUPVAL                         R15 16
       60 GETTABLEKS                       R15 R15 K10 ["arguments"]
       62 GETTABLEKS                       R16 R13 K11 ["prop"]
       64 GETTABLE                         R14 R15 R16
       65 JUMPIFEQKNIL                     R14 ; [+8]
       67 GETIMPORT                        R15 K9 [table.clone]
       69 MOVE                             R16 R13
       70 CALL                             R15 1 1
       71 SETTABLEKS                       R14 R15 K12 ["initialValue"]
       73 SETTABLE                         R15 R8 R12
       74 FORGLOOP                         R9 2 ; [-16]
       76 LOADB                            R9 0
       77 DUPTABLE                         R10 K21 [{["type"] = "input_requested", ["title"], ["description"], ["confirmButtonText"], ["propertyRows"], ["canConfirm"], ["onContinue"], ["onRevive"]}]
       78 GETUPVAL                         R12 17
       79 GETUPVAL                         R13 18
       80 CONCAT                           R11 R12 R13
       81 SETTABLEKS                       R11 R10 K15 ["title"]
       83 GETTABLEKS                       R11 R7 K16 ["description"]
       85 SETTABLEKS                       R11 R10 K16 ["description"]
       87 GETTABLEKS                       R11 R7 K17 ["confirmButtonText"]
       89 SETTABLEKS                       R11 R10 K17 ["confirmButtonText"]
       91 SETTABLEKS                       R8 R10 K6 ["propertyRows"]
       93 GETTABLEKS                       R11 R7 K18 ["canConfirm"]
       95 SETTABLEKS                       R11 R10 K18 ["canConfirm"]
       97 NEWCLOSURE                       R11 P4
       98 CAPTURE                          REF R9
       99 CAPTURE                          VAL R7
      100 CAPTURE                          UPVAL U16
      101 CAPTURE                          UPVAL U15
      102 CAPTURE                          UPVAL U5
      103 CAPTURE                          UPVAL U6
      104 CAPTURE                          VAL R4
      105 SETTABLEKS                       R11 R10 K19 ["onContinue"]
      107 GETUPVAL                         R12 5
      108 GETTABLEKS                       R12 R12 K22 ["FFlagAssistantSegmentationPromptModeSelector"]
      110 JUMPIFNOT                        R12 ; [+13]
      111 NEWCLOSURE                       R11 P5
      112 CAPTURE                          VAL R7
      113 CAPTURE                          VAL R6
      114 CAPTURE                          UPVAL U17
      115 CAPTURE                          UPVAL U18
      116 CAPTURE                          UPVAL U16
      117 CAPTURE                          UPVAL U15
      118 CAPTURE                          VAL R4
      119 CAPTURE                          UPVAL U19
      120 CAPTURE                          UPVAL U20
      121 CAPTURE                          VAL R1
      122 CAPTURE                          VAL R0
      123 JUMP                             ; [+1]
      124 LOADNIL                          R11
      125 SETTABLEKS                       R11 R10 K20 ["onRevive"]
      127 GETUPVAL                         R11 5
      128 GETTABLEKS                       R11 R11 K22 ["FFlagAssistantSegmentationPromptModeSelector"]
      130 JUMPIFNOT                        R11 ; [+21]
      131 GETUPVAL                         R11 19
      132 GETTABLEKS                       R11 R11 K23 ["current"]
      134 JUMPIFNOT                        R11 ; [+17]
      135 GETUPVAL                         R11 19
      136 GETTABLEKS                       R11 R11 K23 ["current"]
      138 GETUPVAL                         R12 20
      139 DUPTABLE                         R13 K29 [{["messageId"], ["contentId"], ["skipIfNoMessage"] = True, ["transformFn"]}]
      140 GETTABLEKS                       R14 R11 K24 ["messageId"]
      142 SETTABLEKS                       R14 R13 K24 ["messageId"]
      144 GETTABLEKS                       R14 R11 K25 ["contentId"]
      146 SETTABLEKS                       R14 R13 K25 ["contentId"]
      148 DUPCLOSURE                       R14 K30 [PROTO_23]
      149 SETTABLEKS                       R14 R13 K28 ["transformFn"]
      151 CALL                             R12 1 0
      152 GETTABLEKS                       R11 R1 K31 ["onContentStart"]
      154 MOVE                             R12 R10
      155 CALL                             R11 1 1
      156 GETUPVAL                         R12 5
      157 GETTABLEKS                       R12 R12 K22 ["FFlagAssistantSegmentationPromptModeSelector"]
      159 JUMPIFNOT                        R12 ; [+9]
      160 JUMPIFNOT                        R11 ; [+8]
      161 GETUPVAL                         R12 19
      162 DUPTABLE                         R13 K32 [{"messageId", "contentId"}]
      163 SETTABLEKS                       R0 R13 K24 ["messageId"]
      165 SETTABLEKS                       R11 R13 K25 ["contentId"]
      167 SETTABLEKS                       R13 R12 K23 ["current"]
      169 JUMPIFNOT                        R11 ; [+4]
      170 GETTABLEKS                       R12 R1 K33 ["onContentFinished"]
      172 MOVE                             R13 R11
      173 CALL                             R12 1 0
      174 GETUPVAL                         R12 5
      175 GETTABLEKS                       R12 R12 K34 ["FFlagAssistantSupportSlashCommandCancellation"]
      177 JUMPIFNOT                        R12 ; [+16]
      178 GETUPVAL                         R13 6
      179 FASTCALL2K                       ASSERT R13 K35 ; [+4]
      181 LOADK                            R14 K35 ["setSlashCommandCancel is not available"]
      182 GETIMPORT                        R12 K4 [assert]
      184 CALL                             R12 2 0
      185 GETUPVAL                         R12 6
      186 NEWCLOSURE                       R13 P7
      187 CAPTURE                          REF R9
      188 CAPTURE                          VAL R7
      189 CAPTURE                          VAL R11
      190 CAPTURE                          UPVAL U20
      191 CAPTURE                          VAL R0
      192 CAPTURE                          UPVAL U21
      193 CALL                             R12 1 0
      194 GETUPVAL                         R12 4
      195 LOADB                            R13 1
      196 CALL                             R12 1 0
      197 CLOSEUPVALS                      R9
      198 RETURN                           R0 0
      199 CLOSEUPVALS                      R9
      200 LOADB                            R9 0
      201 DUPTABLE                         R10 K36 [{["type"] = "input_requested", ["title"], ["description"], ["confirmButtonText"], ["propertyRows"], ["onContinue"]}]
      202 GETUPVAL                         R12 17
      203 GETUPVAL                         R13 18
      204 CONCAT                           R11 R12 R13
      205 SETTABLEKS                       R11 R10 K15 ["title"]
      207 GETTABLEKS                       R11 R7 K16 ["description"]
      209 SETTABLEKS                       R11 R10 K16 ["description"]
      211 GETTABLEKS                       R11 R7 K17 ["confirmButtonText"]
      213 SETTABLEKS                       R11 R10 K17 ["confirmButtonText"]
      215 SETTABLEKS                       R8 R10 K6 ["propertyRows"]
      217 NEWCLOSURE                       R11 P8
      218 CAPTURE                          REF R9
      219 CAPTURE                          UPVAL U16
      220 CAPTURE                          UPVAL U15
      221 CAPTURE                          VAL R4
      222 SETTABLEKS                       R11 R10 K19 ["onContinue"]
      224 GETTABLEKS                       R11 R1 K31 ["onContentStart"]
      226 MOVE                             R12 R10
      227 CALL                             R11 1 1
      228 JUMPIFNOT                        R11 ; [+4]
      229 GETTABLEKS                       R12 R1 K33 ["onContentFinished"]
      231 MOVE                             R13 R11
      232 CALL                             R12 1 0
      233 GETUPVAL                         R12 4
      234 LOADB                            R13 1
      235 CALL                             R12 1 0
      236 CLOSEUPVALS                      R9
      237 RETURN                           R0 0
      238 CLOSEUPVALS                      R9
      239 MOVE                             R7 R4
      240 GETUPVAL                         R8 16
      241 CALL                             R7 1 0
      242 RETURN                           R0 0

PROTO_28:
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
       29 CALL                             R1 2 0
       30 RETURN                           R0 0

PROTO_29:
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
      103 NEWCLOSURE                       R15 P0
      104 CAPTURE                          UPVAL U6
      105 CAPTURE                          UPVAL U7
      106 CAPTURE                          UPVAL U8
      107 CAPTURE                          UPVAL U9
      108 CAPTURE                          UPVAL U10
      109 CAPTURE                          UPVAL U11
      110 CAPTURE                          VAL R2
      111 CAPTURE                          UPVAL U12
      112 CAPTURE                          UPVAL U13
      113 CAPTURE                          UPVAL U14
      114 CAPTURE                          UPVAL U15
      115 CAPTURE                          UPVAL U16
      116 CAPTURE                          REF R7
      117 CAPTURE                          REF R9
      118 CAPTURE                          VAL R0
      119 CAPTURE                          UPVAL U17
      120 CAPTURE                          REF R6
      121 CAPTURE                          UPVAL U0
      122 CAPTURE                          REF R8
      123 CAPTURE                          UPVAL U18
      124 CAPTURE                          UPVAL U19
      125 CAPTURE                          UPVAL U20
      126 CALL                             R14 1 0
      127 LOADB                            R14 1
      128 CLOSEUPVALS                      R6
      129 RETURN                           R14 1

PROTO_30:
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
       53 CAPTURE                          VAL R3
       54 CAPTURE                          VAL R2
       55 CAPTURE                          UPVAL U14
       56 CAPTURE                          VAL R0
       57 CAPTURE                          UPVAL U15
       58 CAPTURE                          UPVAL U16
       59 CAPTURE                          VAL R6
       60 CAPTURE                          UPVAL U7
       61 CAPTURE                          REF R9
       62 CAPTURE                          UPVAL U17
       63 CAPTURE                          VAL R7
       64 CAPTURE                          UPVAL U18
       65 CAPTURE                          UPVAL U19
       66 CAPTURE                          VAL R4
       67 CAPTURE                          VAL R1
       68 CAPTURE                          UPVAL U20
       69 GETUPVAL                         R13 4
       70 GETTABLEKS                       R13 R13 K6 ["useCallback"]
       72 MOVE                             R14 R12
       73 NEWTABLE                         R15 0 7
       75 MOVE                             R16 R0
       76 MOVE                             R17 R2
       77 MOVE                             R18 R3
       78 MOVE                             R19 R6
       79 GETUPVAL                         R21 7
       80 GETTABLEKS                       R21 R21 K4 ["FFlagAssistantSupportSlashCommandCancellation"]
       82 JUMPIFNOT                        R21 ; [+2]
       83 MOVE                             R20 R7
       84 JUMP                             ; [+1]
       85 LOADNIL                          R20
       86 GETUPVAL                         R22 7
       87 GETTABLEKS                       R22 R22 K4 ["FFlagAssistantSupportSlashCommandCancellation"]
       89 JUMPIFNOT                        R22 ; [+2]
       90 MOVE                             R21 R9
       91 JUMP                             ; [+1]
       92 LOADNIL                          R21
       93 MOVE                             R22 R11
       94 SETLIST                          R15 R16 7 [1]
       96 CALL                             R13 2 -1
       97 CLOSEUPVALS                      R9
       98 RETURN                           R13 -1

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
       17 GETTABLEKS                       R3 R3 K11 ["Dash"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R0 K12 ["Flags"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K9 [require]
       27 GETTABLEKS                       R5 R0 K13 ["Util"]
       29 GETTABLEKS                       R5 R5 K14 ["ImageContentStore"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K9 [require]
       34 GETTABLEKS                       R6 R0 K15 ["Components"]
       36 GETTABLEKS                       R6 R6 K16 ["ContentWidgets"]
       38 GETTABLEKS                       R6 R6 K17 ["InputRequestedContentWidget"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K9 [require]
       43 GETTABLEKS                       R7 R0 K15 ["Components"]
       45 GETTABLEKS                       R7 R7 K18 ["Contexts"]
       47 GETTABLEKS                       R7 R7 K19 ["DefaultLLMProvider"]
       49 GETTABLEKS                       R7 R7 K20 ["LLMPackageContextProvider"]
       51 CALL                             R6 1 1
       52 GETIMPORT                        R7 K9 [require]
       54 GETTABLEKS                       R8 R0 K15 ["Components"]
       56 GETTABLEKS                       R8 R8 K18 ["Contexts"]
       58 GETTABLEKS                       R8 R8 K19 ["DefaultLLMProvider"]
       60 GETTABLEKS                       R8 R8 K21 ["LLMProcessEvent"]
       62 CALL                             R7 1 1
       63 GETIMPORT                        R8 K9 [require]
       65 GETTABLEKS                       R9 R0 K10 ["Parent"]
       67 GETTABLEKS                       R9 R9 K22 ["ModelContextProtocol"]
       69 CALL                             R8 1 1
       70 GETIMPORT                        R9 K9 [require]
       72 GETTABLEKS                       R10 R0 K15 ["Components"]
       74 GETTABLEKS                       R10 R10 K18 ["Contexts"]
       76 GETTABLEKS                       R10 R10 K23 ["PacketReceivedContext"]
       78 CALL                             R9 1 1
       79 GETIMPORT                        R10 K9 [require]
       81 GETTABLEKS                       R11 R0 K10 ["Parent"]
       83 GETTABLEKS                       R11 R11 K24 ["Promise"]
       85 CALL                             R10 1 1
       86 GETIMPORT                        R11 K9 [require]
       88 GETTABLEKS                       R12 R0 K10 ["Parent"]
       90 GETTABLEKS                       R12 R12 K25 ["React"]
       92 CALL                             R11 1 1
       93 GETIMPORT                        R12 K9 [require]
       95 GETTABLEKS                       R13 R0 K15 ["Components"]
       97 GETTABLEKS                       R13 R13 K18 ["Contexts"]
       99 GETTABLEKS                       R13 R13 K26 ["SessionIdContext"]
      101 CALL                             R12 1 1
      102 GETIMPORT                        R13 K9 [require]
      104 GETTABLEKS                       R14 R0 K10 ["Parent"]
      106 GETTABLEKS                       R14 R14 K27 ["Signal"]
      108 CALL                             R13 1 1
      109 GETIMPORT                        R14 K9 [require]
      111 GETTABLEKS                       R15 R0 K13 ["Util"]
      113 GETTABLEKS                       R15 R15 K28 ["Time"]
      115 CALL                             R14 1 1
      116 GETIMPORT                        R15 K9 [require]
      118 GETTABLEKS                       R16 R0 K29 ["Types"]
      120 CALL                             R15 1 1
      121 GETIMPORT                        R16 K9 [require]
      123 GETTABLEKS                       R17 R0 K15 ["Components"]
      125 GETTABLEKS                       R17 R17 K30 ["UIToolRegistry"]
      127 CALL                             R16 1 1
      128 GETIMPORT                        R17 K9 [require]
      130 GETTABLEKS                       R18 R0 K31 ["Hooks"]
      132 GETTABLEKS                       R18 R18 K32 ["useAssistantMode"]
      134 CALL                             R17 1 1
      135 GETIMPORT                        R18 K9 [require]
      137 GETTABLEKS                       R19 R0 K31 ["Hooks"]
      139 GETTABLEKS                       R19 R19 K33 ["useEditContent"]
      141 CALL                             R18 1 1
      142 GETIMPORT                        R19 K9 [require]
      144 GETTABLEKS                       R20 R0 K31 ["Hooks"]
      146 GETTABLEKS                       R20 R20 K34 ["useGetContentObserver"]
      148 CALL                             R19 1 1
      149 GETIMPORT                        R20 K9 [require]
      151 GETTABLEKS                       R21 R0 K31 ["Hooks"]
      153 GETTABLEKS                       R21 R21 K35 ["useGetOrAddMessage"]
      155 CALL                             R20 1 1
      156 GETIMPORT                        R21 K9 [require]
      158 GETTABLEKS                       R22 R0 K31 ["Hooks"]
      160 GETTABLEKS                       R22 R22 K36 ["useWithClient"]
      162 CALL                             R21 1 1
      163 GETTABLEKS                       R22 R16 K37 ["CommandPrefix"]
      165 GETTABLEKS                       R23 R16 K38 ["CommandDelimiter"]
      167 DUPCLOSURE                       R24 K39 [PROTO_0]
      168 CAPTURE                          VAL R4
      169 CAPTURE                          VAL R3
      170 DUPCLOSURE                       R25 K40 [PROTO_3]
      171 DUPCLOSURE                       R26 K41 [PROTO_30]
      172 CAPTURE                          VAL R19
      173 CAPTURE                          VAL R18
      174 CAPTURE                          VAL R20
      175 CAPTURE                          VAL R21
      176 CAPTURE                          VAL R11
      177 CAPTURE                          VAL R12
      178 CAPTURE                          VAL R9
      179 CAPTURE                          VAL R3
      180 CAPTURE                          VAL R6
      181 CAPTURE                          VAL R17
      182 CAPTURE                          VAL R22
      183 CAPTURE                          VAL R16
      184 CAPTURE                          VAL R23
      185 CAPTURE                          VAL R24
      186 CAPTURE                          VAL R15
      187 CAPTURE                          VAL R1
      188 CAPTURE                          VAL R14
      189 CAPTURE                          VAL R13
      190 CAPTURE                          VAL R10
      191 CAPTURE                          VAL R2
      192 CAPTURE                          VAL R5
      193 RETURN                           R26 1
