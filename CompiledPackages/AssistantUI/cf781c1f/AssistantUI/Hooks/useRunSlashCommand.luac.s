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
       51 DUPTABLE                         R8 K19 [{"messageGuid", "sessionId", "messageId", "contentId"}]
       52 SETTABLEKS                       R7 R8 K15 ["messageGuid"]
       54 GETUPVAL                         R9 6
       55 SETTABLEKS                       R9 R8 K16 ["sessionId"]
       57 GETUPVAL                         R9 5
       58 SETTABLEKS                       R9 R8 K17 ["messageId"]
       60 SETTABLEKS                       R5 R8 K18 ["contentId"]
       62 GETUPVAL                         R9 1
       63 GETTABLEKS                       R9 R9 K2 ["getTimestampMilliseconds"]
       65 CALL                             R9 0 1
       66 JUMPIFNOT                        R5 ; [+7]
       67 GETUPVAL                         R10 2
       68 GETTABLEKS                       R10 R10 K20 ["onPreExecuteToolUse"]
       70 MOVE                             R11 R5
       71 MOVE                             R12 R4
       72 LOADB                            R13 1
       73 CALL                             R10 3 0
       74 GETUPVAL                         R11 2
       75 JUMPIF                           R5 ; [+2]
       76 DUPCLOSURE                       R10 K21 [PROTO_1]
       77 JUMP                             ; [+7]
       78 NEWCLOSURE                       R10 P1
       79 CAPTURE                          VAL R2
       80 CAPTURE                          VAL R0
       81 CAPTURE                          VAL R3
       82 CAPTURE                          VAL R9
       83 CAPTURE                          VAL R11
       84 CAPTURE                          VAL R5
       85 NEWCLOSURE                       R11 P2
       86 CAPTURE                          VAL R10
       87 CAPTURE                          VAL R1
       88 CAPTURE                          UPVAL U7
       89 JUMPIFNOT                        R5 ; [+21]
       90 MOVE                             R12 R10
       91 LOADB                            R13 1
       92 DUPTABLE                         R14 K24 [{"content", "isError"}]
       93 NEWTABLE                         R15 0 1
       95 DUPTABLE                         R16 K26 [{"type", "text"}]
       96 LOADK                            R17 K25 ["text"]
       97 SETTABLEKS                       R17 R16 K3 ["type"]
       99 LOADK                            R17 K27 ["Tool call is still running asynchronously."]
      100 SETTABLEKS                       R17 R16 K25 ["text"]
      102 SETLIST                          R15 R16 1 [1]
      104 SETTABLEKS                       R15 R14 K22 ["content"]
      106 LOADB                            R15 0
      107 SETTABLEKS                       R15 R14 K23 ["isError"]
      109 LOADB                            R15 1
      110 CALL                             R12 3 0
      111 GETUPVAL                         R12 8
      112 CALL                             R12 0 1
      113 JUMPIFNOT                        R12 ; [+40]
      114 GETUPVAL                         R13 9
      115 FASTCALL2K                       ASSERT R13 K28 ; [+4]
      117 LOADK                            R14 K28 ["setSlashCommandCancel is not available"]
      118 GETIMPORT                        R12 K30 [assert]
      120 CALL                             R12 2 0
      121 GETUPVAL                         R12 10
      122 GETTABLEKS                       R12 R12 K31 ["new"]
      124 CALL                             R12 0 1
      125 DUPTABLE                         R13 K35 [{"resetTimeoutOnProgress", "onprogress", "signal"}]
      126 LOADB                            R14 1
      127 SETTABLEKS                       R14 R13 K32 ["resetTimeoutOnProgress"]
      129 NEWCLOSURE                       R14 P3
      130 CAPTURE                          UPVAL U11
      131 SETTABLEKS                       R14 R13 K33 ["onprogress"]
      133 SETTABLEKS                       R12 R13 K34 ["signal"]
      135 GETUPVAL                         R14 12
      136 GETTABLEKS                       R14 R14 K31 ["new"]
      138 NEWCLOSURE                       R15 P4
      139 CAPTURE                          VAL R12
      140 CAPTURE                          UPVAL U13
      141 CAPTURE                          UPVAL U14
      142 CAPTURE                          VAL R0
      143 CAPTURE                          VAL R13
      144 CAPTURE                          VAL R8
      145 CAPTURE                          UPVAL U9
      146 CAPTURE                          UPVAL U12
      147 CAPTURE                          VAL R11
      148 CALL                             R14 1 1
      149 GETUPVAL                         R15 9
      150 NEWCLOSURE                       R16 P5
      151 CAPTURE                          VAL R14
      152 CALL                             R15 1 0
      153 RETURN                           R0 0
      154 DUPTABLE                         R12 K36 [{"resetTimeoutOnProgress"}]
      155 LOADB                            R13 1
      156 SETTABLEKS                       R13 R12 K32 ["resetTimeoutOnProgress"]
      158 GETUPVAL                         R13 13
      159 GETUPVAL                         R15 14
      160 GETTABLEKS                       R15 R15 K37 ["getMcpClientIdentifier"]
      162 CALL                             R15 0 1
      163 GETTABLEKS                       R16 R0 K5 ["name"]
      165 GETTABLEKS                       R17 R0 K9 ["arguments"]
      167 MOVE                             R18 R12
      168 MOVE                             R19 R8
      169 NAMECALL                         R13 R13 K38 ["callToolForClient"]
      171 CALL                             R13 6 1
      172 NEWCLOSURE                       R15 P6
      173 CAPTURE                          VAL R11
      174 NAMECALL                         R13 R13 K39 ["andThen"]
      176 CALL                             R13 2 1
      177 NEWCLOSURE                       R15 P7
      178 CAPTURE                          VAL R11
      179 NAMECALL                         R13 R13 K40 ["catch"]
      181 CALL                             R13 2 0
      182 RETURN                           R0 0

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

PROTO_19:
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
       41 JUMPIFNOT                        R6 ; [+75]
       42 MOVE                             R7 R6
       43 CALL                             R7 0 1
       44 LOADNIL                          R8
       45 GETTABLEKS                       R9 R7 K6 ["propertyRows"]
       47 JUMPIFNOT                        R9 ; [+27]
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
       76 DUPTABLE                         R10 K18 [{"type", "title", "description", "confirmButtonText", "propertyRows", "onContinue"}]
       77 LOADK                            R11 K19 ["input_requested"]
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
       95 NEWCLOSURE                       R11 P4
       96 CAPTURE                          REF R9
       97 CAPTURE                          UPVAL U17
       98 CAPTURE                          UPVAL U15
       99 CAPTURE                          VAL R4
      100 SETTABLEKS                       R11 R10 K17 ["onContinue"]
      102 GETTABLEKS                       R11 R1 K20 ["onContentStart"]
      104 MOVE                             R12 R10
      105 CALL                             R11 1 1
      106 JUMPIFNOT                        R11 ; [+4]
      107 GETTABLEKS                       R12 R1 K21 ["onContentFinished"]
      109 MOVE                             R13 R11
      110 CALL                             R12 1 0
      111 GETUPVAL                         R12 6
      112 LOADB                            R13 1
      113 CALL                             R12 1 0
      114 CLOSEUPVALS                      R9
      115 RETURN                           R0 0
      116 CLOSEUPVALS                      R9
      117 MOVE                             R7 R4
      118 GETUPVAL                         R8 17
      119 CALL                             R7 1 0
      120 RETURN                           R0 0

PROTO_20:
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
       27 CALL                             R1 2 0
       28 RETURN                           R0 0

PROTO_21:
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
       26 GETUPVAL                         R4 1
       27 CALL                             R4 0 1
       28 JUMPIFNOT                        R4 ; [+22]
       29 GETUPVAL                         R4 2
       30 JUMPIFNOT                        R4 ; [+20]
       31 GETIMPORT                        R4 K6 [string.gsub]
       33 MOVE                             R5 R3
       34 LOADK                            R6 K7 ["%s+$"]
       35 LOADK                            R7 K8 [""]
       36 CALL                             R4 3 1
       37 GETUPVAL                         R5 3
       38 GETTABLEKS                       R5 R5 K9 ["getModeForCommand"]
       40 MOVE                             R6 R4
       41 CALL                             R5 1 1
       42 JUMPIFNOT                        R5 ; [+8]
       43 GETUPVAL                         R6 2
       44 MOVE                             R7 R5
       45 CALL                             R6 1 0
       46 MOVE                             R6 R2
       47 LOADB                            R7 1
       48 CALL                             R6 1 0
       49 LOADB                            R6 1
       50 RETURN                           R6 1
       51 LOADNIL                          R4
       52 LOADNIL                          R5
       53 LOADNIL                          R6
       54 LOADNIL                          R7
       55 LENGTH                           R8 R3
       56 JUMPIFNOTEQKN                    R8 K10 [0] ; [+4]
       58 LOADB                            R8 0
       59 CLOSEUPVALS                      R4
       60 RETURN                           R8 1
       61 GETUPVAL                         R10 4
       62 NAMECALL                         R8 R3 K11 ["find"]
       64 CALL                             R8 2 1
       65 LOADNIL                          R9
       66 JUMPIFNOT                        R8 ; [+12]
       67 LOADN                            R12 1
       68 SUBK                             R13 R8 K3 [1]
       69 NAMECALL                         R10 R3 K2 ["sub"]
       71 CALL                             R10 3 1
       72 MOVE                             R6 R10
       73 ADDK                             R12 R8 K3 [1]
       74 NAMECALL                         R10 R3 K2 ["sub"]
       76 CALL                             R10 2 1
       77 MOVE                             R9 R10
       78 JUMP                             ; [+2]
       79 MOVE                             R6 R3
       80 LOADK                            R9 K8 [""]
       81 GETUPVAL                         R10 3
       82 GETTABLEKS                       R10 R10 K12 ["getSlashCommandTransformation"]
       84 MOVE                             R11 R6
       85 CALL                             R10 1 1
       86 GETUPVAL                         R11 3
       87 GETTABLEKS                       R11 R11 K13 ["getSlashCommandDefinition"]
       89 MOVE                             R12 R6
       90 CALL                             R11 1 1
       91 MOVE                             R7 R11
       92 JUMPIFNOT                        R7 ; [+1]
       93 JUMPIF                           R10 ; [+3]
       94 LOADB                            R11 0
       95 CLOSEUPVALS                      R4
       96 RETURN                           R11 1
       97 GETUPVAL                         R11 5
       98 GETTABLEKS                       R12 R0 K14 ["images"]
      100 CALL                             R11 1 1
      101 MOVE                             R12 R10
      102 MOVE                             R13 R9
      103 MOVE                             R14 R11
      104 CALL                             R12 2 2
      105 MOVE                             R4 R12
      106 MOVE                             R5 R13
      107 GETUPVAL                         R12 6
      108 NEWCLOSURE                       R13 P0
      109 CAPTURE                          UPVAL U7
      110 CAPTURE                          UPVAL U8
      111 CAPTURE                          UPVAL U9
      112 CAPTURE                          UPVAL U10
      113 CAPTURE                          UPVAL U11
      114 CAPTURE                          UPVAL U12
      115 CAPTURE                          UPVAL U13
      116 CAPTURE                          UPVAL U14
      117 CAPTURE                          VAL R2
      118 CAPTURE                          UPVAL U15
      119 CAPTURE                          UPVAL U16
      120 CAPTURE                          UPVAL U17
      121 CAPTURE                          UPVAL U18
      122 CAPTURE                          UPVAL U19
      123 CAPTURE                          REF R5
      124 CAPTURE                          UPVAL U20
      125 CAPTURE                          REF R7
      126 CAPTURE                          REF R4
      127 CAPTURE                          UPVAL U0
      128 CAPTURE                          REF R6
      129 CALL                             R12 1 0
      130 LOADB                            R12 1
      131 CLOSEUPVALS                      R4
      132 RETURN                           R12 1

PROTO_22:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETUPVAL                         R1 1
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 2
        5 CALL                             R2 0 1
        6 GETUPVAL                         R3 3
        7 GETTABLEKS                       R3 R3 K0 ["useContext"]
        9 GETUPVAL                         R4 4
       10 GETTABLEKS                       R4 R4 K1 ["Context"]
       12 CALL                             R3 1 1
       13 GETTABLEKS                       R4 R3 K2 ["sessionId"]
       15 GETUPVAL                         R5 3
       16 GETTABLEKS                       R5 R5 K0 ["useContext"]
       18 GETUPVAL                         R6 5
       19 GETTABLEKS                       R6 R6 K1 ["Context"]
       21 CALL                             R5 1 1
       22 LOADNIL                          R6
       23 LOADNIL                          R7
       24 GETUPVAL                         R8 6
       25 CALL                             R8 0 1
       26 JUMPIFNOT                        R8 ; [+10]
       27 GETUPVAL                         R8 3
       28 GETTABLEKS                       R8 R8 K0 ["useContext"]
       30 GETUPVAL                         R9 7
       31 GETTABLEKS                       R9 R9 K1 ["Context"]
       33 CALL                             R8 1 1
       34 MOVE                             R6 R8
       35 GETTABLEKS                       R7 R6 K3 ["setSlashCommandCancel"]
       37 LOADNIL                          R8
       38 GETUPVAL                         R9 8
       39 CALL                             R9 0 1
       40 JUMPIFNOT                        R9 ; [+3]
       41 GETUPVAL                         R9 9
       42 CALL                             R9 0 2
       43 MOVE                             R8 R10
       44 NEWCLOSURE                       R9 P0
       45 CAPTURE                          UPVAL U10
       46 CAPTURE                          UPVAL U8
       47 CAPTURE                          REF R8
       48 CAPTURE                          UPVAL U11
       49 CAPTURE                          UPVAL U12
       50 CAPTURE                          UPVAL U13
       51 CAPTURE                          VAL R2
       52 CAPTURE                          VAL R1
       53 CAPTURE                          UPVAL U14
       54 CAPTURE                          VAL R0
       55 CAPTURE                          UPVAL U15
       56 CAPTURE                          UPVAL U16
       57 CAPTURE                          UPVAL U17
       58 CAPTURE                          UPVAL U18
       59 CAPTURE                          VAL R4
       60 CAPTURE                          UPVAL U6
       61 CAPTURE                          REF R7
       62 CAPTURE                          UPVAL U19
       63 CAPTURE                          VAL R5
       64 CAPTURE                          UPVAL U20
       65 CAPTURE                          UPVAL U21
       66 GETUPVAL                         R10 3
       67 GETTABLEKS                       R10 R10 K4 ["useCallback"]
       69 MOVE                             R11 R9
       70 NEWTABLE                         R12 0 7
       72 MOVE                             R13 R0
       73 MOVE                             R14 R1
       74 MOVE                             R15 R2
       75 MOVE                             R16 R4
       76 GETUPVAL                         R18 6
       77 CALL                             R18 0 1
       78 JUMPIFNOT                        R18 ; [+2]
       79 MOVE                             R17 R5
       80 JUMP                             ; [+1]
       81 LOADNIL                          R17
       82 GETUPVAL                         R19 6
       83 CALL                             R19 0 1
       84 JUMPIFNOT                        R19 ; [+2]
       85 MOVE                             R18 R7
       86 JUMP                             ; [+1]
       87 LOADNIL                          R18
       88 GETUPVAL                         R20 8
       89 CALL                             R20 0 1
       90 JUMPIFNOT                        R20 ; [+2]
       91 MOVE                             R19 R8
       92 JUMP                             ; [+1]
       93 LOADNIL                          R19
       94 SETLIST                          R12 R13 7 [1]
       96 CALL                             R10 2 -1
       97 CLOSEUPVALS                      R7
       98 RETURN                           R10 -1

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
       38 GETTABLEKS                       R6 R6 K17 ["Contexts"]
       40 GETTABLEKS                       R6 R6 K18 ["DefaultLLMProvider"]
       42 GETTABLEKS                       R6 R6 K19 ["LLMPackageContextProvider"]
       44 CALL                             R5 1 1
       45 GETIMPORT                        R6 K9 [require]
       47 GETTABLEKS                       R7 R0 K16 ["Components"]
       49 GETTABLEKS                       R7 R7 K17 ["Contexts"]
       51 GETTABLEKS                       R7 R7 K18 ["DefaultLLMProvider"]
       53 GETTABLEKS                       R7 R7 K20 ["LLMProcessEvent"]
       55 CALL                             R6 1 1
       56 GETIMPORT                        R7 K9 [require]
       58 GETTABLEKS                       R8 R0 K10 ["Parent"]
       60 GETTABLEKS                       R8 R8 K21 ["ModelContextProtocol"]
       62 CALL                             R7 1 1
       63 GETIMPORT                        R8 K9 [require]
       65 GETTABLEKS                       R9 R0 K16 ["Components"]
       67 GETTABLEKS                       R9 R9 K17 ["Contexts"]
       69 GETTABLEKS                       R9 R9 K22 ["PacketReceivedContext"]
       71 CALL                             R8 1 1
       72 GETIMPORT                        R9 K9 [require]
       74 GETTABLEKS                       R10 R0 K10 ["Parent"]
       76 GETTABLEKS                       R10 R10 K23 ["Promise"]
       78 CALL                             R9 1 1
       79 GETIMPORT                        R10 K9 [require]
       81 GETTABLEKS                       R11 R0 K10 ["Parent"]
       83 GETTABLEKS                       R11 R11 K24 ["React"]
       85 CALL                             R10 1 1
       86 GETIMPORT                        R11 K9 [require]
       88 GETTABLEKS                       R12 R0 K16 ["Components"]
       90 GETTABLEKS                       R12 R12 K17 ["Contexts"]
       92 GETTABLEKS                       R12 R12 K25 ["SessionIdContext"]
       94 CALL                             R11 1 1
       95 GETIMPORT                        R12 K9 [require]
       97 GETTABLEKS                       R13 R0 K10 ["Parent"]
       99 GETTABLEKS                       R13 R13 K26 ["Signal"]
      101 CALL                             R12 1 1
      102 GETIMPORT                        R13 K9 [require]
      104 GETTABLEKS                       R14 R0 K14 ["Util"]
      106 GETTABLEKS                       R14 R14 K27 ["Time"]
      108 CALL                             R13 1 1
      109 GETIMPORT                        R14 K9 [require]
      111 GETTABLEKS                       R15 R0 K28 ["Types"]
      113 CALL                             R14 1 1
      114 GETIMPORT                        R15 K9 [require]
      116 GETTABLEKS                       R16 R0 K16 ["Components"]
      118 GETTABLEKS                       R16 R16 K29 ["UIToolRegistry"]
      120 CALL                             R15 1 1
      121 GETIMPORT                        R16 K9 [require]
      123 GETTABLEKS                       R17 R0 K30 ["Hooks"]
      125 GETTABLEKS                       R17 R17 K31 ["useAssistantMode"]
      127 CALL                             R16 1 1
      128 GETIMPORT                        R17 K9 [require]
      130 GETTABLEKS                       R18 R0 K30 ["Hooks"]
      132 GETTABLEKS                       R18 R18 K32 ["useGetContentObserver"]
      134 CALL                             R17 1 1
      135 GETIMPORT                        R18 K9 [require]
      137 GETTABLEKS                       R19 R0 K30 ["Hooks"]
      139 GETTABLEKS                       R19 R19 K33 ["useGetOrAddMessage"]
      141 CALL                             R18 1 1
      142 GETIMPORT                        R19 K9 [require]
      144 GETTABLEKS                       R20 R0 K30 ["Hooks"]
      146 GETTABLEKS                       R20 R20 K34 ["useWithClient"]
      148 CALL                             R19 1 1
      149 GETIMPORT                        R20 K9 [require]
      151 GETTABLEKS                       R21 R0 K35 ["Flags"]
      153 GETTABLEKS                       R21 R21 K36 ["FFlagAssistantMultipleChatPersistence"]
      155 CALL                             R20 1 1
      156 GETIMPORT                        R21 K9 [require]
      158 GETTABLEKS                       R22 R0 K35 ["Flags"]
      160 GETTABLEKS                       R22 R22 K37 ["FFlagAssistantPlanMode"]
      162 CALL                             R21 1 1
      163 GETIMPORT                        R22 K9 [require]
      165 GETTABLEKS                       R23 R0 K35 ["Flags"]
      167 GETTABLEKS                       R23 R23 K38 ["FFlagAssistantSupportSlashCommandCancellation"]
      169 CALL                             R22 1 1
      170 GETIMPORT                        R23 K9 [require]
      172 GETTABLEKS                       R24 R0 K35 ["Flags"]
      174 GETTABLEKS                       R24 R24 K39 ["FFlagPrimGenAnnotateRightMimeType"]
      176 CALL                             R23 1 1
      177 GETTABLEKS                       R24 R15 K40 ["CommandPrefix"]
      179 GETTABLEKS                       R25 R15 K41 ["CommandDelimiter"]
      181 DUPCLOSURE                       R26 K42 [PROTO_0]
      182 CAPTURE                          VAL R4
      183 CAPTURE                          VAL R23
      184 DUPCLOSURE                       R27 K43 [PROTO_3]
      185 DUPCLOSURE                       R28 K44 [PROTO_22]
      186 CAPTURE                          VAL R17
      187 CAPTURE                          VAL R18
      188 CAPTURE                          VAL R19
      189 CAPTURE                          VAL R10
      190 CAPTURE                          VAL R11
      191 CAPTURE                          VAL R8
      192 CAPTURE                          VAL R22
      193 CAPTURE                          VAL R5
      194 CAPTURE                          VAL R21
      195 CAPTURE                          VAL R16
      196 CAPTURE                          VAL R24
      197 CAPTURE                          VAL R15
      198 CAPTURE                          VAL R25
      199 CAPTURE                          VAL R26
      200 CAPTURE                          VAL R14
      201 CAPTURE                          VAL R1
      202 CAPTURE                          VAL R13
      203 CAPTURE                          VAL R3
      204 CAPTURE                          VAL R20
      205 CAPTURE                          VAL R12
      206 CAPTURE                          VAL R9
      207 CAPTURE                          VAL R2
      208 RETURN                           R28 1
