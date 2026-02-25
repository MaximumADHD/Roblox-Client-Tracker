PROTO_0:
        0 GETIMPORT                        R1 K2 [DateTime.now]
        2 CALL                             R1 0 1
        3 GETTABLEKS                       R0 R1 K3 ["UnixTimestampMillis"]
        5 RETURN                           R0 1

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
        0 GETUPVAL                         R7 0
        1 CALL                             R7 0 1
        2 FASTCALL2K                       ASSERT R7 K0 ; [+4]
        4 LOADK                            R8 K0 ["FFlagMCPAssistantFixSlashCommandToolResult must be enabled to use getSetToolResultFn"]
        5 GETIMPORT                        R6 K2 [assert]
        7 CALL                             R6 2 0
        8 JUMPIF                           R1 ; [+2]
        9 DUPCLOSURE                       R6 K3 [PROTO_1]
       10 RETURN                           R6 1
       11 NEWCLOSURE                       R6 P1
       12 CAPTURE                          VAL R2
       13 CAPTURE                          VAL R3
       14 CAPTURE                          VAL R4
       15 CAPTURE                          VAL R5
       16 CAPTURE                          VAL R0
       17 CAPTURE                          VAL R1
       18 RETURN                           R6 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+4]
        3 GETUPVAL                         R1 1
        4 LOADB                            R2 1
        5 MOVE                             R3 R0
        6 CALL                             R1 2 0
        7 GETUPVAL                         R1 2
        8 LOADB                            R2 1
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R2 K2 ["Error calling tool:"]
        3 MOVE                             R3 R0
        4 CALL                             R1 2 0
        5 GETUPVAL                         R1 0
        6 CALL                             R1 0 1
        7 JUMPIFNOT                        R1 ; [+4]
        8 GETUPVAL                         R1 1
        9 LOADB                            R2 0
       10 LOADNIL                          R3
       11 CALL                             R1 2 0
       12 GETUPVAL                         R1 2
       13 LOADB                            R2 1
       14 CALL                             R1 1 0
       15 RETURN                           R0 0

PROTO_6:
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
       44 GETTABLEKS                       R6 R5 K14 ["getMessageGuid"]
       46 MOVE                             R7 R0
       47 CALL                             R6 1 1
       48 DUPTABLE                         R7 K16 [{"resetTimeoutOnProgress"}]
       49 LOADB                            R8 1
       50 SETTABLEKS                       R8 R7 K15 ["resetTimeoutOnProgress"]
       52 DUPTABLE                         R8 K21 [{"messageGuid", "sessionId", "messageId", "contentId"}]
       53 SETTABLEKS                       R6 R8 K17 ["messageGuid"]
       55 GETUPVAL                         R9 4
       56 SETTABLEKS                       R9 R8 K18 ["sessionId"]
       58 SETTABLEKS                       R0 R8 K19 ["messageId"]
       60 SETTABLEKS                       R4 R8 K20 ["contentId"]
       62 GETIMPORT                        R10 K24 [DateTime.now]
       64 CALL                             R10 0 1
       65 GETTABLEKS                       R9 R10 K25 ["UnixTimestampMillis"]
       67 GETIMPORT                        R11 K24 [DateTime.now]
       69 CALL                             R11 0 1
       70 GETTABLEKS                       R10 R11 K25 ["UnixTimestampMillis"]
       72 JUMPIFNOT                        R4 ; [+5]
       73 GETTABLEKS                       R11 R3 K26 ["onPreExecuteToolUse"]
       75 MOVE                             R12 R4
       76 MOVE                             R13 R2
       77 CALL                             R11 2 0
       78 LOADNIL                          R11
       79 GETUPVAL                         R12 5
       80 CALL                             R12 0 1
       81 JUMPIFNOT                        R12 ; [+19]
       82 GETUPVAL                         R12 1
       83 GETUPVAL                         R14 5
       84 CALL                             R14 0 1
       85 FASTCALL2K                       ASSERT R14 K27 ; [+4]
       87 LOADK                            R15 K27 ["FFlagMCPAssistantFixSlashCommandToolResult must be enabled to use getSetToolResultFn"]
       88 GETIMPORT                        R13 K29 [assert]
       90 CALL                             R13 2 0
       91 JUMPIF                           R4 ; [+2]
       92 DUPCLOSURE                       R11 K30 [PROTO_1]
       93 JUMP                             ; [+7]
       94 NEWCLOSURE                       R11 P1
       95 CAPTURE                          VAL R1
       96 CAPTURE                          VAL R12
       97 CAPTURE                          VAL R9
       98 CAPTURE                          VAL R10
       99 CAPTURE                          VAL R3
      100 CAPTURE                          VAL R4
      101 JUMPIFNOT                        R4 ; [+60]
      102 GETUPVAL                         R12 5
      103 CALL                             R12 0 1
      104 JUMPIFNOT                        R12 ; [+21]
      105 MOVE                             R12 R11
      106 LOADB                            R13 1
      107 DUPTABLE                         R14 K33 [{"content", "isError"}]
      108 NEWTABLE                         R15 0 1
      110 DUPTABLE                         R16 K35 [{"type", "text"}]
      111 LOADK                            R17 K34 ["text"]
      112 SETTABLEKS                       R17 R16 K2 ["type"]
      114 LOADK                            R17 K36 ["Tool call is still running asynchronously."]
      115 SETTABLEKS                       R17 R16 K34 ["text"]
      117 SETLIST                          R15 R16 1 [1]
      119 SETTABLEKS                       R15 R14 K31 ["content"]
      121 LOADB                            R15 0
      122 SETTABLEKS                       R15 R14 K32 ["isError"]
      124 CALL                             R12 2 0
      125 JUMP                             ; [+36]
      126 DUPTABLE                         R12 K39 [{"type", "id", "name", "content", "isError", "startTime", "startTimeAfterConfirmation"}]
      127 LOADK                            R13 K40 ["tool_result"]
      128 SETTABLEKS                       R13 R12 K2 ["type"]
      130 SETTABLEKS                       R1 R12 K3 ["id"]
      132 GETUPVAL                         R14 1
      133 GETTABLEKS                       R13 R14 K4 ["name"]
      135 SETTABLEKS                       R13 R12 K4 ["name"]
      137 NEWTABLE                         R13 0 1
      139 DUPTABLE                         R14 K35 [{"type", "text"}]
      140 LOADK                            R15 K34 ["text"]
      141 SETTABLEKS                       R15 R14 K2 ["type"]
      143 LOADK                            R15 K41 ["Ran tool call asynchronously."]
      144 SETTABLEKS                       R15 R14 K34 ["text"]
      146 SETLIST                          R13 R14 1 [1]
      148 SETTABLEKS                       R13 R12 K31 ["content"]
      150 LOADB                            R13 0
      151 SETTABLEKS                       R13 R12 K32 ["isError"]
      153 SETTABLEKS                       R9 R12 K37 ["startTime"]
      155 SETTABLEKS                       R10 R12 K38 ["startTimeAfterConfirmation"]
      157 GETTABLEKS                       R13 R3 K42 ["onToolResult"]
      159 MOVE                             R14 R4
      160 MOVE                             R15 R12
      161 CALL                             R13 2 0
      162 GETUPVAL                         R12 6
      163 GETUPVAL                         R15 7
      164 GETTABLEKS                       R14 R15 K43 ["getMcpClientIdentifier"]
      166 CALL                             R14 0 1
      167 GETUPVAL                         R16 1
      168 GETTABLEKS                       R15 R16 K4 ["name"]
      170 GETUPVAL                         R17 1
      171 GETTABLEKS                       R16 R17 K8 ["arguments"]
      173 MOVE                             R17 R7
      174 MOVE                             R18 R8
      175 NAMECALL                         R12 R12 K44 ["callToolForClient"]
      177 CALL                             R12 6 1
      178 NEWCLOSURE                       R14 P2
      179 CAPTURE                          UPVAL U5
      180 CAPTURE                          REF R11
      181 CAPTURE                          UPVAL U8
      182 NAMECALL                         R12 R12 K45 ["andThen"]
      184 CALL                             R12 2 1
      185 NEWCLOSURE                       R14 P3
      186 CAPTURE                          UPVAL U5
      187 CAPTURE                          REF R11
      188 CAPTURE                          UPVAL U8
      189 NAMECALL                         R12 R12 K46 ["catch"]
      191 CALL                             R12 2 0
      192 CLOSEUPVALS                      R11
      193 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_8:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R2 K2 ["Error calling tool:"]
        3 MOVE                             R3 R0
        4 CALL                             R1 2 0
        5 GETUPVAL                         R1 0
        6 LOADB                            R2 1
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+14]
        3 GETUPVAL                         R1 1
        4 LOADK                            R2 K0 ["assistant"]
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 CAPTURE                          UPVAL U5
       10 CAPTURE                          UPVAL U6
       11 CAPTURE                          UPVAL U7
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U8
       14 CAPTURE                          UPVAL U9
       15 CALL                             R1 2 0
       16 RETURN                           R0 0
       17 GETUPVAL                         R4 8
       18 GETTABLEKS                       R3 R4 K1 ["getMcpClientIdentifier"]
       20 CALL                             R3 0 1
       21 GETUPVAL                         R5 3
       22 GETTABLEKS                       R4 R5 K2 ["name"]
       24 GETUPVAL                         R6 3
       25 GETTABLEKS                       R5 R6 K3 ["arguments"]
       27 NAMECALL                         R1 R0 K4 ["callToolForClient"]
       29 CALL                             R1 4 1
       30 NEWCLOSURE                       R3 P1
       31 CAPTURE                          UPVAL U9
       32 NAMECALL                         R1 R1 K5 ["andThen"]
       34 CALL                             R1 2 1
       35 NEWCLOSURE                       R3 P2
       36 CAPTURE                          UPVAL U9
       37 NAMECALL                         R1 R1 K6 ["catch"]
       39 CALL                             R1 2 0
       40 RETURN                           R0 0

PROTO_10:
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
       57 CAPTURE                          UPVAL U6
       58 CAPTURE                          VAL R8
       59 CAPTURE                          UPVAL U7
       60 CAPTURE                          UPVAL U8
       61 CAPTURE                          UPVAL U9
       62 CAPTURE                          UPVAL U10
       63 CAPTURE                          UPVAL U11
       64 CAPTURE                          VAL R2
       65 CALL                             R9 1 0
       66 LOADB                            R9 1
       67 RETURN                           R9 1

PROTO_11:
        0 LOADNIL                          R0
        1 LOADNIL                          R1
        2 GETUPVAL                         R2 0
        3 CALL                             R2 0 1
        4 GETUPVAL                         R3 1
        5 CALL                             R3 0 1
        6 JUMPIFNOT                        R3 ; [+6]
        7 GETUPVAL                         R3 2
        8 CALL                             R3 0 1
        9 MOVE                             R0 R3
       10 GETUPVAL                         R3 3
       11 CALL                             R3 0 1
       12 MOVE                             R1 R3
       13 GETUPVAL                         R4 4
       14 GETTABLEKS                       R3 R4 K0 ["useContext"]
       16 GETUPVAL                         R5 5
       17 GETTABLEKS                       R4 R5 K1 ["Context"]
       19 CALL                             R3 1 1
       20 GETTABLEKS                       R4 R3 K2 ["sessionId"]
       22 NEWCLOSURE                       R5 P0
       23 CAPTURE                          UPVAL U6
       24 CAPTURE                          UPVAL U7
       25 CAPTURE                          UPVAL U8
       26 CAPTURE                          VAL R2
       27 CAPTURE                          UPVAL U1
       28 CAPTURE                          REF R1
       29 CAPTURE                          UPVAL U9
       30 CAPTURE                          REF R0
       31 CAPTURE                          UPVAL U10
       32 CAPTURE                          VAL R4
       33 CAPTURE                          UPVAL U11
       34 CAPTURE                          UPVAL U12
       35 GETUPVAL                         R6 1
       36 CALL                             R6 0 1
       37 JUMPIFNOT                        R6 ; [+15]
       38 GETUPVAL                         R7 4
       39 GETTABLEKS                       R6 R7 K3 ["useCallback"]
       41 MOVE                             R7 R5
       42 NEWTABLE                         R8 0 4
       44 MOVE                             R9 R0
       45 MOVE                             R10 R1
       46 MOVE                             R11 R2
       47 MOVE                             R12 R4
       48 SETLIST                          R8 R9 4 [1]
       50 CALL                             R6 2 -1
       51 CLOSEUPVALS                      R0
       52 RETURN                           R6 -1
       53 CLOSEUPVALS                      R0
       54 RETURN                           R5 1

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
       28 GETTABLEKS                       R4 R5 K15 ["LLMProcessEvent"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R4 K9 [require]
       33 GETTABLEKS                       R6 R0 K16 ["Parent"]
       35 GETTABLEKS                       R5 R6 K17 ["ModelContextProtocol"]
       37 CALL                             R4 1 1
       38 GETIMPORT                        R5 K9 [require]
       40 GETTABLEKS                       R7 R0 K16 ["Parent"]
       42 GETTABLEKS                       R6 R7 K18 ["React"]
       44 CALL                             R5 1 1
       45 GETIMPORT                        R6 K9 [require]
       47 GETTABLEKS                       R9 R0 K12 ["Components"]
       49 GETTABLEKS                       R8 R9 K13 ["Contexts"]
       51 GETTABLEKS                       R7 R8 K19 ["SessionIdContext"]
       53 CALL                             R6 1 1
       54 GETIMPORT                        R7 K9 [require]
       56 GETTABLEKS                       R8 R0 K20 ["Types"]
       58 CALL                             R7 1 1
       59 GETIMPORT                        R8 K9 [require]
       61 GETTABLEKS                       R10 R0 K12 ["Components"]
       63 GETTABLEKS                       R9 R10 K21 ["UIToolRegistry"]
       65 CALL                             R8 1 1
       66 GETIMPORT                        R9 K9 [require]
       68 GETTABLEKS                       R11 R0 K22 ["Hooks"]
       70 GETTABLEKS                       R10 R11 K23 ["useGetContentObserver"]
       72 CALL                             R9 1 1
       73 GETIMPORT                        R10 K9 [require]
       75 GETTABLEKS                       R12 R0 K22 ["Hooks"]
       77 GETTABLEKS                       R11 R12 K24 ["useGetOrAddMessage"]
       79 CALL                             R10 1 1
       80 GETIMPORT                        R11 K9 [require]
       82 GETTABLEKS                       R13 R0 K22 ["Hooks"]
       84 GETTABLEKS                       R12 R13 K25 ["useWithClient"]
       86 CALL                             R11 1 1
       87 GETIMPORT                        R12 K9 [require]
       89 GETTABLEKS                       R14 R0 K26 ["Flags"]
       91 GETTABLEKS                       R13 R14 K27 ["FFlagMCPAssistantFixSlashCommandToolResult"]
       93 CALL                             R12 1 1
       94 GETIMPORT                        R13 K9 [require]
       96 GETTABLEKS                       R15 R0 K26 ["Flags"]
       98 GETTABLEKS                       R14 R15 K28 ["FFlagMCPAssistantLongRunningToolCalls"]
      100 CALL                             R13 1 1
      101 GETTABLEKS                       R14 R8 K29 ["CommandPrefix"]
      103 GETTABLEKS                       R15 R8 K30 ["CommandDelimiter"]
      105 DUPCLOSURE                       R16 K31 [PROTO_0]
      106 DUPCLOSURE                       R17 K32 [PROTO_3]
      107 CAPTURE                          VAL R12
      108 DUPCLOSURE                       R18 K33 [PROTO_11]
      109 CAPTURE                          VAL R11
      110 CAPTURE                          VAL R13
      111 CAPTURE                          VAL R9
      112 CAPTURE                          VAL R10
      113 CAPTURE                          VAL R5
      114 CAPTURE                          VAL R6
      115 CAPTURE                          VAL R14
      116 CAPTURE                          VAL R15
      117 CAPTURE                          VAL R8
      118 CAPTURE                          VAL R1
      119 CAPTURE                          VAL R2
      120 CAPTURE                          VAL R12
      121 CAPTURE                          VAL R7
      122 RETURN                           R18 1
