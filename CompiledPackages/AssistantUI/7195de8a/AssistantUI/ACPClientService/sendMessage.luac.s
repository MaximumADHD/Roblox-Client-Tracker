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
       33 JUMPIFNOT                        R2 ; [+52]
       34 GETTABLEKS                       R2 R0 K8 ["images"]
       36 LOADNIL                          R3
       37 LOADNIL                          R4
       38 FORGPREP                         R2
       39 GETUPVAL                         R7 0
       40 GETTABLEKS                       R7 R7 K9 ["storeImage"]
       42 MOVE                             R8 R6
       43 CALL                             R7 1 1
       44 GETUPVAL                         R8 1
       45 GETTABLEKS                       R8 R8 K10 ["FFlagAssistantUseRemoteService"]
       47 JUMPIF                           R8 ; [+17]
       48 DUPTABLE                         R10 K15 [{["type"] = "image", ["data"], ["mimeType"], ["uri"]}]
       49 GETTABLEKS                       R11 R6 K12 ["data"]
       51 SETTABLEKS                       R11 R10 K12 ["data"]
       53 GETTABLEKS                       R11 R6 K13 ["mimeType"]
       55 SETTABLEKS                       R11 R10 K13 ["mimeType"]
       57 SETTABLEKS                       R7 R10 K14 ["uri"]
       59 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
       61 MOVE                             R9 R1
       62 GETIMPORT                        R8 K6 [table.insert]
       64 CALL                             R8 2 0
       65 DUPTABLE                         R10 K3 [{["type"] = "text", [2]}]
       66 GETUPVAL                         R11 2
       67 GETTABLEKS                       R11 R11 K16 ["getSystemReminder"]
       69 LOADK                            R13 K17 ["Attached image URI: %*"]
       70 MOVE                             R15 R7
       71 NAMECALL                         R13 R13 K18 ["format"]
       73 CALL                             R13 2 1
       74 MOVE                             R12 R13
       75 CALL                             R11 1 1
       76 SETTABLEKS                       R11 R10 K0 ["text"]
       78 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
       80 MOVE                             R9 R1
       81 GETIMPORT                        R8 K6 [table.insert]
       83 CALL                             R8 2 0
       84 FORGLOOP                         R2 2 ; [-46]
       86 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R4 0
        1 MOVE                             R5 R1
        2 CALL                             R4 1 1
        3 GETTABLEKS                       R5 R0 K0 ["getSystemReminders"]
        5 JUMPIFNOT                        R5 ; [+18]
        6 GETTABLEKS                       R5 R0 K0 ["getSystemReminders"]
        8 CALL                             R5 0 1
        9 MOVE                             R6 R5
       10 LOADNIL                          R7
       11 LOADNIL                          R8
       12 FORGPREP                         R6
       13 DUPTABLE                         R13 K3 [{["type"] = "text", ["text"]}]
       14 SETTABLEKS                       R10 R13 K2 ["text"]
       16 FASTCALL2                        TABLE_INSERT R4 R13 ; [+4]
       18 MOVE                             R12 R4
       19 GETIMPORT                        R11 K6 [table.insert]
       21 CALL                             R11 2 0
       22 FORGLOOP                         R6 2 ; [-10]
       24 DUPTABLE                         R5 K10 [{"sessionId", "prompt", "_meta"}]
       25 SETTABLEKS                       R2 R5 K7 ["sessionId"]
       27 SETTABLEKS                       R4 R5 K8 ["prompt"]
       29 DUPTABLE                         R6 K12 [{"_roblox"}]
       30 DUPTABLE                         R7 K15 [{"providerConfig", "allowedTools"}]
       31 DUPTABLE                         R8 K19 [{"apiKeys", "selectedModel", "selectedProvider"}]
       32 GETUPVAL                         R10 1
       33 GETTABLEKS                       R10 R10 K20 ["FFlagAssistantUseRemoteService"]
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

PROTO_7:
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

PROTO_8:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["getOrCreateAssistantMessage"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_9:
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

PROTO_10:
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

PROTO_11:
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

PROTO_12:
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

PROTO_13:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["resolveAllowedTools"]
        3 JUMPIFNOT                        R3 ; [+24]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K0 ["resolveAllowedTools"]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K1 ["assistantMode"]
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R4 R4 K2 ["FFlagAssistantUseRemoteService"]
       13 JUMPIF                           R4 ; [+12]
       14 GETUPVAL                         R5 0
       15 GETTABLEKS                       R5 R5 K3 ["selectedProvider"]
       17 GETUPVAL                         R6 2
       18 GETTABLEKS                       R6 R6 K4 ["LLMProviderTypes"]
       20 GETTABLEKS                       R6 R6 K5 ["Studio"]
       22 JUMPIFEQ                         R5 R6 ; [+2]
       24 LOADB                            R4 0 +1
       25 LOADB                            R4 1
       26 CALL                             R2 2 1
       27 JUMP                             ; [+1]
       28 LOADNIL                          R2
       29 GETUPVAL                         R3 0
       30 GETTABLEKS                       R3 R3 K6 ["sessionMonitor"]
       32 LOADB                            R4 1
       33 GETUPVAL                         R5 3
       34 GETTABLEKS                       R5 R5 K7 ["userMessageAlreadyRendered"]
       36 JUMPIFEQKB                       R5 TRUE ; [+8]
       38 GETUPVAL                         R5 3
       39 GETTABLEKS                       R5 R5 K8 ["retry"]
       41 JUMPIFEQKB                       R5 TRUE ; [+2]
       43 LOADB                            R4 0 +1
       44 LOADB                            R4 1
       45 DUPTABLE                         R7 K10 [{"suppressUserMessageEcho"}]
       46 SETTABLEKS                       R4 R7 K9 ["suppressUserMessageEcho"]
       48 NAMECALL                         R5 R3 K11 ["beginTurn"]
       50 CALL                             R5 2 0
       51 JUMPIFNOT                        R4 ; [+3]
       52 NAMECALL                         R5 R3 K12 ["getOrCreateAssistantMessage"]
       54 CALL                             R5 1 0
       55 GETUPVAL                         R5 0
       56 GETTABLEKS                       R5 R5 K13 ["service"]
       58 GETUPVAL                         R7 0
       59 GETTABLEKS                       R7 R7 K14 ["threadId"]
       61 GETUPVAL                         R8 0
       62 GETTABLEKS                       R8 R8 K15 ["acpSessionId"]
       64 NAMECALL                         R5 R5 K16 ["getOrCreateSessionForThread"]
       66 CALL                             R5 3 1
       67 NAMECALL                         R5 R5 K17 ["await"]
       69 CALL                             R5 1 2
       70 JUMPIF                           R5 ; [+18]
       71 LOADK                            R7 K18 ["done"]
       72 SETUPVAL                         R7 4
       73 NAMECALL                         R7 R3 K19 ["endTurn"]
       75 CALL                             R7 1 0
       76 MOVE                             R7 R1
       77 LOADK                            R9 K20 ["failed to resolve sessionId: %*"]
       78 FASTCALL1                        TOSTRING R6 ; [+3]
       79 MOVE                             R12 R6
       80 GETIMPORT                        R11 K22 [tostring]
       82 CALL                             R11 1 1
       83 NAMECALL                         R9 R9 K23 ["format"]
       85 CALL                             R9 2 1
       86 MOVE                             R8 R9
       87 CALL                             R7 1 0
       88 RETURN                           R0 0
       89 SETUPVAL                         R6 5
       90 GETUPVAL                         R7 0
       91 GETTABLEKS                       R7 R7 K13 ["service"]
       93 MOVE                             R9 R6
       94 DUPTABLE                         R10 K25 [{"sessionId", "threadId", "acpSessionId", "assistantMode"}]
       95 GETUPVAL                         R11 0
       96 GETTABLEKS                       R11 R11 K26 ["conversationSessionId"]
       98 SETTABLEKS                       R11 R10 K24 ["sessionId"]
      100 GETUPVAL                         R11 0
      101 GETTABLEKS                       R11 R11 K14 ["threadId"]
      103 SETTABLEKS                       R11 R10 K14 ["threadId"]
      105 SETTABLEKS                       R6 R10 K15 ["acpSessionId"]
      107 GETUPVAL                         R11 0
      108 GETTABLEKS                       R11 R11 K1 ["assistantMode"]
      110 SETTABLEKS                       R11 R10 K1 ["assistantMode"]
      112 NAMECALL                         R7 R7 K27 ["setSessionToolCallMeta"]
      114 CALL                             R7 3 0
      115 GETUPVAL                         R7 0
      116 GETTABLEKS                       R7 R7 K15 ["acpSessionId"]
      118 JUMPIFNOTEQKNIL                  R7 ; [+10]
      120 GETUPVAL                         R7 0
      121 GETTABLEKS                       R7 R7 K28 ["setAcpSessionId"]
      123 JUMPIFNOT                        R7 ; [+5]
      124 GETUPVAL                         R7 0
      125 GETTABLEKS                       R7 R7 K28 ["setAcpSessionId"]
      127 MOVE                             R8 R6
      128 CALL                             R7 1 0
      129 GETUPVAL                         R7 0
      130 GETTABLEKS                       R7 R7 K29 ["registerPromptController"]
      132 JUMPIFNOT                        R7 ; [+6]
      133 GETUPVAL                         R7 0
      134 GETTABLEKS                       R7 R7 K29 ["registerPromptController"]
      136 MOVE                             R8 R6
      137 GETUPVAL                         R9 6
      138 CALL                             R7 2 0
      139 MOVE                             R9 R6
      140 NAMECALL                         R7 R3 K30 ["attachSession"]
      142 CALL                             R7 2 0
      143 GETUPVAL                         R7 0
      144 GETTABLEKS                       R7 R7 K13 ["service"]
      146 MOVE                             R9 R6
      147 GETUPVAL                         R10 7
      148 GETTABLEKS                       R10 R10 K31 ["create"]
      150 DUPTABLE                         R11 K35 [{"addContent", "editContent", "getMessageId"}]
      151 NEWCLOSURE                       R12 P0
      152 CAPTURE                          UPVAL U0
      153 SETTABLEKS                       R12 R11 K32 ["addContent"]
      155 NEWCLOSURE                       R12 P1
      156 CAPTURE                          UPVAL U0
      157 SETTABLEKS                       R12 R11 K33 ["editContent"]
      159 NEWCLOSURE                       R12 P2
      160 CAPTURE                          VAL R3
      161 SETTABLEKS                       R12 R11 K34 ["getMessageId"]
      163 CALL                             R10 1 -1
      164 NAMECALL                         R7 R7 K36 ["setClientToolConfirmationHandler"]
      166 CALL                             R7 -1 0
      167 LOADB                            R7 0
      168 LOADB                            R8 0
      169 LOADB                            R9 0
      170 LOADNIL                          R10
      171 NEWCLOSURE                       R11 P3
      172 CAPTURE                          UPVAL U0
      173 CAPTURE                          VAL R6
      174 CAPTURE                          VAL R3
      175 CAPTURE                          REF R10
      176 NEWCLOSURE                       R12 P4
      177 CAPTURE                          REF R9
      178 CAPTURE                          UPVAL U8
      179 CAPTURE                          UPVAL U4
      180 CAPTURE                          UPVAL U0
      181 CAPTURE                          VAL R6
      182 CAPTURE                          VAL R3
      183 CAPTURE                          REF R10
      184 CAPTURE                          VAL R0
      185 NEWCLOSURE                       R15 P5
      186 CAPTURE                          REF R8
      187 CAPTURE                          REF R7
      188 CAPTURE                          UPVAL U4
      189 CAPTURE                          UPVAL U9
      190 CAPTURE                          UPVAL U0
      191 CAPTURE                          VAL R6
      192 CAPTURE                          UPVAL U10
      193 CAPTURE                          UPVAL U11
      194 CAPTURE                          REF R9
      195 CAPTURE                          UPVAL U8
      196 CAPTURE                          VAL R3
      197 CAPTURE                          REF R10
      198 CAPTURE                          VAL R0
      199 CAPTURE                          UPVAL U12
      200 CAPTURE                          UPVAL U13
      201 NAMECALL                         R13 R3 K37 ["observeUpdates"]
      203 CALL                             R13 2 1
      204 MOVE                             R10 R13
      205 GETUPVAL                         R13 14
      206 GETUPVAL                         R14 0
      207 GETUPVAL                         R15 3
      208 MOVE                             R16 R6
      209 MOVE                             R17 R2
      210 CALL                             R13 4 1
      211 GETUPVAL                         R14 0
      212 GETTABLEKS                       R14 R14 K13 ["service"]
      214 MOVE                             R16 R13
      215 NAMECALL                         R14 R14 K38 ["prompt"]
      217 CALL                             R14 2 1
      218 NAMECALL                         R14 R14 K17 ["await"]
      220 CALL                             R14 1 2
      221 JUMPIF                           R14 ; [+40]
      222 JUMPIF                           R9 ; [+39]
      223 LOADB                            R9 1
      224 LOADK                            R16 K18 ["done"]
      225 SETUPVAL                         R16 4
      226 GETUPVAL                         R16 0
      227 GETTABLEKS                       R16 R16 K13 ["service"]
      229 MOVE                             R18 R6
      230 LOADNIL                          R19
      231 NAMECALL                         R16 R16 K36 ["setClientToolConfirmationHandler"]
      233 CALL                             R16 3 0
      234 GETUPVAL                         R16 0
      235 GETTABLEKS                       R16 R16 K39 ["unregisterPromptController"]
      237 JUMPIFNOT                        R16 ; [+5]
      238 GETUPVAL                         R16 0
      239 GETTABLEKS                       R16 R16 K39 ["unregisterPromptController"]
      241 MOVE                             R17 R6
      242 CALL                             R16 1 0
      243 NAMECALL                         R16 R3 K19 ["endTurn"]
      245 CALL                             R16 1 0
      246 JUMPIFNOT                        R10 ; [+3]
      247 MOVE                             R16 R10
      248 CALL                             R16 0 0
      249 LOADNIL                          R10
      250 MOVE                             R16 R1
      251 LOADK                            R18 K40 ["prompt failed: %*"]
      252 FASTCALL1                        TOSTRING R15 ; [+3]
      253 MOVE                             R21 R15
      254 GETIMPORT                        R20 K22 [tostring]
      256 CALL                             R20 1 1
      257 NAMECALL                         R18 R18 K23 ["format"]
      259 CALL                             R18 2 1
      260 MOVE                             R17 R18
      261 CALL                             R16 1 0
      262 CLOSEUPVALS                      R7
      263 RETURN                           R0 0

PROTO_14:
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
       37 CAPTURE                          UPVAL U2
       38 CAPTURE                          VAL R1
       39 CAPTURE                          REF R3
       40 CAPTURE                          REF R4
       41 CAPTURE                          VAL R13
       42 CAPTURE                          UPVAL U3
       43 CAPTURE                          REF R7
       44 CAPTURE                          REF R8
       45 CAPTURE                          UPVAL U4
       46 CAPTURE                          VAL R10
       47 CAPTURE                          REF R6
       48 CAPTURE                          REF R5
       49 CAPTURE                          UPVAL U5
       50 CALL                             R14 1 1
       51 DUPTABLE                         R15 K9 [{"promise", "cancelSessionPrompt", "getStateOfSessionPrompt"}]
       52 SETTABLEKS                       R14 R15 K8 ["promise"]
       54 SETTABLEKS                       R12 R15 K4 ["cancelSessionPrompt"]
       56 SETTABLEKS                       R11 R15 K5 ["getStateOfSessionPrompt"]
       58 CLOSEUPVALS                      R3
       59 RETURN                           R15 1

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
       65 CAPTURE                          VAL R5
       66 CAPTURE                          VAL R8
       67 DUPCLOSURE                       R10 K16 [PROTO_1]
       68 CAPTURE                          VAL R9
       69 CAPTURE                          VAL R5
       70 DUPCLOSURE                       R11 K17 [PROTO_2]
       71 DUPCLOSURE                       R12 K18 [PROTO_14]
       72 CAPTURE                          VAL R7
       73 CAPTURE                          VAL R5
       74 CAPTURE                          VAL R8
       75 CAPTURE                          VAL R4
       76 CAPTURE                          VAL R3
       77 CAPTURE                          VAL R10
       78 RETURN                           R12 1
