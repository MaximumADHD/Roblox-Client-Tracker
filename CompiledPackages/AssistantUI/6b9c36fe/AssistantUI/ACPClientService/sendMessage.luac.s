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
       33 JUMPIFNOT                        R2 ; [+51]
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
       68 LOADK                            R13 K16 ["Attached image URI: %*"]
       69 MOVE                             R15 R7
       70 NAMECALL                         R13 R13 K17 ["format"]
       72 CALL                             R13 2 1
       73 MOVE                             R12 R13
       74 CALL                             R11 1 1
       75 SETTABLEKS                       R11 R10 K0 ["text"]
       77 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
       79 MOVE                             R9 R1
       80 GETIMPORT                        R8 K6 [table.insert]
       82 CALL                             R8 2 0
       83 FORGLOOP                         R2 2 ; [-45]
       85 RETURN                           R1 1

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
       69 JUMPIF                           R5 ; [+18]
       70 LOADK                            R7 K17 ["done"]
       71 SETUPVAL                         R7 4
       72 NAMECALL                         R7 R3 K18 ["endTurn"]
       74 CALL                             R7 1 0
       75 MOVE                             R7 R1
       76 LOADK                            R9 K19 ["failed to resolve sessionId: %*"]
       77 FASTCALL1                        TOSTRING R6 ; [+3]
       78 MOVE                             R12 R6
       79 GETIMPORT                        R11 K21 [tostring]
       81 CALL                             R11 1 1
       82 NAMECALL                         R9 R9 K22 ["format"]
       84 CALL                             R9 2 1
       85 MOVE                             R8 R9
       86 CALL                             R7 1 0
       87 RETURN                           R0 0
       88 SETUPVAL                         R6 5
       89 GETUPVAL                         R7 0
       90 GETTABLEKS                       R7 R7 K12 ["service"]
       92 MOVE                             R9 R6
       93 DUPTABLE                         R10 K24 [{"sessionId", "threadId", "acpSessionId", "assistantMode"}]
       94 GETUPVAL                         R11 0
       95 GETTABLEKS                       R11 R11 K25 ["conversationSessionId"]
       97 SETTABLEKS                       R11 R10 K23 ["sessionId"]
       99 GETUPVAL                         R11 0
      100 GETTABLEKS                       R11 R11 K13 ["threadId"]
      102 SETTABLEKS                       R11 R10 K13 ["threadId"]
      104 SETTABLEKS                       R6 R10 K14 ["acpSessionId"]
      106 GETUPVAL                         R11 0
      107 GETTABLEKS                       R11 R11 K1 ["assistantMode"]
      109 SETTABLEKS                       R11 R10 K1 ["assistantMode"]
      111 NAMECALL                         R7 R7 K26 ["setSessionToolCallMeta"]
      113 CALL                             R7 3 0
      114 GETUPVAL                         R7 0
      115 GETTABLEKS                       R7 R7 K14 ["acpSessionId"]
      117 JUMPIFNOTEQKNIL                  R7 ; [+10]
      119 GETUPVAL                         R7 0
      120 GETTABLEKS                       R7 R7 K27 ["setAcpSessionId"]
      122 JUMPIFNOT                        R7 ; [+5]
      123 GETUPVAL                         R7 0
      124 GETTABLEKS                       R7 R7 K27 ["setAcpSessionId"]
      126 MOVE                             R8 R6
      127 CALL                             R7 1 0
      128 GETUPVAL                         R7 0
      129 GETTABLEKS                       R7 R7 K28 ["registerPromptController"]
      131 JUMPIFNOT                        R7 ; [+6]
      132 GETUPVAL                         R7 0
      133 GETTABLEKS                       R7 R7 K28 ["registerPromptController"]
      135 MOVE                             R8 R6
      136 GETUPVAL                         R9 6
      137 CALL                             R7 2 0
      138 MOVE                             R9 R6
      139 NAMECALL                         R7 R3 K29 ["attachSession"]
      141 CALL                             R7 2 0
      142 GETUPVAL                         R7 0
      143 GETTABLEKS                       R7 R7 K12 ["service"]
      145 MOVE                             R9 R6
      146 GETUPVAL                         R10 7
      147 GETTABLEKS                       R10 R10 K30 ["create"]
      149 DUPTABLE                         R11 K34 [{"addContent", "editContent", "getMessageId"}]
      150 NEWCLOSURE                       R12 P0
      151 CAPTURE                          UPVAL U0
      152 SETTABLEKS                       R12 R11 K31 ["addContent"]
      154 NEWCLOSURE                       R12 P1
      155 CAPTURE                          UPVAL U0
      156 SETTABLEKS                       R12 R11 K32 ["editContent"]
      158 NEWCLOSURE                       R12 P2
      159 CAPTURE                          VAL R3
      160 SETTABLEKS                       R12 R11 K33 ["getMessageId"]
      162 CALL                             R10 1 -1
      163 NAMECALL                         R7 R7 K35 ["setClientToolConfirmationHandler"]
      165 CALL                             R7 -1 0
      166 LOADB                            R7 0
      167 LOADB                            R8 0
      168 LOADB                            R9 0
      169 LOADNIL                          R10
      170 NEWCLOSURE                       R11 P3
      171 CAPTURE                          UPVAL U0
      172 CAPTURE                          VAL R6
      173 CAPTURE                          VAL R3
      174 CAPTURE                          REF R10
      175 NEWCLOSURE                       R12 P4
      176 CAPTURE                          REF R9
      177 CAPTURE                          UPVAL U8
      178 CAPTURE                          UPVAL U4
      179 CAPTURE                          UPVAL U0
      180 CAPTURE                          VAL R6
      181 CAPTURE                          VAL R3
      182 CAPTURE                          REF R10
      183 CAPTURE                          VAL R0
      184 NEWCLOSURE                       R15 P5
      185 CAPTURE                          REF R8
      186 CAPTURE                          REF R7
      187 CAPTURE                          UPVAL U4
      188 CAPTURE                          UPVAL U9
      189 CAPTURE                          UPVAL U0
      190 CAPTURE                          VAL R6
      191 CAPTURE                          UPVAL U10
      192 CAPTURE                          UPVAL U11
      193 CAPTURE                          REF R9
      194 CAPTURE                          UPVAL U8
      195 CAPTURE                          VAL R3
      196 CAPTURE                          REF R10
      197 CAPTURE                          VAL R0
      198 CAPTURE                          UPVAL U12
      199 CAPTURE                          UPVAL U13
      200 NAMECALL                         R13 R3 K36 ["observeUpdates"]
      202 CALL                             R13 2 1
      203 MOVE                             R10 R13
      204 GETUPVAL                         R13 14
      205 GETUPVAL                         R14 0
      206 GETUPVAL                         R15 3
      207 MOVE                             R16 R6
      208 MOVE                             R17 R2
      209 CALL                             R13 4 1
      210 GETUPVAL                         R14 0
      211 GETTABLEKS                       R14 R14 K12 ["service"]
      213 MOVE                             R16 R13
      214 NAMECALL                         R14 R14 K37 ["prompt"]
      216 CALL                             R14 2 1
      217 NAMECALL                         R14 R14 K16 ["await"]
      219 CALL                             R14 1 2
      220 JUMPIF                           R14 ; [+40]
      221 JUMPIF                           R9 ; [+39]
      222 LOADB                            R9 1
      223 LOADK                            R16 K17 ["done"]
      224 SETUPVAL                         R16 4
      225 GETUPVAL                         R16 0
      226 GETTABLEKS                       R16 R16 K12 ["service"]
      228 MOVE                             R18 R6
      229 LOADNIL                          R19
      230 NAMECALL                         R16 R16 K35 ["setClientToolConfirmationHandler"]
      232 CALL                             R16 3 0
      233 GETUPVAL                         R16 0
      234 GETTABLEKS                       R16 R16 K38 ["unregisterPromptController"]
      236 JUMPIFNOT                        R16 ; [+5]
      237 GETUPVAL                         R16 0
      238 GETTABLEKS                       R16 R16 K38 ["unregisterPromptController"]
      240 MOVE                             R17 R6
      241 CALL                             R16 1 0
      242 NAMECALL                         R16 R3 K18 ["endTurn"]
      244 CALL                             R16 1 0
      245 JUMPIFNOT                        R10 ; [+3]
      246 MOVE                             R16 R10
      247 CALL                             R16 0 0
      248 LOADNIL                          R10
      249 MOVE                             R16 R1
      250 LOADK                            R18 K39 ["prompt failed: %*"]
      251 FASTCALL1                        TOSTRING R15 ; [+3]
      252 MOVE                             R21 R15
      253 GETIMPORT                        R20 K21 [tostring]
      255 CALL                             R20 1 1
      256 NAMECALL                         R18 R18 K22 ["format"]
      258 CALL                             R18 2 1
      259 MOVE                             R17 R18
      260 CALL                             R16 1 0
      261 CLOSEUPVALS                      R7
      262 RETURN                           R0 0

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
       41 GETTABLEKS                       R6 R0 K10 ["Util"]
       43 GETTABLEKS                       R6 R6 K11 ["ImageContentStore"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K6 ["Parent"]
       50 GETTABLEKS                       R7 R7 K12 ["Promise"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K13 ["Types"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R9 R0 K14 ["FlagUtils"]
       62 GETTABLEKS                       R9 R9 K15 ["getIsAssistantUseRemoteService"]
       64 CALL                             R8 1 1
       65 GETTABLEKS                       R8 R8 K16 ["get"]
       67 DUPCLOSURE                       R9 K17 [PROTO_0]
       68 CAPTURE                          VAL R5
       69 CAPTURE                          VAL R8
       70 CAPTURE                          VAL R7
       71 DUPCLOSURE                       R10 K18 [PROTO_1]
       72 CAPTURE                          VAL R9
       73 CAPTURE                          VAL R8
       74 DUPCLOSURE                       R11 K19 [PROTO_2]
       75 DUPCLOSURE                       R12 K20 [PROTO_14]
       76 CAPTURE                          VAL R6
       77 CAPTURE                          VAL R8
       78 CAPTURE                          VAL R7
       79 CAPTURE                          VAL R4
       80 CAPTURE                          VAL R3
       81 CAPTURE                          VAL R10
       82 RETURN                           R12 1
