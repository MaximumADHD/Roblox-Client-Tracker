PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["text"]
        4 JUMPIFEQKS                       R2 K1 [""] ; [+12]
        6 DUPTABLE                         R4 K3 [{["type"] = "text", [2]}]
        7 GETTABLEKS                       R5 R0 K0 ["text"]
        9 SETTABLEKS                       R5 R4 K0 ["text"]
       11 FASTCALL2                        TABLE_INSERT R1 R4 ; [+4]
       13 MOVE                             R3 R1
       14 GETIMPORT                        R2 K6 [table.insert]
       16 CALL                             R2 2 0
       17 GETTABLEKS                       R2 R0 K7 ["additionalPromptText"]
       19 JUMPIFNOT                        R2 ; [+11]
       20 DUPTABLE                         R4 K3 [{["type"] = "text", [2]}]
       21 GETTABLEKS                       R5 R0 K7 ["additionalPromptText"]
       23 SETTABLEKS                       R5 R4 K0 ["text"]
       25 FASTCALL2                        TABLE_INSERT R1 R4 ; [+4]
       27 MOVE                             R3 R1
       28 GETIMPORT                        R2 K6 [table.insert]
       30 CALL                             R2 2 0
       31 GETTABLEKS                       R2 R0 K8 ["images"]
       33 JUMPIFNOT                        R2 ; [+50]
       34 GETTABLEKS                       R2 R0 K8 ["images"]
       36 LOADNIL                          R3
       37 LOADNIL                          R4
       38 FORGPREP                         R2
       39 GETUPVAL                         R7 0
       40 GETTABLEKS                       R7 R7 K9 ["storeImage"]
       42 MOVE                             R8 R6
       43 CALL                             R7 1 1
       44 GETUPVAL                         R8 1
       45 CALL                             R8 0 1
       46 JUMPIF                           R8 ; [+17]
       47 DUPTABLE                         R10 K14 [{["type"] = "image", ["data"], ["mimeType"], ["uri"]}]
       48 GETTABLEKS                       R11 R6 K11 ["data"]
       50 SETTABLEKS                       R11 R10 K11 ["data"]
       52 GETTABLEKS                       R11 R6 K12 ["mimeType"]
       54 SETTABLEKS                       R11 R10 K12 ["mimeType"]
       56 SETTABLEKS                       R7 R10 K13 ["uri"]
       58 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
       60 MOVE                             R9 R1
       61 GETIMPORT                        R8 K6 [table.insert]
       63 CALL                             R8 2 0
       64 DUPTABLE                         R10 K3 [{["type"] = "text", [2]}]
       65 GETUPVAL                         R11 2
       66 GETTABLEKS                       R11 R11 K15 ["getSystemReminder"]
       68 LOADK                            R12 K16 ["Attached image URI: %*"]
       69 MOVE                             R14 R7
       70 NAMECALL                         R12 R12 K17 ["format"]
       72 CALL                             R12 2 1
       73 CALL                             R11 1 1
       74 SETTABLEKS                       R11 R10 K0 ["text"]
       76 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
       78 MOVE                             R9 R1
       79 GETIMPORT                        R8 K6 [table.insert]
       81 CALL                             R8 2 0
       82 FORGLOOP                         R2 2 ; [-44]
       84 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R4 0
        1 MOVE                             R5 R1
        2 CALL                             R4 1 1
        3 GETTABLEKS                       R5 R0 K0 ["getSystemReminders"]
        5 JUMPIFNOT                        R5 ; [+19]
        6 GETTABLEKS                       R5 R0 K0 ["getSystemReminders"]
        8 MOVE                             R6 R3
        9 CALL                             R5 1 1
       10 MOVE                             R6 R5
       11 LOADNIL                          R7
       12 LOADNIL                          R8
       13 FORGPREP                         R6
       14 DUPTABLE                         R13 K3 [{["type"] = "text", ["text"]}]
       15 SETTABLEKS                       R10 R13 K2 ["text"]
       17 FASTCALL2                        TABLE_INSERT R4 R13 ; [+4]
       19 MOVE                             R12 R4
       20 GETIMPORT                        R11 K6 [table.insert]
       22 CALL                             R11 2 0
       23 FORGLOOP                         R6 2 ; [-10]
       25 DUPTABLE                         R5 K10 [{"sessionId", "prompt", "_meta"}]
       26 SETTABLEKS                       R2 R5 K7 ["sessionId"]
       28 SETTABLEKS                       R4 R5 K8 ["prompt"]
       30 DUPTABLE                         R6 K12 [{"_roblox"}]
       31 DUPTABLE                         R7 K15 [{"providerConfig", "allowedTools"}]
       32 DUPTABLE                         R8 K19 [{"apiKeys", "selectedModel", "selectedProvider"}]
       33 GETUPVAL                         R10 1
       34 CALL                             R10 0 1
       35 JUMPIFNOT                        R10 ; [+2]
       36 LOADNIL                          R9
       37 JUMP                             ; [+2]
       38 GETTABLEKS                       R9 R0 K16 ["apiKeys"]
       40 SETTABLEKS                       R9 R8 K16 ["apiKeys"]
       42 GETTABLEKS                       R9 R0 K17 ["selectedModel"]
       44 SETTABLEKS                       R9 R8 K17 ["selectedModel"]
       46 GETTABLEKS                       R9 R0 K18 ["selectedProvider"]
       48 SETTABLEKS                       R9 R8 K18 ["selectedProvider"]
       50 SETTABLEKS                       R8 R7 K13 ["providerConfig"]
       52 SETTABLEKS                       R3 R7 K14 ["allowedTools"]
       54 SETTABLEKS                       R7 R6 K11 ["_roblox"]
       56 SETTABLEKS                       R6 R5 K9 ["_meta"]
       58 RETURN                           R5 1

PROTO_2:
        0 JUMPIFNOTEQKS                    R0 K0 ["end_turn"] ; [+4]
        2 LOADK                            R1 K1 ["message_stop"]
        3 LOADB                            R2 0
        4 RETURN                           R1 2
        5 JUMPIFNOTEQKS                    R0 K2 ["cancelled"] ; [+4]
        7 LOADK                            R1 K3 ["user_cancelled"]
        8 LOADB                            R2 0
        9 RETURN                           R1 2
       10 ORK                              R1 R0 K4 ["unknown_stop_reason"]
       11 GETIMPORT                        R2 K6 [warn]
       13 LOADK                            R3 K7 ["[Assistant][ACP] Unrecognized terminal stop reason: %*"]
       14 MOVE                             R5 R1
       15 NAMECALL                         R3 R3 K8 ["format"]
       17 CALL                             R3 2 1
       18 CALL                             R2 1 0
       19 MOVE                             R2 R1
       20 LOADB                            R3 1
       21 RETURN                           R2 2

PROTO_3:
        0 GETUPVAL                         R2 0
        1 JUMPIF                           R2 ; [+4]
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["onUserMessageAccepted"]
        5 JUMPIF                           R2 ; [+1]
        6 RETURN                           R0 0
        7 LOADB                            R2 1
        8 SETUPVAL                         R2 0
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R2 R2 K0 ["onUserMessageAccepted"]
       12 MOVE                             R3 R0
       13 MOVE                             R4 R1
       14 CALL                             R2 2 0
       15 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 JUMPIF                           R2 ; [+6]
        2 GETUPVAL                         R2 1
        3 JUMPIFNOT                        R2 ; [+4]
        4 GETUPVAL                         R2 2
        5 GETTABLEKS                       R2 R2 K0 ["logRequestJourney"]
        7 JUMPIF                           R2 ; [+1]
        8 RETURN                           R0 0
        9 LOADB                            R2 1
       10 SETUPVAL                         R2 0
       11 DUPTABLE                         R2 K9 [{["requestJourneyDuration"], ["requestEndReason"], ["messageGuid"], ["sessionId"], ["threadId"], ["acpSessionId"], ["message"] = ""}]
       12 GETIMPORT                        R4 K12 [os.clock]
       14 CALL                             R4 0 1
       15 GETUPVAL                         R5 3
       16 SUB                              R3 R4 R5
       17 SETTABLEKS                       R3 R2 K1 ["requestJourneyDuration"]
       19 SETTABLEKS                       R0 R2 K2 ["requestEndReason"]
       21 GETUPVAL                         R3 1
       22 SETTABLEKS                       R3 R2 K3 ["messageGuid"]
       24 GETUPVAL                         R4 2
       25 GETTABLEKS                       R4 R4 K13 ["conversationSessionId"]
       27 ORK                              R3 R4 K8 [""]
       28 SETTABLEKS                       R3 R2 K4 ["sessionId"]
       30 GETUPVAL                         R3 2
       31 GETTABLEKS                       R3 R3 K5 ["threadId"]
       33 SETTABLEKS                       R3 R2 K5 ["threadId"]
       35 SETTABLEKS                       R1 R2 K6 ["acpSessionId"]
       37 GETUPVAL                         R3 4
       38 CALL                             R3 0 1
       39 JUMPIFNOT                        R3 ; [+26]
       40 GETUPVAL                         R3 5
       41 GETTABLEKS                       R3 R3 K14 ["FFlagAssistantCreditMeteringTelemetry"]
       43 JUMPIFNOT                        R3 ; [+22]
       44 GETUPVAL                         R3 2
       45 GETTABLEKS                       R3 R3 K15 ["deferCreditMeteringStopReason"]
       47 JUMPIFNOT                        R3 ; [+18]
       48 JUMPIFNOTEQKS                    R0 K16 ["message_stop"] ; [+17]
       50 GETUPVAL                         R3 6
       51 GETTABLEKS                       R3 R3 K17 ["defer"]
       53 DUPTABLE                         R4 K21 [{"data", "messageId", "log"}]
       54 SETTABLEKS                       R2 R4 K18 ["data"]
       56 GETUPVAL                         R5 1
       57 SETTABLEKS                       R5 R4 K19 ["messageId"]
       59 GETUPVAL                         R5 2
       60 GETTABLEKS                       R5 R5 K0 ["logRequestJourney"]
       62 SETTABLEKS                       R5 R4 K20 ["log"]
       64 CALL                             R3 1 0
       65 RETURN                           R0 0
       66 GETUPVAL                         R3 2
       67 GETTABLEKS                       R3 R3 K0 ["logRequestJourney"]
       69 MOVE                             R4 R2
       70 GETUPVAL                         R5 1
       71 CALL                             R3 2 0
       72 RETURN                           R0 0

PROTO_5:
        0 DUPTABLE                         R0 K5 [{"state", "sessionId", "turnId", "messageId", "stopReason"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["state"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["sessionId"]
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K2 ["turnId"]
       10 GETUPVAL                         R1 3
       11 SETTABLEKS                       R1 R0 K3 ["messageId"]
       13 GETUPVAL                         R1 4
       14 SETTABLEKS                       R1 R0 K4 ["stopReason"]
       16 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKS                       R0 K0 ["done"] ; [+7]
        3 GETUPVAL                         R0 0
        4 JUMPIFEQKS                       R0 K1 ["pendingCancel"] ; [+4]
        6 GETUPVAL                         R0 1
        7 JUMPIFNOTEQKNIL                  R0 ; [+2]
        9 RETURN                           R0 0
       10 LOADK                            R0 K1 ["pendingCancel"]
       11 SETUPVAL                         R0 0
       12 GETUPVAL                         R0 2
       13 LOADK                            R1 K2 ["user_cancelled"]
       14 GETUPVAL                         R2 1
       15 CALL                             R0 2 0
       16 GETUPVAL                         R0 3
       17 GETTABLEKS                       R0 R0 K3 ["service"]
       19 DUPTABLE                         R2 K5 [{"sessionId"}]
       20 GETUPVAL                         R3 1
       21 SETTABLEKS                       R3 R2 K4 ["sessionId"]
       23 NAMECALL                         R0 R0 K6 ["cancel"]
       25 CALL                             R0 2 0
       26 RETURN                           R0 0

PROTO_7:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K3 ["threadId"]
        7 SETTABLEKS                       R2 R1 K3 ["threadId"]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K4 ["addContent"]
       12 MOVE                             R3 R1
       13 CALL                             R2 1 -1
       14 RETURN                           R2 -1

PROTO_8:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K3 ["threadId"]
        7 SETTABLEKS                       R2 R1 K3 ["threadId"]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K4 ["editContent"]
       12 MOVE                             R3 R1
       13 CALL                             R2 1 -1
       14 RETURN                           R2 -1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["getOrCreateAssistantMessage"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["service"]
        3 GETUPVAL                         R2 1
        4 LOADNIL                          R3
        5 NAMECALL                         R0 R0 K1 ["setClientToolConfirmationHandler"]
        7 CALL                             R0 3 0
        8 GETUPVAL                         R0 0
        9 GETTABLEKS                       R0 R0 K2 ["unregisterPromptController"]
       11 JUMPIFNOT                        R0 ; [+5]
       12 GETUPVAL                         R0 0
       13 GETTABLEKS                       R0 R0 K2 ["unregisterPromptController"]
       15 GETUPVAL                         R1 1
       16 CALL                             R0 1 0
       17 GETUPVAL                         R0 2
       18 NAMECALL                         R0 R0 K3 ["endTurn"]
       20 CALL                             R0 1 0
       21 GETUPVAL                         R0 3
       22 JUMPIFNOT                        R0 ; [+4]
       23 GETUPVAL                         R0 3
       24 CALL                             R0 0 0
       25 LOADNIL                          R0
       26 SETUPVAL                         R0 3
       27 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+1]
        2 RETURN                           R0 0
        3 LOADB                            R1 1
        4 SETUPVAL                         R1 0
        5 SETUPVAL                         R0 1
        6 LOADK                            R1 K0 ["done"]
        7 SETUPVAL                         R1 2
        8 GETUPVAL                         R1 3
        9 GETTABLEKS                       R1 R1 K1 ["service"]
       11 GETUPVAL                         R3 4
       12 LOADNIL                          R4
       13 NAMECALL                         R1 R1 K2 ["setClientToolConfirmationHandler"]
       15 CALL                             R1 3 0
       16 GETUPVAL                         R1 3
       17 GETTABLEKS                       R1 R1 K3 ["unregisterPromptController"]
       19 JUMPIFNOT                        R1 ; [+5]
       20 GETUPVAL                         R1 3
       21 GETTABLEKS                       R1 R1 K3 ["unregisterPromptController"]
       23 GETUPVAL                         R2 4
       24 CALL                             R1 1 0
       25 GETUPVAL                         R1 5
       26 NAMECALL                         R1 R1 K4 ["endTurn"]
       28 CALL                             R1 1 0
       29 GETUPVAL                         R1 6
       30 JUMPIFNOT                        R1 ; [+4]
       31 GETUPVAL                         R1 6
       32 CALL                             R1 0 0
       33 LOADNIL                          R1
       34 SETUPVAL                         R1 6
       35 GETUPVAL                         R1 7
       36 MOVE                             R2 R0
       37 CALL                             R1 1 0
       38 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["showError"]
        3 JUMPIFNOT                        R1 ; [+7]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K0 ["showError"]
        7 MOVE                             R2 R0
        8 GETUPVAL                         R3 1
        9 GETUPVAL                         R4 2
       10 CALL                             R1 3 0
       11 GETUPVAL                         R1 3
       12 MOVE                             R2 R0
       13 GETUPVAL                         R3 2
       14 CALL                             R1 2 0
       15 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["sessionUpdate"]
        2 JUMPIFNOTEQKS                    R1 K1 ["state_update"] ; [+130]
        4 GETTABLEKS                       R2 R0 K2 ["state"]
        6 JUMPIFNOTEQKS                    R2 K3 ["running"] ; [+14]
        8 LOADB                            R2 1
        9 SETUPVAL                         R2 0
       10 GETUPVAL                         R2 1
       11 JUMPIFNOT                        R2 ; [+120]
       12 GETUPVAL                         R2 2
       13 JUMPIFEQKS                       R2 K4 ["pendingCancel"] ; [+118]
       15 GETUPVAL                         R2 2
       16 JUMPIFEQKS                       R2 K5 ["done"] ; [+115]
       18 LOADK                            R2 K3 ["running"]
       19 SETUPVAL                         R2 2
       20 RETURN                           R0 0
       21 GETTABLEKS                       R2 R0 K2 ["state"]
       23 JUMPIFNOTEQKS                    R2 K6 ["idle"] ; [+108]
       25 GETUPVAL                         R2 3
       26 JUMPIFNOT                        R2 ; [+10]
       27 GETUPVAL                         R2 4
       28 GETTABLEKS                       R2 R2 K7 ["onAssistantMessageFinished"]
       30 JUMPIFNOT                        R2 ; [+6]
       31 GETUPVAL                         R2 4
       32 GETTABLEKS                       R2 R2 K7 ["onAssistantMessageFinished"]
       34 GETUPVAL                         R3 3
       35 GETUPVAL                         R4 5
       36 CALL                             R2 2 0
       37 GETUPVAL                         R2 6
       38 GETTABLEKS                       R2 R2 K8 ["Engine"]
       40 GETTABLEKS                       R2 R2 K9 ["ErrorTypes"]
       42 GETTABLEKS                       R2 R2 K10 ["handleStopReason"]
       44 GETTABLEKS                       R3 R0 K11 ["stopReason"]
       46 NEWCLOSURE                       R4 P0
       47 CAPTURE                          UPVAL U4
       48 CAPTURE                          UPVAL U3
       49 CAPTURE                          UPVAL U5
       50 CAPTURE                          UPVAL U7
       51 CALL                             R2 2 1
       52 JUMPIF                           R2 ; [+39]
       53 GETTABLEKS                       R5 R0 K11 ["stopReason"]
       55 JUMPIFNOTEQKS                    R5 K12 ["end_turn"] ; [+4]
       57 LOADK                            R3 K13 ["message_stop"]
       58 LOADB                            R4 0
       59 JUMP                             ; [+16]
       60 JUMPIFNOTEQKS                    R5 K14 ["cancelled"] ; [+4]
       62 LOADK                            R3 K15 ["user_cancelled"]
       63 LOADB                            R4 0
       64 JUMP                             ; [+11]
       65 ORK                              R6 R5 K16 ["unknown_stop_reason"]
       66 GETIMPORT                        R7 K18 [warn]
       68 LOADK                            R8 K19 ["[Assistant][ACP] Unrecognized terminal stop reason: %*"]
       69 MOVE                             R10 R6
       70 NAMECALL                         R8 R8 K20 ["format"]
       72 CALL                             R8 2 1
       73 CALL                             R7 1 0
       74 MOVE                             R3 R6
       75 LOADB                            R4 1
       76 JUMPIFNOT                        R4 ; [+11]
       77 GETUPVAL                         R5 4
       78 GETTABLEKS                       R5 R5 K21 ["showError"]
       80 JUMPIFNOT                        R5 ; [+7]
       81 GETUPVAL                         R5 4
       82 GETTABLEKS                       R5 R5 K21 ["showError"]
       84 LOADK                            R6 K22 ["client_error"]
       85 GETUPVAL                         R7 3
       86 GETUPVAL                         R8 5
       87 CALL                             R5 3 0
       88 GETUPVAL                         R5 7
       89 MOVE                             R6 R3
       90 GETUPVAL                         R7 5
       91 CALL                             R5 2 0
       92 GETTABLEKS                       R3 R0 K11 ["stopReason"]
       94 GETUPVAL                         R4 8
       95 JUMPIFNOT                        R4 ; [+1]
       96 RETURN                           R0 0
       97 LOADB                            R4 1
       98 SETUPVAL                         R4 8
       99 SETUPVAL                         R3 9
      100 LOADK                            R4 K5 ["done"]
      101 SETUPVAL                         R4 2
      102 GETUPVAL                         R4 4
      103 GETTABLEKS                       R4 R4 K23 ["service"]
      105 GETUPVAL                         R6 5
      106 LOADNIL                          R7
      107 NAMECALL                         R4 R4 K24 ["setClientToolConfirmationHandler"]
      109 CALL                             R4 3 0
      110 GETUPVAL                         R4 4
      111 GETTABLEKS                       R4 R4 K25 ["unregisterPromptController"]
      113 JUMPIFNOT                        R4 ; [+5]
      114 GETUPVAL                         R4 4
      115 GETTABLEKS                       R4 R4 K25 ["unregisterPromptController"]
      117 GETUPVAL                         R5 5
      118 CALL                             R4 1 0
      119 GETUPVAL                         R4 10
      120 NAMECALL                         R4 R4 K26 ["endTurn"]
      122 CALL                             R4 1 0
      123 GETUPVAL                         R4 11
      124 JUMPIFNOT                        R4 ; [+4]
      125 GETUPVAL                         R4 11
      126 CALL                             R4 0 0
      127 LOADNIL                          R4
      128 SETUPVAL                         R4 11
      129 GETUPVAL                         R4 12
      130 MOVE                             R5 R3
      131 CALL                             R4 1 0
      132 RETURN                           R0 0
      133 GETUPVAL                         R2 2
      134 JUMPIFNOTEQKS                    R2 K27 ["pendingAccept"] ; [+81]
      136 JUMPIFNOTEQKS                    R1 K28 ["user_message"] ; [+66]
      138 GETTABLEKS                       R2 R0 K29 ["messageId"]
      140 SETUPVAL                         R2 13
      141 GETTABLEKS                       R2 R0 K30 ["_meta"]
      143 JUMPIFNOT                        R2 ; [+4]
      144 GETTABLEKS                       R2 R0 K30 ["_meta"]
      146 GETTABLEKS                       R2 R2 K31 ["_roblox"]
      148 FASTCALL1                        TYPEOF R2 ; [+3]
      149 MOVE                             R4 R2
      150 GETIMPORT                        R3 K33 [typeof]
      152 CALL                             R3 1 1
      153 JUMPIFNOTEQKS                    R3 K34 ["table"] ; [+12]
      155 GETTABLEKS                       R4 R2 K35 ["turnId"]
      157 FASTCALL1                        TYPEOF R4 ; [+2]
      158 GETIMPORT                        R3 K33 [typeof]
      160 CALL                             R3 1 1
      161 JUMPIFNOTEQKS                    R3 K36 ["number"] ; [+4]
      163 GETTABLEKS                       R3 R2 K35 ["turnId"]
      165 SETUPVAL                         R3 14
      166 LOADB                            R3 1
      167 SETUPVAL                         R3 1
      168 GETUPVAL                         R3 0
      169 JUMPIFNOT                        R3 ; [+2]
      170 LOADK                            R3 K3 ["running"]
      171 SETUPVAL                         R3 2
      172 GETUPVAL                         R3 15
      173 GETTABLEKS                       R3 R3 K37 ["FFlagAssistantPromptModeratedError"]
      175 JUMPIFNOT                        R3 ; [+5]
      176 GETUPVAL                         R3 10
      177 NAMECALL                         R3 R3 K38 ["getOrCreateAssistantMessage"]
      179 CALL                             R3 1 0
      180 RETURN                           R0 0
      181 GETUPVAL                         R3 10
      182 NAMECALL                         R3 R3 K38 ["getOrCreateAssistantMessage"]
      184 CALL                             R3 1 1
      185 SETUPVAL                         R3 3
      186 GETUPVAL                         R4 5
      187 GETUPVAL                         R5 16
      188 JUMPIF                           R5 ; [+13]
      189 GETUPVAL                         R5 4
      190 GETTABLEKS                       R5 R5 K39 ["onUserMessageAccepted"]
      192 JUMPIF                           R5 ; [+1]
      193 RETURN                           R0 0
      194 LOADB                            R5 1
      195 SETUPVAL                         R5 16
      196 GETUPVAL                         R5 4
      197 GETTABLEKS                       R5 R5 K39 ["onUserMessageAccepted"]
      199 MOVE                             R6 R3
      200 MOVE                             R7 R4
      201 CALL                             R5 2 0
      202 RETURN                           R0 0
      203 GETIMPORT                        R2 K18 [warn]
      205 LOADK                            R3 K40 ["[Assistant][ACP] Ignoring session/update before user_message accept: %*"]
      206 FASTCALL1                        TOSTRING R1 ; [+3]
      207 MOVE                             R6 R1
      208 GETIMPORT                        R5 K42 [tostring]
      210 CALL                             R5 1 1
      211 NAMECALL                         R3 R3 K20 ["format"]
      213 CALL                             R3 2 1
      214 CALL                             R2 1 0
      215 RETURN                           R0 0
      216 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["resolveAllowedTools"]
        3 JUMPIFNOT                        R3 ; [+23]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K0 ["resolveAllowedTools"]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K1 ["assistantMode"]
       10 GETUPVAL                         R4 1
       11 CALL                             R4 0 1
       12 JUMPIF                           R4 ; [+12]
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R5 R5 K2 ["selectedProvider"]
       16 GETUPVAL                         R6 2
       17 GETTABLEKS                       R6 R6 K3 ["LLMProviderTypes"]
       19 GETTABLEKS                       R6 R6 K4 ["Studio"]
       21 JUMPIFEQ                         R5 R6 ; [+2]
       23 LOADB                            R4 0 +1
       24 LOADB                            R4 1
       25 CALL                             R2 2 1
       26 JUMP                             ; [+1]
       27 LOADNIL                          R2
       28 GETUPVAL                         R3 0
       29 GETTABLEKS                       R3 R3 K5 ["sessionMonitor"]
       31 LOADB                            R4 1
       32 GETUPVAL                         R5 3
       33 GETTABLEKS                       R5 R5 K6 ["userMessageAlreadyRendered"]
       35 JUMPIFEQKB                       R5 TRUE ; [+8]
       37 GETUPVAL                         R5 3
       38 GETTABLEKS                       R5 R5 K7 ["retry"]
       40 JUMPIFEQKB                       R5 TRUE ; [+2]
       42 LOADB                            R4 0 +1
       43 LOADB                            R4 1
       44 DUPTABLE                         R7 K9 [{"suppressUserMessageEcho"}]
       45 SETTABLEKS                       R4 R7 K8 ["suppressUserMessageEcho"]
       47 NAMECALL                         R5 R3 K10 ["beginTurn"]
       49 CALL                             R5 2 0
       50 JUMPIFNOT                        R4 ; [+3]
       51 NAMECALL                         R5 R3 K11 ["getOrCreateAssistantMessage"]
       53 CALL                             R5 1 0
       54 GETUPVAL                         R5 0
       55 GETTABLEKS                       R5 R5 K12 ["service"]
       57 GETUPVAL                         R7 0
       58 GETTABLEKS                       R7 R7 K13 ["threadId"]
       60 GETUPVAL                         R8 0
       61 GETTABLEKS                       R8 R8 K14 ["acpSessionId"]
       63 NAMECALL                         R5 R5 K15 ["getOrCreateSessionForThread"]
       65 CALL                             R5 3 1
       66 NAMECALL                         R5 R5 K16 ["await"]
       68 CALL                             R5 1 2
       69 JUMPIF                           R5 ; [+17]
       70 LOADK                            R7 K17 ["done"]
       71 SETUPVAL                         R7 4
       72 NAMECALL                         R7 R3 K18 ["endTurn"]
       74 CALL                             R7 1 0
       75 MOVE                             R7 R1
       76 LOADK                            R8 K19 ["failed to resolve sessionId: %*"]
       77 FASTCALL1                        TOSTRING R6 ; [+3]
       78 MOVE                             R11 R6
       79 GETIMPORT                        R10 K21 [tostring]
       81 CALL                             R10 1 1
       82 NAMECALL                         R8 R8 K22 ["format"]
       84 CALL                             R8 2 1
       85 CALL                             R7 1 0
       86 RETURN                           R0 0
       87 SETUPVAL                         R6 5
       88 GETUPVAL                         R7 0
       89 GETTABLEKS                       R7 R7 K12 ["service"]
       91 MOVE                             R9 R6
       92 DUPTABLE                         R10 K24 [{"sessionId", "threadId", "acpSessionId", "assistantMode"}]
       93 GETUPVAL                         R11 0
       94 GETTABLEKS                       R11 R11 K25 ["conversationSessionId"]
       96 SETTABLEKS                       R11 R10 K23 ["sessionId"]
       98 GETUPVAL                         R11 0
       99 GETTABLEKS                       R11 R11 K13 ["threadId"]
      101 SETTABLEKS                       R11 R10 K13 ["threadId"]
      103 SETTABLEKS                       R6 R10 K14 ["acpSessionId"]
      105 GETUPVAL                         R11 0
      106 GETTABLEKS                       R11 R11 K1 ["assistantMode"]
      108 SETTABLEKS                       R11 R10 K1 ["assistantMode"]
      110 NAMECALL                         R7 R7 K26 ["setSessionToolCallMeta"]
      112 CALL                             R7 3 0
      113 GETUPVAL                         R7 0
      114 GETTABLEKS                       R7 R7 K14 ["acpSessionId"]
      116 JUMPIFNOTEQKNIL                  R7 ; [+10]
      118 GETUPVAL                         R7 0
      119 GETTABLEKS                       R7 R7 K27 ["setAcpSessionId"]
      121 JUMPIFNOT                        R7 ; [+5]
      122 GETUPVAL                         R7 0
      123 GETTABLEKS                       R7 R7 K27 ["setAcpSessionId"]
      125 MOVE                             R8 R6
      126 CALL                             R7 1 0
      127 GETUPVAL                         R7 0
      128 GETTABLEKS                       R7 R7 K28 ["registerPromptController"]
      130 JUMPIFNOT                        R7 ; [+6]
      131 GETUPVAL                         R7 0
      132 GETTABLEKS                       R7 R7 K28 ["registerPromptController"]
      134 MOVE                             R8 R6
      135 GETUPVAL                         R9 6
      136 CALL                             R7 2 0
      137 MOVE                             R9 R6
      138 NAMECALL                         R7 R3 K29 ["attachSession"]
      140 CALL                             R7 2 0
      141 GETUPVAL                         R7 0
      142 GETTABLEKS                       R7 R7 K12 ["service"]
      144 MOVE                             R9 R6
      145 GETUPVAL                         R10 7
      146 GETTABLEKS                       R10 R10 K30 ["create"]
      148 DUPTABLE                         R11 K34 [{"addContent", "editContent", "getMessageId"}]
      149 NEWCLOSURE                       R12 P0
      150 CAPTURE                          UPVAL U0
      151 SETTABLEKS                       R12 R11 K31 ["addContent"]
      153 NEWCLOSURE                       R12 P1
      154 CAPTURE                          UPVAL U0
      155 SETTABLEKS                       R12 R11 K32 ["editContent"]
      157 NEWCLOSURE                       R12 P2
      158 CAPTURE                          VAL R3
      159 SETTABLEKS                       R12 R11 K33 ["getMessageId"]
      161 CALL                             R10 1 -1
      162 NAMECALL                         R7 R7 K35 ["setClientToolConfirmationHandler"]
      164 CALL                             R7 -1 0
      165 LOADB                            R7 0
      166 LOADB                            R8 0
      167 LOADB                            R9 0
      168 LOADNIL                          R10
      169 NEWCLOSURE                       R11 P3
      170 CAPTURE                          UPVAL U0
      171 CAPTURE                          VAL R6
      172 CAPTURE                          VAL R3
      173 CAPTURE                          REF R10
      174 NEWCLOSURE                       R12 P4
      175 CAPTURE                          REF R9
      176 CAPTURE                          UPVAL U8
      177 CAPTURE                          UPVAL U4
      178 CAPTURE                          UPVAL U0
      179 CAPTURE                          VAL R6
      180 CAPTURE                          VAL R3
      181 CAPTURE                          REF R10
      182 CAPTURE                          VAL R0
      183 GETUPVAL                         R13 9
      184 GETTABLEKS                       R13 R13 K36 ["FFlagAssistantPromptModeratedError"]
      186 JUMPIFNOT                        R13 ; [+24]
      187 NAMECALL                         R13 R3 K11 ["getOrCreateAssistantMessage"]
      189 CALL                             R13 1 1
      190 SETUPVAL                         R13 10
      191 GETUPVAL                         R14 10
      192 FASTCALL1                        ASSERT R14 ; [+2]
      193 GETIMPORT                        R13 K38 [assert]
      195 CALL                             R13 1 1
      196 GETUPVAL                         R14 11
      197 JUMPIF                           R14 ; [+13]
      198 GETUPVAL                         R14 0
      199 GETTABLEKS                       R14 R14 K39 ["onUserMessageAccepted"]
      201 JUMPIF                           R14 ; [+1]
      202 JUMP                             ; [+8]
      203 LOADB                            R14 1
      204 SETUPVAL                         R14 11
      205 GETUPVAL                         R14 0
      206 GETTABLEKS                       R14 R14 K39 ["onUserMessageAccepted"]
      208 MOVE                             R15 R13
      209 MOVE                             R16 R6
      210 CALL                             R14 2 0
      211 NEWCLOSURE                       R15 P5
      212 CAPTURE                          REF R8
      213 CAPTURE                          REF R7
      214 CAPTURE                          UPVAL U4
      215 CAPTURE                          UPVAL U10
      216 CAPTURE                          UPVAL U0
      217 CAPTURE                          VAL R6
      218 CAPTURE                          UPVAL U12
      219 CAPTURE                          UPVAL U13
      220 CAPTURE                          REF R9
      221 CAPTURE                          UPVAL U8
      222 CAPTURE                          VAL R3
      223 CAPTURE                          REF R10
      224 CAPTURE                          VAL R0
      225 CAPTURE                          UPVAL U14
      226 CAPTURE                          UPVAL U15
      227 CAPTURE                          UPVAL U9
      228 CAPTURE                          UPVAL U11
      229 NAMECALL                         R13 R3 K40 ["observeUpdates"]
      231 CALL                             R13 2 1
      232 MOVE                             R10 R13
      233 GETUPVAL                         R13 16
      234 GETUPVAL                         R14 0
      235 GETUPVAL                         R15 3
      236 MOVE                             R16 R6
      237 MOVE                             R17 R2
      238 CALL                             R13 4 1
      239 GETUPVAL                         R14 0
      240 GETTABLEKS                       R14 R14 K12 ["service"]
      242 MOVE                             R16 R13
      243 NAMECALL                         R14 R14 K41 ["prompt"]
      245 CALL                             R14 2 1
      246 NAMECALL                         R14 R14 K16 ["await"]
      248 CALL                             R14 1 2
      249 JUMPIF                           R14 ; [+49]
      250 JUMPIF                           R9 ; [+48]
      251 GETUPVAL                         R16 9
      252 GETTABLEKS                       R16 R16 K36 ["FFlagAssistantPromptModeratedError"]
      254 JUMPIFNOT                        R16 ; [+14]
      255 GETUPVAL                         R16 13
      256 GETUPVAL                         R18 0
      257 GETTABLEKS                       R18 R18 K42 ["getPromptErrorType"]
      259 JUMPIFNOT                        R18 ; [+6]
      260 GETUPVAL                         R17 0
      261 GETTABLEKS                       R17 R17 K42 ["getPromptErrorType"]
      263 MOVE                             R18 R15
      264 CALL                             R17 1 1
      265 JUMP                             ; [+1]
      266 LOADK                            R17 K43 ["request_failed"]
      267 MOVE                             R18 R6
      268 CALL                             R16 2 0
      269 LOADB                            R9 1
      270 LOADK                            R16 K17 ["done"]
      271 SETUPVAL                         R16 4
      272 GETUPVAL                         R16 0
      273 GETTABLEKS                       R16 R16 K12 ["service"]
      275 MOVE                             R18 R6
      276 LOADNIL                          R19
      277 NAMECALL                         R16 R16 K35 ["setClientToolConfirmationHandler"]
      279 CALL                             R16 3 0
      280 GETUPVAL                         R16 0
      281 GETTABLEKS                       R16 R16 K44 ["unregisterPromptController"]
      283 JUMPIFNOT                        R16 ; [+5]
      284 GETUPVAL                         R16 0
      285 GETTABLEKS                       R16 R16 K44 ["unregisterPromptController"]
      287 MOVE                             R17 R6
      288 CALL                             R16 1 0
      289 NAMECALL                         R16 R3 K18 ["endTurn"]
      291 CALL                             R16 1 0
      292 JUMPIFNOT                        R10 ; [+3]
      293 MOVE                             R16 R10
      294 CALL                             R16 0 0
      295 LOADNIL                          R10
      296 MOVE                             R16 R1
      297 MOVE                             R17 R15
      298 CALL                             R16 1 0
      299 CLOSEUPVALS                      R7
      300 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_16:
        0 GETIMPORT                        R2 K2 [os.clock]
        2 CALL                             R2 0 1
        3 LOADK                            R3 K3 ["pendingAccept"]
        4 LOADNIL                          R4
        5 LOADNIL                          R5
        6 LOADNIL                          R6
        7 LOADNIL                          R7
        8 LOADNIL                          R8
        9 LOADB                            R9 0
       10 LOADB                            R10 0
       11 NEWCLOSURE                       R11 P0
       12 CAPTURE                          REF R9
       13 CAPTURE                          VAL R0
       14 NEWCLOSURE                       R12 P1
       15 CAPTURE                          REF R10
       16 CAPTURE                          REF R8
       17 CAPTURE                          VAL R0
       18 CAPTURE                          VAL R2
       19 CAPTURE                          UPVAL U0
       20 CAPTURE                          UPVAL U1
       21 CAPTURE                          UPVAL U2
       22 NEWCLOSURE                       R13 P2
       23 CAPTURE                          REF R3
       24 CAPTURE                          REF R4
       25 CAPTURE                          REF R5
       26 CAPTURE                          REF R6
       27 CAPTURE                          REF R7
       28 NEWCLOSURE                       R14 P3
       29 CAPTURE                          REF R3
       30 CAPTURE                          REF R4
       31 CAPTURE                          VAL R12
       32 CAPTURE                          VAL R0
       33 DUPTABLE                         R15 K6 [{"cancelSessionPrompt", "getStateOfSessionPrompt"}]
       34 SETTABLEKS                       R14 R15 K4 ["cancelSessionPrompt"]
       36 SETTABLEKS                       R13 R15 K5 ["getStateOfSessionPrompt"]
       38 GETUPVAL                         R16 3
       39 GETTABLEKS                       R16 R16 K7 ["new"]
       41 NEWCLOSURE                       R17 P4
       42 CAPTURE                          VAL R0
       43 CAPTURE                          UPVAL U4
       44 CAPTURE                          UPVAL U5
       45 CAPTURE                          VAL R1
       46 CAPTURE                          REF R3
       47 CAPTURE                          REF R4
       48 CAPTURE                          VAL R15
       49 CAPTURE                          UPVAL U6
       50 CAPTURE                          REF R7
       51 CAPTURE                          UPVAL U1
       52 CAPTURE                          REF R8
       53 CAPTURE                          REF R9
       54 CAPTURE                          UPVAL U7
       55 CAPTURE                          VAL R12
       56 CAPTURE                          REF R6
       57 CAPTURE                          REF R5
       58 CAPTURE                          UPVAL U8
       59 CALL                             R16 1 1
       60 DUPTABLE                         R17 K10 [{"promise", "cancelSessionPrompt", "getStateOfSessionPrompt", "getRequestMessageId"}]
       61 SETTABLEKS                       R16 R17 K8 ["promise"]
       63 SETTABLEKS                       R14 R17 K4 ["cancelSessionPrompt"]
       65 SETTABLEKS                       R13 R17 K5 ["getStateOfSessionPrompt"]
       67 NEWCLOSURE                       R18 P5
       68 CAPTURE                          REF R8
       69 SETTABLEKS                       R18 R17 K9 ["getRequestMessageId"]
       71 CLOSEUPVALS                      R3
       72 RETURN                           R17 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R2 K1 [script]
       11 GETTABLEKS                       R2 R2 K6 ["Parent"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETIMPORT                        R3 K1 [script]
       18 GETTABLEKS                       R3 R3 K6 ["Parent"]
       20 GETTABLEKS                       R3 R3 K7 ["AcpSessionMonitor"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Parent"]
       27 GETTABLEKS                       R4 R4 K8 ["AssistantHarness"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETIMPORT                        R5 K1 [script]
       34 GETTABLEKS                       R5 R5 K6 ["Parent"]
       36 GETTABLEKS                       R5 R5 K9 ["ClientToolConfirmation"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K10 ["Flags"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K11 ["Util"]
       48 GETTABLEKS                       R7 R7 K12 ["ImageContentStore"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K6 ["Parent"]
       55 GETTABLEKS                       R8 R8 K13 ["Promise"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R9 R0 K14 ["Types"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R10 R0 K15 ["FlagUtils"]
       67 GETTABLEKS                       R10 R10 K16 ["getIsAssistantUseRemoteService"]
       69 CALL                             R9 1 1
       70 GETTABLEKS                       R9 R9 K17 ["get"]
       72 GETIMPORT                        R10 K5 [require]
       74 GETTABLEKS                       R11 R0 K15 ["FlagUtils"]
       76 GETTABLEKS                       R11 R11 K18 ["getIsCreditMeteringEnabled"]
       78 CALL                             R10 1 1
       79 GETIMPORT                        R11 K5 [require]
       81 GETTABLEKS                       R12 R0 K11 ["Util"]
       83 GETTABLEKS                       R12 R12 K19 ["pendingCreditMeteringJourney"]
       85 CALL                             R11 1 1
       86 DUPCLOSURE                       R12 K20 [PROTO_0]
       87 CAPTURE                          VAL R6
       88 CAPTURE                          VAL R9
       89 CAPTURE                          VAL R8
       90 DUPCLOSURE                       R13 K21 [PROTO_1]
       91 CAPTURE                          VAL R12
       92 CAPTURE                          VAL R9
       93 DUPCLOSURE                       R14 K22 [PROTO_2]
       94 DUPCLOSURE                       R15 K23 [PROTO_16]
       95 CAPTURE                          VAL R10
       96 CAPTURE                          VAL R5
       97 CAPTURE                          VAL R11
       98 CAPTURE                          VAL R7
       99 CAPTURE                          VAL R9
      100 CAPTURE                          VAL R8
      101 CAPTURE                          VAL R4
      102 CAPTURE                          VAL R3
      103 CAPTURE                          VAL R13
      104 RETURN                           R15 1
