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
       14 GETUPVAL                         R8 0
       15 GETTABLEKS                       R7 R8 K4 ["storeImage"]
       17 DUPTABLE                         R8 K8 [{"type", "data", "mimeType"}]
       18 LOADK                            R9 K9 ["image"]
       19 SETTABLEKS                       R9 R8 K5 ["type"]
       21 GETTABLEKS                       R9 R6 K6 ["data"]
       23 SETTABLEKS                       R9 R8 K6 ["data"]
       25 LOADK                            R9 K10 ["image/png"]
       26 SETTABLEKS                       R9 R8 K7 ["mimeType"]
       28 CALL                             R7 1 1
       29 FASTCALL2                        TABLE_INSERT R1 R7 ; [+5]
       31 MOVE                             R9 R1
       32 MOVE                             R10 R7
       33 GETIMPORT                        R8 K12 [table.insert]
       35 CALL                             R8 2 0
       36 FORGLOOP                         R2 2 ; [-23]
       38 RETURN                           R1 1

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 LOADNIL                          R2
        1 JUMPIFNOT                        R0 ; [+4]
        2 JUMPIFNOT                        R1 ; [+3]
        3 GETTABLEKS                       R3 R1 K0 ["content"]
        5 JUMPIF                           R3 ; [+37]
        6 DUPTABLE                         R3 K3 [{"type", "text"}]
        7 LOADK                            R4 K2 ["text"]
        8 SETTABLEKS                       R4 R3 K1 ["type"]
       10 LOADK                            R4 K4 ["Error: Tool call failed. Please try a different approach."]
       11 SETTABLEKS                       R4 R3 K2 ["text"]
       13 DUPTABLE                         R4 K10 [{"type", "id", "name", "content", "isError", "startTime", "startTimeAfterConfirmation"}]
       14 LOADK                            R5 K11 ["tool_result"]
       15 SETTABLEKS                       R5 R4 K1 ["type"]
       17 GETUPVAL                         R5 0
       18 SETTABLEKS                       R5 R4 K5 ["id"]
       20 GETUPVAL                         R6 1
       21 GETTABLEKS                       R5 R6 K6 ["name"]
       23 SETTABLEKS                       R5 R4 K6 ["name"]
       25 NEWTABLE                         R5 0 1
       27 MOVE                             R6 R3
       28 SETLIST                          R5 R6 1 [1]
       30 SETTABLEKS                       R5 R4 K0 ["content"]
       32 LOADB                            R5 1
       33 SETTABLEKS                       R5 R4 K7 ["isError"]
       35 GETUPVAL                         R5 2
       36 SETTABLEKS                       R5 R4 K8 ["startTime"]
       38 GETUPVAL                         R5 3
       39 SETTABLEKS                       R5 R4 K9 ["startTimeAfterConfirmation"]
       41 MOVE                             R2 R4
       42 JUMP                             ; [+27]
       43 DUPTABLE                         R3 K10 [{"type", "id", "name", "content", "isError", "startTime", "startTimeAfterConfirmation"}]
       44 LOADK                            R4 K11 ["tool_result"]
       45 SETTABLEKS                       R4 R3 K1 ["type"]
       47 GETUPVAL                         R4 0
       48 SETTABLEKS                       R4 R3 K5 ["id"]
       50 GETUPVAL                         R5 1
       51 GETTABLEKS                       R4 R5 K6 ["name"]
       53 SETTABLEKS                       R4 R3 K6 ["name"]
       55 GETTABLEKS                       R4 R1 K0 ["content"]
       57 SETTABLEKS                       R4 R3 K0 ["content"]
       59 GETTABLEKS                       R4 R1 K7 ["isError"]
       61 SETTABLEKS                       R4 R3 K7 ["isError"]
       63 GETUPVAL                         R4 2
       64 SETTABLEKS                       R4 R3 K8 ["startTime"]
       66 GETUPVAL                         R4 3
       67 SETTABLEKS                       R4 R3 K9 ["startTimeAfterConfirmation"]
       69 MOVE                             R2 R3
       70 GETUPVAL                         R4 4
       71 GETTABLEKS                       R3 R4 K12 ["onToolResult"]
       73 GETUPVAL                         R4 5
       74 MOVE                             R5 R2
       75 CALL                             R3 2 0
       76 RETURN                           R0 0

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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["setLastPacketTime"]
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
        5 GETUPVAL                         R6 2
        6 GETTABLEKS                       R5 R6 K0 ["getMcpClientIdentifier"]
        8 CALL                             R5 0 1
        9 GETUPVAL                         R7 3
       10 GETTABLEKS                       R6 R7 K1 ["name"]
       12 GETUPVAL                         R8 3
       13 GETTABLEKS                       R7 R8 K2 ["arguments"]
       15 GETUPVAL                         R8 4
       16 GETUPVAL                         R9 5
       17 NAMECALL                         R3 R3 K3 ["callToolForClient"]
       19 CALL                             R3 6 1
       20 NAMECALL                         R4 R3 K4 ["awaitStatus"]
       22 CALL                             R4 1 2
       23 GETUPVAL                         R6 6
       24 LOADNIL                          R7
       25 CALL                             R6 1 0
       26 GETUPVAL                         R8 7
       27 GETTABLEKS                       R7 R8 K5 ["Status"]
       29 GETTABLEKS                       R6 R7 K6 ["Resolved"]
       31 JUMPIFNOTEQ                      R4 R6 ; [+14]
       33 GETUPVAL                         R6 8
       34 CALL                             R6 0 1
       35 JUMPIFNOT                        R6 ; [+5]
       36 GETUPVAL                         R6 9
       37 LOADB                            R7 1
       38 MOVE                             R8 R5
       39 CALL                             R6 2 0
       40 JUMP                             ; [+22]
       41 GETUPVAL                         R6 10
       42 LOADB                            R7 1
       43 MOVE                             R8 R5
       44 CALL                             R6 2 0
       45 JUMP                             ; [+17]
       46 GETIMPORT                        R6 K8 [warn]
       48 LOADK                            R7 K9 ["Error calling tool:"]
       49 MOVE                             R8 R5
       50 CALL                             R6 2 0
       51 GETUPVAL                         R6 8
       52 CALL                             R6 0 1
       53 JUMPIFNOT                        R6 ; [+5]
       54 GETUPVAL                         R6 9
       55 LOADB                            R7 0
       56 LOADNIL                          R8
       57 CALL                             R6 2 0
       58 JUMP                             ; [+4]
       59 GETUPVAL                         R6 10
       60 LOADB                            R7 0
       61 LOADNIL                          R8
       62 CALL                             R6 2 0
       63 GETUPVAL                         R6 8
       64 CALL                             R6 0 1
       65 JUMPIF                           R6 ; [+3]
       66 GETUPVAL                         R6 11
       67 LOADB                            R7 1
       68 CALL                             R6 1 0
       69 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["cancel"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETUPVAL                         R1 1
        4 LOADB                            R2 1
        5 MOVE                             R3 R0
        6 CALL                             R1 2 0
        7 RETURN                           R0 0
        8 GETUPVAL                         R1 2
        9 LOADB                            R2 1
       10 MOVE                             R3 R0
       11 CALL                             R1 2 0
       12 GETUPVAL                         R1 3
       13 LOADB                            R2 1
       14 CALL                             R1 1 0
       15 RETURN                           R0 0

PROTO_10:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R2 K2 ["Error calling tool:"]
        3 MOVE                             R3 R0
        4 CALL                             R1 2 0
        5 GETUPVAL                         R1 0
        6 CALL                             R1 0 1
        7 JUMPIFNOT                        R1 ; [+5]
        8 GETUPVAL                         R1 1
        9 LOADB                            R2 0
       10 LOADNIL                          R3
       11 CALL                             R1 2 0
       12 RETURN                           R0 0
       13 GETUPVAL                         R1 2
       14 LOADB                            R2 0
       15 LOADNIL                          R3
       16 CALL                             R1 2 0
       17 GETUPVAL                         R1 3
       18 LOADB                            R2 1
       19 CALL                             R1 1 0
       20 RETURN                           R0 0

PROTO_11:
        0 LOADK                            R3 K0 ["slash_command_"]
        1 GETUPVAL                         R4 0
        2 LOADB                            R6 0
        3 NAMECALL                         R4 R4 K1 ["GenerateGUID"]
        5 CALL                             R4 2 1
        6 CONCAT                           R2 R3 R4
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R3 R4 K2 ["getTimestampMilliseconds"]
       10 CALL                             R3 0 1
       11 DUPTABLE                         R4 K7 [{"type", "id", "name", "input"}]
       12 LOADK                            R5 K8 ["tool_use"]
       13 SETTABLEKS                       R5 R4 K3 ["type"]
       15 SETTABLEKS                       R2 R4 K4 ["id"]
       17 GETTABLEKS                       R5 R0 K5 ["name"]
       19 SETTABLEKS                       R5 R4 K5 ["name"]
       21 GETTABLEKS                       R5 R0 K9 ["arguments"]
       23 SETTABLEKS                       R5 R4 K6 ["input"]
       25 GETUPVAL                         R6 2
       26 GETTABLEKS                       R5 R6 K10 ["onContentStart"]
       28 MOVE                             R6 R4
       29 CALL                             R5 1 1
       30 JUMPIFNOT                        R5 ; [+5]
       31 GETUPVAL                         R7 2
       32 GETTABLEKS                       R6 R7 K11 ["onContentFinished"]
       34 MOVE                             R7 R5
       35 CALL                             R6 1 0
       36 GETUPVAL                         R8 3
       37 GETTABLEKS                       R7 R8 K12 ["get"]
       39 CALL                             R7 0 1
       40 GETTABLEKS                       R6 R7 K13 ["EventLogger"]
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
       62 GETUPVAL                         R10 1
       63 GETTABLEKS                       R9 R10 K2 ["getTimestampMilliseconds"]
       65 CALL                             R9 0 1
       66 JUMPIFNOT                        R5 ; [+6]
       67 GETUPVAL                         R11 2
       68 GETTABLEKS                       R10 R11 K20 ["onPreExecuteToolUse"]
       70 MOVE                             R11 R5
       71 MOVE                             R12 R4
       72 CALL                             R10 2 0
       73 GETUPVAL                         R11 2
       74 JUMPIF                           R5 ; [+2]
       75 DUPCLOSURE                       R10 K21 [PROTO_1]
       76 JUMP                             ; [+7]
       77 NEWCLOSURE                       R10 P1
       78 CAPTURE                          VAL R2
       79 CAPTURE                          VAL R0
       80 CAPTURE                          VAL R3
       81 CAPTURE                          VAL R9
       82 CAPTURE                          VAL R11
       83 CAPTURE                          VAL R5
       84 NEWCLOSURE                       R11 P2
       85 CAPTURE                          VAL R10
       86 CAPTURE                          VAL R1
       87 CAPTURE                          UPVAL U7
       88 JUMPIFNOT                        R5 ; [+20]
       89 MOVE                             R12 R10
       90 LOADB                            R13 1
       91 DUPTABLE                         R14 K24 [{"content", "isError"}]
       92 NEWTABLE                         R15 0 1
       94 DUPTABLE                         R16 K26 [{"type", "text"}]
       95 LOADK                            R17 K25 ["text"]
       96 SETTABLEKS                       R17 R16 K3 ["type"]
       98 LOADK                            R17 K27 ["Tool call is still running asynchronously."]
       99 SETTABLEKS                       R17 R16 K25 ["text"]
      101 SETLIST                          R15 R16 1 [1]
      103 SETTABLEKS                       R15 R14 K22 ["content"]
      105 LOADB                            R15 0
      106 SETTABLEKS                       R15 R14 K23 ["isError"]
      108 CALL                             R12 2 0
      109 GETUPVAL                         R12 8
      110 CALL                             R12 0 1
      111 JUMPIFNOT                        R12 ; [+43]
      112 GETUPVAL                         R13 9
      113 FASTCALL2K                       ASSERT R13 K28 ; [+4]
      115 LOADK                            R14 K28 ["setSlashCommandCancel is not available"]
      116 GETIMPORT                        R12 K30 [assert]
      118 CALL                             R12 2 0
      119 GETUPVAL                         R13 10
      120 GETTABLEKS                       R12 R13 K31 ["new"]
      122 CALL                             R12 0 1
      123 DUPTABLE                         R13 K35 [{"resetTimeoutOnProgress", "onprogress", "signal"}]
      124 LOADB                            R14 1
      125 SETTABLEKS                       R14 R13 K32 ["resetTimeoutOnProgress"]
      127 NEWCLOSURE                       R14 P3
      128 CAPTURE                          UPVAL U11
      129 SETTABLEKS                       R14 R13 K33 ["onprogress"]
      131 SETTABLEKS                       R12 R13 K34 ["signal"]
      133 GETUPVAL                         R15 12
      134 GETTABLEKS                       R14 R15 K31 ["new"]
      136 NEWCLOSURE                       R15 P4
      137 CAPTURE                          VAL R12
      138 CAPTURE                          UPVAL U13
      139 CAPTURE                          UPVAL U14
      140 CAPTURE                          VAL R0
      141 CAPTURE                          VAL R13
      142 CAPTURE                          VAL R8
      143 CAPTURE                          UPVAL U9
      144 CAPTURE                          UPVAL U12
      145 CAPTURE                          UPVAL U15
      146 CAPTURE                          VAL R11
      147 CAPTURE                          VAL R10
      148 CAPTURE                          UPVAL U7
      149 CALL                             R14 1 1
      150 GETUPVAL                         R15 9
      151 NEWCLOSURE                       R16 P5
      152 CAPTURE                          VAL R14
      153 CALL                             R15 1 0
      154 RETURN                           R0 0
      155 DUPTABLE                         R12 K36 [{"resetTimeoutOnProgress"}]
      156 LOADB                            R13 1
      157 SETTABLEKS                       R13 R12 K32 ["resetTimeoutOnProgress"]
      159 GETUPVAL                         R13 13
      160 GETUPVAL                         R16 14
      161 GETTABLEKS                       R15 R16 K37 ["getMcpClientIdentifier"]
      163 CALL                             R15 0 1
      164 GETTABLEKS                       R16 R0 K5 ["name"]
      166 GETTABLEKS                       R17 R0 K9 ["arguments"]
      168 MOVE                             R18 R12
      169 MOVE                             R19 R8
      170 NAMECALL                         R13 R13 K38 ["callToolForClient"]
      172 CALL                             R13 6 1
      173 NEWCLOSURE                       R15 P6
      174 CAPTURE                          UPVAL U15
      175 CAPTURE                          VAL R11
      176 CAPTURE                          VAL R10
      177 CAPTURE                          UPVAL U7
      178 NAMECALL                         R13 R13 K39 ["andThen"]
      180 CALL                             R13 2 1
      181 NEWCLOSURE                       R15 P7
      182 CAPTURE                          UPVAL U15
      183 CAPTURE                          VAL R11
      184 CAPTURE                          VAL R10
      185 CAPTURE                          UPVAL U7
      186 NAMECALL                         R13 R13 K40 ["catch"]
      188 CALL                             R13 2 0
      189 RETURN                           R0 0

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
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+25]
        3 GETUPVAL                         R1 1
        4 JUMPIFNOT                        R1 ; [+23]
        5 JUMPIF                           R0 ; [+7]
        6 GETUPVAL                         R1 2
        7 LOADB                            R2 1
        8 CALL                             R1 1 0
        9 GETIMPORT                        R1 K1 [error]
       11 LOADK                            R2 K2 ["No initial tool spec generated for slash command chain."]
       12 CALL                             R1 1 0
       13 GETUPVAL                         R1 1
       14 GETIMPORT                        R2 K5 [table.create]
       16 LENGTH                           R4 R1
       17 ADDK                             R3 R4 K6 [1]
       18 CALL                             R2 1 1
       19 GETUPVAL                         R3 3
       20 MOVE                             R4 R0
       21 NEWCLOSURE                       R5 P0
       22 CAPTURE                          VAL R2
       23 CAPTURE                          VAL R1
       24 CAPTURE                          UPVAL U2
       25 CAPTURE                          UPVAL U3
       26 CALL                             R3 2 0
       27 RETURN                           R0 0
       28 JUMPIFNOT                        R0 ; [+4]
       29 GETUPVAL                         R1 3
       30 MOVE                             R2 R0
       31 CALL                             R1 1 0
       32 RETURN                           R0 0
       33 GETUPVAL                         R1 2
       34 LOADB                            R2 1
       35 CALL                             R1 1 0
       36 GETIMPORT                        R1 K1 [error]
       38 LOADK                            R2 K7 ["No tool spec generated for slash command and no tool chain defined."]
       39 CALL                             R1 1 0
       40 RETURN                           R0 0

PROTO_17:
        0 JUMPIFNOT                        R0 ; [+1]
        1 JUMPIF                           R1 ; [+1]
        2 RETURN                           R0 1
        3 GETIMPORT                        R2 K2 [table.clone]
        5 MOVE                             R3 R0
        6 CALL                             R2 1 1
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R3 R4 K3 ["join"]
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
       16 GETUPVAL                         R6 2
       17 GETTABLEKS                       R5 R6 K3 ["join"]
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
       22 CAPTURE                          UPVAL U14
       23 NEWCLOSURE                       R3 P1
       24 CAPTURE                          VAL R2
       25 CAPTURE                          UPVAL U6
       26 NEWCLOSURE                       R4 P2
       27 CAPTURE                          UPVAL U14
       28 CAPTURE                          UPVAL U15
       29 CAPTURE                          UPVAL U6
       30 CAPTURE                          VAL R2
       31 DUPCLOSURE                       R5 K1 [PROTO_17]
       32 CAPTURE                          UPVAL U16
       33 GETUPVAL                         R7 17
       34 FASTCALL2K                       ASSERT R7 K2 ; [+4]
       36 LOADK                            R8 K2 ["definition should always be available for slash commands"]
       37 GETIMPORT                        R6 K4 [assert]
       39 CALL                             R6 2 0
       40 GETUPVAL                         R6 18
       41 CALL                             R6 0 1
       42 JUMPIFNOT                        R6 ; [+79]
       43 GETUPVAL                         R7 17
       44 GETTABLEKS                       R6 R7 K5 ["getInputRequestArguments"]
       46 JUMPIFNOT                        R6 ; [+75]
       47 MOVE                             R7 R6
       48 CALL                             R7 0 1
       49 LOADNIL                          R8
       50 GETTABLEKS                       R9 R7 K6 ["propertyRows"]
       52 JUMPIFNOT                        R9 ; [+27]
       53 GETIMPORT                        R9 K9 [table.clone]
       55 GETTABLEKS                       R10 R7 K6 ["propertyRows"]
       57 CALL                             R9 1 1
       58 MOVE                             R8 R9
       59 MOVE                             R9 R8
       60 LOADNIL                          R10
       61 LOADNIL                          R11
       62 FORGPREP                         R9
       63 GETUPVAL                         R16 19
       64 GETTABLEKS                       R15 R16 K10 ["arguments"]
       66 GETTABLEKS                       R16 R13 K11 ["prop"]
       68 GETTABLE                         R14 R15 R16
       69 JUMPIFEQKNIL                     R14 ; [+8]
       71 GETIMPORT                        R15 K9 [table.clone]
       73 MOVE                             R16 R13
       74 CALL                             R15 1 1
       75 SETTABLEKS                       R14 R15 K12 ["initialValue"]
       77 SETTABLE                         R15 R8 R12
       78 FORGLOOP                         R9 2 ; [-16]
       80 LOADB                            R9 0
       81 DUPTABLE                         R10 K18 [{"type", "title", "description", "confirmButtonText", "propertyRows", "onContinue"}]
       82 LOADK                            R11 K19 ["input_requested"]
       83 SETTABLEKS                       R11 R10 K13 ["type"]
       85 GETUPVAL                         R12 20
       86 GETUPVAL                         R13 21
       87 CONCAT                           R11 R12 R13
       88 SETTABLEKS                       R11 R10 K14 ["title"]
       90 GETTABLEKS                       R11 R7 K15 ["description"]
       92 SETTABLEKS                       R11 R10 K15 ["description"]
       94 GETTABLEKS                       R11 R7 K16 ["confirmButtonText"]
       96 SETTABLEKS                       R11 R10 K16 ["confirmButtonText"]
       98 SETTABLEKS                       R8 R10 K6 ["propertyRows"]
      100 NEWCLOSURE                       R11 P4
      101 CAPTURE                          REF R9
      102 CAPTURE                          UPVAL U19
      103 CAPTURE                          UPVAL U16
      104 CAPTURE                          VAL R4
      105 SETTABLEKS                       R11 R10 K17 ["onContinue"]
      107 GETTABLEKS                       R11 R1 K20 ["onContentStart"]
      109 MOVE                             R12 R10
      110 CALL                             R11 1 1
      111 JUMPIFNOT                        R11 ; [+4]
      112 GETTABLEKS                       R12 R1 K21 ["onContentFinished"]
      114 MOVE                             R13 R11
      115 CALL                             R12 1 0
      116 GETUPVAL                         R12 6
      117 LOADB                            R13 1
      118 CALL                             R12 1 0
      119 CLOSEUPVALS                      R9
      120 RETURN                           R0 0
      121 CLOSEUPVALS                      R9
      122 MOVE                             R6 R4
      123 GETUPVAL                         R7 19
      124 CALL                             R6 1 0
      125 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["assistant"]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 CAPTURE                          UPVAL U5
        8 CAPTURE                          UPVAL U6
        9 CAPTURE                          UPVAL U7
       10 CAPTURE                          UPVAL U8
       11 CAPTURE                          UPVAL U9
       12 CAPTURE                          UPVAL U10
       13 CAPTURE                          UPVAL U11
       14 CAPTURE                          UPVAL U12
       15 CAPTURE                          VAL R0
       16 CAPTURE                          UPVAL U13
       17 CAPTURE                          UPVAL U14
       18 CAPTURE                          UPVAL U15
       19 CAPTURE                          UPVAL U16
       20 CAPTURE                          UPVAL U17
       21 CAPTURE                          UPVAL U18
       22 CAPTURE                          UPVAL U19
       23 CAPTURE                          UPVAL U20
       24 CAPTURE                          UPVAL U21
       25 CALL                             R1 2 0
       26 RETURN                           R0 0

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
       26 LOADNIL                          R4
       27 LOADNIL                          R5
       28 LOADNIL                          R6
       29 LOADNIL                          R7
       30 GETUPVAL                         R8 1
       31 CALL                             R8 0 1
       32 JUMPIFNOT                        R8 ; [+53]
       33 LENGTH                           R8 R3
       34 JUMPIFNOTEQKN                    R8 K4 [0] ; [+4]
       36 LOADB                            R8 0
       37 CLOSEUPVALS                      R4
       38 RETURN                           R8 1
       39 GETUPVAL                         R10 2
       40 NAMECALL                         R8 R3 K5 ["find"]
       42 CALL                             R8 2 1
       43 LOADNIL                          R9
       44 JUMPIFNOT                        R8 ; [+12]
       45 LOADN                            R12 1
       46 SUBK                             R13 R8 K3 [1]
       47 NAMECALL                         R10 R3 K2 ["sub"]
       49 CALL                             R10 3 1
       50 MOVE                             R6 R10
       51 ADDK                             R12 R8 K3 [1]
       52 NAMECALL                         R10 R3 K2 ["sub"]
       54 CALL                             R10 2 1
       55 MOVE                             R9 R10
       56 JUMP                             ; [+2]
       57 MOVE                             R6 R3
       58 LOADK                            R9 K6 [""]
       59 GETUPVAL                         R11 3
       60 GETTABLEKS                       R10 R11 K7 ["getSlashCommandTransformation"]
       62 MOVE                             R11 R6
       63 CALL                             R10 1 1
       64 GETUPVAL                         R12 3
       65 GETTABLEKS                       R11 R12 K8 ["getSlashCommandDefinition"]
       67 MOVE                             R12 R6
       68 CALL                             R11 1 1
       69 MOVE                             R7 R11
       70 JUMPIFNOT                        R7 ; [+1]
       71 JUMPIF                           R10 ; [+3]
       72 LOADB                            R11 0
       73 CLOSEUPVALS                      R4
       74 RETURN                           R11 1
       75 GETUPVAL                         R11 4
       76 GETTABLEKS                       R12 R0 K9 ["images"]
       78 CALL                             R11 1 1
       79 MOVE                             R12 R10
       80 MOVE                             R13 R9
       81 MOVE                             R14 R11
       82 CALL                             R12 2 2
       83 MOVE                             R4 R12
       84 MOVE                             R5 R13
       85 JUMP                             ; [+39]
       86 GETUPVAL                         R10 2
       87 NAMECALL                         R8 R3 K5 ["find"]
       89 CALL                             R8 2 1
       90 JUMPIF                           R8 ; [+3]
       91 LOADB                            R9 0
       92 CLOSEUPVALS                      R4
       93 RETURN                           R9 1
       94 LOADN                            R11 1
       95 SUBK                             R12 R8 K3 [1]
       96 NAMECALL                         R9 R3 K2 ["sub"]
       98 CALL                             R9 3 1
       99 MOVE                             R6 R9
      100 GETUPVAL                         R10 3
      101 GETTABLEKS                       R9 R10 K7 ["getSlashCommandTransformation"]
      103 MOVE                             R10 R6
      104 CALL                             R9 1 1
      105 GETUPVAL                         R11 3
      106 GETTABLEKS                       R10 R11 K8 ["getSlashCommandDefinition"]
      108 MOVE                             R11 R6
      109 CALL                             R10 1 1
      110 MOVE                             R7 R10
      111 JUMPIFNOT                        R7 ; [+1]
      112 JUMPIF                           R9 ; [+3]
      113 LOADB                            R10 0
      114 CLOSEUPVALS                      R4
      115 RETURN                           R10 1
      116 ADDK                             R12 R8 K3 [1]
      117 NAMECALL                         R10 R3 K2 ["sub"]
      119 CALL                             R10 2 1
      120 MOVE                             R11 R9
      121 MOVE                             R12 R10
      122 CALL                             R11 1 2
      123 MOVE                             R4 R11
      124 MOVE                             R5 R12
      125 GETUPVAL                         R8 5
      126 NEWCLOSURE                       R9 P0
      127 CAPTURE                          UPVAL U6
      128 CAPTURE                          UPVAL U7
      129 CAPTURE                          UPVAL U8
      130 CAPTURE                          UPVAL U9
      131 CAPTURE                          UPVAL U10
      132 CAPTURE                          UPVAL U11
      133 CAPTURE                          UPVAL U12
      134 CAPTURE                          VAL R2
      135 CAPTURE                          UPVAL U13
      136 CAPTURE                          UPVAL U14
      137 CAPTURE                          UPVAL U15
      138 CAPTURE                          UPVAL U16
      139 CAPTURE                          UPVAL U17
      140 CAPTURE                          UPVAL U18
      141 CAPTURE                          UPVAL U19
      142 CAPTURE                          REF R5
      143 CAPTURE                          UPVAL U20
      144 CAPTURE                          REF R7
      145 CAPTURE                          UPVAL U21
      146 CAPTURE                          REF R4
      147 CAPTURE                          UPVAL U0
      148 CAPTURE                          REF R6
      149 CALL                             R8 1 0
      150 LOADB                            R8 1
      151 CLOSEUPVALS                      R4
      152 RETURN                           R8 1

PROTO_22:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETUPVAL                         R1 1
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 2
        5 CALL                             R2 0 1
        6 GETUPVAL                         R4 3
        7 GETTABLEKS                       R3 R4 K0 ["useContext"]
        9 GETUPVAL                         R5 4
       10 GETTABLEKS                       R4 R5 K1 ["Context"]
       12 CALL                             R3 1 1
       13 GETTABLEKS                       R4 R3 K2 ["sessionId"]
       15 GETUPVAL                         R6 3
       16 GETTABLEKS                       R5 R6 K0 ["useContext"]
       18 GETUPVAL                         R7 5
       19 GETTABLEKS                       R6 R7 K1 ["Context"]
       21 CALL                             R5 1 1
       22 LOADNIL                          R6
       23 LOADNIL                          R7
       24 GETUPVAL                         R8 6
       25 CALL                             R8 0 1
       26 JUMPIFNOT                        R8 ; [+10]
       27 GETUPVAL                         R9 3
       28 GETTABLEKS                       R8 R9 K0 ["useContext"]
       30 GETUPVAL                         R10 7
       31 GETTABLEKS                       R9 R10 K1 ["Context"]
       33 CALL                             R8 1 1
       34 MOVE                             R6 R8
       35 GETTABLEKS                       R7 R6 K3 ["setSlashCommandCancel"]
       37 NEWCLOSURE                       R8 P0
       38 CAPTURE                          UPVAL U8
       39 CAPTURE                          UPVAL U9
       40 CAPTURE                          UPVAL U10
       41 CAPTURE                          UPVAL U11
       42 CAPTURE                          UPVAL U12
       43 CAPTURE                          VAL R2
       44 CAPTURE                          VAL R1
       45 CAPTURE                          VAL R0
       46 CAPTURE                          UPVAL U13
       47 CAPTURE                          UPVAL U14
       48 CAPTURE                          UPVAL U15
       49 CAPTURE                          UPVAL U16
       50 CAPTURE                          VAL R4
       51 CAPTURE                          UPVAL U6
       52 CAPTURE                          REF R7
       53 CAPTURE                          UPVAL U17
       54 CAPTURE                          VAL R5
       55 CAPTURE                          UPVAL U18
       56 CAPTURE                          UPVAL U19
       57 CAPTURE                          UPVAL U20
       58 CAPTURE                          UPVAL U21
       59 CAPTURE                          UPVAL U22
       60 GETUPVAL                         R10 3
       61 GETTABLEKS                       R9 R10 K4 ["useCallback"]
       63 MOVE                             R10 R8
       64 NEWTABLE                         R11 0 6
       66 MOVE                             R12 R0
       67 MOVE                             R13 R1
       68 MOVE                             R14 R2
       69 MOVE                             R15 R4
       70 GETUPVAL                         R17 6
       71 CALL                             R17 0 1
       72 JUMPIFNOT                        R17 ; [+2]
       73 MOVE                             R16 R5
       74 JUMP                             ; [+1]
       75 LOADNIL                          R16
       76 GETUPVAL                         R18 6
       77 CALL                             R18 0 1
       78 JUMPIFNOT                        R18 ; [+2]
       79 MOVE                             R17 R7
       80 JUMP                             ; [+1]
       81 LOADNIL                          R17
       82 SETLIST                          R11 R12 6 [1]
       84 CALL                             R9 2 -1
       85 CLOSEUPVALS                      R7
       86 RETURN                           R9 -1

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
       15 GETTABLEKS                       R4 R0 K10 ["Parent"]
       17 GETTABLEKS                       R3 R4 K11 ["Dash"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R5 R0 K12 ["Guest"]
       24 GETTABLEKS                       R4 R5 K13 ["Environment"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R6 R0 K14 ["Util"]
       31 GETTABLEKS                       R5 R6 K15 ["ImageContentStore"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETTABLEKS                       R9 R0 K16 ["Components"]
       38 GETTABLEKS                       R8 R9 K17 ["Contexts"]
       40 GETTABLEKS                       R7 R8 K18 ["DefaultLLMProvider"]
       42 GETTABLEKS                       R6 R7 K19 ["LLMPackageContextProvider"]
       44 CALL                             R5 1 1
       45 GETIMPORT                        R6 K9 [require]
       47 GETTABLEKS                       R10 R0 K16 ["Components"]
       49 GETTABLEKS                       R9 R10 K17 ["Contexts"]
       51 GETTABLEKS                       R8 R9 K18 ["DefaultLLMProvider"]
       53 GETTABLEKS                       R7 R8 K20 ["LLMProcessEvent"]
       55 CALL                             R6 1 1
       56 GETIMPORT                        R7 K9 [require]
       58 GETTABLEKS                       R9 R0 K10 ["Parent"]
       60 GETTABLEKS                       R8 R9 K21 ["ModelContextProtocol"]
       62 CALL                             R7 1 1
       63 GETIMPORT                        R8 K9 [require]
       65 GETTABLEKS                       R11 R0 K16 ["Components"]
       67 GETTABLEKS                       R10 R11 K17 ["Contexts"]
       69 GETTABLEKS                       R9 R10 K22 ["PacketReceivedContext"]
       71 CALL                             R8 1 1
       72 GETIMPORT                        R9 K9 [require]
       74 GETTABLEKS                       R11 R0 K10 ["Parent"]
       76 GETTABLEKS                       R10 R11 K23 ["Promise"]
       78 CALL                             R9 1 1
       79 GETIMPORT                        R10 K9 [require]
       81 GETTABLEKS                       R12 R0 K10 ["Parent"]
       83 GETTABLEKS                       R11 R12 K24 ["React"]
       85 CALL                             R10 1 1
       86 GETIMPORT                        R11 K9 [require]
       88 GETTABLEKS                       R14 R0 K16 ["Components"]
       90 GETTABLEKS                       R13 R14 K17 ["Contexts"]
       92 GETTABLEKS                       R12 R13 K25 ["SessionIdContext"]
       94 CALL                             R11 1 1
       95 GETIMPORT                        R12 K9 [require]
       97 GETTABLEKS                       R14 R0 K10 ["Parent"]
       99 GETTABLEKS                       R13 R14 K26 ["Signal"]
      101 CALL                             R12 1 1
      102 GETIMPORT                        R13 K9 [require]
      104 GETTABLEKS                       R15 R0 K14 ["Util"]
      106 GETTABLEKS                       R14 R15 K27 ["Time"]
      108 CALL                             R13 1 1
      109 GETIMPORT                        R14 K9 [require]
      111 GETTABLEKS                       R15 R0 K28 ["Types"]
      113 CALL                             R14 1 1
      114 GETIMPORT                        R15 K9 [require]
      116 GETTABLEKS                       R17 R0 K16 ["Components"]
      118 GETTABLEKS                       R16 R17 K29 ["UIToolRegistry"]
      120 CALL                             R15 1 1
      121 GETIMPORT                        R16 K9 [require]
      123 GETTABLEKS                       R18 R0 K30 ["Hooks"]
      125 GETTABLEKS                       R17 R18 K31 ["useGetContentObserver"]
      127 CALL                             R16 1 1
      128 GETIMPORT                        R17 K9 [require]
      130 GETTABLEKS                       R19 R0 K30 ["Hooks"]
      132 GETTABLEKS                       R18 R19 K32 ["useGetOrAddMessage"]
      134 CALL                             R17 1 1
      135 GETIMPORT                        R18 K9 [require]
      137 GETTABLEKS                       R20 R0 K30 ["Hooks"]
      139 GETTABLEKS                       R19 R20 K33 ["useWithClient"]
      141 CALL                             R18 1 1
      142 GETIMPORT                        R19 K9 [require]
      144 GETTABLEKS                       R21 R0 K34 ["Flags"]
      146 GETTABLEKS                       R20 R21 K35 ["FFlagAssistantMultipleChatPersistence"]
      148 CALL                             R19 1 1
      149 GETIMPORT                        R20 K9 [require]
      151 GETTABLEKS                       R22 R0 K34 ["Flags"]
      153 GETTABLEKS                       R21 R22 K36 ["FFlagAssistantSupportSlashCommandCancellation"]
      155 CALL                             R20 1 1
      156 GETIMPORT                        R21 K9 [require]
      158 GETTABLEKS                       R23 R0 K34 ["Flags"]
      160 GETTABLEKS                       R22 R23 K37 ["FFlagAssistantUseNewCreatorStoreTools"]
      162 CALL                             R21 1 1
      163 GETIMPORT                        R22 K9 [require]
      165 GETTABLEKS                       R24 R0 K34 ["Flags"]
      167 GETTABLEKS                       R23 R24 K38 ["FFlagAssistantUseNewMeshGenTool"]
      169 CALL                             R22 1 1
      170 GETIMPORT                        R23 K9 [require]
      172 GETTABLEKS                       R25 R0 K34 ["Flags"]
      174 GETTABLEKS                       R24 R25 K39 ["FFlagSlashCommandForImageRefine"]
      176 CALL                             R23 1 1
      177 GETTABLEKS                       R24 R15 K40 ["CommandPrefix"]
      179 GETTABLEKS                       R25 R15 K41 ["CommandDelimiter"]
      181 DUPCLOSURE                       R26 K42 [PROTO_0]
      182 CAPTURE                          VAL R4
      183 DUPCLOSURE                       R27 K43 [PROTO_3]
      184 DUPCLOSURE                       R28 K44 [PROTO_22]
      185 CAPTURE                          VAL R16
      186 CAPTURE                          VAL R17
      187 CAPTURE                          VAL R18
      188 CAPTURE                          VAL R10
      189 CAPTURE                          VAL R11
      190 CAPTURE                          VAL R8
      191 CAPTURE                          VAL R20
      192 CAPTURE                          VAL R5
      193 CAPTURE                          VAL R24
      194 CAPTURE                          VAL R23
      195 CAPTURE                          VAL R25
      196 CAPTURE                          VAL R15
      197 CAPTURE                          VAL R26
      198 CAPTURE                          VAL R1
      199 CAPTURE                          VAL R13
      200 CAPTURE                          VAL R3
      201 CAPTURE                          VAL R19
      202 CAPTURE                          VAL R12
      203 CAPTURE                          VAL R9
      204 CAPTURE                          VAL R14
      205 CAPTURE                          VAL R21
      206 CAPTURE                          VAL R2
      207 CAPTURE                          VAL R22
      208 RETURN                           R28 1
