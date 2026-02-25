PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 CALL                             R4 0 1
        3 LOADK                            R5 K0 ["auto"]
        4 CALL                             R3 2 1
        5 GETUPVAL                         R4 0
        6 GETUPVAL                         R5 2
        7 CALL                             R5 0 1
        8 LOADK                            R6 K0 ["auto"]
        9 CALL                             R4 2 1
       10 DUPTABLE                         R5 K5 [{"system", "llm_config", "messages", "tools"}]
       11 GETTABLEKS                       R6 R1 K1 ["system"]
       13 SETTABLEKS                       R6 R5 K1 ["system"]
       15 DUPTABLE                         R6 K10 [{"model", "thinking_mode", "max_tokens", "parallel_tool_calls"}]
       16 SETTABLEKS                       R3 R6 K6 ["model"]
       18 SETTABLEKS                       R4 R6 K7 ["thinking_mode"]
       20 GETUPVAL                         R7 3
       21 CALL                             R7 0 1
       22 SETTABLEKS                       R7 R6 K8 ["max_tokens"]
       24 LOADB                            R7 0
       25 SETTABLEKS                       R7 R6 K9 ["parallel_tool_calls"]
       27 SETTABLEKS                       R6 R5 K2 ["llm_config"]
       29 GETTABLEKS                       R6 R1 K3 ["messages"]
       31 SETTABLEKS                       R6 R5 K3 ["messages"]
       33 GETTABLEKS                       R6 R1 K4 ["tools"]
       35 SETTABLEKS                       R6 R5 K4 ["tools"]
       37 DUPTABLE                         R6 K18 [{"threadId", "messageId", "requestId", "conversation", "firstMessage", "useAgenticMode", "isDebugMode"}]
       38 GETTABLEKS                       R7 R1 K11 ["threadId"]
       40 SETTABLEKS                       R7 R6 K11 ["threadId"]
       42 GETTABLEKS                       R7 R1 K19 ["messageGuid"]
       44 SETTABLEKS                       R7 R6 K12 ["messageId"]
       46 SETTABLEKS                       R2 R6 K13 ["requestId"]
       48 SETTABLEKS                       R5 R6 K14 ["conversation"]
       50 GETTABLEKS                       R7 R1 K20 ["isFirstMessage"]
       52 SETTABLEKS                       R7 R6 K15 ["firstMessage"]
       54 GETTABLEKS                       R7 R1 K21 ["isAgenticMode"]
       56 SETTABLEKS                       R7 R6 K16 ["useAgenticMode"]
       58 GETUPVAL                         R9 4
       59 GETTABLEKS                       R8 R9 K23 ["isTestAutomationEnabled"]
       61 CALL                             R8 0 1
       62 ORK                              R7 R8 K22 []
       63 SETTABLEKS                       R7 R6 K17 ["isDebugMode"]
       65 GETUPVAL                         R7 5
       66 CALL                             R7 0 1
       67 GETUPVAL                         R8 0
       68 MOVE                             R9 R7
       69 GETUPVAL                         R10 6
       70 CALL                             R8 2 1
       71 NEWTABLE                         R9 1 0
       73 LOADK                            R10 K24 ["application/json"]
       74 SETTABLEKS                       R10 R9 K25 ["Content-Type"]
       76 JUMPIFEQKS                       R7 K26 [""] ; [+10]
       78 NAMECALL                         R11 R0 K27 ["GetUserId"]
       80 CALL                             R11 1 -1
       81 FASTCALL                         TOSTRING ; [+2]
       82 GETIMPORT                        R10 K29 [tostring]
       84 CALL                             R10 -1 1
       85 SETTABLEKS                       R10 R9 K30 ["robloxctx-authenticated-userid"]
       87 GETUPVAL                         R10 7
       88 CALL                             R10 0 1
       89 JUMPIFNOT                        R10 ; [+15]
       90 GETUPVAL                         R12 8
       91 GETTABLEKS                       R11 R12 K31 ["Json"]
       93 GETTABLEKS                       R10 R11 K32 ["encode"]
       95 MOVE                             R11 R6
       96 CALL                             R10 1 1
       97 GETUPVAL                         R11 9
       98 MOVE                             R13 R8
       99 MOVE                             R14 R10
      100 MOVE                             R15 R9
      101 NAMECALL                         R11 R11 K33 ["post"]
      103 CALL                             R11 4 -1
      104 RETURN                           R11 -1
      105 GETUPVAL                         R10 10
      106 CALL                             R10 0 1
      107 JUMPIFNOT                        R10 ; [+19]
      108 GETUPVAL                         R10 11
      109 MOVE                             R12 R6
      110 NAMECALL                         R10 R10 K34 ["JSONEncode"]
      112 CALL                             R10 2 1
      113 LOADK                            R13 K35 ["%[%]"]
      114 LOADK                            R14 K36 ["{}"]
      115 NAMECALL                         R11 R10 K37 ["gsub"]
      117 CALL                             R11 3 1
      118 MOVE                             R10 R11
      119 GETUPVAL                         R11 9
      120 MOVE                             R13 R8
      121 MOVE                             R14 R10
      122 MOVE                             R15 R9
      123 NAMECALL                         R11 R11 K33 ["post"]
      125 CALL                             R11 4 -1
      126 RETURN                           R11 -1
      127 GETUPVAL                         R10 9
      128 MOVE                             R12 R8
      129 GETUPVAL                         R13 11
      130 MOVE                             R15 R6
      131 NAMECALL                         R13 R13 K34 ["JSONEncode"]
      133 CALL                             R13 2 1
      134 MOVE                             R14 R9
      135 NAMECALL                         R10 R10 K33 ["post"]
      137 CALL                             R10 4 -1
      138 RETURN                           R10 -1

PROTO_1:
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

PROTO_2:
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

PROTO_3:
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

PROTO_4:
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

PROTO_5:
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

PROTO_6:
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

PROTO_7:
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
       21 GETTABLEKS                       R3 R2 K8 ["requestId"]
       23 GETUPVAL                         R4 3
       24 JUMPIFEQ                         R3 R4 ; [+2]
       26 RETURN                           R0 0
       27 GETUPVAL                         R3 4
       28 GETTABLEKS                       R4 R2 K9 ["sequenceNumber"]
       30 SETTABLE                         R2 R3 R4
       31 GETUPVAL                         R4 4
       32 GETUPVAL                         R5 5
       33 GETTABLE                         R3 R4 R5
       34 JUMPIFEQKNIL                     R3 ; [+30]
       36 GETUPVAL                         R4 6
       37 GETTABLEKS                       R5 R3 K10 ["event"]
       39 CALL                             R4 1 0
       40 GETUPVAL                         R4 5
       41 JUMPIFNOTEQKN                    R4 K11 [0] ; [+16]
       43 GETIMPORT                        R5 K14 [os.clock]
       45 CALL                             R5 0 1
       46 GETUPVAL                         R6 7
       47 SUB                              R4 R5 R6
       48 GETUPVAL                         R7 8
       49 GETTABLEKS                       R6 R7 K15 ["get"]
       51 CALL                             R6 0 1
       52 GETTABLEKS                       R5 R6 K16 ["EventLogger"]
       54 GETTABLEKS                       R6 R5 K17 ["logInitialResponseLatency"]
       56 MOVE                             R7 R4
       57 CALL                             R6 1 0
       58 GETUPVAL                         R4 5
       59 ADDK                             R4 R4 K18 [1]
       60 SETUPVAL                         R4 5
       61 GETUPVAL                         R4 4
       62 GETUPVAL                         R5 5
       63 GETTABLE                         R3 R4 R5
       64 JUMPBACK                         ; [-31]
       65 RETURN                           R0 0

PROTO_8:
        0 GETIMPORT                        R1 K2 [os.clock]
        2 CALL                             R1 0 1
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R2 R3 K3 ["RobloxEventReceived"]
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          UPVAL U3
       10 CAPTURE                          VAL R0
       11 CAPTURE                          UPVAL U4
       12 CAPTURE                          UPVAL U5
       13 CAPTURE                          UPVAL U6
       14 CAPTURE                          VAL R1
       15 CAPTURE                          UPVAL U7
       16 NAMECALL                         R2 R2 K4 ["Connect"]
       18 CALL                             R2 2 -1
       19 RETURN                           R2 -1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 LOADNIL                          R0
        7 SETUPVAL                         R0 0
        8 RETURN                           R0 0

PROTO_10:
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

PROTO_11:
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
       24 NEWCLOSURE                       R6 P1
       25 CAPTURE                          UPVAL U5
       26 CAPTURE                          UPVAL U2
       27 CAPTURE                          UPVAL U3
       28 CAPTURE                          UPVAL U0
       29 CAPTURE                          VAL R2
       30 CAPTURE                          REF R3
       31 CAPTURE                          VAL R1
       32 CAPTURE                          UPVAL U4
       33 GETUPVAL                         R7 6
       34 JUMPIFNOT                        R7 ; [+4]
       35 GETUPVAL                         R7 6
       36 NAMECALL                         R7 R7 K3 ["Disconnect"]
       38 CALL                             R7 1 0
       39 GETUPVAL                         R7 7
       40 CALL                             R7 0 1
       41 JUMPIFNOT                        R7 ; [+5]
       42 MOVE                             R7 R5
       43 MOVE                             R8 R4
       44 CALL                             R7 1 1
       45 SETUPVAL                         R7 6
       46 JUMP                             ; [+21]
       47 GETIMPORT                        R8 K6 [os.clock]
       49 CALL                             R8 0 1
       50 GETUPVAL                         R10 5
       51 GETTABLEKS                       R9 R10 K7 ["RobloxEventReceived"]
       53 NEWCLOSURE                       R11 P2
       54 CAPTURE                          UPVAL U2
       55 CAPTURE                          UPVAL U3
       56 CAPTURE                          UPVAL U0
       57 CAPTURE                          VAL R4
       58 CAPTURE                          VAL R2
       59 CAPTURE                          REF R3
       60 CAPTURE                          VAL R1
       61 CAPTURE                          VAL R8
       62 CAPTURE                          UPVAL U4
       63 NAMECALL                         R9 R9 K8 ["Connect"]
       65 CALL                             R9 2 1
       66 MOVE                             R7 R9
       67 SETUPVAL                         R7 6
       68 GETUPVAL                         R7 8
       69 JUMPIFNOT                        R7 ; [+8]
       70 GETUPVAL                         R8 8
       71 GETTABLEKS                       R7 R8 K9 ["Unloading"]
       73 NEWCLOSURE                       R9 P3
       74 CAPTURE                          UPVAL U6
       75 NAMECALL                         R7 R7 K8 ["Connect"]
       77 CALL                             R7 2 0
       78 GETUPVAL                         R7 9
       79 GETUPVAL                         R8 10
       80 MOVE                             R9 R0
       81 MOVE                             R10 R4
       82 CALL                             R7 3 1
       83 NEWCLOSURE                       R9 P4
       84 CAPTURE                          UPVAL U11
       85 CAPTURE                          VAL R1
       86 NAMECALL                         R7 R7 K10 ["catch"]
       88 CALL                             R7 2 0
       89 CLOSEUPVALS                      R3
       90 RETURN                           R0 0

PROTO_12:
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
       16 CAPTURE                          UPVAL U6
       17 CAPTURE                          VAL R1
       18 CAPTURE                          UPVAL U7
       19 CAPTURE                          VAL R3
       20 CAPTURE                          UPVAL U8
       21 RETURN                           R4 1

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
       72 GETTABLEKS                       R10 R11 K21 ["FFlagAssistantSyncNotificationServiceEvent"]
       74 CALL                             R9 1 1
       75 GETIMPORT                        R10 K9 [require]
       77 GETTABLEKS                       R13 R0 K12 ["Src"]
       79 GETTABLEKS                       R12 R13 K20 ["Flags"]
       81 GETTABLEKS                       R11 R12 K22 ["FFlagMCPAssistantTooManyRequestLog"]
       83 CALL                             R10 1 1
       84 GETIMPORT                        R11 K9 [require]
       86 GETTABLEKS                       R14 R0 K12 ["Src"]
       88 GETTABLEKS                       R13 R14 K20 ["Flags"]
       90 GETTABLEKS                       R12 R13 K23 ["FIntConvAIAssistantMaxTokens"]
       92 CALL                             R11 1 1
       93 GETIMPORT                        R12 K9 [require]
       95 GETTABLEKS                       R15 R0 K12 ["Src"]
       97 GETTABLEKS                       R14 R15 K20 ["Flags"]
       99 GETTABLEKS                       R13 R14 K24 ["FStringMCPAssistantThinkingMode"]
      101 CALL                             R12 1 1
      102 GETTABLEKS                       R15 R2 K20 ["Flags"]
      104 GETTABLEKS                       R14 R15 K25 ["Shared"]
      106 GETTABLEKS                       R13 R14 K26 ["FFlagAssistantJsonEncoder"]
      108 GETTABLEKS                       R16 R2 K20 ["Flags"]
      110 GETTABLEKS                       R15 R16 K25 ["Shared"]
      112 GETTABLEKS                       R14 R15 K27 ["FFlagAssistantMultipleExternalMCPServers"]
      114 GETTABLEKS                       R17 R2 K20 ["Flags"]
      116 GETTABLEKS                       R16 R17 K25 ["Shared"]
      118 GETTABLEKS                       R15 R16 K28 ["FFlagDebugLogAssistantUI"]
      120 GETTABLEKS                       R18 R2 K20 ["Flags"]
      122 GETTABLEKS                       R17 R18 K25 ["Shared"]
      124 GETTABLEKS                       R16 R17 K29 ["FStringMCPAssistantCustomModelName"]
      126 GETTABLEKS                       R19 R2 K20 ["Flags"]
      128 GETTABLEKS                       R18 R19 K25 ["Shared"]
      130 GETTABLEKS                       R17 R18 K30 ["FStringMCPAssistantURLOverride"]
      132 GETTABLEKS                       R19 R2 K31 ["Utils"]
      134 GETTABLEKS                       R18 R19 K32 ["ServerStreamIdStore"]
      136 GETTABLEKS                       R20 R4 K33 ["Http"]
      138 GETTABLEKS                       R19 R20 K34 ["Networking"]
      140 GETTABLEKS                       R20 R19 K35 ["new"]
      142 DUPTABLE                         R21 K38 [{"isInternal", "loggingLevel"}]
      143 LOADB                            R22 1
      144 SETTABLEKS                       R22 R21 K36 ["isInternal"]
      146 MOVE                             R23 R15
      147 CALL                             R23 0 1
      148 JUMPIFNOT                        R23 ; [+2]
      149 LOADN                            R22 4
      150 JUMP                             ; [+1]
      151 LOADN                            R22 0
      152 SETTABLEKS                       R22 R21 K37 ["loggingLevel"]
      154 CALL                             R20 1 1
      155 GETTABLEKS                       R22 R2 K39 ["Guest"]
      157 GETTABLEKS                       R21 R22 K40 ["Environment"]
      159 GETTABLEKS                       R23 R4 K33 ["Http"]
      161 GETTABLEKS                       R22 R23 K41 ["HttpResponse"]
      163 LOADNIL                          R23
      164 GETTABLEKS                       R24 R4 K42 ["Url"]
      166 GETTABLEKS                       R25 R24 K35 ["new"]
      168 LOADNIL                          R26
      169 CALL                             R25 1 1
      170 LOADK                            R27 K43 ["%*/studio-assistant/v1/conversation"]
      171 GETTABLEKS                       R29 R25 K44 ["APIS_URL"]
      173 NAMECALL                         R27 R27 K45 ["format"]
      175 CALL                             R27 2 1
      176 MOVE                             R26 R27
      177 DUPCLOSURE                       R27 K46 [PROTO_0]
      178 CAPTURE                          VAL R8
      179 CAPTURE                          VAL R16
      180 CAPTURE                          VAL R12
      181 CAPTURE                          VAL R11
      182 CAPTURE                          VAL R3
      183 CAPTURE                          VAL R17
      184 CAPTURE                          VAL R26
      185 CAPTURE                          VAL R13
      186 CAPTURE                          VAL R6
      187 CAPTURE                          VAL R20
      188 CAPTURE                          VAL R14
      189 CAPTURE                          VAL R1
      190 NEWCLOSURE                       R28 P1
      191 CAPTURE                          VAL R1
      192 CAPTURE                          VAL R18
      193 CAPTURE                          VAL R13
      194 CAPTURE                          VAL R6
      195 CAPTURE                          VAL R21
      196 CAPTURE                          REF R23
      197 CAPTURE                          VAL R9
      198 CAPTURE                          VAL R27
      199 CAPTURE                          VAL R10
      200 DUPTABLE                         R29 K48 [{"createRequestHandler"}]
      201 SETTABLEKS                       R28 R29 K47 ["createRequestHandler"]
      203 CLOSEUPVALS                      R23
      204 RETURN                           R29 1
