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
       17 DUPTABLE                         R8 K9 [{["type"] = "image", ["data"], ["mimeType"]}]
       18 GETTABLEKS                       R9 R6 K7 ["data"]
       20 SETTABLEKS                       R9 R8 K7 ["data"]
       22 GETTABLEKS                       R9 R6 K8 ["mimeType"]
       24 SETTABLEKS                       R9 R8 K8 ["mimeType"]
       26 CALL                             R7 1 1
       27 FASTCALL2                        TABLE_INSERT R1 R7 ; [+5]
       29 MOVE                             R9 R1
       30 MOVE                             R10 R7
       31 GETIMPORT                        R8 K11 [table.insert]
       33 CALL                             R8 2 0
       34 FORGLOOP                         R2 2 ; [-21]
       36 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getSystemReminder"]
        3 LOADK                            R2 K1 ["This is a following tool call from %*"]
        4 MOVE                             R4 R0
        5 NAMECALL                         R2 R2 K2 ["format"]
        7 CALL                             R2 2 1
        8 CALL                             R1 1 -1
        9 RETURN                           R1 -1

PROTO_2:
        0 DUPTABLE                         R1 K2 [{"type", "text"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K3 ["Type"]
        4 SETTABLEKS                       R2 R1 K0 ["type"]
        6 GETUPVAL                         R2 1
        7 SETTABLEKS                       R2 R1 K1 ["text"]
        9 GETUPVAL                         R2 2
       10 DUPTABLE                         R3 K7 [{"threadId", "messageId", "content"}]
       11 GETUPVAL                         R4 3
       12 SETTABLEKS                       R4 R3 K4 ["threadId"]
       14 SETTABLEKS                       R0 R3 K5 ["messageId"]
       16 SETTABLEKS                       R1 R3 K6 ["content"]
       18 CALL                             R2 1 0
       19 GETUPVAL                         R2 4
       20 LOADB                            R3 1
       21 CALL                             R2 1 0
       22 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+5]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantSlashToolNameAndError"]
        5 JUMPIFNOT                        R0 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 2
        8 LOADB                            R1 1
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["errorType"]
        2 JUMPIFEQKS                       R1 K1 ["quota_exceeded"] ; [+5]
        4 GETTABLEKS                       R1 R0 K0 ["errorType"]
        6 JUMPIFNOTEQKS                    R1 K2 ["too_many_request"] ; [+3]
        8 LOADB                            R1 1
        9 SETUPVAL                         R1 0
       10 GETUPVAL                         R1 1
       11 MOVE                             R2 R0
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+21]
        2 GETIMPORT                        R1 K1 [pcall]
        4 GETUPVAL                         R2 0
        5 MOVE                             R3 R0
        6 CALL                             R1 2 1
        7 JUMPIF                           R1 ; [+25]
        8 GETIMPORT                        R2 K3 [warn]
       10 LOADK                            R3 K4 ["Error handling slash command tool completion"]
       11 CALL                             R2 1 0
       12 GETUPVAL                         R2 1
       13 JUMPIFNOT                        R2 ; [+5]
       14 GETUPVAL                         R2 2
       15 GETTABLEKS                       R2 R2 K5 ["FFlagAssistantSlashToolNameAndError"]
       17 JUMPIFNOT                        R2 ; [+1]
       18 RETURN                           R0 0
       19 GETUPVAL                         R2 3
       20 LOADB                            R3 1
       21 CALL                             R2 1 0
       22 RETURN                           R0 0
       23 GETUPVAL                         R1 1
       24 JUMPIFNOT                        R1 ; [+5]
       25 GETUPVAL                         R1 2
       26 GETTABLEKS                       R1 R1 K5 ["FFlagAssistantSlashToolNameAndError"]
       28 JUMPIFNOT                        R1 ; [+1]
       29 RETURN                           R0 0
       30 GETUPVAL                         R1 3
       31 LOADB                            R2 1
       32 CALL                             R1 1 0
       33 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R3 0
        1 NOT                              R2 R3
        2 LOADB                            R3 1
        3 SETUPVAL                         R3 0
        4 GETUPVAL                         R3 1
        5 MOVE                             R4 R0
        6 DUPTABLE                         R5 K7 [{"client", "messageId", "threadId", "userPromptText", "images", "showError", "onComplete"}]
        7 GETUPVAL                         R6 2
        8 SETTABLEKS                       R6 R5 K0 ["client"]
       10 GETUPVAL                         R6 3
       11 SETTABLEKS                       R6 R5 K1 ["messageId"]
       13 GETUPVAL                         R6 4
       14 SETTABLEKS                       R6 R5 K2 ["threadId"]
       16 JUMPIFNOT                        R2 ; [+2]
       17 GETUPVAL                         R6 5
       18 JUMP                             ; [+11]
       19 GETUPVAL                         R7 5
       20 GETUPVAL                         R8 6
       21 GETTABLEKS                       R8 R8 K8 ["getSystemReminder"]
       23 LOADK                            R9 K9 ["This is a following tool call from %*"]
       24 MOVE                             R11 R7
       25 NAMECALL                         R9 R9 K10 ["format"]
       27 CALL                             R9 2 1
       28 CALL                             R8 1 1
       29 MOVE                             R6 R8
       30 SETTABLEKS                       R6 R5 K3 ["userPromptText"]
       32 JUMPIFNOT                        R2 ; [+4]
       33 GETUPVAL                         R6 7
       34 GETTABLEKS                       R6 R6 K4 ["images"]
       36 JUMP                             ; [+1]
       37 LOADNIL                          R6
       38 SETTABLEKS                       R6 R5 K4 ["images"]
       40 GETUPVAL                         R7 8
       41 GETTABLEKS                       R7 R7 K11 ["FFlagAssistantSlashToolNameAndError"]
       43 JUMPIFNOT                        R7 ; [+2]
       44 GETUPVAL                         R6 9
       45 JUMP                             ; [+1]
       46 LOADNIL                          R6
       47 SETTABLEKS                       R6 R5 K5 ["showError"]
       49 NEWCLOSURE                       R6 P0
       50 CAPTURE                          VAL R1
       51 CAPTURE                          UPVAL U10
       52 CAPTURE                          UPVAL U8
       53 CAPTURE                          UPVAL U11
       54 SETTABLEKS                       R6 R5 K6 ["onComplete"]
       56 CALL                             R3 2 0
       57 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLE                         R0 R1 R2
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+1]
        2 RETURN                           R0 0
        3 LOADB                            R0 1
        4 SETUPVAL                         R0 0
        5 GETUPVAL                         R3 1
        6 LENGTH                           R2 R3
        7 LOADN                            R0 1
        8 LOADN                            R1 -1
        9 FORNPREP                         R0
       10 GETIMPORT                        R3 K1 [pcall]
       12 NEWCLOSURE                       R4 P0
       13 CAPTURE                          UPVAL U1
       14 CAPTURE                          VAL R2
       15 CALL                             R3 1 2
       16 JUMPIF                           R3 ; [+5]
       17 GETIMPORT                        R5 K3 [warn]
       19 LOADK                            R6 K4 ["Error running slash command cleanup:"]
       20 MOVE                             R7 R4
       21 CALL                             R5 2 0
       22 FORNLOOP                         R0
       23 NEWTABLE                         R0 0 0
       25 SETUPVAL                         R0 1
       26 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+3]
        2 GETUPVAL                         R0 0
        3 LOADNIL                          R1
        4 CALL                             R0 1 0
        5 GETUPVAL                         R0 1
        6 JUMPIF                           R0 ; [+3]
        7 GETUPVAL                         R0 2
        8 LOADB                            R1 1
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_10:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

PROTO_11:
        0 JUMPIFNOT                        R0 ; [+3]
        1 GETTABLEKS                       R1 R0 K0 ["isError"]
        3 JUMPIFNOT                        R1 ; [+18]
        4 GETUPVAL                         R1 0
        5 JUMPIFNOT                        R1 ; [+3]
        6 GETUPVAL                         R1 0
        7 LOADNIL                          R2
        8 CALL                             R1 1 0
        9 GETUPVAL                         R1 1
       10 CALL                             R1 0 0
       11 GETUPVAL                         R1 2
       12 JUMPIFNOT                        R1 ; [+5]
       13 GETUPVAL                         R1 3
       14 GETTABLEKS                       R1 R1 K1 ["FFlagAssistantSlashToolNameAndError"]
       16 JUMPIFNOT                        R1 ; [+1]
       17 RETURN                           R0 0
       18 GETUPVAL                         R1 4
       19 LOADB                            R2 1
       20 CALL                             R1 1 0
       21 RETURN                           R0 0
       22 GETUPVAL                         R1 5
       23 JUMPIFNOT                        R1 ; [+19]
       24 GETUPVAL                         R1 6
       25 LOADN                            R2 1
       26 JUMPIFNOTLT                      R2 R1 ; [+16]
       28 GETIMPORT                        R1 K4 [table.remove]
       30 GETUPVAL                         R2 7
       31 CALL                             R1 1 0
       32 GETUPVAL                         R2 6
       33 SUBK                             R1 R2 K5 [1]
       34 SETUPVAL                         R1 8
       35 GETUPVAL                         R1 0
       36 JUMPIFNOT                        R1 ; [+3]
       37 GETUPVAL                         R1 0
       38 LOADNIL                          R2
       39 CALL                             R1 1 0
       40 GETUPVAL                         R1 9
       41 CALL                             R1 0 0
       42 RETURN                           R0 0
       43 DUPTABLE                         R1 K11 [{["type"] = "tool_use", ["id"], ["name"], ["input"]}]
       44 LOADK                            R2 K12 ["slash_command_chain_%*"]
       45 GETUPVAL                         R4 6
       46 NAMECALL                         R2 R2 K13 ["format"]
       48 CALL                             R2 2 1
       49 SETTABLEKS                       R2 R1 K8 ["id"]
       51 GETUPVAL                         R2 10
       52 GETTABLEKS                       R2 R2 K9 ["name"]
       54 SETTABLEKS                       R2 R1 K9 ["name"]
       56 GETUPVAL                         R2 10
       57 GETTABLEKS                       R2 R2 K14 ["arguments"]
       59 SETTABLEKS                       R2 R1 K10 ["input"]
       61 DUPTABLE                         R2 K21 [{["type"] = "tool_result", ["id"], ["name"], ["content"], [5], ["structuredContent"], ["startTime"] = 0, ["startTimeAfterConfirmation"] = 0}]
       62 GETTABLEKS                       R3 R1 K8 ["id"]
       64 SETTABLEKS                       R3 R2 K8 ["id"]
       66 GETUPVAL                         R3 10
       67 GETTABLEKS                       R3 R3 K9 ["name"]
       69 SETTABLEKS                       R3 R2 K9 ["name"]
       71 GETTABLEKS                       R3 R0 K16 ["content"]
       73 SETTABLEKS                       R3 R2 K16 ["content"]
       75 GETTABLEKS                       R3 R0 K0 ["isError"]
       77 SETTABLEKS                       R3 R2 K0 ["isError"]
       79 GETTABLEKS                       R3 R0 K17 ["structuredContent"]
       81 SETTABLEKS                       R3 R2 K17 ["structuredContent"]
       83 GETUPVAL                         R4 7
       84 DUPTABLE                         R5 K24 [{"toolUse", "toolResult"}]
       85 SETTABLEKS                       R1 R5 K22 ["toolUse"]
       87 SETTABLEKS                       R2 R5 K23 ["toolResult"]
       89 FASTCALL2                        TABLE_INSERT R4 R5 ; [+3]
       91 GETIMPORT                        R3 K26 [table.insert]
       93 CALL                             R3 2 0
       94 GETUPVAL                         R3 11
       95 JUMPIFNOT                        R3 ; [+30]
       96 GETUPVAL                         R3 12
       97 JUMPIFNOT                        R3 ; [+28]
       98 GETUPVAL                         R3 12
       99 GETTABLEKS                       R3 R3 K27 ["continueWithLLM"]
      101 JUMPIFNOT                        R3 ; [+24]
      102 GETUPVAL                         R3 13
      103 GETTABLEKS                       R3 R3 K28 ["onContinueWithLLMWithResult"]
      105 JUMPIFNOT                        R3 ; [+9]
      106 LOADB                            R3 1
      107 SETUPVAL                         R3 14
      108 GETUPVAL                         R3 13
      109 GETTABLEKS                       R3 R3 K28 ["onContinueWithLLMWithResult"]
      111 GETUPVAL                         R4 15
      112 MOVE                             R5 R0
      113 CALL                             R3 2 0
      114 JUMP                             ; [+11]
      115 GETUPVAL                         R3 13
      116 GETTABLEKS                       R3 R3 K29 ["onContinueWithLLM"]
      118 JUMPIFNOT                        R3 ; [+7]
      119 LOADB                            R3 1
      120 SETUPVAL                         R3 14
      121 GETUPVAL                         R3 13
      122 GETTABLEKS                       R3 R3 K29 ["onContinueWithLLM"]
      124 GETUPVAL                         R4 15
      125 CALL                             R3 1 0
      126 GETUPVAL                         R3 9
      127 CALL                             R3 0 0
      128 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 LENGTH                           R1 R2
        3 JUMPIFNOTLT                      R1 R0 ; [+12]
        5 GETUPVAL                         R0 2
        6 JUMPIFNOT                        R0 ; [+3]
        7 GETUPVAL                         R0 2
        8 LOADNIL                          R1
        9 CALL                             R0 1 0
       10 GETUPVAL                         R0 3
       11 JUMPIF                           R0 ; [+3]
       12 GETUPVAL                         R0 4
       13 LOADB                            R1 1
       14 CALL                             R0 1 0
       15 RETURN                           R0 0
       16 GETUPVAL                         R1 1
       17 GETUPVAL                         R2 0
       18 GETTABLE                         R0 R1 R2
       19 GETUPVAL                         R1 0
       20 GETUPVAL                         R2 0
       21 ADDK                             R2 R2 K0 [1]
       22 SETUPVAL                         R2 0
       23 GETIMPORT                        R2 K2 [pcall]
       25 MOVE                             R3 R0
       26 GETUPVAL                         R4 5
       27 CALL                             R2 2 3
       28 JUMPIF                           R2 ; [+20]
       29 GETIMPORT                        R5 K4 [warn]
       31 LOADK                            R6 K5 ["Error preparing slash command chain step:"]
       32 FASTCALL1                        TOSTRING R3 ; [+3]
       33 MOVE                             R8 R3
       34 GETIMPORT                        R7 K7 [tostring]
       36 CALL                             R7 1 1
       37 CALL                             R5 2 0
       38 GETUPVAL                         R5 2
       39 JUMPIFNOT                        R5 ; [+3]
       40 GETUPVAL                         R5 2
       41 LOADNIL                          R6
       42 CALL                             R5 1 0
       43 GETUPVAL                         R5 6
       44 CALL                             R5 0 0
       45 GETUPVAL                         R5 4
       46 LOADB                            R6 1
       47 CALL                             R5 1 0
       48 RETURN                           R0 0
       49 FASTCALL1                        TYPEOF R4 ; [+3]
       50 MOVE                             R6 R4
       51 GETIMPORT                        R5 K9 [typeof]
       53 CALL                             R5 1 1
       54 JUMPIFNOTEQKS                    R5 K10 ["function"] ; [+8]
       56 GETUPVAL                         R6 7
       57 FASTCALL2                        TABLE_INSERT R6 R4 ; [+4]
       59 MOVE                             R7 R4
       60 GETIMPORT                        R5 K13 [table.insert]
       62 CALL                             R5 2 0
       63 GETUPVAL                         R6 0
       64 GETUPVAL                         R8 1
       65 LENGTH                           R7 R8
       66 JUMPIFLT                         R7 R6 ; [+2]
       68 LOADB                            R5 0 +1
       69 LOADB                            R5 1
       70 LOADB                            R6 0
       71 GETUPVAL                         R7 2
       72 JUMPIFNOT                        R7 ; [+18]
       73 GETUPVAL                         R7 2
       74 DUPTABLE                         R8 K17 [{"currentStep", "totalSteps", "onBack"}]
       75 SETTABLEKS                       R1 R8 K14 ["currentStep"]
       77 GETUPVAL                         R10 1
       78 LENGTH                           R9 R10
       79 SETTABLEKS                       R9 R8 K15 ["totalSteps"]
       81 LOADN                            R10 1
       82 JUMPIFNOTLT                      R10 R1 ; [+4]
       84 NEWCLOSURE                       R9 P0
       85 CAPTURE                          REF R6
       86 JUMP                             ; [+1]
       87 LOADNIL                          R9
       88 SETTABLEKS                       R9 R8 K16 ["onBack"]
       90 CALL                             R7 1 0
       91 GETUPVAL                         R7 8
       92 MOVE                             R8 R3
       93 NEWCLOSURE                       R9 P1
       94 CAPTURE                          UPVAL U2
       95 CAPTURE                          UPVAL U6
       96 CAPTURE                          UPVAL U9
       97 CAPTURE                          UPVAL U10
       98 CAPTURE                          UPVAL U4
       99 CAPTURE                          REF R6
      100 CAPTURE                          VAL R1
      101 CAPTURE                          UPVAL U5
      102 CAPTURE                          UPVAL U0
      103 CAPTURE                          UPVAL U11
      104 CAPTURE                          VAL R3
      105 CAPTURE                          VAL R5
      106 CAPTURE                          UPVAL U12
      107 CAPTURE                          UPVAL U13
      108 CAPTURE                          UPVAL U3
      109 CAPTURE                          UPVAL U14
      110 CALL                             R7 2 0
      111 CLOSEUPVALS                      R6
      112 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R2 R1 K0 ["onNewMessage"]
        5 MOVE                             R3 R0
        6 CALL                             R2 1 0
        7 NEWCLOSURE                       R2 P0
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          UPVAL U3
       10 CAPTURE                          UPVAL U4
       11 CAPTURE                          VAL R0
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          UPVAL U5
       14 CAPTURE                          UPVAL U6
       15 CAPTURE                          UPVAL U7
       16 CAPTURE                          UPVAL U8
       17 CAPTURE                          UPVAL U9
       18 CAPTURE                          UPVAL U10
       19 CAPTURE                          UPVAL U11
       20 GETIMPORT                        R3 K3 [table.create]
       22 GETUPVAL                         R5 12
       23 LENGTH                           R4 R5
       24 CALL                             R3 1 1
       25 NEWTABLE                         R4 0 0
       27 LOADB                            R5 0
       28 NEWCLOSURE                       R6 P1
       29 CAPTURE                          REF R5
       30 CAPTURE                          REF R4
       31 LOADB                            R7 0
       32 NEWCLOSURE                       R8 P2
       33 CAPTURE                          UPVAL U13
       34 CAPTURE                          REF R7
       35 CAPTURE                          UPVAL U11
       36 LOADN                            R9 1
       37 NEWCLOSURE                       R10 P3
       38 CAPTURE                          REF R9
       39 CAPTURE                          UPVAL U12
       40 CAPTURE                          UPVAL U13
       41 CAPTURE                          REF R7
       42 CAPTURE                          UPVAL U11
       43 CAPTURE                          VAL R3
       44 CAPTURE                          VAL R6
       45 CAPTURE                          REF R4
       46 CAPTURE                          VAL R2
       47 CAPTURE                          UPVAL U10
       48 CAPTURE                          UPVAL U8
       49 CAPTURE                          VAL R10
       50 CAPTURE                          UPVAL U14
       51 CAPTURE                          UPVAL U7
       52 CAPTURE                          VAL R0
       53 MOVE                             R11 R10
       54 CALL                             R11 0 0
       55 CLOSEUPVALS                      R4
       56 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["ROLE"]
        4 GETTABLEKS                       R2 R2 K1 ["Assistant"]
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 CAPTURE                          UPVAL U4
       10 CAPTURE                          UPVAL U5
       11 CAPTURE                          VAL R0
       12 CAPTURE                          UPVAL U6
       13 CAPTURE                          UPVAL U1
       14 CAPTURE                          UPVAL U7
       15 CAPTURE                          UPVAL U8
       16 CAPTURE                          UPVAL U9
       17 CAPTURE                          UPVAL U10
       18 CAPTURE                          UPVAL U11
       19 CAPTURE                          UPVAL U12
       20 CAPTURE                          UPVAL U13
       21 CAPTURE                          UPVAL U14
       22 GETUPVAL                         R4 3
       23 CALL                             R1 3 0
       24 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R1 R0 K0 ["prompt"]
        2 GETTABLEKS                       R2 R0 K1 ["setInputEnabled"]
        4 GETTABLEKS                       R3 R0 K2 ["threadId"]
        6 JUMPIF                           R3 ; [+1]
        7 GETUPVAL                         R3 0
        8 LENGTH                           R4 R1
        9 GETUPVAL                         R6 1
       10 LENGTH                           R5 R6
       11 JUMPIFLT                         R4 R5 ; [+10]
       13 LOADN                            R6 1
       14 GETUPVAL                         R8 1
       15 LENGTH                           R7 R8
       16 NAMECALL                         R4 R1 K3 ["sub"]
       18 CALL                             R4 3 1
       19 GETUPVAL                         R5 1
       20 JUMPIFEQ                         R4 R5 ; [+3]
       22 LOADB                            R4 0
       23 RETURN                           R4 1
       24 GETUPVAL                         R8 1
       25 LENGTH                           R7 R8
       26 ADDK                             R6 R7 K4 [1]
       27 NAMECALL                         R4 R1 K3 ["sub"]
       29 CALL                             R4 2 1
       30 GETIMPORT                        R5 K7 [string.gsub]
       32 MOVE                             R6 R4
       33 LOADK                            R7 K8 ["%s+$"]
       34 LOADK                            R8 K9 [""]
       35 CALL                             R5 3 1
       36 GETUPVAL                         R6 2
       37 GETTABLEKS                       R6 R6 K10 ["getModeForCommand"]
       39 MOVE                             R7 R5
       40 CALL                             R6 1 1
       41 JUMPIFNOT                        R6 ; [+8]
       42 GETUPVAL                         R7 3
       43 MOVE                             R8 R6
       44 CALL                             R7 1 0
       45 MOVE                             R7 R2
       46 LOADB                            R8 1
       47 CALL                             R7 1 0
       48 LOADB                            R7 1
       49 RETURN                           R7 1
       50 LENGTH                           R7 R4
       51 JUMPIFNOTEQKN                    R7 K11 [0] ; [+3]
       53 LOADB                            R7 0
       54 RETURN                           R7 1
       55 GETUPVAL                         R9 4
       56 NAMECALL                         R7 R4 K12 ["find"]
       58 CALL                             R7 2 1
       59 LOADNIL                          R8
       60 LOADNIL                          R9
       61 JUMPIFNOT                        R7 ; [+12]
       62 LOADN                            R12 1
       63 SUBK                             R13 R7 K4 [1]
       64 NAMECALL                         R10 R4 K3 ["sub"]
       66 CALL                             R10 3 1
       67 MOVE                             R8 R10
       68 ADDK                             R12 R7 K4 [1]
       69 NAMECALL                         R10 R4 K3 ["sub"]
       71 CALL                             R10 2 1
       72 MOVE                             R9 R10
       73 JUMP                             ; [+2]
       74 MOVE                             R8 R4
       75 LOADK                            R9 K9 [""]
       76 GETUPVAL                         R10 2
       77 GETTABLEKS                       R10 R10 K13 ["getSlashCommandDefinition"]
       79 MOVE                             R11 R8
       80 CALL                             R10 1 1
       81 JUMPIF                           R10 ; [+2]
       82 LOADB                            R11 0
       83 RETURN                           R11 1
       84 GETTABLEKS                       R12 R10 K14 ["validateInput"]
       86 JUMPIFNOT                        R12 ; [+13]
       87 GETTABLEKS                       R11 R10 K14 ["validateInput"]
       89 MOVE                             R12 R9
       90 GETTABLEKS                       R14 R0 K15 ["images"]
       92 JUMPIFNOT                        R14 ; [+4]
       93 GETTABLEKS                       R14 R0 K15 ["images"]
       95 LENGTH                           R13 R14
       96 JUMP                             ; [+1]
       97 LOADN                            R13 0
       98 CALL                             R11 2 1
       99 JUMP                             ; [+1]
      100 LOADNIL                          R11
      101 JUMPIFNOT                        R11 ; [+22]
      102 GETTABLEKS                       R12 R0 K16 ["onSlashCommandRecognized"]
      104 JUMPIFNOT                        R12 ; [+3]
      105 GETTABLEKS                       R12 R0 K16 ["onSlashCommandRecognized"]
      107 CALL                             R12 0 0
      108 GETUPVAL                         R12 5
      109 GETUPVAL                         R13 6
      110 GETTABLEKS                       R13 R13 K17 ["ROLE"]
      112 GETTABLEKS                       R13 R13 K18 ["Assistant"]
      114 NEWCLOSURE                       R14 P0
      115 CAPTURE                          UPVAL U7
      116 CAPTURE                          VAL R11
      117 CAPTURE                          UPVAL U8
      118 CAPTURE                          VAL R3
      119 CAPTURE                          VAL R2
      120 MOVE                             R15 R3
      121 CALL                             R12 3 0
      122 LOADB                            R12 1
      123 RETURN                           R12 1
      124 GETUPVAL                         R12 9
      125 GETTABLEKS                       R13 R0 K15 ["images"]
      127 CALL                             R12 1 1
      128 GETTABLEKS                       R13 R10 K19 ["runToolChain"]
      130 MOVE                             R14 R9
      131 MOVE                             R15 R12
      132 CALL                             R13 2 1
      133 GETTABLEKS                       R14 R0 K16 ["onSlashCommandRecognized"]
      135 JUMPIFNOT                        R14 ; [+3]
      136 GETTABLEKS                       R14 R0 K16 ["onSlashCommandRecognized"]
      138 CALL                             R14 0 0
      139 LOADB                            R14 0
      140 LOADB                            R15 0
      141 NEWCLOSURE                       R16 P1
      142 CAPTURE                          REF R15
      143 CAPTURE                          UPVAL U10
      144 CAPTURE                          VAL R2
      145 NEWCLOSURE                       R17 P2
      146 CAPTURE                          REF R15
      147 CAPTURE                          UPVAL U11
      148 GETUPVAL                         R18 12
      149 NEWCLOSURE                       R19 P3
      150 CAPTURE                          UPVAL U5
      151 CAPTURE                          UPVAL U6
      152 CAPTURE                          UPVAL U13
      153 CAPTURE                          VAL R3
      154 CAPTURE                          REF R14
      155 CAPTURE                          UPVAL U14
      156 CAPTURE                          VAL R1
      157 CAPTURE                          VAL R0
      158 CAPTURE                          UPVAL U10
      159 CAPTURE                          VAL R17
      160 CAPTURE                          REF R15
      161 CAPTURE                          VAL R2
      162 CAPTURE                          VAL R13
      163 CAPTURE                          UPVAL U15
      164 CAPTURE                          VAL R10
      165 CALL                             R18 1 0
      166 LOADB                            R18 1
      167 CLOSEUPVALS                      R14
      168 RETURN                           R18 1

PROTO_16:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETUPVAL                         R1 1
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 2
        5 CALL                             R2 0 1
        6 GETUPVAL                         R3 3
        7 CALL                             R3 0 1
        8 GETUPVAL                         R4 4
        9 CALL                             R4 0 1
       10 LOADNIL                          R5
       11 GETUPVAL                         R6 5
       12 GETTABLEKS                       R6 R6 K0 ["FFlagAssistantSlashCommandStepBackNavigation"]
       14 JUMPIFNOT                        R6 ; [+8]
       15 GETUPVAL                         R6 6
       16 GETTABLEKS                       R6 R6 K1 ["useContext"]
       18 GETUPVAL                         R7 7
       19 GETTABLEKS                       R7 R7 K2 ["Context"]
       21 CALL                             R6 1 1
       22 MOVE                             R5 R6
       23 GETUPVAL                         R7 5
       24 GETTABLEKS                       R7 R7 K0 ["FFlagAssistantSlashCommandStepBackNavigation"]
       26 JUMPIFNOT                        R7 ; [+3]
       27 GETTABLEKS                       R6 R5 K3 ["setSlashCommandStepInfo"]
       29 JUMP                             ; [+1]
       30 LOADNIL                          R6
       31 GETUPVAL                         R7 8
       32 CALL                             R7 0 2
       33 GETUPVAL                         R9 9
       34 CALL                             R9 0 1
       35 GETUPVAL                         R10 10
       36 CALL                             R10 0 1
       37 NEWCLOSURE                       R11 P0
       38 CAPTURE                          VAL R4
       39 CAPTURE                          UPVAL U11
       40 CAPTURE                          UPVAL U12
       41 CAPTURE                          VAL R8
       42 CAPTURE                          UPVAL U13
       43 CAPTURE                          VAL R2
       44 CAPTURE                          UPVAL U14
       45 CAPTURE                          UPVAL U15
       46 CAPTURE                          VAL R0
       47 CAPTURE                          UPVAL U16
       48 CAPTURE                          UPVAL U5
       49 CAPTURE                          VAL R9
       50 CAPTURE                          VAL R3
       51 CAPTURE                          VAL R1
       52 CAPTURE                          VAL R10
       53 CAPTURE                          VAL R6
       54 GETUPVAL                         R12 6
       55 GETTABLEKS                       R12 R12 K4 ["useCallback"]
       57 MOVE                             R13 R11
       58 NEWTABLE                         R14 0 7
       60 MOVE                             R15 R1
       61 MOVE                             R16 R2
       62 MOVE                             R17 R3
       63 MOVE                             R18 R8
       64 MOVE                             R19 R9
       65 MOVE                             R20 R4
       66 MOVE                             R21 R10
       67 SETLIST                          R14 R15 7 [1]
       69 CALL                             R12 2 -1
       70 RETURN                           R12 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Flags"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["Util"]
       16 GETTABLEKS                       R3 R3 K8 ["ImageContentStore"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K9 ["Components"]
       23 GETTABLEKS                       R4 R4 K10 ["Contexts"]
       25 GETTABLEKS                       R4 R4 K11 ["DefaultLLMProvider"]
       27 GETTABLEKS                       R4 R4 K12 ["LLMPackageContextProvider"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K13 ["Parent"]
       34 GETTABLEKS                       R5 R5 K14 ["ModelContextProtocol"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K13 ["Parent"]
       41 GETTABLEKS                       R6 R6 K15 ["React"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K9 ["Components"]
       48 GETTABLEKS                       R7 R7 K16 ["ContentWidgets"]
       50 GETTABLEKS                       R7 R7 K17 ["TextContentWidget"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K18 ["Types"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R9 R0 K9 ["Components"]
       62 GETTABLEKS                       R9 R9 K19 ["UIToolRegistry"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R10 R0 K20 ["Hooks"]
       69 GETTABLEKS                       R10 R10 K21 ["useAddContent"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETTABLEKS                       R11 R0 K20 ["Hooks"]
       76 GETTABLEKS                       R11 R11 K22 ["useAssistantMode"]
       78 CALL                             R10 1 1
       79 GETIMPORT                        R11 K5 [require]
       81 GETTABLEKS                       R12 R0 K20 ["Hooks"]
       83 GETTABLEKS                       R12 R12 K23 ["useDispatchToolCall"]
       85 CALL                             R11 1 1
       86 GETIMPORT                        R12 K5 [require]
       88 GETTABLEKS                       R13 R0 K20 ["Hooks"]
       90 GETTABLEKS                       R13 R13 K24 ["useGetContentObserver"]
       92 CALL                             R12 1 1
       93 GETIMPORT                        R13 K5 [require]
       95 GETTABLEKS                       R14 R0 K20 ["Hooks"]
       97 GETTABLEKS                       R14 R14 K25 ["useGetOrAddMessage"]
       99 CALL                             R13 1 1
      100 GETIMPORT                        R14 K5 [require]
      102 GETTABLEKS                       R15 R0 K20 ["Hooks"]
      104 GETTABLEKS                       R15 R15 K26 ["useShowError"]
      106 CALL                             R14 1 1
      107 GETIMPORT                        R15 K5 [require]
      109 GETTABLEKS                       R16 R0 K20 ["Hooks"]
      111 GETTABLEKS                       R16 R16 K27 ["useThreadId"]
      113 CALL                             R15 1 1
      114 GETIMPORT                        R16 K5 [require]
      116 GETTABLEKS                       R17 R0 K20 ["Hooks"]
      118 GETTABLEKS                       R17 R17 K28 ["useWithClient"]
      120 CALL                             R16 1 1
      121 GETTABLEKS                       R17 R8 K29 ["CommandPrefix"]
      123 GETTABLEKS                       R18 R8 K30 ["CommandDelimiter"]
      125 DUPCLOSURE                       R19 K31 [PROTO_0]
      126 CAPTURE                          VAL R2
      127 DUPCLOSURE                       R20 K32 [PROTO_1]
      128 CAPTURE                          VAL R7
      129 DUPCLOSURE                       R21 K33 [PROTO_16]
      130 CAPTURE                          VAL R9
      131 CAPTURE                          VAL R12
      132 CAPTURE                          VAL R13
      133 CAPTURE                          VAL R16
      134 CAPTURE                          VAL R15
      135 CAPTURE                          VAL R1
      136 CAPTURE                          VAL R5
      137 CAPTURE                          VAL R3
      138 CAPTURE                          VAL R10
      139 CAPTURE                          VAL R14
      140 CAPTURE                          VAL R11
      141 CAPTURE                          VAL R17
      142 CAPTURE                          VAL R8
      143 CAPTURE                          VAL R18
      144 CAPTURE                          VAL R7
      145 CAPTURE                          VAL R6
      146 CAPTURE                          VAL R19
      147 RETURN                           R21 1
