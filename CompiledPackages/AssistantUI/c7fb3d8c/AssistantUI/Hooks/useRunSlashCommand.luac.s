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
        0 GETUPVAL                         R7 0
        1 CALL                             R7 0 1
        2 FASTCALL2K                       ASSERT R7 K0 ; [+4]
        4 LOADK                            R8 K0 ["FFlagMCPAssistantFixSlashCommandToolResult must be enabled to use getSetToolResultFn"]
        5 GETIMPORT                        R6 K2 [assert]
        7 CALL                             R6 2 0
        8 JUMPIF                           R1 ; [+2]
        9 DUPCLOSURE                       R6 K3 [PROTO_0]
       10 RETURN                           R6 1
       11 NEWCLOSURE                       R6 P1
       12 CAPTURE                          VAL R2
       13 CAPTURE                          VAL R3
       14 CAPTURE                          VAL R4
       15 CAPTURE                          VAL R5
       16 CAPTURE                          VAL R0
       17 CAPTURE                          VAL R1
       18 RETURN                           R6 1

PROTO_3:
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

PROTO_4:
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

PROTO_5:
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
       53 DUPTABLE                         R7 K16 [{"resetTimeoutOnProgress"}]
       54 LOADB                            R8 1
       55 SETTABLEKS                       R8 R7 K15 ["resetTimeoutOnProgress"]
       57 DUPTABLE                         R8 K21 [{"messageGuid", "sessionId", "messageId", "contentId"}]
       58 SETTABLEKS                       R6 R8 K17 ["messageGuid"]
       60 GETUPVAL                         R9 5
       61 SETTABLEKS                       R9 R8 K18 ["sessionId"]
       63 SETTABLEKS                       R0 R8 K19 ["messageId"]
       65 SETTABLEKS                       R4 R8 K20 ["contentId"]
       67 GETUPVAL                         R10 6
       68 GETTABLEKS                       R9 R10 K22 ["getTimestampMilliseconds"]
       70 CALL                             R9 0 1
       71 GETUPVAL                         R11 6
       72 GETTABLEKS                       R10 R11 K22 ["getTimestampMilliseconds"]
       74 CALL                             R10 0 1
       75 JUMPIFNOT                        R4 ; [+5]
       76 GETTABLEKS                       R11 R3 K23 ["onPreExecuteToolUse"]
       78 MOVE                             R12 R4
       79 MOVE                             R13 R2
       80 CALL                             R11 2 0
       81 LOADNIL                          R11
       82 GETUPVAL                         R12 7
       83 CALL                             R12 0 1
       84 JUMPIFNOT                        R12 ; [+19]
       85 GETUPVAL                         R12 1
       86 GETUPVAL                         R14 7
       87 CALL                             R14 0 1
       88 FASTCALL2K                       ASSERT R14 K24 ; [+4]
       90 LOADK                            R15 K24 ["FFlagMCPAssistantFixSlashCommandToolResult must be enabled to use getSetToolResultFn"]
       91 GETIMPORT                        R13 K26 [assert]
       93 CALL                             R13 2 0
       94 JUMPIF                           R4 ; [+2]
       95 DUPCLOSURE                       R11 K27 [PROTO_0]
       96 JUMP                             ; [+7]
       97 NEWCLOSURE                       R11 P1
       98 CAPTURE                          VAL R1
       99 CAPTURE                          VAL R12
      100 CAPTURE                          VAL R9
      101 CAPTURE                          VAL R10
      102 CAPTURE                          VAL R3
      103 CAPTURE                          VAL R4
      104 JUMPIFNOT                        R4 ; [+60]
      105 GETUPVAL                         R12 7
      106 CALL                             R12 0 1
      107 JUMPIFNOT                        R12 ; [+21]
      108 MOVE                             R12 R11
      109 LOADB                            R13 1
      110 DUPTABLE                         R14 K30 [{"content", "isError"}]
      111 NEWTABLE                         R15 0 1
      113 DUPTABLE                         R16 K32 [{"type", "text"}]
      114 LOADK                            R17 K31 ["text"]
      115 SETTABLEKS                       R17 R16 K2 ["type"]
      117 LOADK                            R17 K33 ["Tool call is still running asynchronously."]
      118 SETTABLEKS                       R17 R16 K31 ["text"]
      120 SETLIST                          R15 R16 1 [1]
      122 SETTABLEKS                       R15 R14 K28 ["content"]
      124 LOADB                            R15 0
      125 SETTABLEKS                       R15 R14 K29 ["isError"]
      127 CALL                             R12 2 0
      128 JUMP                             ; [+36]
      129 DUPTABLE                         R12 K36 [{"type", "id", "name", "content", "isError", "startTime", "startTimeAfterConfirmation"}]
      130 LOADK                            R13 K37 ["tool_result"]
      131 SETTABLEKS                       R13 R12 K2 ["type"]
      133 SETTABLEKS                       R1 R12 K3 ["id"]
      135 GETUPVAL                         R14 1
      136 GETTABLEKS                       R13 R14 K4 ["name"]
      138 SETTABLEKS                       R13 R12 K4 ["name"]
      140 NEWTABLE                         R13 0 1
      142 DUPTABLE                         R14 K32 [{"type", "text"}]
      143 LOADK                            R15 K31 ["text"]
      144 SETTABLEKS                       R15 R14 K2 ["type"]
      146 LOADK                            R15 K38 ["Ran tool call asynchronously."]
      147 SETTABLEKS                       R15 R14 K31 ["text"]
      149 SETLIST                          R13 R14 1 [1]
      151 SETTABLEKS                       R13 R12 K28 ["content"]
      153 LOADB                            R13 0
      154 SETTABLEKS                       R13 R12 K29 ["isError"]
      156 SETTABLEKS                       R9 R12 K34 ["startTime"]
      158 SETTABLEKS                       R10 R12 K35 ["startTimeAfterConfirmation"]
      160 GETTABLEKS                       R13 R3 K39 ["onToolResult"]
      162 MOVE                             R14 R4
      163 MOVE                             R15 R12
      164 CALL                             R13 2 0
      165 GETUPVAL                         R12 8
      166 GETUPVAL                         R15 9
      167 GETTABLEKS                       R14 R15 K40 ["getMcpClientIdentifier"]
      169 CALL                             R14 0 1
      170 GETUPVAL                         R16 1
      171 GETTABLEKS                       R15 R16 K4 ["name"]
      173 GETUPVAL                         R17 1
      174 GETTABLEKS                       R16 R17 K8 ["arguments"]
      176 MOVE                             R17 R7
      177 MOVE                             R18 R8
      178 NAMECALL                         R12 R12 K41 ["callToolForClient"]
      180 CALL                             R12 6 1
      181 NEWCLOSURE                       R14 P2
      182 CAPTURE                          UPVAL U7
      183 CAPTURE                          REF R11
      184 CAPTURE                          UPVAL U10
      185 NAMECALL                         R12 R12 K42 ["andThen"]
      187 CALL                             R12 2 1
      188 NEWCLOSURE                       R14 P3
      189 CAPTURE                          UPVAL U7
      190 CAPTURE                          REF R11
      191 CAPTURE                          UPVAL U10
      192 NAMECALL                         R12 R12 K43 ["catch"]
      194 CALL                             R12 2 0
      195 CLOSEUPVALS                      R11
      196 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_7:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R2 K2 ["Error calling tool:"]
        3 MOVE                             R3 R0
        4 CALL                             R1 2 0
        5 GETUPVAL                         R1 0
        6 LOADB                            R2 1
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+16]
        3 GETUPVAL                         R1 1
        4 LOADK                            R2 K0 ["assistant"]
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 CAPTURE                          UPVAL U5
       10 CAPTURE                          UPVAL U6
       11 CAPTURE                          UPVAL U7
       12 CAPTURE                          UPVAL U8
       13 CAPTURE                          UPVAL U9
       14 CAPTURE                          VAL R0
       15 CAPTURE                          UPVAL U10
       16 CAPTURE                          UPVAL U11
       17 CALL                             R1 2 0
       18 RETURN                           R0 0
       19 GETUPVAL                         R4 10
       20 GETTABLEKS                       R3 R4 K1 ["getMcpClientIdentifier"]
       22 CALL                             R3 0 1
       23 GETUPVAL                         R5 3
       24 GETTABLEKS                       R4 R5 K2 ["name"]
       26 GETUPVAL                         R6 3
       27 GETTABLEKS                       R5 R6 K3 ["arguments"]
       29 NAMECALL                         R1 R0 K4 ["callToolForClient"]
       31 CALL                             R1 4 1
       32 NEWCLOSURE                       R3 P1
       33 CAPTURE                          UPVAL U11
       34 NAMECALL                         R1 R1 K5 ["andThen"]
       36 CALL                             R1 2 1
       37 NEWCLOSURE                       R3 P2
       38 CAPTURE                          UPVAL U11
       39 NAMECALL                         R1 R1 K6 ["catch"]
       41 CALL                             R1 2 0
       42 RETURN                           R0 0

PROTO_9:
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
       64 CAPTURE                          UPVAL U12
       65 CAPTURE                          UPVAL U13
       66 CAPTURE                          VAL R2
       67 CALL                             R9 1 0
       68 LOADB                            R9 1
       69 RETURN                           R9 1

PROTO_10:
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
       32 CAPTURE                          UPVAL U11
       33 CAPTURE                          VAL R4
       34 CAPTURE                          UPVAL U12
       35 CAPTURE                          UPVAL U13
       36 CAPTURE                          UPVAL U14
       37 GETUPVAL                         R6 1
       38 CALL                             R6 0 1
       39 JUMPIFNOT                        R6 ; [+15]
       40 GETUPVAL                         R7 4
       41 GETTABLEKS                       R6 R7 K3 ["useCallback"]
       43 MOVE                             R7 R5
       44 NEWTABLE                         R8 0 4
       46 MOVE                             R9 R0
       47 MOVE                             R10 R1
       48 MOVE                             R11 R2
       49 MOVE                             R12 R4
       50 SETLIST                          R8 R9 4 [1]
       52 CALL                             R6 2 -1
       53 CLOSEUPVALS                      R0
       54 RETURN                           R6 -1
       55 CLOSEUPVALS                      R0
       56 RETURN                           R5 1

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
       56 GETTABLEKS                       R9 R0 K20 ["Util"]
       58 GETTABLEKS                       R8 R9 K21 ["Time"]
       60 CALL                             R7 1 1
       61 GETIMPORT                        R8 K9 [require]
       63 GETTABLEKS                       R9 R0 K22 ["Types"]
       65 CALL                             R8 1 1
       66 GETIMPORT                        R9 K9 [require]
       68 GETTABLEKS                       R11 R0 K12 ["Components"]
       70 GETTABLEKS                       R10 R11 K23 ["UIToolRegistry"]
       72 CALL                             R9 1 1
       73 GETIMPORT                        R10 K9 [require]
       75 GETTABLEKS                       R12 R0 K24 ["Hooks"]
       77 GETTABLEKS                       R11 R12 K25 ["useGetContentObserver"]
       79 CALL                             R10 1 1
       80 GETIMPORT                        R11 K9 [require]
       82 GETTABLEKS                       R13 R0 K24 ["Hooks"]
       84 GETTABLEKS                       R12 R13 K26 ["useGetOrAddMessage"]
       86 CALL                             R11 1 1
       87 GETIMPORT                        R12 K9 [require]
       89 GETTABLEKS                       R14 R0 K24 ["Hooks"]
       91 GETTABLEKS                       R13 R14 K27 ["useWithClient"]
       93 CALL                             R12 1 1
       94 GETIMPORT                        R13 K9 [require]
       96 GETTABLEKS                       R15 R0 K28 ["Flags"]
       98 GETTABLEKS                       R14 R15 K29 ["FFlagAssistantPersistConversations"]
      100 CALL                             R13 1 1
      101 GETIMPORT                        R14 K9 [require]
      103 GETTABLEKS                       R16 R0 K28 ["Flags"]
      105 GETTABLEKS                       R15 R16 K30 ["FFlagMCPAssistantFixSlashCommandToolResult"]
      107 CALL                             R14 1 1
      108 GETIMPORT                        R15 K9 [require]
      110 GETTABLEKS                       R17 R0 K28 ["Flags"]
      112 GETTABLEKS                       R16 R17 K31 ["FFlagMCPAssistantLongRunningToolCalls"]
      114 CALL                             R15 1 1
      115 GETTABLEKS                       R16 R9 K32 ["CommandPrefix"]
      117 GETTABLEKS                       R17 R9 K33 ["CommandDelimiter"]
      119 DUPCLOSURE                       R18 K34 [PROTO_2]
      120 CAPTURE                          VAL R14
      121 DUPCLOSURE                       R19 K35 [PROTO_10]
      122 CAPTURE                          VAL R12
      123 CAPTURE                          VAL R15
      124 CAPTURE                          VAL R10
      125 CAPTURE                          VAL R11
      126 CAPTURE                          VAL R5
      127 CAPTURE                          VAL R6
      128 CAPTURE                          VAL R16
      129 CAPTURE                          VAL R17
      130 CAPTURE                          VAL R9
      131 CAPTURE                          VAL R1
      132 CAPTURE                          VAL R2
      133 CAPTURE                          VAL R13
      134 CAPTURE                          VAL R7
      135 CAPTURE                          VAL R14
      136 CAPTURE                          VAL R8
      137 RETURN                           R19 1
