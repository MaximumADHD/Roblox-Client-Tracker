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
       33 JUMPIFNOT                        R2 ; [+48]
       34 GETTABLEKS                       R2 R0 K8 ["images"]
       36 LOADNIL                          R3
       37 LOADNIL                          R4
       38 FORGPREP                         R2
       39 GETUPVAL                         R7 0
       40 GETTABLEKS                       R7 R7 K9 ["storeImage"]
       42 MOVE                             R8 R6
       43 CALL                             R7 1 1
       44 DUPTABLE                         R10 K14 [{["type"] = "image", ["data"], ["mimeType"], ["uri"]}]
       45 GETTABLEKS                       R11 R6 K11 ["data"]
       47 SETTABLEKS                       R11 R10 K11 ["data"]
       49 GETTABLEKS                       R11 R6 K12 ["mimeType"]
       51 SETTABLEKS                       R11 R10 K12 ["mimeType"]
       53 SETTABLEKS                       R7 R10 K13 ["uri"]
       55 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
       57 MOVE                             R9 R1
       58 GETIMPORT                        R8 K6 [table.insert]
       60 CALL                             R8 2 0
       61 DUPTABLE                         R10 K3 [{["type"] = "text", [2]}]
       62 GETUPVAL                         R11 1
       63 GETTABLEKS                       R11 R11 K15 ["getSystemReminder"]
       65 LOADK                            R13 K16 ["Attached image URI: %*"]
       66 MOVE                             R15 R7
       67 NAMECALL                         R13 R13 K17 ["format"]
       69 CALL                             R13 2 1
       70 MOVE                             R12 R13
       71 CALL                             R11 1 1
       72 SETTABLEKS                       R11 R10 K0 ["text"]
       74 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
       76 MOVE                             R9 R1
       77 GETIMPORT                        R8 K6 [table.insert]
       79 CALL                             R8 2 0
       80 FORGLOOP                         R2 2 ; [-42]
       82 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R4 0
        1 MOVE                             R5 R1
        2 CALL                             R4 1 1
        3 GETUPVAL                         R5 1
        4 GETTABLEKS                       R5 R5 K0 ["FFlagAssistantFixPlanModeInAcp"]
        6 JUMPIFNOT                        R5 ; [+21]
        7 GETTABLEKS                       R5 R0 K1 ["getSystemReminders"]
        9 JUMPIFNOT                        R5 ; [+18]
       10 GETTABLEKS                       R5 R0 K1 ["getSystemReminders"]
       12 CALL                             R5 0 1
       13 MOVE                             R6 R5
       14 LOADNIL                          R7
       15 LOADNIL                          R8
       16 FORGPREP                         R6
       17 DUPTABLE                         R13 K4 [{["type"] = "text", ["text"]}]
       18 SETTABLEKS                       R10 R13 K3 ["text"]
       20 FASTCALL2                        TABLE_INSERT R4 R13 ; [+4]
       22 MOVE                             R12 R4
       23 GETIMPORT                        R11 K7 [table.insert]
       25 CALL                             R11 2 0
       26 FORGLOOP                         R6 2 ; [-10]
       28 DUPTABLE                         R5 K11 [{"sessionId", "prompt", "_meta"}]
       29 SETTABLEKS                       R2 R5 K8 ["sessionId"]
       31 SETTABLEKS                       R4 R5 K9 ["prompt"]
       33 DUPTABLE                         R6 K13 [{"_roblox"}]
       34 DUPTABLE                         R7 K16 [{"providerConfig", "allowedTools"}]
       35 DUPTABLE                         R8 K20 [{"apiKeys", "selectedModel", "selectedProvider"}]
       36 GETUPVAL                         R10 1
       37 GETTABLEKS                       R10 R10 K21 ["FFlagAssistantUseRemoteService"]
       39 JUMPIFNOT                        R10 ; [+2]
       40 LOADNIL                          R9
       41 JUMP                             ; [+2]
       42 GETTABLEKS                       R9 R0 K17 ["apiKeys"]
       44 SETTABLEKS                       R9 R8 K17 ["apiKeys"]
       46 GETTABLEKS                       R9 R0 K18 ["selectedModel"]
       48 SETTABLEKS                       R9 R8 K18 ["selectedModel"]
       50 GETTABLEKS                       R9 R0 K19 ["selectedProvider"]
       52 SETTABLEKS                       R9 R8 K19 ["selectedProvider"]
       54 SETTABLEKS                       R8 R7 K14 ["providerConfig"]
       56 SETTABLEKS                       R3 R7 K15 ["allowedTools"]
       58 SETTABLEKS                       R7 R6 K12 ["_roblox"]
       60 SETTABLEKS                       R6 R5 K10 ["_meta"]
       62 RETURN                           R5 1

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
       13 LOADK                            R4 K7 ["[Assistant][ACP] Unrecognized terminal stop reason: %*"]
       14 MOVE                             R6 R1
       15 NAMECALL                         R4 R4 K8 ["format"]
       17 CALL                             R4 2 1
       18 MOVE                             R3 R4
       19 CALL                             R2 1 0
       20 MOVE                             R2 R1
       21 LOADB                            R3 1
       22 RETURN                           R2 2

PROTO_3:
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
       11 GETUPVAL                         R2 2
       12 GETTABLEKS                       R2 R2 K0 ["logRequestJourney"]
       14 DUPTABLE                         R3 K9 [{["requestJourneyDuration"], ["requestEndReason"], ["messageGuid"], ["sessionId"], ["threadId"], ["acpSessionId"], ["message"] = ""}]
       15 GETIMPORT                        R5 K12 [os.clock]
       17 CALL                             R5 0 1
       18 GETUPVAL                         R6 3
       19 SUB                              R4 R5 R6
       20 SETTABLEKS                       R4 R3 K1 ["requestJourneyDuration"]
       22 SETTABLEKS                       R0 R3 K2 ["requestEndReason"]
       24 GETUPVAL                         R4 1
       25 SETTABLEKS                       R4 R3 K3 ["messageGuid"]
       27 GETUPVAL                         R5 2
       28 GETTABLEKS                       R5 R5 K13 ["conversationSessionId"]
       30 ORK                              R4 R5 K8 [""]
       31 SETTABLEKS                       R4 R3 K4 ["sessionId"]
       33 GETUPVAL                         R4 2
       34 GETTABLEKS                       R4 R4 K5 ["threadId"]
       36 SETTABLEKS                       R4 R3 K5 ["threadId"]
       38 SETTABLEKS                       R1 R3 K6 ["acpSessionId"]
       40 GETUPVAL                         R4 1
       41 CALL                             R2 2 0
       42 RETURN                           R0 0

PROTO_4:
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

PROTO_5:
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

PROTO_6:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["getOrCreateAssistantMessage"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_7:
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

PROTO_8:
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

PROTO_9:
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

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["sessionUpdate"]
        2 JUMPIFNOTEQKS                    R1 K1 ["state_update"] ; [+131]
        4 GETTABLEKS                       R2 R0 K2 ["state"]
        6 JUMPIFNOTEQKS                    R2 K3 ["running"] ; [+14]
        8 LOADB                            R2 1
        9 SETUPVAL                         R2 0
       10 GETUPVAL                         R2 1
       11 JUMPIFNOT                        R2 ; [+121]
       12 GETUPVAL                         R2 2
       13 JUMPIFEQKS                       R2 K4 ["pendingCancel"] ; [+119]
       15 GETUPVAL                         R2 2
       16 JUMPIFEQKS                       R2 K5 ["done"] ; [+116]
       18 LOADK                            R2 K3 ["running"]
       19 SETUPVAL                         R2 2
       20 RETURN                           R0 0
       21 GETTABLEKS                       R2 R0 K2 ["state"]
       23 JUMPIFNOTEQKS                    R2 K6 ["idle"] ; [+109]
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
       52 JUMPIF                           R2 ; [+40]
       53 GETTABLEKS                       R5 R0 K11 ["stopReason"]
       55 JUMPIFNOTEQKS                    R5 K12 ["end_turn"] ; [+4]
       57 LOADK                            R3 K13 ["message_stop"]
       58 LOADB                            R4 0
       59 JUMP                             ; [+17]
       60 JUMPIFNOTEQKS                    R5 K14 ["cancelled"] ; [+4]
       62 LOADK                            R3 K15 ["user_cancelled"]
       63 LOADB                            R4 0
       64 JUMP                             ; [+12]
       65 ORK                              R6 R5 K16 ["unknown_stop_reason"]
       66 GETIMPORT                        R7 K18 [warn]
       68 LOADK                            R9 K19 ["[Assistant][ACP] Unrecognized terminal stop reason: %*"]
       69 MOVE                             R11 R6
       70 NAMECALL                         R9 R9 K20 ["format"]
       72 CALL                             R9 2 1
       73 MOVE                             R8 R9
       74 CALL                             R7 1 0
       75 MOVE                             R3 R6
       76 LOADB                            R4 1
       77 JUMPIFNOT                        R4 ; [+11]
       78 GETUPVAL                         R5 4
       79 GETTABLEKS                       R5 R5 K21 ["showError"]
       81 JUMPIFNOT                        R5 ; [+7]
       82 GETUPVAL                         R5 4
       83 GETTABLEKS                       R5 R5 K21 ["showError"]
       85 LOADK                            R6 K22 ["client_error"]
       86 GETUPVAL                         R7 3
       87 GETUPVAL                         R8 5
       88 CALL                             R5 3 0
       89 GETUPVAL                         R5 7
       90 MOVE                             R6 R3
       91 GETUPVAL                         R7 5
       92 CALL                             R5 2 0
       93 GETTABLEKS                       R3 R0 K11 ["stopReason"]
       95 GETUPVAL                         R4 8
       96 JUMPIFNOT                        R4 ; [+1]
       97 RETURN                           R0 0
       98 LOADB                            R4 1
       99 SETUPVAL                         R4 8
      100 SETUPVAL                         R3 9
      101 LOADK                            R4 K5 ["done"]
      102 SETUPVAL                         R4 2
      103 GETUPVAL                         R4 4
      104 GETTABLEKS                       R4 R4 K23 ["service"]
      106 GETUPVAL                         R6 5
      107 LOADNIL                          R7
      108 NAMECALL                         R4 R4 K24 ["setClientToolConfirmationHandler"]
      110 CALL                             R4 3 0
      111 GETUPVAL                         R4 4
      112 GETTABLEKS                       R4 R4 K25 ["unregisterPromptController"]
      114 JUMPIFNOT                        R4 ; [+5]
      115 GETUPVAL                         R4 4
      116 GETTABLEKS                       R4 R4 K25 ["unregisterPromptController"]
      118 GETUPVAL                         R5 5
      119 CALL                             R4 1 0
      120 GETUPVAL                         R4 10
      121 NAMECALL                         R4 R4 K26 ["endTurn"]
      123 CALL                             R4 1 0
      124 GETUPVAL                         R4 11
      125 JUMPIFNOT                        R4 ; [+4]
      126 GETUPVAL                         R4 11
      127 CALL                             R4 0 0
      128 LOADNIL                          R4
      129 SETUPVAL                         R4 11
      130 GETUPVAL                         R4 12
      131 MOVE                             R5 R3
      132 CALL                             R4 1 0
      133 RETURN                           R0 0
      134 GETUPVAL                         R2 2
      135 JUMPIFNOTEQKS                    R2 K27 ["pendingAccept"] ; [+67]
      137 JUMPIFNOTEQKS                    R1 K28 ["user_message"] ; [+51]
      139 GETTABLEKS                       R2 R0 K29 ["messageId"]
      141 SETUPVAL                         R2 13
      142 GETTABLEKS                       R2 R0 K30 ["_meta"]
      144 JUMPIFNOT                        R2 ; [+4]
      145 GETTABLEKS                       R2 R0 K30 ["_meta"]
      147 GETTABLEKS                       R2 R2 K31 ["_roblox"]
      149 FASTCALL1                        TYPEOF R2 ; [+3]
      150 MOVE                             R4 R2
      151 GETIMPORT                        R3 K33 [typeof]
      153 CALL                             R3 1 1
      154 JUMPIFNOTEQKS                    R3 K34 ["table"] ; [+12]
      156 GETTABLEKS                       R4 R2 K35 ["turnId"]
      158 FASTCALL1                        TYPEOF R4 ; [+2]
      159 GETIMPORT                        R3 K33 [typeof]
      161 CALL                             R3 1 1
      162 JUMPIFNOTEQKS                    R3 K36 ["number"] ; [+4]
      164 GETTABLEKS                       R3 R2 K35 ["turnId"]
      166 SETUPVAL                         R3 14
      167 LOADB                            R3 1
      168 SETUPVAL                         R3 1
      169 GETUPVAL                         R3 0
      170 JUMPIFNOT                        R3 ; [+2]
      171 LOADK                            R3 K3 ["running"]
      172 SETUPVAL                         R3 2
      173 GETUPVAL                         R3 10
      174 NAMECALL                         R3 R3 K37 ["getOrCreateAssistantMessage"]
      176 CALL                             R3 1 1
      177 SETUPVAL                         R3 3
      178 GETUPVAL                         R4 4
      179 GETTABLEKS                       R4 R4 K38 ["onUserMessageAccepted"]
      181 JUMPIFNOT                        R4 ; [+6]
      182 GETUPVAL                         R4 4
      183 GETTABLEKS                       R4 R4 K38 ["onUserMessageAccepted"]
      185 MOVE                             R5 R3
      186 GETUPVAL                         R6 5
      187 CALL                             R4 2 0
      188 RETURN                           R0 0
      189 GETIMPORT                        R2 K18 [warn]
      191 LOADK                            R4 K39 ["[Assistant][ACP] Ignoring session/update before user_message accept: %*"]
      192 FASTCALL1                        TOSTRING R1 ; [+3]
      193 MOVE                             R7 R1
      194 GETIMPORT                        R6 K41 [tostring]
      196 CALL                             R6 1 1
      197 NAMECALL                         R4 R4 K20 ["format"]
      199 CALL                             R4 2 1
      200 MOVE                             R3 R4
      201 CALL                             R2 1 0
      202 RETURN                           R0 0
      203 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["resolveAllowedTools"]
        3 JUMPIFNOT                        R3 ; [+20]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K0 ["resolveAllowedTools"]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K1 ["assistantMode"]
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R5 R5 K2 ["selectedProvider"]
       13 GETUPVAL                         R6 1
       14 GETTABLEKS                       R6 R6 K3 ["LLMProviderTypes"]
       16 GETTABLEKS                       R6 R6 K4 ["Studio"]
       18 JUMPIFEQ                         R5 R6 ; [+2]
       20 LOADB                            R4 0 +1
       21 LOADB                            R4 1
       22 CALL                             R2 2 1
       23 JUMP                             ; [+1]
       24 LOADNIL                          R2
       25 GETUPVAL                         R3 0
       26 GETTABLEKS                       R3 R3 K5 ["sessionMonitor"]
       28 LOADB                            R4 1
       29 GETUPVAL                         R5 2
       30 GETTABLEKS                       R5 R5 K6 ["userMessageAlreadyRendered"]
       32 JUMPIFEQKB                       R5 TRUE ; [+8]
       34 GETUPVAL                         R5 2
       35 GETTABLEKS                       R5 R5 K7 ["retry"]
       37 JUMPIFEQKB                       R5 TRUE ; [+2]
       39 LOADB                            R4 0 +1
       40 LOADB                            R4 1
       41 DUPTABLE                         R7 K9 [{"suppressUserMessageEcho"}]
       42 SETTABLEKS                       R4 R7 K8 ["suppressUserMessageEcho"]
       44 NAMECALL                         R5 R3 K10 ["beginTurn"]
       46 CALL                             R5 2 0
       47 JUMPIFNOT                        R4 ; [+3]
       48 NAMECALL                         R5 R3 K11 ["getOrCreateAssistantMessage"]
       50 CALL                             R5 1 0
       51 GETUPVAL                         R5 0
       52 GETTABLEKS                       R5 R5 K12 ["service"]
       54 GETUPVAL                         R7 0
       55 GETTABLEKS                       R7 R7 K13 ["threadId"]
       57 GETUPVAL                         R8 0
       58 GETTABLEKS                       R8 R8 K14 ["acpSessionId"]
       60 NAMECALL                         R5 R5 K15 ["getOrCreateSessionForThread"]
       62 CALL                             R5 3 1
       63 NAMECALL                         R5 R5 K16 ["await"]
       65 CALL                             R5 1 2
       66 JUMPIF                           R5 ; [+18]
       67 LOADK                            R7 K17 ["done"]
       68 SETUPVAL                         R7 3
       69 NAMECALL                         R7 R3 K18 ["endTurn"]
       71 CALL                             R7 1 0
       72 MOVE                             R7 R1
       73 LOADK                            R9 K19 ["failed to resolve sessionId: %*"]
       74 FASTCALL1                        TOSTRING R6 ; [+3]
       75 MOVE                             R12 R6
       76 GETIMPORT                        R11 K21 [tostring]
       78 CALL                             R11 1 1
       79 NAMECALL                         R9 R9 K22 ["format"]
       81 CALL                             R9 2 1
       82 MOVE                             R8 R9
       83 CALL                             R7 1 0
       84 RETURN                           R0 0
       85 SETUPVAL                         R6 4
       86 GETUPVAL                         R7 0
       87 GETTABLEKS                       R7 R7 K12 ["service"]
       89 MOVE                             R9 R6
       90 DUPTABLE                         R10 K24 [{"sessionId", "threadId", "acpSessionId", "assistantMode"}]
       91 GETUPVAL                         R11 0
       92 GETTABLEKS                       R11 R11 K25 ["conversationSessionId"]
       94 SETTABLEKS                       R11 R10 K23 ["sessionId"]
       96 GETUPVAL                         R11 0
       97 GETTABLEKS                       R11 R11 K13 ["threadId"]
       99 SETTABLEKS                       R11 R10 K13 ["threadId"]
      101 SETTABLEKS                       R6 R10 K14 ["acpSessionId"]
      103 GETUPVAL                         R11 0
      104 GETTABLEKS                       R11 R11 K1 ["assistantMode"]
      106 SETTABLEKS                       R11 R10 K1 ["assistantMode"]
      108 NAMECALL                         R7 R7 K26 ["setSessionToolCallMeta"]
      110 CALL                             R7 3 0
      111 GETUPVAL                         R7 0
      112 GETTABLEKS                       R7 R7 K14 ["acpSessionId"]
      114 JUMPIFNOTEQKNIL                  R7 ; [+10]
      116 GETUPVAL                         R7 0
      117 GETTABLEKS                       R7 R7 K27 ["setAcpSessionId"]
      119 JUMPIFNOT                        R7 ; [+5]
      120 GETUPVAL                         R7 0
      121 GETTABLEKS                       R7 R7 K27 ["setAcpSessionId"]
      123 MOVE                             R8 R6
      124 CALL                             R7 1 0
      125 GETUPVAL                         R7 0
      126 GETTABLEKS                       R7 R7 K28 ["registerPromptController"]
      128 JUMPIFNOT                        R7 ; [+6]
      129 GETUPVAL                         R7 0
      130 GETTABLEKS                       R7 R7 K28 ["registerPromptController"]
      132 MOVE                             R8 R6
      133 GETUPVAL                         R9 5
      134 CALL                             R7 2 0
      135 MOVE                             R9 R6
      136 NAMECALL                         R7 R3 K29 ["attachSession"]
      138 CALL                             R7 2 0
      139 GETUPVAL                         R7 0
      140 GETTABLEKS                       R7 R7 K12 ["service"]
      142 MOVE                             R9 R6
      143 GETUPVAL                         R10 6
      144 GETTABLEKS                       R10 R10 K30 ["create"]
      146 DUPTABLE                         R11 K34 [{"addContent", "editContent", "getMessageId"}]
      147 GETUPVAL                         R12 0
      148 GETTABLEKS                       R12 R12 K31 ["addContent"]
      150 SETTABLEKS                       R12 R11 K31 ["addContent"]
      152 GETUPVAL                         R12 0
      153 GETTABLEKS                       R12 R12 K32 ["editContent"]
      155 SETTABLEKS                       R12 R11 K32 ["editContent"]
      157 NEWCLOSURE                       R12 P0
      158 CAPTURE                          VAL R3
      159 SETTABLEKS                       R12 R11 K33 ["getMessageId"]
      161 CALL                             R10 1 -1
      162 NAMECALL                         R7 R7 K35 ["setClientToolConfirmationHandler"]
      164 CALL                             R7 -1 0
      165 LOADB                            R7 0
      166 LOADB                            R8 0
      167 LOADB                            R9 0
      168 LOADNIL                          R10
      169 NEWCLOSURE                       R11 P1
      170 CAPTURE                          UPVAL U0
      171 CAPTURE                          VAL R6
      172 CAPTURE                          VAL R3
      173 CAPTURE                          REF R10
      174 NEWCLOSURE                       R12 P2
      175 CAPTURE                          REF R9
      176 CAPTURE                          UPVAL U7
      177 CAPTURE                          UPVAL U3
      178 CAPTURE                          UPVAL U0
      179 CAPTURE                          VAL R6
      180 CAPTURE                          VAL R3
      181 CAPTURE                          REF R10
      182 CAPTURE                          VAL R0
      183 NEWCLOSURE                       R15 P3
      184 CAPTURE                          REF R8
      185 CAPTURE                          REF R7
      186 CAPTURE                          UPVAL U3
      187 CAPTURE                          UPVAL U8
      188 CAPTURE                          UPVAL U0
      189 CAPTURE                          VAL R6
      190 CAPTURE                          UPVAL U9
      191 CAPTURE                          UPVAL U10
      192 CAPTURE                          REF R9
      193 CAPTURE                          UPVAL U7
      194 CAPTURE                          VAL R3
      195 CAPTURE                          REF R10
      196 CAPTURE                          VAL R0
      197 CAPTURE                          UPVAL U11
      198 CAPTURE                          UPVAL U12
      199 NAMECALL                         R13 R3 K36 ["observeUpdates"]
      201 CALL                             R13 2 1
      202 MOVE                             R10 R13
      203 GETUPVAL                         R13 13
      204 GETUPVAL                         R14 0
      205 GETUPVAL                         R15 2
      206 MOVE                             R16 R6
      207 MOVE                             R17 R2
      208 CALL                             R13 4 1
      209 GETUPVAL                         R14 0
      210 GETTABLEKS                       R14 R14 K12 ["service"]
      212 MOVE                             R16 R13
      213 NAMECALL                         R14 R14 K37 ["prompt"]
      215 CALL                             R14 2 1
      216 NAMECALL                         R14 R14 K16 ["await"]
      218 CALL                             R14 1 2
      219 JUMPIF                           R14 ; [+40]
      220 JUMPIF                           R9 ; [+39]
      221 LOADB                            R9 1
      222 LOADK                            R16 K17 ["done"]
      223 SETUPVAL                         R16 3
      224 GETUPVAL                         R16 0
      225 GETTABLEKS                       R16 R16 K12 ["service"]
      227 MOVE                             R18 R6
      228 LOADNIL                          R19
      229 NAMECALL                         R16 R16 K35 ["setClientToolConfirmationHandler"]
      231 CALL                             R16 3 0
      232 GETUPVAL                         R16 0
      233 GETTABLEKS                       R16 R16 K38 ["unregisterPromptController"]
      235 JUMPIFNOT                        R16 ; [+5]
      236 GETUPVAL                         R16 0
      237 GETTABLEKS                       R16 R16 K38 ["unregisterPromptController"]
      239 MOVE                             R17 R6
      240 CALL                             R16 1 0
      241 NAMECALL                         R16 R3 K18 ["endTurn"]
      243 CALL                             R16 1 0
      244 JUMPIFNOT                        R10 ; [+3]
      245 MOVE                             R16 R10
      246 CALL                             R16 0 0
      247 LOADNIL                          R10
      248 MOVE                             R16 R1
      249 LOADK                            R18 K39 ["prompt failed: %*"]
      250 FASTCALL1                        TOSTRING R15 ; [+3]
      251 MOVE                             R21 R15
      252 GETIMPORT                        R20 K21 [tostring]
      254 CALL                             R20 1 1
      255 NAMECALL                         R18 R18 K22 ["format"]
      257 CALL                             R18 2 1
      258 MOVE                             R17 R18
      259 CALL                             R16 1 0
      260 CLOSEUPVALS                      R7
      261 RETURN                           R0 0

PROTO_12:
        0 GETIMPORT                        R2 K2 [os.clock]
        2 CALL                             R2 0 1
        3 LOADK                            R3 K3 ["pendingAccept"]
        4 LOADNIL                          R4
        5 LOADNIL                          R5
        6 LOADNIL                          R6
        7 LOADNIL                          R7
        8 LOADNIL                          R8
        9 LOADB                            R9 0
       10 NEWCLOSURE                       R10 P0
       11 CAPTURE                          REF R9
       12 CAPTURE                          REF R8
       13 CAPTURE                          VAL R0
       14 CAPTURE                          VAL R2
       15 NEWCLOSURE                       R11 P1
       16 CAPTURE                          REF R3
       17 CAPTURE                          REF R4
       18 CAPTURE                          REF R5
       19 CAPTURE                          REF R6
       20 CAPTURE                          REF R7
       21 NEWCLOSURE                       R12 P2
       22 CAPTURE                          REF R3
       23 CAPTURE                          REF R4
       24 CAPTURE                          VAL R10
       25 CAPTURE                          VAL R0
       26 DUPTABLE                         R13 K6 [{"cancelSessionPrompt", "getStateOfSessionPrompt"}]
       27 SETTABLEKS                       R12 R13 K4 ["cancelSessionPrompt"]
       29 SETTABLEKS                       R11 R13 K5 ["getStateOfSessionPrompt"]
       31 GETUPVAL                         R14 0
       32 GETTABLEKS                       R14 R14 K7 ["new"]
       34 NEWCLOSURE                       R15 P3
       35 CAPTURE                          VAL R0
       36 CAPTURE                          UPVAL U1
       37 CAPTURE                          VAL R1
       38 CAPTURE                          REF R3
       39 CAPTURE                          REF R4
       40 CAPTURE                          VAL R13
       41 CAPTURE                          UPVAL U2
       42 CAPTURE                          REF R7
       43 CAPTURE                          REF R8
       44 CAPTURE                          UPVAL U3
       45 CAPTURE                          VAL R10
       46 CAPTURE                          REF R6
       47 CAPTURE                          REF R5
       48 CAPTURE                          UPVAL U4
       49 CALL                             R14 1 1
       50 DUPTABLE                         R15 K9 [{"promise", "cancelSessionPrompt", "getStateOfSessionPrompt"}]
       51 SETTABLEKS                       R14 R15 K8 ["promise"]
       53 SETTABLEKS                       R12 R15 K4 ["cancelSessionPrompt"]
       55 SETTABLEKS                       R11 R15 K5 ["getStateOfSessionPrompt"]
       57 CLOSEUPVALS                      R3
       58 RETURN                           R15 1

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
       63 DUPCLOSURE                       R9 K15 [PROTO_0]
       64 CAPTURE                          VAL R6
       65 CAPTURE                          VAL R8
       66 DUPCLOSURE                       R10 K16 [PROTO_1]
       67 CAPTURE                          VAL R9
       68 CAPTURE                          VAL R5
       69 DUPCLOSURE                       R11 K17 [PROTO_2]
       70 DUPCLOSURE                       R12 K18 [PROTO_12]
       71 CAPTURE                          VAL R7
       72 CAPTURE                          VAL R8
       73 CAPTURE                          VAL R4
       74 CAPTURE                          VAL R3
       75 CAPTURE                          VAL R10
       76 RETURN                           R12 1
