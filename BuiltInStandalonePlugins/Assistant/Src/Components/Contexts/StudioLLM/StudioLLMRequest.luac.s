PROTO_0:
        0 JUMPIFNOT                        R1 ; [+3]
        1 JUMPIFEQKS                       R1 K0 [""] ; [+2]
        3 RETURN                           R1 1
        4 JUMPIFNOT                        R0 ; [+2]
        5 GETUPVAL                         R2 0
        6 RETURN                           R2 1
        7 GETUPVAL                         R2 1
        8 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R5 R1 K0 ["isSubagent"]
        3 JUMPIFNOT                        R5 ; [+3]
        4 GETTABLEKS                       R4 R1 K1 ["selectedModel"]
        6 JUMP                             ; [+1]
        7 LOADNIL                          R4
        8 GETUPVAL                         R5 1
        9 CALL                             R5 0 1
       10 LOADK                            R6 K2 ["auto"]
       11 CALL                             R3 3 1
       12 GETUPVAL                         R4 0
       13 GETUPVAL                         R5 2
       14 CALL                             R5 0 1
       15 LOADK                            R6 K2 ["auto"]
       16 CALL                             R4 2 1
       17 DUPTABLE                         R5 K7 [{"system", "llm_config", "messages", "tools"}]
       18 GETTABLEKS                       R6 R1 K3 ["system"]
       20 SETTABLEKS                       R6 R5 K3 ["system"]
       22 DUPTABLE                         R6 K12 [{"model", "thinking_mode", "max_tokens", "parallel_tool_calls"}]
       23 SETTABLEKS                       R3 R6 K8 ["model"]
       25 SETTABLEKS                       R4 R6 K9 ["thinking_mode"]
       27 GETUPVAL                         R7 3
       28 CALL                             R7 0 1
       29 SETTABLEKS                       R7 R6 K10 ["max_tokens"]
       31 GETUPVAL                         R8 4
       32 CALL                             R8 0 1
       33 JUMPIFNOT                        R8 ; [+2]
       34 LOADB                            R7 1
       35 JUMP                             ; [+1]
       36 LOADB                            R7 0
       37 SETTABLEKS                       R7 R6 K11 ["parallel_tool_calls"]
       39 SETTABLEKS                       R6 R5 K4 ["llm_config"]
       41 GETTABLEKS                       R6 R1 K5 ["messages"]
       43 SETTABLEKS                       R6 R5 K5 ["messages"]
       45 GETTABLEKS                       R6 R1 K6 ["tools"]
       47 SETTABLEKS                       R6 R5 K6 ["tools"]
       49 GETUPVAL                         R8 5
       50 GETTABLEKS                       R7 R8 K14 ["isTestAutomationEnabled"]
       52 CALL                             R7 0 1
       53 ORK                              R6 R7 K13 []
       54 GETUPVAL                         R7 6
       55 CALL                             R7 0 1
       56 JUMPIFNOT                        R7 ; [+14]
       57 LOADB                            R7 1
       58 GETTABLEKS                       R8 R1 K15 ["assistantMode"]
       60 GETUPVAL                         R12 7
       61 GETTABLEKS                       R11 R12 K16 ["Types"]
       63 GETTABLEKS                       R10 R11 K17 ["AssistantMode"]
       65 GETTABLEKS                       R9 R10 K18 ["Test"]
       67 JUMPIFEQ                         R8 R9 ; [+2]
       69 LOADNIL                          R7
       70 MOVE                             R6 R7
       71 DUPTABLE                         R7 K26 [{"threadId", "messageId", "requestId", "conversation", "firstMessage", "useAgenticMode", "isDebugMode", "assistantMode"}]
       72 GETTABLEKS                       R8 R1 K19 ["threadId"]
       74 SETTABLEKS                       R8 R7 K19 ["threadId"]
       76 GETTABLEKS                       R8 R1 K27 ["messageGuid"]
       78 SETTABLEKS                       R8 R7 K20 ["messageId"]
       80 SETTABLEKS                       R2 R7 K21 ["requestId"]
       82 SETTABLEKS                       R5 R7 K22 ["conversation"]
       84 GETTABLEKS                       R8 R1 K28 ["isFirstMessage"]
       86 SETTABLEKS                       R8 R7 K23 ["firstMessage"]
       88 GETTABLEKS                       R8 R1 K29 ["isAgenticMode"]
       90 SETTABLEKS                       R8 R7 K24 ["useAgenticMode"]
       92 SETTABLEKS                       R6 R7 K25 ["isDebugMode"]
       94 GETUPVAL                         R9 6
       95 CALL                             R9 0 1
       96 JUMPIFNOT                        R9 ; [+3]
       97 GETTABLEKS                       R8 R1 K15 ["assistantMode"]
       99 JUMPIF                           R8 ; [+1]
      100 LOADNIL                          R8
      101 SETTABLEKS                       R8 R7 K15 ["assistantMode"]
      103 GETUPVAL                         R8 4
      104 CALL                             R8 0 1
      105 JUMPIFNOT                        R8 ; [+6]
      106 GETTABLEKS                       R9 R1 K0 ["isSubagent"]
      108 JUMPIFEQKB                       R9 TRUE ; [+2]
      110 LOADB                            R8 0 +1
      111 LOADB                            R8 1
      112 JUMPIFNOT                        R8 ; [+3]
      113 GETUPVAL                         R9 8
      114 CALL                             R9 0 1
      115 JUMP                             ; [+2]
      116 GETUPVAL                         R9 9
      117 CALL                             R9 0 1
      118 GETTABLEKS                       R11 R1 K30 ["conversationUrl"]
      120 JUMPIFNOT                        R11 ; [+4]
      121 JUMPIFEQKS                       R11 K31 [""] ; [+3]
      123 MOVE                             R10 R11
      124 JUMP                             ; [+4]
      125 JUMPIFNOT                        R8 ; [+2]
      126 GETUPVAL                         R10 10
      127 JUMP                             ; [+1]
      128 GETUPVAL                         R10 11
      129 GETUPVAL                         R11 0
      130 MOVE                             R12 R9
      131 MOVE                             R13 R10
      132 CALL                             R11 2 1
      133 NEWTABLE                         R12 1 0
      135 LOADK                            R13 K32 ["application/json"]
      136 SETTABLEKS                       R13 R12 K33 ["Content-Type"]
      138 JUMPIFEQKS                       R9 K31 [""] ; [+10]
      140 NAMECALL                         R14 R0 K34 ["GetUserId"]
      142 CALL                             R14 1 -1
      143 FASTCALL                         TOSTRING ; [+2]
      144 GETIMPORT                        R13 K36 [tostring]
      146 CALL                             R13 -1 1
      147 SETTABLEKS                       R13 R12 K37 ["robloxctx-authenticated-userid"]
      149 GETUPVAL                         R13 12
      150 CALL                             R13 0 1
      151 JUMPIFNOT                        R13 ; [+15]
      152 GETUPVAL                         R15 13
      153 GETTABLEKS                       R14 R15 K38 ["Json"]
      155 GETTABLEKS                       R13 R14 K39 ["encode"]
      157 MOVE                             R14 R7
      158 CALL                             R13 1 1
      159 GETUPVAL                         R14 14
      160 MOVE                             R16 R11
      161 MOVE                             R17 R13
      162 MOVE                             R18 R12
      163 NAMECALL                         R14 R14 K40 ["post"]
      165 CALL                             R14 4 -1
      166 RETURN                           R14 -1
      167 GETUPVAL                         R13 15
      168 CALL                             R13 0 1
      169 JUMPIFNOT                        R13 ; [+19]
      170 GETUPVAL                         R13 16
      171 MOVE                             R15 R7
      172 NAMECALL                         R13 R13 K41 ["JSONEncode"]
      174 CALL                             R13 2 1
      175 LOADK                            R16 K42 ["%[%]"]
      176 LOADK                            R17 K43 ["{}"]
      177 NAMECALL                         R14 R13 K44 ["gsub"]
      179 CALL                             R14 3 1
      180 MOVE                             R13 R14
      181 GETUPVAL                         R14 14
      182 MOVE                             R16 R11
      183 MOVE                             R17 R13
      184 MOVE                             R18 R12
      185 NAMECALL                         R14 R14 K40 ["post"]
      187 CALL                             R14 4 -1
      188 RETURN                           R14 -1
      189 GETUPVAL                         R13 14
      190 MOVE                             R15 R11
      191 GETUPVAL                         R16 16
      192 MOVE                             R18 R7
      193 NAMECALL                         R16 R16 K41 ["JSONEncode"]
      195 CALL                             R16 2 1
      196 MOVE                             R17 R12
      197 NAMECALL                         R13 R13 K40 ["post"]
      199 CALL                             R13 4 -1
      200 RETURN                           R13 -1

PROTO_2:
        0 LOADNIL                          R2
        1 GETTABLEKS                       R3 R0 K0 ["responseCode"]
        3 JUMPIFNOTEQKN                    R3 K1 [429] ; [+24]
        5 GETUPVAL                         R3 0
        6 CALL                             R3 0 1
        7 JUMPIFNOT                        R3 ; [+16]
        8 GETTABLEKS                       R3 R0 K2 ["responseBody"]
       10 JUMPIFEQKS                       R3 K3 ["\"Quota Exceeded\""] ; [+5]
       12 GETTABLEKS                       R3 R0 K2 ["responseBody"]
       14 JUMPIFNOTEQKS                    R3 K4 ["\"Quota Checking Failed\""] ; [+5]
       16 GETUPVAL                         R3 1
       17 GETTABLEKS                       R2 R3 K5 ["QUOTA_EXCEEDED"]
       19 JUMP                             ; [+11]
       20 GETUPVAL                         R3 1
       21 GETTABLEKS                       R2 R3 K6 ["TOO_MANY_REQUESTS"]
       23 JUMP                             ; [+7]
       24 GETUPVAL                         R3 1
       25 GETTABLEKS                       R2 R3 K5 ["QUOTA_EXCEEDED"]
       27 JUMP                             ; [+3]
       28 GETUPVAL                         R3 1
       29 GETTABLEKS                       R2 R3 K7 ["REQUEST_FAILED"]
       31 MOVE                             R3 R1
       32 DUPTABLE                         R4 K10 [{"type", "error"}]
       33 LOADK                            R5 K9 ["error"]
       34 SETTABLEKS                       R5 R4 K8 ["type"]
       36 SETTABLEKS                       R2 R4 K9 ["error"]
       38 CALL                             R3 1 0
       39 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+10]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K0 ["Json"]
        6 GETTABLEKS                       R0 R1 K1 ["decode"]
        8 GETUPVAL                         R2 2
        9 GETTABLEKS                       R1 R2 K2 ["detail"]
       11 CALL                             R0 1 1
       12 RETURN                           R0 1
       13 GETUPVAL                         R0 3
       14 GETUPVAL                         R3 2
       15 GETTABLEKS                       R2 R3 K2 ["detail"]
       17 NAMECALL                         R0 R0 K3 ["JSONDecode"]
       19 CALL                             R0 2 1
       20 RETURN                           R0 1

PROTO_4:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U2
        7 CALL                             R1 1 2
        8 JUMPIF                           R1 ; [+7]
        9 GETIMPORT                        R3 K3 [warn]
       11 LOADK                            R4 K4 ["Failed to parse notification event detail:"]
       12 GETTABLEKS                       R5 R0 K5 ["detail"]
       14 CALL                             R3 2 0
       15 RETURN                           R0 0
       16 GETTABLEKS                       R3 R2 K6 ["requestId"]
       18 GETUPVAL                         R4 3
       19 JUMPIFEQ                         R3 R4 ; [+2]
       21 RETURN                           R0 0
       22 GETUPVAL                         R3 4
       23 GETTABLEKS                       R4 R2 K7 ["sequenceNumber"]
       25 SETTABLE                         R2 R3 R4
       26 GETUPVAL                         R4 4
       27 GETUPVAL                         R5 5
       28 GETTABLE                         R3 R4 R5
       29 JUMPIFEQKNIL                     R3 ; [+32]
       31 GETIMPORT                        R4 K1 [pcall]
       33 GETUPVAL                         R5 6
       34 GETTABLEKS                       R6 R3 K8 ["event"]
       36 CALL                             R4 2 0
       37 GETUPVAL                         R4 5
       38 JUMPIFNOTEQKN                    R4 K9 [0] ; [+16]
       40 GETIMPORT                        R5 K12 [os.clock]
       42 CALL                             R5 0 1
       43 GETUPVAL                         R6 7
       44 SUB                              R4 R5 R6
       45 GETUPVAL                         R7 8
       46 GETTABLEKS                       R6 R7 K13 ["get"]
       48 CALL                             R6 0 1
       49 GETTABLEKS                       R5 R6 K14 ["EventLogger"]
       51 GETTABLEKS                       R6 R5 K15 ["logInitialResponseLatency"]
       53 MOVE                             R7 R4
       54 CALL                             R6 1 0
       55 GETUPVAL                         R4 5
       56 ADDK                             R4 R4 K16 [1]
       57 SETUPVAL                         R4 5
       58 GETUPVAL                         R4 4
       59 GETUPVAL                         R5 5
       60 GETTABLE                         R3 R4 R5
       61 JUMPBACK                         ; [-33]
       62 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+1]
        2 RETURN                           R0 0
        3 LOADB                            R0 1
        4 SETUPVAL                         R0 0
        5 GETUPVAL                         R1 1
        6 LENGTH                           R0 R1
        7 LOADN                            R1 0
        8 JUMPIFNOTLT                      R1 R0 ; [+12]
       10 GETIMPORT                        R0 K2 [table.remove]
       12 GETUPVAL                         R1 1
       13 LOADN                            R2 1
       14 CALL                             R0 2 1
       15 GETIMPORT                        R1 K4 [pcall]
       17 GETUPVAL                         R2 2
       18 MOVE                             R3 R0
       19 CALL                             R1 2 0
       20 JUMPBACK                         ; [-16]
       21 LOADB                            R0 0
       22 SETUPVAL                         R0 0
       23 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["namespace"]
        2 JUMPIFEQKS                       R1 K1 ["AssistantPlugin"] ; [+2]
        4 RETURN                           R0 0
        5 GETUPVAL                         R2 0
        6 FASTCALL2                        TABLE_INSERT R2 R0 ; [+4]
        8 MOVE                             R3 R0
        9 GETIMPORT                        R1 K4 [table.insert]
       11 CALL                             R1 2 0
       12 GETUPVAL                         R1 1
       13 JUMPIF                           R1 ; [+4]
       14 GETIMPORT                        R1 K7 [task.spawn]
       16 GETUPVAL                         R2 2
       17 CALL                             R1 1 0
       18 RETURN                           R0 0

PROTO_7:
        0 GETIMPORT                        R1 K2 [os.clock]
        2 CALL                             R1 0 1
        3 NEWTABLE                         R2 0 0
        5 LOADB                            R3 0
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          UPVAL U0
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          VAL R0
       11 CAPTURE                          UPVAL U3
       12 CAPTURE                          UPVAL U4
       13 CAPTURE                          UPVAL U5
       14 CAPTURE                          VAL R1
       15 CAPTURE                          UPVAL U6
       16 NEWCLOSURE                       R5 P1
       17 CAPTURE                          REF R3
       18 CAPTURE                          VAL R2
       19 CAPTURE                          VAL R4
       20 GETUPVAL                         R7 7
       21 GETTABLEKS                       R6 R7 K3 ["RobloxEventReceived"]
       23 NEWCLOSURE                       R8 P2
       24 CAPTURE                          VAL R2
       25 CAPTURE                          REF R3
       26 CAPTURE                          VAL R5
       27 NAMECALL                         R6 R6 K4 ["Connect"]
       29 CALL                             R6 2 -1
       30 CLOSEUPVALS                      R3
       31 RETURN                           R6 -1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 LOADNIL                          R0
        7 SETUPVAL                         R0 0
        8 RETURN                           R0 0

PROTO_9:
        0 LOADNIL                          R1
        1 GETTABLEKS                       R2 R0 K0 ["responseCode"]
        3 JUMPIFNOTEQKN                    R2 K1 [429] ; [+18]
        5 GETUPVAL                         R2 0
        6 CALL                             R2 0 1
        7 JUMPIFNOT                        R2 ; [+12]
        8 GETTABLEKS                       R2 R0 K2 ["responseBody"]
       10 JUMPIFEQKS                       R2 K3 ["\"Quota Exceeded\""] ; [+5]
       12 GETTABLEKS                       R2 R0 K2 ["responseBody"]
       14 JUMPIFNOTEQKS                    R2 K4 ["\"Quota Checking Failed\""] ; [+3]
       16 LOADK                            R1 K5 ["quota_exceeded"]
       17 JUMP                             ; [+5]
       18 LOADK                            R1 K6 ["too_many_request"]
       19 JUMP                             ; [+3]
       20 LOADK                            R1 K5 ["quota_exceeded"]
       21 JUMP                             ; [+1]
       22 LOADK                            R1 K7 ["request_failed"]
       23 DUPTABLE                         R2 K10 [{"type", "error"}]
       24 LOADK                            R3 K9 ["error"]
       25 SETTABLEKS                       R3 R2 K8 ["type"]
       27 SETTABLEKS                       R1 R2 K9 ["error"]
       29 GETUPVAL                         R3 1
       30 MOVE                             R4 R2
       31 CALL                             R3 1 0
       32 RETURN                           R0 0

PROTO_10:
        0 NEWTABLE                         R2 0 0
        2 LOADN                            R3 0
        3 GETUPVAL                         R4 0
        4 LOADB                            R6 0
        5 NAMECALL                         R4 R4 K0 ["GenerateGUID"]
        7 CALL                             R4 2 1
        8 GETUPVAL                         R6 1
        9 GETTABLEKS                       R5 R6 K1 ["set"]
       11 GETTABLEKS                       R6 R0 K2 ["messageGuid"]
       13 MOVE                             R7 R4
       14 CALL                             R5 2 0
       15 NEWCLOSURE                       R5 P0
       16 CAPTURE                          UPVAL U2
       17 CAPTURE                          UPVAL U3
       18 CAPTURE                          UPVAL U0
       19 CAPTURE                          VAL R2
       20 CAPTURE                          REF R3
       21 CAPTURE                          VAL R1
       22 CAPTURE                          UPVAL U4
       23 CAPTURE                          UPVAL U5
       24 GETUPVAL                         R6 6
       25 JUMPIFNOT                        R6 ; [+4]
       26 GETUPVAL                         R6 6
       27 NAMECALL                         R6 R6 K3 ["Disconnect"]
       29 CALL                             R6 1 0
       30 MOVE                             R6 R5
       31 MOVE                             R7 R4
       32 CALL                             R6 1 1
       33 SETUPVAL                         R6 6
       34 GETUPVAL                         R6 7
       35 JUMPIFNOT                        R6 ; [+8]
       36 GETUPVAL                         R7 7
       37 GETTABLEKS                       R6 R7 K4 ["Unloading"]
       39 NEWCLOSURE                       R8 P1
       40 CAPTURE                          UPVAL U6
       41 NAMECALL                         R6 R6 K5 ["Connect"]
       43 CALL                             R6 2 0
       44 GETUPVAL                         R6 8
       45 GETUPVAL                         R7 9
       46 MOVE                             R8 R0
       47 MOVE                             R9 R4
       48 CALL                             R6 3 1
       49 NEWCLOSURE                       R8 P2
       50 CAPTURE                          UPVAL U10
       51 CAPTURE                          VAL R1
       52 NAMECALL                         R6 R6 K6 ["catch"]
       54 CALL                             R6 2 0
       55 CLOSEUPVALS                      R3
       56 RETURN                           R0 0

PROTO_11:
        0 LOADK                            R4 K0 ["NotificationService"]
        1 NAMECALL                         R2 R0 K1 ["GetService"]
        3 CALL                             R2 2 1
        4 LOADK                            R5 K2 ["StudioService"]
        5 NAMECALL                         R3 R0 K1 ["GetService"]
        7 CALL                             R3 2 1
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          UPVAL U0
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          UPVAL U3
       13 CAPTURE                          UPVAL U4
       14 CAPTURE                          VAL R2
       15 CAPTURE                          UPVAL U5
       16 CAPTURE                          VAL R1
       17 CAPTURE                          UPVAL U6
       18 CAPTURE                          VAL R3
       19 CAPTURE                          UPVAL U7
       20 RETURN                           R4 1

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["isProcessing"]
        2 JUMPIFNOT                        R1 ; [+1]
        3 RETURN                           R0 0
        4 LOADB                            R1 1
        5 SETTABLEKS                       R1 R0 K0 ["isProcessing"]
        7 GETTABLEKS                       R2 R0 K1 ["receivedResponses"]
        9 GETTABLEKS                       R3 R0 K2 ["currentSequenceNumber"]
       11 GETTABLE                         R1 R2 R3
       12 JUMPIFEQKNIL                     R1 ; [+58]
       14 GETIMPORT                        R2 K4 [pcall]
       16 GETTABLEKS                       R3 R0 K5 ["callback"]
       18 GETTABLEKS                       R4 R1 K6 ["event"]
       20 CALL                             R2 2 0
       21 GETTABLEKS                       R2 R0 K2 ["currentSequenceNumber"]
       23 JUMPIFNOTEQKN                    R2 K7 [0] ; [+17]
       25 GETIMPORT                        R3 K10 [os.clock]
       27 CALL                             R3 0 1
       28 GETTABLEKS                       R4 R0 K11 ["startTime"]
       30 SUB                              R2 R3 R4
       31 GETUPVAL                         R5 0
       32 GETTABLEKS                       R4 R5 K12 ["get"]
       34 CALL                             R4 0 1
       35 GETTABLEKS                       R3 R4 K13 ["EventLogger"]
       37 GETTABLEKS                       R4 R3 K14 ["logInitialResponseLatency"]
       39 MOVE                             R5 R2
       40 CALL                             R4 1 0
       41 GETTABLEKS                       R2 R1 K6 ["event"]
       43 JUMPIFNOT                        R2 ; [+16]
       44 GETUPVAL                         R3 1
       45 GETTABLEKS                       R2 R3 K15 ["isTerminalEventType"]
       47 GETTABLEKS                       R3 R1 K6 ["event"]
       49 CALL                             R2 1 1
       50 JUMPIFNOT                        R2 ; [+9]
       51 GETUPVAL                         R2 2
       52 GETTABLEKS                       R3 R0 K16 ["requestId"]
       54 LOADNIL                          R4
       55 SETTABLE                         R4 R2 R3
       56 LOADB                            R2 0
       57 SETTABLEKS                       R2 R0 K0 ["isProcessing"]
       59 RETURN                           R0 0
       60 GETTABLEKS                       R2 R0 K2 ["currentSequenceNumber"]
       62 ADDK                             R2 R2 K17 [1]
       63 SETTABLEKS                       R2 R0 K2 ["currentSequenceNumber"]
       65 GETTABLEKS                       R2 R0 K1 ["receivedResponses"]
       67 GETTABLEKS                       R3 R0 K2 ["currentSequenceNumber"]
       69 GETTABLE                         R1 R2 R3
       70 JUMPBACK                         ; [-59]
       71 LOADB                            R2 0
       72 SETTABLEKS                       R2 R0 K0 ["isProcessing"]
       74 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+10]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K0 ["Json"]
        6 GETTABLEKS                       R0 R1 K1 ["decode"]
        8 GETUPVAL                         R2 2
        9 GETTABLEKS                       R1 R2 K2 ["detail"]
       11 CALL                             R0 1 1
       12 RETURN                           R0 1
       13 GETUPVAL                         R0 3
       14 GETUPVAL                         R3 2
       15 GETTABLEKS                       R2 R3 K2 ["detail"]
       17 NAMECALL                         R0 R0 K3 ["JSONDecode"]
       19 CALL                             R0 2 1
       20 RETURN                           R0 1

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["namespace"]
        2 JUMPIFEQKS                       R1 K1 ["AssistantPlugin"] ; [+2]
        4 RETURN                           R0 0
        5 GETIMPORT                        R1 K3 [pcall]
        7 NEWCLOSURE                       R2 P0
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          VAL R0
       11 CAPTURE                          UPVAL U2
       12 CALL                             R1 1 2
       13 JUMPIF                           R1 ; [+7]
       14 GETIMPORT                        R3 K5 [warn]
       16 LOADK                            R4 K6 ["Failed to parse notification event detail:"]
       17 GETTABLEKS                       R5 R0 K7 ["detail"]
       19 CALL                             R3 2 0
       20 RETURN                           R0 0
       21 GETUPVAL                         R4 3
       22 GETTABLEKS                       R5 R2 K8 ["requestId"]
       24 GETTABLE                         R3 R4 R5
       25 JUMPIF                           R3 ; [+1]
       26 RETURN                           R0 0
       27 GETTABLEKS                       R4 R3 K9 ["receivedResponses"]
       29 GETTABLEKS                       R5 R2 K10 ["sequenceNumber"]
       31 SETTABLE                         R2 R4 R5
       32 GETTABLEKS                       R4 R3 K11 ["isProcessing"]
       34 JUMPIF                           R4 ; [+5]
       35 GETIMPORT                        R4 K14 [task.spawn]
       37 GETUPVAL                         R5 4
       38 MOVE                             R6 R3
       39 CALL                             R4 2 0
       40 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R0 R1 K0 ["RobloxEventReceived"]
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 CAPTURE                          UPVAL U4
       10 CAPTURE                          UPVAL U5
       11 CAPTURE                          UPVAL U6
       12 NAMECALL                         R0 R0 K1 ["Connect"]
       14 CALL                             R0 2 1
       15 SETUPVAL                         R0 0
       16 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 LOADNIL                          R0
        7 SETUPVAL                         R0 0
        8 GETIMPORT                        R0 K3 [table.clear]
       10 GETUPVAL                         R1 1
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 LOADNIL                          R3
        3 SETTABLE                         R3 R1 R2
        4 GETUPVAL                         R1 2
        5 MOVE                             R2 R0
        6 GETUPVAL                         R3 3
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R2 0
        1 LOADB                            R4 0
        2 NAMECALL                         R2 R2 K0 ["GenerateGUID"]
        4 CALL                             R2 2 1
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R3 R4 K1 ["set"]
        8 GETTABLEKS                       R4 R0 K2 ["messageGuid"]
       10 MOVE                             R5 R2
       11 CALL                             R3 2 0
       12 GETUPVAL                         R3 2
       13 JUMPIFNOT                        R3 ; [+1]
       14 JUMP                             ; [+13]
       15 GETUPVAL                         R4 3
       16 GETTABLEKS                       R3 R4 K3 ["RobloxEventReceived"]
       18 NEWCLOSURE                       R5 P0
       19 CAPTURE                          UPVAL U4
       20 CAPTURE                          UPVAL U5
       21 CAPTURE                          UPVAL U0
       22 CAPTURE                          UPVAL U6
       23 CAPTURE                          UPVAL U7
       24 NAMECALL                         R3 R3 K4 ["Connect"]
       26 CALL                             R3 2 1
       27 SETUPVAL                         R3 2
       28 GETUPVAL                         R3 6
       29 DUPTABLE                         R4 K11 [{"callback", "receivedResponses", "currentSequenceNumber", "startTime", "isProcessing", "requestId"}]
       30 SETTABLEKS                       R1 R4 K5 ["callback"]
       32 NEWTABLE                         R5 0 0
       34 SETTABLEKS                       R5 R4 K6 ["receivedResponses"]
       36 LOADN                            R5 0
       37 SETTABLEKS                       R5 R4 K7 ["currentSequenceNumber"]
       39 GETIMPORT                        R5 K14 [os.clock]
       41 CALL                             R5 0 1
       42 SETTABLEKS                       R5 R4 K8 ["startTime"]
       44 LOADB                            R5 0
       45 SETTABLEKS                       R5 R4 K9 ["isProcessing"]
       47 SETTABLEKS                       R2 R4 K10 ["requestId"]
       49 SETTABLE                         R4 R3 R2
       50 GETUPVAL                         R3 8
       51 GETUPVAL                         R4 9
       52 MOVE                             R5 R0
       53 MOVE                             R6 R2
       54 CALL                             R3 3 1
       55 NEWCLOSURE                       R5 P1
       56 CAPTURE                          UPVAL U6
       57 CAPTURE                          VAL R2
       58 CAPTURE                          UPVAL U10
       59 CAPTURE                          VAL R1
       60 NAMECALL                         R3 R3 K15 ["catch"]
       62 CALL                             R3 2 0
       63 RETURN                           R0 0

PROTO_19:
        0 LOADK                            R4 K0 ["NotificationService"]
        1 NAMECALL                         R2 R0 K1 ["GetService"]
        3 CALL                             R2 2 1
        4 LOADK                            R5 K2 ["StudioService"]
        5 NAMECALL                         R3 R0 K1 ["GetService"]
        7 CALL                             R3 2 1
        8 NEWTABLE                         R4 0 0
       10 LOADNIL                          R5
       11 NEWCLOSURE                       R6 P0
       12 CAPTURE                          UPVAL U0
       13 CAPTURE                          UPVAL U1
       14 CAPTURE                          VAL R4
       15 NEWCLOSURE                       R7 P1
       16 CAPTURE                          REF R5
       17 CAPTURE                          VAL R2
       18 CAPTURE                          UPVAL U2
       19 CAPTURE                          UPVAL U3
       20 CAPTURE                          UPVAL U4
       21 CAPTURE                          VAL R4
       22 CAPTURE                          VAL R6
       23 JUMPIFNOT                        R1 ; [+8]
       24 GETTABLEKS                       R8 R1 K3 ["Unloading"]
       26 NEWCLOSURE                       R10 P2
       27 CAPTURE                          REF R5
       28 CAPTURE                          VAL R4
       29 NAMECALL                         R8 R8 K4 ["Connect"]
       31 CALL                             R8 2 0
       32 NEWCLOSURE                       R8 P3
       33 CAPTURE                          UPVAL U4
       34 CAPTURE                          UPVAL U5
       35 CAPTURE                          REF R5
       36 CAPTURE                          VAL R2
       37 CAPTURE                          UPVAL U2
       38 CAPTURE                          UPVAL U3
       39 CAPTURE                          VAL R4
       40 CAPTURE                          VAL R6
       41 CAPTURE                          UPVAL U6
       42 CAPTURE                          VAL R3
       43 CAPTURE                          UPVAL U7
       44 CLOSEUPVALS                      R5
       45 RETURN                           R8 1

PROTO_20:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+5]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 MOVE                             R4 R1
        6 CALL                             R2 2 1
        7 RETURN                           R2 1
        8 LOADK                            R5 K0 ["NotificationService"]
        9 NAMECALL                         R3 R0 K1 ["GetService"]
       11 CALL                             R3 2 1
       12 LOADK                            R6 K2 ["StudioService"]
       13 NAMECALL                         R4 R0 K1 ["GetService"]
       15 CALL                             R4 2 1
       16 NEWCLOSURE                       R2 P0
       17 CAPTURE                          UPVAL U2
       18 CAPTURE                          UPVAL U3
       19 CAPTURE                          UPVAL U4
       20 CAPTURE                          UPVAL U5
       21 CAPTURE                          UPVAL U6
       22 CAPTURE                          VAL R3
       23 CAPTURE                          UPVAL U7
       24 CAPTURE                          VAL R1
       25 CAPTURE                          UPVAL U8
       26 CAPTURE                          VAL R4
       27 CAPTURE                          UPVAL U9
       28 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["HttpService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R4 R0 K10 ["Packages"]
       17 GETTABLEKS                       R3 R4 K11 ["AssistantUI"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R6 R0 K12 ["Src"]
       24 GETTABLEKS                       R5 R6 K13 ["Util"]
       26 GETTABLEKS                       R4 R5 K14 ["ExperimentFeature"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K9 [require]
       31 GETTABLEKS                       R6 R0 K10 ["Packages"]
       33 GETTABLEKS                       R5 R6 K15 ["Framework"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K9 [require]
       38 GETTABLEKS                       R7 R0 K10 ["Packages"]
       40 GETTABLEKS                       R6 R7 K16 ["LuauPolyfill"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K9 [require]
       45 GETTABLEKS                       R8 R0 K10 ["Packages"]
       47 GETTABLEKS                       R7 R8 K17 ["ModelContextProtocol"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K9 [require]
       52 GETTABLEKS                       R9 R0 K12 ["Src"]
       54 GETTABLEKS                       R8 R9 K18 ["Types"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K9 [require]
       59 GETTABLEKS                       R11 R0 K12 ["Src"]
       61 GETTABLEKS                       R10 R11 K13 ["Util"]
       63 GETTABLEKS                       R9 R10 K19 ["stringCoalesce"]
       65 CALL                             R8 1 1
       66 GETIMPORT                        R9 K9 [require]
       68 GETTABLEKS                       R12 R0 K12 ["Src"]
       70 GETTABLEKS                       R11 R12 K20 ["Flags"]
       72 GETTABLEKS                       R10 R11 K21 ["FFlagMCPAssistantTooManyRequestLog"]
       74 CALL                             R9 1 1
       75 GETIMPORT                        R10 K9 [require]
       77 GETTABLEKS                       R13 R0 K12 ["Src"]
       79 GETTABLEKS                       R12 R13 K20 ["Flags"]
       81 GETTABLEKS                       R11 R12 K22 ["FIntConvAIAssistantMaxTokens"]
       83 CALL                             R10 1 1
       84 GETIMPORT                        R11 K9 [require]
       86 GETTABLEKS                       R14 R0 K12 ["Src"]
       88 GETTABLEKS                       R13 R14 K20 ["Flags"]
       90 GETTABLEKS                       R12 R13 K23 ["FStringMCPAssistantThinkingMode"]
       92 CALL                             R11 1 1
       93 GETTABLEKS                       R14 R2 K20 ["Flags"]
       95 GETTABLEKS                       R13 R14 K24 ["Shared"]
       97 GETTABLEKS                       R12 R13 K25 ["FFlagAssistantJsonEncoder"]
       99 GETTABLEKS                       R15 R2 K20 ["Flags"]
      101 GETTABLEKS                       R14 R15 K24 ["Shared"]
      103 GETTABLEKS                       R13 R14 K26 ["FFlagAssistantMultipleExternalMCPServers"]
      105 GETTABLEKS                       R16 R2 K20 ["Flags"]
      107 GETTABLEKS                       R15 R16 K24 ["Shared"]
      109 GETTABLEKS                       R14 R15 K27 ["FFlagDebugLogAssistantUI"]
      111 GETTABLEKS                       R17 R2 K20 ["Flags"]
      113 GETTABLEKS                       R16 R17 K24 ["Shared"]
      115 GETTABLEKS                       R15 R16 K28 ["FStringMCPAssistantCustomModelName"]
      117 GETTABLEKS                       R18 R2 K20 ["Flags"]
      119 GETTABLEKS                       R17 R18 K24 ["Shared"]
      121 GETTABLEKS                       R16 R17 K29 ["FFlagEnableSubagents"]
      123 GETTABLEKS                       R19 R2 K20 ["Flags"]
      125 GETTABLEKS                       R18 R19 K24 ["Shared"]
      127 GETTABLEKS                       R17 R18 K30 ["FStringMCPAssistantURLOverride"]
      129 GETTABLEKS                       R20 R2 K20 ["Flags"]
      131 GETTABLEKS                       R19 R20 K24 ["Shared"]
      133 GETTABLEKS                       R18 R19 K31 ["FFlagAssistantTestModeDropdown"]
      135 GETTABLEKS                       R21 R2 K20 ["Flags"]
      137 GETTABLEKS                       R20 R21 K24 ["Shared"]
      139 GETTABLEKS                       R19 R20 K32 ["FStringSubagentURLOverride"]
      141 GETTABLEKS                       R21 R2 K33 ["Utils"]
      143 GETTABLEKS                       R20 R21 K34 ["ServerStreamIdStore"]
      145 GETTABLEKS                       R22 R2 K33 ["Utils"]
      147 GETTABLEKS                       R21 R22 K35 ["StreamEventUtils"]
      149 GETTABLEKS                       R23 R4 K36 ["Http"]
      151 GETTABLEKS                       R22 R23 K37 ["Networking"]
      153 GETTABLEKS                       R23 R22 K38 ["new"]
      155 DUPTABLE                         R24 K41 [{"isInternal", "loggingLevel"}]
      156 LOADB                            R25 1
      157 SETTABLEKS                       R25 R24 K39 ["isInternal"]
      159 MOVE                             R26 R14
      160 CALL                             R26 0 1
      161 JUMPIFNOT                        R26 ; [+2]
      162 LOADN                            R25 4
      163 JUMP                             ; [+1]
      164 LOADN                            R25 0
      165 SETTABLEKS                       R25 R24 K40 ["loggingLevel"]
      167 CALL                             R23 1 1
      168 GETTABLEKS                       R25 R2 K42 ["Guest"]
      170 GETTABLEKS                       R24 R25 K43 ["Environment"]
      172 GETTABLEKS                       R26 R4 K36 ["Http"]
      174 GETTABLEKS                       R25 R26 K44 ["HttpResponse"]
      176 LOADNIL                          R26
      177 GETTABLEKS                       R27 R4 K45 ["Url"]
      179 GETTABLEKS                       R28 R27 K38 ["new"]
      181 LOADNIL                          R29
      182 CALL                             R28 1 1
      183 LOADK                            R30 K46 ["%*/studio-assistant/v1/conversation"]
      184 GETTABLEKS                       R32 R28 K47 ["APIS_URL"]
      186 NAMECALL                         R30 R30 K48 ["format"]
      188 CALL                             R30 2 1
      189 MOVE                             R29 R30
      190 LOADK                            R31 K49 ["%*/studio-assistant/v1/subagent-conversation"]
      191 GETTABLEKS                       R33 R28 K47 ["APIS_URL"]
      193 NAMECALL                         R31 R31 K48 ["format"]
      195 CALL                             R31 2 1
      196 MOVE                             R30 R31
      197 DUPCLOSURE                       R31 K50 [PROTO_0]
      198 CAPTURE                          VAL R30
      199 CAPTURE                          VAL R29
      200 DUPCLOSURE                       R32 K51 [PROTO_1]
      201 CAPTURE                          VAL R8
      202 CAPTURE                          VAL R15
      203 CAPTURE                          VAL R11
      204 CAPTURE                          VAL R10
      205 CAPTURE                          VAL R16
      206 CAPTURE                          VAL R3
      207 CAPTURE                          VAL R18
      208 CAPTURE                          VAL R2
      209 CAPTURE                          VAL R19
      210 CAPTURE                          VAL R17
      211 CAPTURE                          VAL R30
      212 CAPTURE                          VAL R29
      213 CAPTURE                          VAL R12
      214 CAPTURE                          VAL R6
      215 CAPTURE                          VAL R23
      216 CAPTURE                          VAL R13
      217 CAPTURE                          VAL R1
      218 DUPTABLE                         R33 K55 [{"QUOTA_EXCEEDED", "TOO_MANY_REQUESTS", "REQUEST_FAILED"}]
      219 LOADK                            R34 K56 ["quota_exceeded"]
      220 SETTABLEKS                       R34 R33 K52 ["QUOTA_EXCEEDED"]
      222 LOADK                            R34 K57 ["too_many_request"]
      223 SETTABLEKS                       R34 R33 K53 ["TOO_MANY_REQUESTS"]
      225 LOADK                            R34 K58 ["request_failed"]
      226 SETTABLEKS                       R34 R33 K54 ["REQUEST_FAILED"]
      228 DUPCLOSURE                       R34 K59 [PROTO_2]
      229 CAPTURE                          VAL R9
      230 CAPTURE                          VAL R33
      231 NEWCLOSURE                       R35 P3
      232 CAPTURE                          VAL R1
      233 CAPTURE                          VAL R20
      234 CAPTURE                          VAL R12
      235 CAPTURE                          VAL R6
      236 CAPTURE                          VAL R24
      237 CAPTURE                          REF R26
      238 CAPTURE                          VAL R32
      239 CAPTURE                          VAL R9
      240 DUPCLOSURE                       R36 K60 [PROTO_19]
      241 CAPTURE                          VAL R24
      242 CAPTURE                          VAL R21
      243 CAPTURE                          VAL R12
      244 CAPTURE                          VAL R6
      245 CAPTURE                          VAL R1
      246 CAPTURE                          VAL R20
      247 CAPTURE                          VAL R32
      248 CAPTURE                          VAL R34
      249 NEWCLOSURE                       R37 P5
      250 CAPTURE                          VAL R16
      251 CAPTURE                          VAL R36
      252 CAPTURE                          VAL R1
      253 CAPTURE                          VAL R20
      254 CAPTURE                          VAL R12
      255 CAPTURE                          VAL R6
      256 CAPTURE                          VAL R24
      257 CAPTURE                          REF R26
      258 CAPTURE                          VAL R32
      259 CAPTURE                          VAL R9
      260 DUPTABLE                         R38 K62 [{"createRequestHandler"}]
      261 SETTABLEKS                       R37 R38 K61 ["createRequestHandler"]
      263 CLOSEUPVALS                      R26
      264 RETURN                           R38 1
