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
       17 DUPTABLE                         R8 K8 [{"type", "data", "mimeType"}]
       18 LOADK                            R9 K9 ["image"]
       19 SETTABLEKS                       R9 R8 K5 ["type"]
       21 GETTABLEKS                       R9 R6 K6 ["data"]
       23 SETTABLEKS                       R9 R8 K6 ["data"]
       25 GETUPVAL                         R10 1
       26 CALL                             R10 0 1
       27 JUMPIFNOT                        R10 ; [+3]
       28 GETTABLEKS                       R9 R6 K7 ["mimeType"]
       30 JUMP                             ; [+1]
       31 LOADK                            R9 K10 ["image/png"]
       32 SETTABLEKS                       R9 R8 K7 ["mimeType"]
       34 CALL                             R7 1 1
       35 FASTCALL2                        TABLE_INSERT R1 R7 ; [+5]
       37 MOVE                             R9 R1
       38 MOVE                             R10 R7
       39 GETIMPORT                        R8 K12 [table.insert]
       41 CALL                             R8 2 0
       42 FORGLOOP                         R2 2 ; [-29]
       44 RETURN                           R1 1

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 LOADNIL                          R3
        1 JUMPIFNOT                        R0 ; [+4]
        2 JUMPIFNOT                        R1 ; [+3]
        3 GETTABLEKS                       R4 R1 K0 ["content"]
        5 JUMPIF                           R4 ; [+37]
        6 DUPTABLE                         R4 K3 [{"type", "text"}]
        7 LOADK                            R5 K2 ["text"]
        8 SETTABLEKS                       R5 R4 K1 ["type"]
       10 LOADK                            R5 K4 ["Error: Tool call failed. Please try a different approach."]
       11 SETTABLEKS                       R5 R4 K2 ["text"]
       13 DUPTABLE                         R5 K10 [{"type", "id", "name", "content", "isError", "startTime", "startTimeAfterConfirmation"}]
       14 LOADK                            R6 K11 ["tool_result"]
       15 SETTABLEKS                       R6 R5 K1 ["type"]
       17 GETUPVAL                         R6 0
       18 SETTABLEKS                       R6 R5 K5 ["id"]
       20 GETUPVAL                         R6 1
       21 GETTABLEKS                       R6 R6 K6 ["name"]
       23 SETTABLEKS                       R6 R5 K6 ["name"]
       25 NEWTABLE                         R6 0 1
       27 MOVE                             R7 R4
       28 SETLIST                          R6 R7 1 [1]
       30 SETTABLEKS                       R6 R5 K0 ["content"]
       32 LOADB                            R6 1
       33 SETTABLEKS                       R6 R5 K7 ["isError"]
       35 GETUPVAL                         R6 2
       36 SETTABLEKS                       R6 R5 K8 ["startTime"]
       38 GETUPVAL                         R6 3
       39 SETTABLEKS                       R6 R5 K9 ["startTimeAfterConfirmation"]
       41 MOVE                             R3 R5
       42 JUMP                             ; [+27]
       43 DUPTABLE                         R4 K10 [{"type", "id", "name", "content", "isError", "startTime", "startTimeAfterConfirmation"}]
       44 LOADK                            R5 K11 ["tool_result"]
       45 SETTABLEKS                       R5 R4 K1 ["type"]
       47 GETUPVAL                         R5 0
       48 SETTABLEKS                       R5 R4 K5 ["id"]
       50 GETUPVAL                         R5 1
       51 GETTABLEKS                       R5 R5 K6 ["name"]
       53 SETTABLEKS                       R5 R4 K6 ["name"]
       55 GETTABLEKS                       R5 R1 K0 ["content"]
       57 SETTABLEKS                       R5 R4 K0 ["content"]
       59 GETTABLEKS                       R5 R1 K7 ["isError"]
       61 SETTABLEKS                       R5 R4 K7 ["isError"]
       63 GETUPVAL                         R5 2
       64 SETTABLEKS                       R5 R4 K8 ["startTime"]
       66 GETUPVAL                         R5 3
       67 SETTABLEKS                       R5 R4 K9 ["startTimeAfterConfirmation"]
       69 MOVE                             R3 R4
       70 GETUPVAL                         R4 4
       71 GETTABLEKS                       R4 R4 K12 ["onToolResult"]
       73 GETUPVAL                         R5 5
       74 MOVE                             R6 R3
       75 MOVE                             R7 R2
       76 CALL                             R4 3 0
       77 RETURN                           R0 0

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
       11 DUPTABLE                         R4 K7 [{"type", "id", "name", "input"}]
       12 LOADK                            R5 K8 ["tool_use"]
       13 SETTABLEKS                       R5 R4 K3 ["type"]
       15 SETTABLEKS                       R2 R4 K4 ["id"]
       17 GETTABLEKS                       R5 R0 K5 ["name"]
       19 SETTABLEKS                       R5 R4 K5 ["name"]
       21 GETTABLEKS                       R5 R0 K9 ["arguments"]
       23 SETTABLEKS                       R5 R4 K6 ["input"]
       25 GETUPVAL                         R5 2
       26 GETTABLEKS                       R5 R5 K10 ["onContentStart"]
       28 MOVE                             R6 R4
       29 CALL                             R5 1 1
       30 JUMPIFNOT                        R5 ; [+5]
       31 GETUPVAL                         R6 2
       32 GETTABLEKS                       R6 R6 K11 ["onContentFinished"]
       34 MOVE                             R7 R5
       35 CALL                             R6 1 0
       36 GETUPVAL                         R6 3
       37 GETTABLEKS                       R6 R6 K12 ["get"]
       39 CALL                             R6 0 1
       40 GETTABLEKS                       R6 R6 K13 ["EventLogger"]
       42 GETUPVAL                         R8 4
       43 CALL                             R8 0 1
       44 JUMPIFNOT                        R8 ; [+2]
       45 GETUPVAL                         R7 5
       46 JUMP                             ; [+4]
       47 GETTABLEKS                       R7 R6 K14 ["getMessageGuid"]
       49 GETUPVAL                         R8 5
       50 CALL                             R7 1 1
       51 DUPTABLE                         R8 K20 [{"messageGuid", "sessionId", "messageId", "contentId", "toolId"}]
       52 SETTABLEKS                       R7 R8 K15 ["messageGuid"]
       54 GETUPVAL                         R9 6
       55 SETTABLEKS                       R9 R8 K16 ["sessionId"]
       57 GETUPVAL                         R9 5
       58 SETTABLEKS                       R9 R8 K17 ["messageId"]
       60 SETTABLEKS                       R5 R8 K18 ["contentId"]
       62 SETTABLEKS                       R2 R8 K19 ["toolId"]
       64 GETUPVAL                         R9 1
       65 GETTABLEKS                       R9 R9 K2 ["getTimestampMilliseconds"]
       67 CALL                             R9 0 1
       68 JUMPIFNOT                        R5 ; [+7]
       69 GETUPVAL                         R10 2
       70 GETTABLEKS                       R10 R10 K21 ["onPreExecuteToolUse"]
       72 MOVE                             R11 R5
       73 MOVE                             R12 R4
       74 LOADB                            R13 1
       75 CALL                             R10 3 0
       76 GETUPVAL                         R11 2
       77 JUMPIF                           R5 ; [+2]
       78 DUPCLOSURE                       R10 K22 [PROTO_1]
       79 JUMP                             ; [+7]
       80 NEWCLOSURE                       R10 P1
       81 CAPTURE                          VAL R2
       82 CAPTURE                          VAL R0
       83 CAPTURE                          VAL R3
       84 CAPTURE                          VAL R9
       85 CAPTURE                          VAL R11
       86 CAPTURE                          VAL R5
       87 NEWCLOSURE                       R11 P2
       88 CAPTURE                          VAL R10
       89 CAPTURE                          VAL R1
       90 CAPTURE                          UPVAL U7
       91 JUMPIFNOT                        R5 ; [+21]
       92 MOVE                             R12 R10
       93 LOADB                            R13 1
       94 DUPTABLE                         R14 K25 [{"content", "isError"}]
       95 NEWTABLE                         R15 0 1
       97 DUPTABLE                         R16 K27 [{"type", "text"}]
       98 LOADK                            R17 K26 ["text"]
       99 SETTABLEKS                       R17 R16 K3 ["type"]
      101 LOADK                            R17 K28 ["Tool call is still running asynchronously."]
      102 SETTABLEKS                       R17 R16 K26 ["text"]
      104 SETLIST                          R15 R16 1 [1]
      106 SETTABLEKS                       R15 R14 K23 ["content"]
      108 LOADB                            R15 0
      109 SETTABLEKS                       R15 R14 K24 ["isError"]
      111 LOADB                            R15 1
      112 CALL                             R12 3 0
      113 GETUPVAL                         R12 8
      114 CALL                             R12 0 1
      115 JUMPIFNOT                        R12 ; [+40]
      116 GETUPVAL                         R13 9
      117 FASTCALL2K                       ASSERT R13 K29 ; [+4]
      119 LOADK                            R14 K29 ["setSlashCommandCancel is not available"]
      120 GETIMPORT                        R12 K31 [assert]
      122 CALL                             R12 2 0
      123 GETUPVAL                         R12 10
      124 GETTABLEKS                       R12 R12 K32 ["new"]
      126 CALL                             R12 0 1
      127 DUPTABLE                         R13 K36 [{"resetTimeoutOnProgress", "onprogress", "signal"}]
      128 LOADB                            R14 1
      129 SETTABLEKS                       R14 R13 K33 ["resetTimeoutOnProgress"]
      131 NEWCLOSURE                       R14 P3
      132 CAPTURE                          UPVAL U11
      133 SETTABLEKS                       R14 R13 K34 ["onprogress"]
      135 SETTABLEKS                       R12 R13 K35 ["signal"]
      137 GETUPVAL                         R14 12
      138 GETTABLEKS                       R14 R14 K32 ["new"]
      140 NEWCLOSURE                       R15 P4
      141 CAPTURE                          VAL R12
      142 CAPTURE                          UPVAL U13
      143 CAPTURE                          UPVAL U14
      144 CAPTURE                          VAL R0
      145 CAPTURE                          VAL R13
      146 CAPTURE                          VAL R8
      147 CAPTURE                          UPVAL U9
      148 CAPTURE                          UPVAL U12
      149 CAPTURE                          VAL R11
      150 CALL                             R14 1 1
      151 GETUPVAL                         R15 9
      152 NEWCLOSURE                       R16 P5
      153 CAPTURE                          VAL R14
      154 CALL                             R15 1 0
      155 RETURN                           R0 0
      156 DUPTABLE                         R12 K37 [{"resetTimeoutOnProgress"}]
      157 LOADB                            R13 1
      158 SETTABLEKS                       R13 R12 K33 ["resetTimeoutOnProgress"]
      160 GETUPVAL                         R13 13
      161 GETUPVAL                         R15 14
      162 GETTABLEKS                       R15 R15 K38 ["getMcpClientIdentifier"]
      164 CALL                             R15 0 1
      165 GETTABLEKS                       R16 R0 K5 ["name"]
      167 GETTABLEKS                       R17 R0 K9 ["arguments"]
      169 MOVE                             R18 R12
      170 MOVE                             R19 R8
      171 NAMECALL                         R13 R13 K39 ["callToolForClient"]
      173 CALL                             R13 6 1
      174 NEWCLOSURE                       R15 P6
      175 CAPTURE                          VAL R11
      176 NAMECALL                         R13 R13 K40 ["andThen"]
      178 CALL                             R13 2 1
      179 NEWCLOSURE                       R15 P7
      180 CAPTURE                          VAL R11
      181 NAMECALL                         R13 R13 K41 ["catch"]
      183 CALL                             R13 2 0
      184 RETURN                           R0 0

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
       25 JUMPIFNOT                        R0 ; [+4]
       26 GETUPVAL                         R1 2
       27 MOVE                             R2 R0
       28 CALL                             R1 1 0
       29 RETURN                           R0 0
       30 GETUPVAL                         R1 1
       31 LOADB                            R2 1
       32 CALL                             R1 1 0
       33 GETIMPORT                        R1 K1 [error]
       35 LOADK                            R2 K7 ["No tool spec generated for slash command and no tool chain defined."]
       36 CALL                             R1 1 0
       37 RETURN                           R0 0

PROTO_17:
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

PROTO_18:
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
       35 CALL                             R3 0 1
       36 JUMPIFNOT                        R3 ; [+5]
       37 GETUPVAL                         R3 5
       38 JUMPIFNOT                        R3 ; [+3]
       39 GETUPVAL                         R3 5
       40 LOADNIL                          R4
       41 CALL                             R3 1 0
       42 GETUPVAL                         R3 6
       43 MOVE                             R4 R2
       44 CALL                             R3 1 0
       45 RETURN                           R0 0

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
       35 MOVE                             R4 R2
       36 CALL                             R3 1 0
       37 RETURN                           R0 0

PROTO_20:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["suppressHistory"]
        3 RETURN                           R0 0

PROTO_21:
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
       43 DUPTABLE                         R4 K14 [{"type", "title", "description", "confirmButtonText", "propertyRows", "canConfirm", "onContinue"}]
       44 LOADK                            R5 K15 ["input_requested"]
       45 SETTABLEKS                       R5 R4 K8 ["type"]
       47 GETUPVAL                         R6 2
       48 GETUPVAL                         R7 3
       49 CONCAT                           R5 R6 R7
       50 SETTABLEKS                       R5 R4 K9 ["title"]
       52 GETTABLEKS                       R5 R1 K10 ["description"]
       54 SETTABLEKS                       R5 R4 K10 ["description"]
       56 GETTABLEKS                       R5 R1 K11 ["confirmButtonText"]
       58 SETTABLEKS                       R5 R4 K11 ["confirmButtonText"]
       60 SETTABLEKS                       R2 R4 K1 ["propertyRows"]
       62 GETTABLEKS                       R5 R1 K12 ["canConfirm"]
       64 SETTABLEKS                       R5 R4 K12 ["canConfirm"]
       66 NEWCLOSURE                       R5 P0
       67 CAPTURE                          REF R3
       68 CAPTURE                          VAL R1
       69 CAPTURE                          UPVAL U4
       70 CAPTURE                          UPVAL U5
       71 CAPTURE                          UPVAL U6
       72 SETTABLEKS                       R5 R4 K13 ["onContinue"]
       74 GETUPVAL                         R5 7
       75 GETTABLEKS                       R5 R5 K16 ["current"]
       77 JUMPIFNOT                        R5 ; [+20]
       78 GETUPVAL                         R5 7
       79 GETTABLEKS                       R5 R5 K16 ["current"]
       81 GETUPVAL                         R6 8
       82 DUPTABLE                         R7 K21 [{"messageId", "contentId", "skipIfNoMessage", "transformFn"}]
       83 GETTABLEKS                       R8 R5 K17 ["messageId"]
       85 SETTABLEKS                       R8 R7 K17 ["messageId"]
       87 GETTABLEKS                       R8 R5 K18 ["contentId"]
       89 SETTABLEKS                       R8 R7 K18 ["contentId"]
       91 LOADB                            R8 1
       92 SETTABLEKS                       R8 R7 K19 ["skipIfNoMessage"]
       94 DUPCLOSURE                       R8 K22 [PROTO_20]
       95 SETTABLEKS                       R8 R7 K20 ["transformFn"]
       97 CALL                             R6 1 0
       98 GETUPVAL                         R5 9
       99 GETTABLEKS                       R5 R5 K23 ["onContentStart"]
      101 MOVE                             R6 R4
      102 CALL                             R5 1 1
      103 JUMPIFNOT                        R5 ; [+14]
      104 GETUPVAL                         R6 7
      105 DUPTABLE                         R7 K24 [{"messageId", "contentId"}]
      106 GETUPVAL                         R8 10
      107 SETTABLEKS                       R8 R7 K17 ["messageId"]
      109 SETTABLEKS                       R5 R7 K18 ["contentId"]
      111 SETTABLEKS                       R7 R6 K16 ["current"]
      113 GETUPVAL                         R6 9
      114 GETTABLEKS                       R6 R6 K25 ["onContentFinished"]
      116 MOVE                             R7 R5
      117 CALL                             R6 1 0
      118 CLOSEUPVALS                      R3
      119 RETURN                           R0 0

PROTO_22:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["suppressHistory"]
        3 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["InputStatus"]
        3 GETTABLEKS                       R1 R1 K1 ["Cancelled"]
        5 SETTABLEKS                       R1 R0 K2 ["status"]
        7 RETURN                           R0 0

PROTO_24:
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
       22 DUPCLOSURE                       R2 K5 [PROTO_23]
       23 CAPTURE                          UPVAL U5
       24 SETTABLEKS                       R2 R1 K3 ["transformFn"]
       26 CALL                             R0 1 0
       27 RETURN                           R0 0

PROTO_25:
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

PROTO_26:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETTABLEKS                       R2 R1 K0 ["onNewMessage"]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 0
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          VAL R1
       10 CAPTURE                          UPVAL U3
       11 CAPTURE                          UPVAL U4
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U5
       14 CAPTURE                          UPVAL U6
       15 CAPTURE                          UPVAL U7
       16 CAPTURE                          UPVAL U8
       17 CAPTURE                          UPVAL U9
       18 CAPTURE                          UPVAL U10
       19 CAPTURE                          UPVAL U11
       20 CAPTURE                          UPVAL U12
       21 CAPTURE                          UPVAL U13
       22 NEWCLOSURE                       R3 P1
       23 CAPTURE                          VAL R2
       24 CAPTURE                          UPVAL U6
       25 NEWCLOSURE                       R4 P2
       26 CAPTURE                          UPVAL U14
       27 CAPTURE                          UPVAL U6
       28 CAPTURE                          VAL R2
       29 DUPCLOSURE                       R5 K1 [PROTO_17]
       30 CAPTURE                          UPVAL U15
       31 GETUPVAL                         R7 16
       32 FASTCALL2K                       ASSERT R7 K2 ; [+4]
       34 LOADK                            R8 K2 ["definition should always be available for slash commands"]
       35 GETIMPORT                        R6 K4 [assert]
       37 CALL                             R6 2 0
       38 GETUPVAL                         R6 16
       39 GETTABLEKS                       R6 R6 K5 ["getInputRequestArguments"]
       41 JUMPIFNOT                        R6 ; [+201]
       42 MOVE                             R7 R6
       43 CALL                             R7 0 1
       44 LOADNIL                          R8
       45 GETTABLEKS                       R9 R7 K6 ["propertyRows"]
       47 JUMPIFNOT                        R9 ; [+153]
       48 GETIMPORT                        R9 K9 [table.clone]
       50 GETTABLEKS                       R10 R7 K6 ["propertyRows"]
       52 CALL                             R9 1 1
       53 MOVE                             R8 R9
       54 MOVE                             R9 R8
       55 LOADNIL                          R10
       56 LOADNIL                          R11
       57 FORGPREP                         R9
       58 GETUPVAL                         R15 17
       59 GETTABLEKS                       R15 R15 K10 ["arguments"]
       61 GETTABLEKS                       R16 R13 K11 ["prop"]
       63 GETTABLE                         R14 R15 R16
       64 JUMPIFEQKNIL                     R14 ; [+8]
       66 GETIMPORT                        R15 K9 [table.clone]
       68 MOVE                             R16 R13
       69 CALL                             R15 1 1
       70 SETTABLEKS                       R14 R15 K12 ["initialValue"]
       72 SETTABLE                         R15 R8 R12
       73 FORGLOOP                         R9 2 ; [-16]
       75 LOADB                            R9 0
       76 DUPTABLE                         R10 K20 [{"type", "title", "description", "confirmButtonText", "propertyRows", "canConfirm", "onContinue", "onRevive"}]
       77 LOADK                            R11 K21 ["input_requested"]
       78 SETTABLEKS                       R11 R10 K13 ["type"]
       80 GETUPVAL                         R12 18
       81 GETUPVAL                         R13 19
       82 CONCAT                           R11 R12 R13
       83 SETTABLEKS                       R11 R10 K14 ["title"]
       85 GETTABLEKS                       R11 R7 K15 ["description"]
       87 SETTABLEKS                       R11 R10 K15 ["description"]
       89 GETTABLEKS                       R11 R7 K16 ["confirmButtonText"]
       91 SETTABLEKS                       R11 R10 K16 ["confirmButtonText"]
       93 SETTABLEKS                       R8 R10 K6 ["propertyRows"]
       95 GETTABLEKS                       R11 R7 K17 ["canConfirm"]
       97 SETTABLEKS                       R11 R10 K17 ["canConfirm"]
       99 NEWCLOSURE                       R11 P4
      100 CAPTURE                          REF R9
      101 CAPTURE                          VAL R7
      102 CAPTURE                          UPVAL U17
      103 CAPTURE                          UPVAL U15
      104 CAPTURE                          UPVAL U7
      105 CAPTURE                          UPVAL U8
      106 CAPTURE                          VAL R4
      107 SETTABLEKS                       R11 R10 K18 ["onContinue"]
      109 GETUPVAL                         R12 20
      110 CALL                             R12 0 1
      111 JUMPIFNOT                        R12 ; [+13]
      112 NEWCLOSURE                       R11 P5
      113 CAPTURE                          VAL R7
      114 CAPTURE                          VAL R6
      115 CAPTURE                          UPVAL U18
      116 CAPTURE                          UPVAL U19
      117 CAPTURE                          UPVAL U17
      118 CAPTURE                          UPVAL U15
      119 CAPTURE                          VAL R4
      120 CAPTURE                          UPVAL U21
      121 CAPTURE                          UPVAL U22
      122 CAPTURE                          VAL R1
      123 CAPTURE                          VAL R0
      124 JUMP                             ; [+1]
      125 LOADNIL                          R11
      126 SETTABLEKS                       R11 R10 K19 ["onRevive"]
      128 GETUPVAL                         R11 20
      129 CALL                             R11 0 1
      130 JUMPIFNOT                        R11 ; [+24]
      131 GETUPVAL                         R11 21
      132 GETTABLEKS                       R11 R11 K22 ["current"]
      134 JUMPIFNOT                        R11 ; [+20]
      135 GETUPVAL                         R11 21
      136 GETTABLEKS                       R11 R11 K22 ["current"]
      138 GETUPVAL                         R12 22
      139 DUPTABLE                         R13 K27 [{"messageId", "contentId", "skipIfNoMessage", "transformFn"}]
      140 GETTABLEKS                       R14 R11 K23 ["messageId"]
      142 SETTABLEKS                       R14 R13 K23 ["messageId"]
      144 GETTABLEKS                       R14 R11 K24 ["contentId"]
      146 SETTABLEKS                       R14 R13 K24 ["contentId"]
      148 LOADB                            R14 1
      149 SETTABLEKS                       R14 R13 K25 ["skipIfNoMessage"]
      151 DUPCLOSURE                       R14 K28 [PROTO_22]
      152 SETTABLEKS                       R14 R13 K26 ["transformFn"]
      154 CALL                             R12 1 0
      155 GETTABLEKS                       R11 R1 K29 ["onContentStart"]
      157 MOVE                             R12 R10
      158 CALL                             R11 1 1
      159 GETUPVAL                         R12 20
      160 CALL                             R12 0 1
      161 JUMPIFNOT                        R12 ; [+9]
      162 JUMPIFNOT                        R11 ; [+8]
      163 GETUPVAL                         R12 21
      164 DUPTABLE                         R13 K30 [{"messageId", "contentId"}]
      165 SETTABLEKS                       R0 R13 K23 ["messageId"]
      167 SETTABLEKS                       R11 R13 K24 ["contentId"]
      169 SETTABLEKS                       R13 R12 K22 ["current"]
      171 JUMPIFNOT                        R11 ; [+4]
      172 GETTABLEKS                       R12 R1 K31 ["onContentFinished"]
      174 MOVE                             R13 R11
      175 CALL                             R12 1 0
      176 GETUPVAL                         R12 7
      177 CALL                             R12 0 1
      178 JUMPIFNOT                        R12 ; [+16]
      179 GETUPVAL                         R13 8
      180 FASTCALL2K                       ASSERT R13 K32 ; [+4]
      182 LOADK                            R14 K32 ["setSlashCommandCancel is not available"]
      183 GETIMPORT                        R12 K4 [assert]
      185 CALL                             R12 2 0
      186 GETUPVAL                         R12 8
      187 NEWCLOSURE                       R13 P7
      188 CAPTURE                          REF R9
      189 CAPTURE                          VAL R7
      190 CAPTURE                          VAL R11
      191 CAPTURE                          UPVAL U22
      192 CAPTURE                          VAL R0
      193 CAPTURE                          UPVAL U23
      194 CALL                             R12 1 0
      195 GETUPVAL                         R12 6
      196 LOADB                            R13 1
      197 CALL                             R12 1 0
      198 CLOSEUPVALS                      R9
      199 RETURN                           R0 0
      200 CLOSEUPVALS                      R9
      201 LOADB                            R9 0
      202 DUPTABLE                         R10 K33 [{"type", "title", "description", "confirmButtonText", "propertyRows", "onContinue"}]
      203 LOADK                            R11 K21 ["input_requested"]
      204 SETTABLEKS                       R11 R10 K13 ["type"]
      206 GETUPVAL                         R12 18
      207 GETUPVAL                         R13 19
      208 CONCAT                           R11 R12 R13
      209 SETTABLEKS                       R11 R10 K14 ["title"]
      211 GETTABLEKS                       R11 R7 K15 ["description"]
      213 SETTABLEKS                       R11 R10 K15 ["description"]
      215 GETTABLEKS                       R11 R7 K16 ["confirmButtonText"]
      217 SETTABLEKS                       R11 R10 K16 ["confirmButtonText"]
      219 SETTABLEKS                       R8 R10 K6 ["propertyRows"]
      221 NEWCLOSURE                       R11 P8
      222 CAPTURE                          REF R9
      223 CAPTURE                          UPVAL U17
      224 CAPTURE                          UPVAL U15
      225 CAPTURE                          VAL R4
      226 SETTABLEKS                       R11 R10 K18 ["onContinue"]
      228 GETTABLEKS                       R11 R1 K29 ["onContentStart"]
      230 MOVE                             R12 R10
      231 CALL                             R11 1 1
      232 JUMPIFNOT                        R11 ; [+4]
      233 GETTABLEKS                       R12 R1 K31 ["onContentFinished"]
      235 MOVE                             R13 R11
      236 CALL                             R12 1 0
      237 GETUPVAL                         R12 6
      238 LOADB                            R13 1
      239 CALL                             R12 1 0
      240 CLOSEUPVALS                      R9
      241 RETURN                           R0 0
      242 CLOSEUPVALS                      R9
      243 MOVE                             R7 R4
      244 GETUPVAL                         R8 17
      245 CALL                             R7 1 0
      246 RETURN                           R0 0

PROTO_27:
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
       17 CAPTURE                          UPVAL U12
       18 CAPTURE                          UPVAL U13
       19 CAPTURE                          VAL R0
       20 CAPTURE                          UPVAL U1
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
       31 CALL                             R1 2 0
       32 RETURN                           R0 0

PROTO_28:
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
      110 CAPTURE                          UPVAL U12
      111 CAPTURE                          UPVAL U13
      112 CAPTURE                          VAL R2
      113 CAPTURE                          UPVAL U14
      114 CAPTURE                          UPVAL U15
      115 CAPTURE                          UPVAL U16
      116 CAPTURE                          UPVAL U17
      117 CAPTURE                          UPVAL U18
      118 CAPTURE                          REF R7
      119 CAPTURE                          UPVAL U19
      120 CAPTURE                          REF R9
      121 CAPTURE                          REF R6
      122 CAPTURE                          UPVAL U0
      123 CAPTURE                          REF R8
      124 CAPTURE                          UPVAL U20
      125 CAPTURE                          UPVAL U21
      126 CAPTURE                          UPVAL U22
      127 CAPTURE                          UPVAL U23
      128 CALL                             R14 1 0
      129 LOADB                            R14 1
      130 CLOSEUPVALS                      R6
      131 RETURN                           R14 1

PROTO_29:
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
       32 CALL                             R10 0 1
       33 JUMPIFNOT                        R10 ; [+10]
       34 GETUPVAL                         R10 4
       35 GETTABLEKS                       R10 R10 K1 ["useContext"]
       37 GETUPVAL                         R11 8
       38 GETTABLEKS                       R11 R11 K2 ["Context"]
       40 CALL                             R10 1 1
       41 MOVE                             R8 R10
       42 GETTABLEKS                       R9 R8 K4 ["setSlashCommandCancel"]
       44 GETUPVAL                         R10 9
       45 CALL                             R10 0 2
       46 NEWCLOSURE                       R12 P0
       47 CAPTURE                          UPVAL U10
       48 CAPTURE                          UPVAL U11
       49 CAPTURE                          VAL R11
       50 CAPTURE                          UPVAL U12
       51 CAPTURE                          UPVAL U13
       52 CAPTURE                          VAL R3
       53 CAPTURE                          VAL R2
       54 CAPTURE                          UPVAL U14
       55 CAPTURE                          VAL R0
       56 CAPTURE                          UPVAL U15
       57 CAPTURE                          UPVAL U16
       58 CAPTURE                          UPVAL U17
       59 CAPTURE                          UPVAL U18
       60 CAPTURE                          VAL R6
       61 CAPTURE                          UPVAL U7
       62 CAPTURE                          REF R9
       63 CAPTURE                          UPVAL U19
       64 CAPTURE                          VAL R7
       65 CAPTURE                          UPVAL U20
       66 CAPTURE                          UPVAL U21
       67 CAPTURE                          UPVAL U22
       68 CAPTURE                          VAL R4
       69 CAPTURE                          VAL R1
       70 CAPTURE                          UPVAL U23
       71 GETUPVAL                         R13 4
       72 GETTABLEKS                       R13 R13 K5 ["useCallback"]
       74 MOVE                             R14 R12
       75 NEWTABLE                         R15 0 7
       77 MOVE                             R16 R0
       78 MOVE                             R17 R2
       79 MOVE                             R18 R3
       80 MOVE                             R19 R6
       81 GETUPVAL                         R21 7
       82 CALL                             R21 0 1
       83 JUMPIFNOT                        R21 ; [+2]
       84 MOVE                             R20 R7
       85 JUMP                             ; [+1]
       86 LOADNIL                          R20
       87 GETUPVAL                         R22 7
       88 CALL                             R22 0 1
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
       22 GETTABLEKS                       R4 R0 K12 ["Guest"]
       24 GETTABLEKS                       R4 R4 K13 ["Environment"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R0 K14 ["Util"]
       31 GETTABLEKS                       R5 R5 K15 ["ImageContentStore"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETTABLEKS                       R6 R0 K16 ["Components"]
       38 GETTABLEKS                       R6 R6 K17 ["ContentWidgets"]
       40 GETTABLEKS                       R6 R6 K18 ["InputRequestedContentWidget"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K9 [require]
       45 GETTABLEKS                       R7 R0 K16 ["Components"]
       47 GETTABLEKS                       R7 R7 K19 ["Contexts"]
       49 GETTABLEKS                       R7 R7 K20 ["DefaultLLMProvider"]
       51 GETTABLEKS                       R7 R7 K21 ["LLMPackageContextProvider"]
       53 CALL                             R6 1 1
       54 GETIMPORT                        R7 K9 [require]
       56 GETTABLEKS                       R8 R0 K16 ["Components"]
       58 GETTABLEKS                       R8 R8 K19 ["Contexts"]
       60 GETTABLEKS                       R8 R8 K20 ["DefaultLLMProvider"]
       62 GETTABLEKS                       R8 R8 K22 ["LLMProcessEvent"]
       64 CALL                             R7 1 1
       65 GETIMPORT                        R8 K9 [require]
       67 GETTABLEKS                       R9 R0 K10 ["Parent"]
       69 GETTABLEKS                       R9 R9 K23 ["ModelContextProtocol"]
       71 CALL                             R8 1 1
       72 GETIMPORT                        R9 K9 [require]
       74 GETTABLEKS                       R10 R0 K16 ["Components"]
       76 GETTABLEKS                       R10 R10 K19 ["Contexts"]
       78 GETTABLEKS                       R10 R10 K24 ["PacketReceivedContext"]
       80 CALL                             R9 1 1
       81 GETIMPORT                        R10 K9 [require]
       83 GETTABLEKS                       R11 R0 K10 ["Parent"]
       85 GETTABLEKS                       R11 R11 K25 ["Promise"]
       87 CALL                             R10 1 1
       88 GETIMPORT                        R11 K9 [require]
       90 GETTABLEKS                       R12 R0 K10 ["Parent"]
       92 GETTABLEKS                       R12 R12 K26 ["React"]
       94 CALL                             R11 1 1
       95 GETIMPORT                        R12 K9 [require]
       97 GETTABLEKS                       R13 R0 K16 ["Components"]
       99 GETTABLEKS                       R13 R13 K19 ["Contexts"]
      101 GETTABLEKS                       R13 R13 K27 ["SessionIdContext"]
      103 CALL                             R12 1 1
      104 GETIMPORT                        R13 K9 [require]
      106 GETTABLEKS                       R14 R0 K10 ["Parent"]
      108 GETTABLEKS                       R14 R14 K28 ["Signal"]
      110 CALL                             R13 1 1
      111 GETIMPORT                        R14 K9 [require]
      113 GETTABLEKS                       R15 R0 K14 ["Util"]
      115 GETTABLEKS                       R15 R15 K29 ["Time"]
      117 CALL                             R14 1 1
      118 GETIMPORT                        R15 K9 [require]
      120 GETTABLEKS                       R16 R0 K30 ["Types"]
      122 CALL                             R15 1 1
      123 GETIMPORT                        R16 K9 [require]
      125 GETTABLEKS                       R17 R0 K16 ["Components"]
      127 GETTABLEKS                       R17 R17 K31 ["UIToolRegistry"]
      129 CALL                             R16 1 1
      130 GETIMPORT                        R17 K9 [require]
      132 GETTABLEKS                       R18 R0 K32 ["Hooks"]
      134 GETTABLEKS                       R18 R18 K33 ["useAssistantMode"]
      136 CALL                             R17 1 1
      137 GETIMPORT                        R18 K9 [require]
      139 GETTABLEKS                       R19 R0 K32 ["Hooks"]
      141 GETTABLEKS                       R19 R19 K34 ["useEditContent"]
      143 CALL                             R18 1 1
      144 GETIMPORT                        R19 K9 [require]
      146 GETTABLEKS                       R20 R0 K32 ["Hooks"]
      148 GETTABLEKS                       R20 R20 K35 ["useGetContentObserver"]
      150 CALL                             R19 1 1
      151 GETIMPORT                        R20 K9 [require]
      153 GETTABLEKS                       R21 R0 K32 ["Hooks"]
      155 GETTABLEKS                       R21 R21 K36 ["useGetOrAddMessage"]
      157 CALL                             R20 1 1
      158 GETIMPORT                        R21 K9 [require]
      160 GETTABLEKS                       R22 R0 K32 ["Hooks"]
      162 GETTABLEKS                       R22 R22 K37 ["useWithClient"]
      164 CALL                             R21 1 1
      165 GETIMPORT                        R22 K9 [require]
      167 GETTABLEKS                       R23 R0 K38 ["Flags"]
      169 GETTABLEKS                       R23 R23 K39 ["FFlagAssistantMultipleChatPersistence"]
      171 CALL                             R22 1 1
      172 GETIMPORT                        R23 K9 [require]
      174 GETTABLEKS                       R24 R0 K38 ["Flags"]
      176 GETTABLEKS                       R24 R24 K40 ["FFlagAssistantSupportSlashCommandCancellation"]
      178 CALL                             R23 1 1
      179 GETIMPORT                        R24 K9 [require]
      181 GETTABLEKS                       R25 R0 K38 ["Flags"]
      183 GETTABLEKS                       R25 R25 K41 ["FFlagPrimGenAnnotateRightMimeType"]
      185 CALL                             R24 1 1
      186 GETIMPORT                        R25 K9 [require]
      188 GETTABLEKS                       R26 R0 K38 ["Flags"]
      190 GETTABLEKS                       R26 R26 K42 ["FFlagAssistantSegmentationPromptModeSelector"]
      192 CALL                             R25 1 1
      193 GETTABLEKS                       R26 R16 K43 ["CommandPrefix"]
      195 GETTABLEKS                       R27 R16 K44 ["CommandDelimiter"]
      197 DUPCLOSURE                       R28 K45 [PROTO_0]
      198 CAPTURE                          VAL R4
      199 CAPTURE                          VAL R24
      200 DUPCLOSURE                       R29 K46 [PROTO_3]
      201 DUPCLOSURE                       R30 K47 [PROTO_29]
      202 CAPTURE                          VAL R19
      203 CAPTURE                          VAL R18
      204 CAPTURE                          VAL R20
      205 CAPTURE                          VAL R21
      206 CAPTURE                          VAL R11
      207 CAPTURE                          VAL R12
      208 CAPTURE                          VAL R9
      209 CAPTURE                          VAL R23
      210 CAPTURE                          VAL R6
      211 CAPTURE                          VAL R17
      212 CAPTURE                          VAL R26
      213 CAPTURE                          VAL R16
      214 CAPTURE                          VAL R27
      215 CAPTURE                          VAL R28
      216 CAPTURE                          VAL R15
      217 CAPTURE                          VAL R1
      218 CAPTURE                          VAL R14
      219 CAPTURE                          VAL R3
      220 CAPTURE                          VAL R22
      221 CAPTURE                          VAL R13
      222 CAPTURE                          VAL R10
      223 CAPTURE                          VAL R2
      224 CAPTURE                          VAL R25
      225 CAPTURE                          VAL R5
      226 RETURN                           R30 1
