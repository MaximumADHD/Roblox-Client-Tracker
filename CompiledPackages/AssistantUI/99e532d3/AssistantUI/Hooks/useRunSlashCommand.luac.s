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
        1 LOADB                            R2 1
        2 MOVE                             R3 R0
        3 CALL                             R1 2 0
        4 GETUPVAL                         R1 1
        5 LOADB                            R2 1
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_4:
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
       81 GETUPVAL                         R12 1
       82 JUMPIF                           R4 ; [+2]
       83 DUPCLOSURE                       R11 K24 [PROTO_0]
       84 JUMP                             ; [+7]
       85 NEWCLOSURE                       R11 P1
       86 CAPTURE                          VAL R1
       87 CAPTURE                          VAL R12
       88 CAPTURE                          VAL R9
       89 CAPTURE                          VAL R10
       90 CAPTURE                          VAL R3
       91 CAPTURE                          VAL R4
       92 JUMPIFNOT                        R4 ; [+20]
       93 MOVE                             R12 R11
       94 LOADB                            R13 1
       95 DUPTABLE                         R14 K27 [{"content", "isError"}]
       96 NEWTABLE                         R15 0 1
       98 DUPTABLE                         R16 K29 [{"type", "text"}]
       99 LOADK                            R17 K28 ["text"]
      100 SETTABLEKS                       R17 R16 K2 ["type"]
      102 LOADK                            R17 K30 ["Tool call is still running asynchronously."]
      103 SETTABLEKS                       R17 R16 K28 ["text"]
      105 SETLIST                          R15 R16 1 [1]
      107 SETTABLEKS                       R15 R14 K25 ["content"]
      109 LOADB                            R15 0
      110 SETTABLEKS                       R15 R14 K26 ["isError"]
      112 CALL                             R12 2 0
      113 GETUPVAL                         R12 7
      114 GETUPVAL                         R15 8
      115 GETTABLEKS                       R14 R15 K31 ["getMcpClientIdentifier"]
      117 CALL                             R14 0 1
      118 GETUPVAL                         R16 1
      119 GETTABLEKS                       R15 R16 K4 ["name"]
      121 GETUPVAL                         R17 1
      122 GETTABLEKS                       R16 R17 K8 ["arguments"]
      124 MOVE                             R17 R7
      125 MOVE                             R18 R8
      126 NAMECALL                         R12 R12 K32 ["callToolForClient"]
      128 CALL                             R12 6 1
      129 NEWCLOSURE                       R14 P2
      130 CAPTURE                          VAL R11
      131 CAPTURE                          UPVAL U9
      132 NAMECALL                         R12 R12 K33 ["andThen"]
      134 CALL                             R12 2 1
      135 NEWCLOSURE                       R14 P3
      136 CAPTURE                          VAL R11
      137 CAPTURE                          UPVAL U9
      138 NAMECALL                         R12 R12 K34 ["catch"]
      140 CALL                             R12 2 0
      141 RETURN                           R0 0

PROTO_6:
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
       10 CAPTURE                          VAL R0
       11 CAPTURE                          UPVAL U8
       12 CAPTURE                          UPVAL U9
       13 CALL                             R1 2 0
       14 RETURN                           R0 0

PROTO_7:
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
       64 CAPTURE                          VAL R2
       65 CALL                             R9 1 0
       66 LOADB                            R9 1
       67 RETURN                           R9 1

PROTO_8:
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
       15 NEWCLOSURE                       R5 P0
       16 CAPTURE                          UPVAL U5
       17 CAPTURE                          UPVAL U6
       18 CAPTURE                          UPVAL U7
       19 CAPTURE                          VAL R2
       20 CAPTURE                          VAL R1
       21 CAPTURE                          UPVAL U8
       22 CAPTURE                          VAL R0
       23 CAPTURE                          UPVAL U9
       24 CAPTURE                          UPVAL U10
       25 CAPTURE                          VAL R4
       26 CAPTURE                          UPVAL U11
       27 CAPTURE                          UPVAL U12
       28 GETUPVAL                         R7 3
       29 GETTABLEKS                       R6 R7 K3 ["useCallback"]
       31 MOVE                             R7 R5
       32 NEWTABLE                         R8 0 4
       34 MOVE                             R9 R0
       35 MOVE                             R10 R1
       36 MOVE                             R11 R2
       37 MOVE                             R12 R4
       38 SETLIST                          R8 R9 4 [1]
       40 CALL                             R6 2 -1
       41 RETURN                           R6 -1

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
      101 GETTABLEKS                       R14 R9 K30 ["CommandPrefix"]
      103 GETTABLEKS                       R15 R9 K31 ["CommandDelimiter"]
      105 DUPCLOSURE                       R16 K32 [PROTO_2]
      106 DUPCLOSURE                       R17 K33 [PROTO_8]
      107 CAPTURE                          VAL R10
      108 CAPTURE                          VAL R11
      109 CAPTURE                          VAL R12
      110 CAPTURE                          VAL R5
      111 CAPTURE                          VAL R6
      112 CAPTURE                          VAL R14
      113 CAPTURE                          VAL R15
      114 CAPTURE                          VAL R9
      115 CAPTURE                          VAL R1
      116 CAPTURE                          VAL R2
      117 CAPTURE                          VAL R13
      118 CAPTURE                          VAL R7
      119 CAPTURE                          VAL R8
      120 RETURN                           R17 1
