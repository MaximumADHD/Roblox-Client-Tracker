PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
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

PROTO_2:
        0 JUMPIF                           R1 ; [+2]
        1 DUPCLOSURE                       R6 K0 [PROTO_0]
        2 RETURN                           R6 1
        3 NEWCLOSURE                       R6 P1
        4 CAPTURE                          VAL R2
        5 CAPTURE                          VAL R3
        6 CAPTURE                          VAL R4
        7 CAPTURE                          VAL R5
        8 CAPTURE                          VAL R0
        9 CAPTURE                          VAL R1
       10 RETURN                           R6 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["setLastPacketTime"]
        3 GETIMPORT                        R1 K3 [os.clock]
        5 CALL                             R1 0 -1
        6 CALL                             R0 -1 0
        7 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["user_requested_cancellation"]
        2 NAMECALL                         R0 R0 K1 ["Fire"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_5:
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
       31 JUMPIFNOTEQ                      R4 R6 ; [+6]
       33 GETUPVAL                         R6 8
       34 LOADB                            R7 1
       35 MOVE                             R8 R5
       36 CALL                             R6 2 0
       37 JUMP                             ; [+9]
       38 GETIMPORT                        R6 K8 [warn]
       40 LOADK                            R7 K9 ["Error calling tool:"]
       41 MOVE                             R8 R5
       42 CALL                             R6 2 0
       43 GETUPVAL                         R6 8
       44 LOADB                            R7 0
       45 LOADNIL                          R8
       46 CALL                             R6 2 0
       47 GETUPVAL                         R6 9
       48 LOADB                            R7 1
       49 CALL                             R6 1 0
       50 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["cancel"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 LOADB                            R2 1
        2 MOVE                             R3 R0
        3 CALL                             R1 2 0
        4 GETUPVAL                         R1 1
        5 LOADB                            R2 1
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_8:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R2 K2 ["Error calling tool:"]
        3 MOVE                             R3 R0
        4 CALL                             R1 2 0
        5 GETUPVAL                         R1 0
        6 LOADB                            R2 0
        7 LOADNIL                          R3
        8 CALL                             R1 2 0
        9 GETUPVAL                         R1 1
       10 LOADB                            R2 1
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_9:
        0 LOADK                            R2 K0 ["slash_command_"]
        1 GETUPVAL                         R3 0
        2 LOADB                            R5 0
        3 NAMECALL                         R3 R3 K1 ["GenerateGUID"]
        5 CALL                             R3 2 1
        6 CONCAT                           R1 R2 R3
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R2 R3 K2 ["getTimestampMilliseconds"]
       10 CALL                             R2 0 1
       11 DUPTABLE                         R3 K7 [{"type", "id", "name", "input"}]
       12 LOADK                            R4 K8 ["tool_use"]
       13 SETTABLEKS                       R4 R3 K3 ["type"]
       15 SETTABLEKS                       R1 R3 K4 ["id"]
       17 GETTABLEKS                       R4 R0 K5 ["name"]
       19 SETTABLEKS                       R4 R3 K5 ["name"]
       21 GETTABLEKS                       R4 R0 K9 ["arguments"]
       23 SETTABLEKS                       R4 R3 K6 ["input"]
       25 GETUPVAL                         R5 2
       26 GETTABLEKS                       R4 R5 K10 ["onContentStart"]
       28 MOVE                             R5 R3
       29 CALL                             R4 1 1
       30 JUMPIFNOT                        R4 ; [+5]
       31 GETUPVAL                         R6 2
       32 GETTABLEKS                       R5 R6 K11 ["onContentFinished"]
       34 MOVE                             R6 R4
       35 CALL                             R5 1 0
       36 GETUPVAL                         R7 3
       37 GETTABLEKS                       R6 R7 K12 ["get"]
       39 CALL                             R6 0 1
       40 GETTABLEKS                       R5 R6 K13 ["EventLogger"]
       42 GETUPVAL                         R7 4
       43 CALL                             R7 0 1
       44 JUMPIFNOT                        R7 ; [+2]
       45 GETUPVAL                         R6 5
       46 JUMP                             ; [+4]
       47 GETTABLEKS                       R6 R5 K14 ["getMessageGuid"]
       49 GETUPVAL                         R7 5
       50 CALL                             R6 1 1
       51 DUPTABLE                         R7 K19 [{"messageGuid", "sessionId", "messageId", "contentId"}]
       52 SETTABLEKS                       R6 R7 K15 ["messageGuid"]
       54 GETUPVAL                         R8 6
       55 SETTABLEKS                       R8 R7 K16 ["sessionId"]
       57 GETUPVAL                         R8 5
       58 SETTABLEKS                       R8 R7 K17 ["messageId"]
       60 SETTABLEKS                       R4 R7 K18 ["contentId"]
       62 GETUPVAL                         R9 1
       63 GETTABLEKS                       R8 R9 K2 ["getTimestampMilliseconds"]
       65 CALL                             R8 0 1
       66 JUMPIFNOT                        R4 ; [+6]
       67 GETUPVAL                         R10 2
       68 GETTABLEKS                       R9 R10 K20 ["onPreExecuteToolUse"]
       70 MOVE                             R10 R4
       71 MOVE                             R11 R3
       72 CALL                             R9 2 0
       73 GETUPVAL                         R10 2
       74 JUMPIF                           R4 ; [+2]
       75 DUPCLOSURE                       R9 K21 [PROTO_0]
       76 JUMP                             ; [+7]
       77 NEWCLOSURE                       R9 P1
       78 CAPTURE                          VAL R1
       79 CAPTURE                          VAL R0
       80 CAPTURE                          VAL R2
       81 CAPTURE                          VAL R8
       82 CAPTURE                          VAL R10
       83 CAPTURE                          VAL R4
       84 JUMPIFNOT                        R4 ; [+20]
       85 MOVE                             R10 R9
       86 LOADB                            R11 1
       87 DUPTABLE                         R12 K24 [{"content", "isError"}]
       88 NEWTABLE                         R13 0 1
       90 DUPTABLE                         R14 K26 [{"type", "text"}]
       91 LOADK                            R15 K25 ["text"]
       92 SETTABLEKS                       R15 R14 K3 ["type"]
       94 LOADK                            R15 K27 ["Tool call is still running asynchronously."]
       95 SETTABLEKS                       R15 R14 K25 ["text"]
       97 SETLIST                          R13 R14 1 [1]
       99 SETTABLEKS                       R13 R12 K22 ["content"]
      101 LOADB                            R13 0
      102 SETTABLEKS                       R13 R12 K23 ["isError"]
      104 CALL                             R10 2 0
      105 GETUPVAL                         R10 7
      106 CALL                             R10 0 1
      107 JUMPIFNOT                        R10 ; [+41]
      108 GETUPVAL                         R11 8
      109 FASTCALL2K                       ASSERT R11 K28 ; [+4]
      111 LOADK                            R12 K28 ["setSlashCommandCancel is not available"]
      112 GETIMPORT                        R10 K30 [assert]
      114 CALL                             R10 2 0
      115 GETUPVAL                         R11 9
      116 GETTABLEKS                       R10 R11 K31 ["new"]
      118 CALL                             R10 0 1
      119 DUPTABLE                         R11 K35 [{"resetTimeoutOnProgress", "onprogress", "signal"}]
      120 LOADB                            R12 1
      121 SETTABLEKS                       R12 R11 K32 ["resetTimeoutOnProgress"]
      123 NEWCLOSURE                       R12 P2
      124 CAPTURE                          UPVAL U10
      125 SETTABLEKS                       R12 R11 K33 ["onprogress"]
      127 SETTABLEKS                       R10 R11 K34 ["signal"]
      129 GETUPVAL                         R13 11
      130 GETTABLEKS                       R12 R13 K31 ["new"]
      132 NEWCLOSURE                       R13 P3
      133 CAPTURE                          VAL R10
      134 CAPTURE                          UPVAL U12
      135 CAPTURE                          UPVAL U13
      136 CAPTURE                          VAL R0
      137 CAPTURE                          VAL R11
      138 CAPTURE                          VAL R7
      139 CAPTURE                          UPVAL U8
      140 CAPTURE                          UPVAL U11
      141 CAPTURE                          VAL R9
      142 CAPTURE                          UPVAL U14
      143 CALL                             R12 1 1
      144 GETUPVAL                         R13 8
      145 NEWCLOSURE                       R14 P4
      146 CAPTURE                          VAL R12
      147 CALL                             R13 1 0
      148 RETURN                           R0 0
      149 DUPTABLE                         R10 K36 [{"resetTimeoutOnProgress"}]
      150 LOADB                            R11 1
      151 SETTABLEKS                       R11 R10 K32 ["resetTimeoutOnProgress"]
      153 GETUPVAL                         R11 12
      154 GETUPVAL                         R14 13
      155 GETTABLEKS                       R13 R14 K37 ["getMcpClientIdentifier"]
      157 CALL                             R13 0 1
      158 GETTABLEKS                       R14 R0 K5 ["name"]
      160 GETTABLEKS                       R15 R0 K9 ["arguments"]
      162 MOVE                             R16 R10
      163 MOVE                             R17 R7
      164 NAMECALL                         R11 R11 K38 ["callToolForClient"]
      166 CALL                             R11 6 1
      167 NEWCLOSURE                       R13 P5
      168 CAPTURE                          VAL R9
      169 CAPTURE                          UPVAL U14
      170 NAMECALL                         R11 R11 K39 ["andThen"]
      172 CALL                             R11 2 1
      173 NEWCLOSURE                       R13 P6
      174 CAPTURE                          VAL R9
      175 CAPTURE                          UPVAL U14
      176 NAMECALL                         R11 R11 K40 ["catch"]
      178 CALL                             R11 2 0
      179 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+1]
        2 RETURN                           R0 0
        3 LOADB                            R2 1
        4 SETUPVAL                         R2 0
        5 JUMPIFNOT                        R0 ; [+17]
        6 GETIMPORT                        R2 K2 [table.clone]
        8 GETUPVAL                         R3 1
        9 CALL                             R2 1 1
       10 JUMPIFNOT                        R1 ; [+9]
       11 GETUPVAL                         R4 2
       12 GETTABLEKS                       R3 R4 K3 ["join"]
       14 GETTABLEKS                       R4 R2 K4 ["arguments"]
       16 MOVE                             R5 R1
       17 CALL                             R3 2 1
       18 SETTABLEKS                       R3 R2 K4 ["arguments"]
       20 GETUPVAL                         R3 3
       21 MOVE                             R4 R2
       22 CALL                             R3 1 0
       23 RETURN                           R0 0

PROTO_11:
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
       22 GETUPVAL                         R3 14
       23 CALL                             R3 0 1
       24 JUMPIFNOT                        R3 ; [+79]
       25 GETUPVAL                         R4 15
       26 GETTABLEKS                       R3 R4 K1 ["getInputRequestArguments"]
       28 JUMPIFNOT                        R3 ; [+75]
       29 MOVE                             R4 R3
       30 CALL                             R4 0 1
       31 LOADNIL                          R5
       32 GETTABLEKS                       R6 R4 K2 ["propertyRows"]
       34 JUMPIFNOT                        R6 ; [+27]
       35 GETIMPORT                        R6 K5 [table.clone]
       37 GETTABLEKS                       R7 R4 K2 ["propertyRows"]
       39 CALL                             R6 1 1
       40 MOVE                             R5 R6
       41 MOVE                             R6 R5
       42 LOADNIL                          R7
       43 LOADNIL                          R8
       44 FORGPREP                         R6
       45 GETUPVAL                         R13 16
       46 GETTABLEKS                       R12 R13 K6 ["arguments"]
       48 GETTABLEKS                       R13 R10 K7 ["prop"]
       50 GETTABLE                         R11 R12 R13
       51 JUMPIFEQKNIL                     R11 ; [+8]
       53 GETIMPORT                        R12 K5 [table.clone]
       55 MOVE                             R13 R10
       56 CALL                             R12 1 1
       57 SETTABLEKS                       R11 R12 K8 ["initialValue"]
       59 SETTABLE                         R12 R5 R9
       60 FORGLOOP                         R6 2 ; [-16]
       62 LOADB                            R6 0
       63 DUPTABLE                         R7 K14 [{"type", "title", "description", "confirmButtonText", "propertyRows", "onContinue"}]
       64 LOADK                            R8 K15 ["input_requested"]
       65 SETTABLEKS                       R8 R7 K9 ["type"]
       67 GETUPVAL                         R9 17
       68 GETUPVAL                         R10 18
       69 CONCAT                           R8 R9 R10
       70 SETTABLEKS                       R8 R7 K10 ["title"]
       72 GETTABLEKS                       R8 R4 K11 ["description"]
       74 SETTABLEKS                       R8 R7 K11 ["description"]
       76 GETTABLEKS                       R8 R4 K12 ["confirmButtonText"]
       78 SETTABLEKS                       R8 R7 K12 ["confirmButtonText"]
       80 SETTABLEKS                       R5 R7 K2 ["propertyRows"]
       82 NEWCLOSURE                       R8 P1
       83 CAPTURE                          REF R6
       84 CAPTURE                          UPVAL U16
       85 CAPTURE                          UPVAL U19
       86 CAPTURE                          VAL R2
       87 SETTABLEKS                       R8 R7 K13 ["onContinue"]
       89 GETTABLEKS                       R8 R1 K16 ["onContentStart"]
       91 MOVE                             R9 R7
       92 CALL                             R8 1 1
       93 JUMPIFNOT                        R8 ; [+4]
       94 GETTABLEKS                       R9 R1 K17 ["onContentFinished"]
       96 MOVE                             R10 R8
       97 CALL                             R9 1 0
       98 GETUPVAL                         R9 13
       99 LOADB                            R10 1
      100 CALL                             R9 1 0
      101 CLOSEUPVALS                      R6
      102 RETURN                           R0 0
      103 CLOSEUPVALS                      R6
      104 MOVE                             R3 R2
      105 GETUPVAL                         R4 16
      106 CALL                             R3 1 0
      107 RETURN                           R0 0

PROTO_12:
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
       14 CAPTURE                          VAL R0
       15 CAPTURE                          UPVAL U12
       16 CAPTURE                          UPVAL U13
       17 CAPTURE                          UPVAL U14
       18 CAPTURE                          UPVAL U15
       19 CAPTURE                          UPVAL U16
       20 CAPTURE                          UPVAL U17
       21 CAPTURE                          UPVAL U18
       22 CAPTURE                          UPVAL U19
       23 CALL                             R1 2 0
       24 RETURN                           R0 0

PROTO_13:
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
       26 GETUPVAL                         R6 1
       27 NAMECALL                         R4 R3 K4 ["find"]
       29 CALL                             R4 2 1
       30 JUMPIF                           R4 ; [+2]
       31 LOADB                            R5 0
       32 RETURN                           R5 1
       33 LOADN                            R7 1
       34 SUBK                             R8 R4 K3 [1]
       35 NAMECALL                         R5 R3 K2 ["sub"]
       37 CALL                             R5 3 1
       38 GETUPVAL                         R7 2
       39 GETTABLEKS                       R6 R7 K5 ["getSlashCommandTransformation"]
       41 MOVE                             R7 R5
       42 CALL                             R6 1 1
       43 GETUPVAL                         R8 2
       44 GETTABLEKS                       R7 R8 K6 ["getSlashCommandDefinition"]
       46 MOVE                             R8 R5
       47 CALL                             R7 1 1
       48 JUMPIFNOT                        R6 ; [+1]
       49 JUMPIF                           R7 ; [+2]
       50 LOADB                            R8 0
       51 RETURN                           R8 1
       52 ADDK                             R10 R4 K3 [1]
       53 NAMECALL                         R8 R3 K2 ["sub"]
       55 CALL                             R8 2 1
       56 MOVE                             R9 R6
       57 MOVE                             R10 R8
       58 CALL                             R9 1 1
       59 GETUPVAL                         R10 3
       60 NEWCLOSURE                       R11 P0
       61 CAPTURE                          UPVAL U4
       62 CAPTURE                          UPVAL U5
       63 CAPTURE                          UPVAL U6
       64 CAPTURE                          UPVAL U7
       65 CAPTURE                          UPVAL U8
       66 CAPTURE                          UPVAL U9
       67 CAPTURE                          UPVAL U10
       68 CAPTURE                          UPVAL U11
       69 CAPTURE                          UPVAL U12
       70 CAPTURE                          UPVAL U13
       71 CAPTURE                          UPVAL U14
       72 CAPTURE                          UPVAL U15
       73 CAPTURE                          UPVAL U16
       74 CAPTURE                          VAL R2
       75 CAPTURE                          UPVAL U17
       76 CAPTURE                          VAL R7
       77 CAPTURE                          VAL R9
       78 CAPTURE                          UPVAL U0
       79 CAPTURE                          VAL R5
       80 CAPTURE                          UPVAL U18
       81 CALL                             R10 1 0
       82 LOADB                            R10 1
       83 RETURN                           R10 1

PROTO_14:
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
       41 CAPTURE                          VAL R2
       42 CAPTURE                          VAL R1
       43 CAPTURE                          VAL R0
       44 CAPTURE                          UPVAL U11
       45 CAPTURE                          UPVAL U12
       46 CAPTURE                          UPVAL U13
       47 CAPTURE                          UPVAL U14
       48 CAPTURE                          VAL R4
       49 CAPTURE                          UPVAL U6
       50 CAPTURE                          REF R7
       51 CAPTURE                          UPVAL U15
       52 CAPTURE                          VAL R5
       53 CAPTURE                          UPVAL U16
       54 CAPTURE                          UPVAL U17
       55 CAPTURE                          UPVAL U18
       56 CAPTURE                          UPVAL U19
       57 GETUPVAL                         R10 3
       58 GETTABLEKS                       R9 R10 K4 ["useCallback"]
       60 MOVE                             R10 R8
       61 NEWTABLE                         R11 0 6
       63 MOVE                             R12 R0
       64 MOVE                             R13 R1
       65 MOVE                             R14 R2
       66 MOVE                             R15 R4
       67 GETUPVAL                         R17 6
       68 CALL                             R17 0 1
       69 JUMPIFNOT                        R17 ; [+2]
       70 MOVE                             R16 R5
       71 JUMP                             ; [+1]
       72 LOADNIL                          R16
       73 GETUPVAL                         R18 6
       74 CALL                             R18 0 1
       75 JUMPIFNOT                        R18 ; [+2]
       76 MOVE                             R17 R7
       77 JUMP                             ; [+1]
       78 LOADNIL                          R17
       79 SETLIST                          R11 R12 6 [1]
       81 CALL                             R9 2 -1
       82 CLOSEUPVALS                      R7
       83 RETURN                           R9 -1

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
       29 GETTABLEKS                       R8 R0 K14 ["Components"]
       31 GETTABLEKS                       R7 R8 K15 ["Contexts"]
       33 GETTABLEKS                       R6 R7 K16 ["DefaultLLMProvider"]
       35 GETTABLEKS                       R5 R6 K17 ["LLMPackageContextProvider"]
       37 CALL                             R4 1 1
       38 GETIMPORT                        R5 K9 [require]
       40 GETTABLEKS                       R9 R0 K14 ["Components"]
       42 GETTABLEKS                       R8 R9 K15 ["Contexts"]
       44 GETTABLEKS                       R7 R8 K16 ["DefaultLLMProvider"]
       46 GETTABLEKS                       R6 R7 K18 ["LLMProcessEvent"]
       48 CALL                             R5 1 1
       49 GETIMPORT                        R6 K9 [require]
       51 GETTABLEKS                       R8 R0 K10 ["Parent"]
       53 GETTABLEKS                       R7 R8 K19 ["ModelContextProtocol"]
       55 CALL                             R6 1 1
       56 GETIMPORT                        R7 K9 [require]
       58 GETTABLEKS                       R10 R0 K14 ["Components"]
       60 GETTABLEKS                       R9 R10 K15 ["Contexts"]
       62 GETTABLEKS                       R8 R9 K20 ["PacketReceivedContext"]
       64 CALL                             R7 1 1
       65 GETIMPORT                        R8 K9 [require]
       67 GETTABLEKS                       R10 R0 K10 ["Parent"]
       69 GETTABLEKS                       R9 R10 K21 ["Promise"]
       71 CALL                             R8 1 1
       72 GETIMPORT                        R9 K9 [require]
       74 GETTABLEKS                       R11 R0 K10 ["Parent"]
       76 GETTABLEKS                       R10 R11 K22 ["React"]
       78 CALL                             R9 1 1
       79 GETIMPORT                        R10 K9 [require]
       81 GETTABLEKS                       R13 R0 K14 ["Components"]
       83 GETTABLEKS                       R12 R13 K15 ["Contexts"]
       85 GETTABLEKS                       R11 R12 K23 ["SessionIdContext"]
       87 CALL                             R10 1 1
       88 GETIMPORT                        R11 K9 [require]
       90 GETTABLEKS                       R13 R0 K10 ["Parent"]
       92 GETTABLEKS                       R12 R13 K24 ["Signal"]
       94 CALL                             R11 1 1
       95 GETIMPORT                        R12 K9 [require]
       97 GETTABLEKS                       R14 R0 K25 ["Util"]
       99 GETTABLEKS                       R13 R14 K26 ["Time"]
      101 CALL                             R12 1 1
      102 GETIMPORT                        R13 K9 [require]
      104 GETTABLEKS                       R14 R0 K27 ["Types"]
      106 CALL                             R13 1 1
      107 GETIMPORT                        R14 K9 [require]
      109 GETTABLEKS                       R16 R0 K14 ["Components"]
      111 GETTABLEKS                       R15 R16 K28 ["UIToolRegistry"]
      113 CALL                             R14 1 1
      114 GETIMPORT                        R15 K9 [require]
      116 GETTABLEKS                       R17 R0 K29 ["Hooks"]
      118 GETTABLEKS                       R16 R17 K30 ["useGetContentObserver"]
      120 CALL                             R15 1 1
      121 GETIMPORT                        R16 K9 [require]
      123 GETTABLEKS                       R18 R0 K29 ["Hooks"]
      125 GETTABLEKS                       R17 R18 K31 ["useGetOrAddMessage"]
      127 CALL                             R16 1 1
      128 GETIMPORT                        R17 K9 [require]
      130 GETTABLEKS                       R19 R0 K29 ["Hooks"]
      132 GETTABLEKS                       R18 R19 K32 ["useWithClient"]
      134 CALL                             R17 1 1
      135 GETIMPORT                        R18 K9 [require]
      137 GETTABLEKS                       R20 R0 K33 ["Flags"]
      139 GETTABLEKS                       R19 R20 K34 ["FFlagAssistantPersistConversations"]
      141 CALL                             R18 1 1
      142 GETIMPORT                        R19 K9 [require]
      144 GETTABLEKS                       R21 R0 K33 ["Flags"]
      146 GETTABLEKS                       R20 R21 K35 ["FFlagAssistantSupportSlashCommandCancellation"]
      148 CALL                             R19 1 1
      149 GETIMPORT                        R20 K9 [require]
      151 GETTABLEKS                       R22 R0 K33 ["Flags"]
      153 GETTABLEKS                       R21 R22 K36 ["FFlagAssistantUseNewMeshGenTool"]
      155 CALL                             R20 1 1
      156 GETTABLEKS                       R21 R14 K37 ["CommandPrefix"]
      158 GETTABLEKS                       R22 R14 K38 ["CommandDelimiter"]
      160 DUPCLOSURE                       R23 K39 [PROTO_2]
      161 DUPCLOSURE                       R24 K40 [PROTO_14]
      162 CAPTURE                          VAL R15
      163 CAPTURE                          VAL R16
      164 CAPTURE                          VAL R17
      165 CAPTURE                          VAL R9
      166 CAPTURE                          VAL R10
      167 CAPTURE                          VAL R7
      168 CAPTURE                          VAL R19
      169 CAPTURE                          VAL R4
      170 CAPTURE                          VAL R21
      171 CAPTURE                          VAL R22
      172 CAPTURE                          VAL R14
      173 CAPTURE                          VAL R1
      174 CAPTURE                          VAL R12
      175 CAPTURE                          VAL R3
      176 CAPTURE                          VAL R18
      177 CAPTURE                          VAL R11
      178 CAPTURE                          VAL R8
      179 CAPTURE                          VAL R13
      180 CAPTURE                          VAL R20
      181 CAPTURE                          VAL R2
      182 RETURN                           R24 1
