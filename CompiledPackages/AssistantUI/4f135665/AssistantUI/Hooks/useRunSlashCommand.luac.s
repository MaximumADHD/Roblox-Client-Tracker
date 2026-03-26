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
        7 DUPTABLE                         R2 K6 [{"type", "id", "name", "input"}]
        8 LOADK                            R3 K7 ["tool_use"]
        9 SETTABLEKS                       R3 R2 K2 ["type"]
       11 SETTABLEKS                       R1 R2 K3 ["id"]
       13 GETUPVAL                         R4 1
       14 GETTABLEKS                       R3 R4 K4 ["name"]
       16 SETTABLEKS                       R3 R2 K4 ["name"]
       18 GETUPVAL                         R4 1
       19 GETTABLEKS                       R3 R4 K8 ["arguments"]
       21 SETTABLEKS                       R3 R2 K5 ["input"]
       23 GETUPVAL                         R3 2
       24 CALL                             R3 0 1
       25 GETTABLEKS                       R4 R3 K9 ["onNewMessage"]
       27 MOVE                             R5 R0
       28 CALL                             R4 1 0
       29 GETTABLEKS                       R4 R3 K10 ["onContentStart"]
       31 MOVE                             R5 R2
       32 CALL                             R4 1 1
       33 JUMPIFNOT                        R4 ; [+4]
       34 GETTABLEKS                       R5 R3 K11 ["onContentFinished"]
       36 MOVE                             R6 R4
       37 CALL                             R5 1 0
       38 GETUPVAL                         R7 3
       39 GETTABLEKS                       R6 R7 K12 ["get"]
       41 CALL                             R6 0 1
       42 GETTABLEKS                       R5 R6 K13 ["EventLogger"]
       44 GETUPVAL                         R7 4
       45 CALL                             R7 0 1
       46 JUMPIFNOT                        R7 ; [+2]
       47 MOVE                             R6 R0
       48 JUMP                             ; [+4]
       49 GETTABLEKS                       R6 R5 K14 ["getMessageGuid"]
       51 MOVE                             R7 R0
       52 CALL                             R6 1 1
       53 DUPTABLE                         R7 K19 [{"messageGuid", "sessionId", "messageId", "contentId"}]
       54 SETTABLEKS                       R6 R7 K15 ["messageGuid"]
       56 GETUPVAL                         R8 5
       57 SETTABLEKS                       R8 R7 K16 ["sessionId"]
       59 SETTABLEKS                       R0 R7 K17 ["messageId"]
       61 SETTABLEKS                       R4 R7 K18 ["contentId"]
       63 GETUPVAL                         R9 6
       64 GETTABLEKS                       R8 R9 K20 ["getTimestampMilliseconds"]
       66 CALL                             R8 0 1
       67 GETUPVAL                         R10 6
       68 GETTABLEKS                       R9 R10 K20 ["getTimestampMilliseconds"]
       70 CALL                             R9 0 1
       71 JUMPIFNOT                        R4 ; [+5]
       72 GETTABLEKS                       R10 R3 K21 ["onPreExecuteToolUse"]
       74 MOVE                             R11 R4
       75 MOVE                             R12 R2
       76 CALL                             R10 2 0
       77 GETUPVAL                         R11 1
       78 JUMPIF                           R4 ; [+2]
       79 DUPCLOSURE                       R10 K22 [PROTO_0]
       80 JUMP                             ; [+7]
       81 NEWCLOSURE                       R10 P1
       82 CAPTURE                          VAL R1
       83 CAPTURE                          VAL R11
       84 CAPTURE                          VAL R8
       85 CAPTURE                          VAL R9
       86 CAPTURE                          VAL R3
       87 CAPTURE                          VAL R4
       88 JUMPIFNOT                        R4 ; [+20]
       89 MOVE                             R11 R10
       90 LOADB                            R12 1
       91 DUPTABLE                         R13 K25 [{"content", "isError"}]
       92 NEWTABLE                         R14 0 1
       94 DUPTABLE                         R15 K27 [{"type", "text"}]
       95 LOADK                            R16 K26 ["text"]
       96 SETTABLEKS                       R16 R15 K2 ["type"]
       98 LOADK                            R16 K28 ["Tool call is still running asynchronously."]
       99 SETTABLEKS                       R16 R15 K26 ["text"]
      101 SETLIST                          R14 R15 1 [1]
      103 SETTABLEKS                       R14 R13 K23 ["content"]
      105 LOADB                            R14 0
      106 SETTABLEKS                       R14 R13 K24 ["isError"]
      108 CALL                             R11 2 0
      109 GETUPVAL                         R11 7
      110 CALL                             R11 0 1
      111 JUMPIFNOT                        R11 ; [+41]
      112 GETUPVAL                         R12 8
      113 FASTCALL2K                       ASSERT R12 K29 ; [+4]
      115 LOADK                            R13 K29 ["setSlashCommandCancel is not available"]
      116 GETIMPORT                        R11 K31 [assert]
      118 CALL                             R11 2 0
      119 GETUPVAL                         R12 9
      120 GETTABLEKS                       R11 R12 K32 ["new"]
      122 CALL                             R11 0 1
      123 DUPTABLE                         R12 K36 [{"resetTimeoutOnProgress", "onprogress", "signal"}]
      124 LOADB                            R13 1
      125 SETTABLEKS                       R13 R12 K33 ["resetTimeoutOnProgress"]
      127 NEWCLOSURE                       R13 P2
      128 CAPTURE                          UPVAL U10
      129 SETTABLEKS                       R13 R12 K34 ["onprogress"]
      131 SETTABLEKS                       R11 R12 K35 ["signal"]
      133 GETUPVAL                         R14 11
      134 GETTABLEKS                       R13 R14 K32 ["new"]
      136 NEWCLOSURE                       R14 P3
      137 CAPTURE                          VAL R11
      138 CAPTURE                          UPVAL U12
      139 CAPTURE                          UPVAL U13
      140 CAPTURE                          UPVAL U1
      141 CAPTURE                          VAL R12
      142 CAPTURE                          VAL R7
      143 CAPTURE                          UPVAL U8
      144 CAPTURE                          UPVAL U11
      145 CAPTURE                          VAL R10
      146 CAPTURE                          UPVAL U14
      147 CALL                             R13 1 1
      148 GETUPVAL                         R14 8
      149 NEWCLOSURE                       R15 P4
      150 CAPTURE                          VAL R13
      151 CALL                             R14 1 0
      152 RETURN                           R0 0
      153 DUPTABLE                         R11 K37 [{"resetTimeoutOnProgress"}]
      154 LOADB                            R12 1
      155 SETTABLEKS                       R12 R11 K33 ["resetTimeoutOnProgress"]
      157 GETUPVAL                         R12 12
      158 GETUPVAL                         R15 13
      159 GETTABLEKS                       R14 R15 K38 ["getMcpClientIdentifier"]
      161 CALL                             R14 0 1
      162 GETUPVAL                         R16 1
      163 GETTABLEKS                       R15 R16 K4 ["name"]
      165 GETUPVAL                         R17 1
      166 GETTABLEKS                       R16 R17 K8 ["arguments"]
      168 MOVE                             R17 R11
      169 MOVE                             R18 R7
      170 NAMECALL                         R12 R12 K39 ["callToolForClient"]
      172 CALL                             R12 6 1
      173 NEWCLOSURE                       R14 P5
      174 CAPTURE                          VAL R10
      175 CAPTURE                          UPVAL U14
      176 NAMECALL                         R12 R12 K40 ["andThen"]
      178 CALL                             R12 2 1
      179 NEWCLOSURE                       R14 P6
      180 CAPTURE                          VAL R10
      181 CAPTURE                          UPVAL U14
      182 NAMECALL                         R12 R12 K41 ["catch"]
      184 CALL                             R12 2 0
      185 RETURN                           R0 0

PROTO_10:
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
       18 CALL                             R1 2 0
       19 RETURN                           R0 0

PROTO_11:
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
       43 JUMPIF                           R6 ; [+2]
       44 LOADB                            R7 0
       45 RETURN                           R7 1
       46 ADDK                             R9 R4 K3 [1]
       47 NAMECALL                         R7 R3 K2 ["sub"]
       49 CALL                             R7 2 1
       50 MOVE                             R8 R6
       51 MOVE                             R9 R7
       52 CALL                             R8 1 1
       53 GETUPVAL                         R9 3
       54 NEWCLOSURE                       R10 P0
       55 CAPTURE                          UPVAL U4
       56 CAPTURE                          UPVAL U5
       57 CAPTURE                          VAL R8
       58 CAPTURE                          UPVAL U6
       59 CAPTURE                          UPVAL U7
       60 CAPTURE                          UPVAL U8
       61 CAPTURE                          UPVAL U9
       62 CAPTURE                          UPVAL U10
       63 CAPTURE                          UPVAL U11
       64 CAPTURE                          UPVAL U12
       65 CAPTURE                          UPVAL U13
       66 CAPTURE                          UPVAL U14
       67 CAPTURE                          UPVAL U15
       68 CAPTURE                          UPVAL U16
       69 CAPTURE                          VAL R2
       70 CALL                             R9 1 0
       71 LOADB                            R9 1
       72 RETURN                           R9 1

PROTO_12:
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
       43 CAPTURE                          UPVAL U11
       44 CAPTURE                          VAL R0
       45 CAPTURE                          UPVAL U12
       46 CAPTURE                          UPVAL U13
       47 CAPTURE                          VAL R4
       48 CAPTURE                          UPVAL U14
       49 CAPTURE                          UPVAL U6
       50 CAPTURE                          REF R7
       51 CAPTURE                          UPVAL U15
       52 CAPTURE                          VAL R5
       53 CAPTURE                          UPVAL U16
       54 CAPTURE                          UPVAL U17
       55 GETUPVAL                         R10 3
       56 GETTABLEKS                       R9 R10 K4 ["useCallback"]
       58 MOVE                             R10 R8
       59 NEWTABLE                         R11 0 6
       61 MOVE                             R12 R0
       62 MOVE                             R13 R1
       63 MOVE                             R14 R2
       64 MOVE                             R15 R4
       65 GETUPVAL                         R17 6
       66 CALL                             R17 0 1
       67 JUMPIFNOT                        R17 ; [+2]
       68 MOVE                             R16 R5
       69 JUMP                             ; [+1]
       70 LOADNIL                          R16
       71 GETUPVAL                         R18 6
       72 CALL                             R18 0 1
       73 JUMPIFNOT                        R18 ; [+2]
       74 MOVE                             R17 R7
       75 JUMP                             ; [+1]
       76 LOADNIL                          R17
       77 SETLIST                          R11 R12 6 [1]
       79 CALL                             R9 2 -1
       80 CLOSEUPVALS                      R7
       81 RETURN                           R9 -1

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
       15 GETTABLEKS                       R4 R0 K10 ["Guest"]
       17 GETTABLEKS                       R3 R4 K11 ["Environment"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R7 R0 K12 ["Components"]
       24 GETTABLEKS                       R6 R7 K13 ["Contexts"]
       26 GETTABLEKS                       R5 R6 K14 ["DefaultLLMProvider"]
       28 GETTABLEKS                       R4 R5 K15 ["LLMPackageContextProvider"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R4 K9 [require]
       33 GETTABLEKS                       R8 R0 K12 ["Components"]
       35 GETTABLEKS                       R7 R8 K13 ["Contexts"]
       37 GETTABLEKS                       R6 R7 K14 ["DefaultLLMProvider"]
       39 GETTABLEKS                       R5 R6 K16 ["LLMProcessEvent"]
       41 CALL                             R4 1 1
       42 GETIMPORT                        R5 K9 [require]
       44 GETTABLEKS                       R7 R0 K17 ["Parent"]
       46 GETTABLEKS                       R6 R7 K18 ["ModelContextProtocol"]
       48 CALL                             R5 1 1
       49 GETIMPORT                        R6 K9 [require]
       51 GETTABLEKS                       R9 R0 K12 ["Components"]
       53 GETTABLEKS                       R8 R9 K13 ["Contexts"]
       55 GETTABLEKS                       R7 R8 K19 ["PacketReceivedContext"]
       57 CALL                             R6 1 1
       58 GETIMPORT                        R7 K9 [require]
       60 GETTABLEKS                       R9 R0 K17 ["Parent"]
       62 GETTABLEKS                       R8 R9 K20 ["Promise"]
       64 CALL                             R7 1 1
       65 GETIMPORT                        R8 K9 [require]
       67 GETTABLEKS                       R10 R0 K17 ["Parent"]
       69 GETTABLEKS                       R9 R10 K21 ["React"]
       71 CALL                             R8 1 1
       72 GETIMPORT                        R9 K9 [require]
       74 GETTABLEKS                       R12 R0 K12 ["Components"]
       76 GETTABLEKS                       R11 R12 K13 ["Contexts"]
       78 GETTABLEKS                       R10 R11 K22 ["SessionIdContext"]
       80 CALL                             R9 1 1
       81 GETIMPORT                        R10 K9 [require]
       83 GETTABLEKS                       R12 R0 K17 ["Parent"]
       85 GETTABLEKS                       R11 R12 K23 ["Signal"]
       87 CALL                             R10 1 1
       88 GETIMPORT                        R11 K9 [require]
       90 GETTABLEKS                       R13 R0 K24 ["Util"]
       92 GETTABLEKS                       R12 R13 K25 ["Time"]
       94 CALL                             R11 1 1
       95 GETIMPORT                        R12 K9 [require]
       97 GETTABLEKS                       R13 R0 K26 ["Types"]
       99 CALL                             R12 1 1
      100 GETIMPORT                        R13 K9 [require]
      102 GETTABLEKS                       R15 R0 K12 ["Components"]
      104 GETTABLEKS                       R14 R15 K27 ["UIToolRegistry"]
      106 CALL                             R13 1 1
      107 GETIMPORT                        R14 K9 [require]
      109 GETTABLEKS                       R16 R0 K28 ["Hooks"]
      111 GETTABLEKS                       R15 R16 K29 ["useGetContentObserver"]
      113 CALL                             R14 1 1
      114 GETIMPORT                        R15 K9 [require]
      116 GETTABLEKS                       R17 R0 K28 ["Hooks"]
      118 GETTABLEKS                       R16 R17 K30 ["useGetOrAddMessage"]
      120 CALL                             R15 1 1
      121 GETIMPORT                        R16 K9 [require]
      123 GETTABLEKS                       R18 R0 K28 ["Hooks"]
      125 GETTABLEKS                       R17 R18 K31 ["useWithClient"]
      127 CALL                             R16 1 1
      128 GETIMPORT                        R17 K9 [require]
      130 GETTABLEKS                       R19 R0 K32 ["Flags"]
      132 GETTABLEKS                       R18 R19 K33 ["FFlagAssistantPersistConversations"]
      134 CALL                             R17 1 1
      135 GETIMPORT                        R18 K9 [require]
      137 GETTABLEKS                       R20 R0 K32 ["Flags"]
      139 GETTABLEKS                       R19 R20 K34 ["FFlagAssistantSupportSlashCommandCancellation"]
      141 CALL                             R18 1 1
      142 GETTABLEKS                       R19 R13 K35 ["CommandPrefix"]
      144 GETTABLEKS                       R20 R13 K36 ["CommandDelimiter"]
      146 DUPCLOSURE                       R21 K37 [PROTO_2]
      147 DUPCLOSURE                       R22 K38 [PROTO_12]
      148 CAPTURE                          VAL R14
      149 CAPTURE                          VAL R15
      150 CAPTURE                          VAL R16
      151 CAPTURE                          VAL R8
      152 CAPTURE                          VAL R9
      153 CAPTURE                          VAL R6
      154 CAPTURE                          VAL R18
      155 CAPTURE                          VAL R3
      156 CAPTURE                          VAL R19
      157 CAPTURE                          VAL R20
      158 CAPTURE                          VAL R13
      159 CAPTURE                          VAL R1
      160 CAPTURE                          VAL R2
      161 CAPTURE                          VAL R17
      162 CAPTURE                          VAL R11
      163 CAPTURE                          VAL R10
      164 CAPTURE                          VAL R7
      165 CAPTURE                          VAL R12
      166 RETURN                           R22 1
