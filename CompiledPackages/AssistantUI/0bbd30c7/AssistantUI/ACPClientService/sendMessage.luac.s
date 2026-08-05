PROTO_0:
        0 NEWTABLE                         R1 0 1
        2 DUPTABLE                         R2 K2 [{[1] = "text", ["text"]}]
        3 GETTABLEKS                       R3 R0 K1 ["text"]
        5 SETTABLEKS                       R3 R2 K1 ["text"]
        7 SETLIST                          R1 R2 1 [1]
        9 GETTABLEKS                       R2 R0 K3 ["additionalPromptText"]
       11 JUMPIFNOT                        R2 ; [+11]
       12 DUPTABLE                         R4 K2 [{[1] = "text", ["text"]}]
       13 GETTABLEKS                       R5 R0 K3 ["additionalPromptText"]
       15 SETTABLEKS                       R5 R4 K1 ["text"]
       17 FASTCALL2                        TABLE_INSERT R1 R4 ; [+4]
       19 MOVE                             R3 R1
       20 GETIMPORT                        R2 K6 [table.insert]
       22 CALL                             R2 2 0
       23 GETTABLEKS                       R2 R0 K7 ["images"]
       25 JUMPIFNOT                        R2 ; [+48]
       26 GETTABLEKS                       R2 R0 K7 ["images"]
       28 LOADNIL                          R3
       29 LOADNIL                          R4
       30 FORGPREP                         R2
       31 GETUPVAL                         R7 0
       32 GETTABLEKS                       R7 R7 K8 ["storeImage"]
       34 MOVE                             R8 R6
       35 CALL                             R7 1 1
       36 DUPTABLE                         R10 K13 [{[1] = "image", ["data"], ["mimeType"], ["uri"]}]
       37 GETTABLEKS                       R11 R6 K10 ["data"]
       39 SETTABLEKS                       R11 R10 K10 ["data"]
       41 GETTABLEKS                       R11 R6 K11 ["mimeType"]
       43 SETTABLEKS                       R11 R10 K11 ["mimeType"]
       45 SETTABLEKS                       R7 R10 K12 ["uri"]
       47 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
       49 MOVE                             R9 R1
       50 GETIMPORT                        R8 K6 [table.insert]
       52 CALL                             R8 2 0
       53 DUPTABLE                         R10 K2 [{[1] = "text", ["text"]}]
       54 GETUPVAL                         R11 1
       55 GETTABLEKS                       R11 R11 K14 ["getSystemReminder"]
       57 LOADK                            R13 K15 ["Attached image URI: %*"]
       58 MOVE                             R15 R7
       59 NAMECALL                         R13 R13 K16 ["format"]
       61 CALL                             R13 2 1
       62 MOVE                             R12 R13
       63 CALL                             R11 1 1
       64 SETTABLEKS                       R11 R10 K1 ["text"]
       66 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
       68 MOVE                             R9 R1
       69 GETIMPORT                        R8 K6 [table.insert]
       71 CALL                             R8 2 0
       72 FORGLOOP                         R2 2 ; [-42]
       74 RETURN                           R1 1

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
       36 GETTABLEKS                       R9 R0 K17 ["apiKeys"]
       38 SETTABLEKS                       R9 R8 K17 ["apiKeys"]
       40 GETTABLEKS                       R9 R0 K18 ["selectedModel"]
       42 SETTABLEKS                       R9 R8 K18 ["selectedModel"]
       44 GETTABLEKS                       R9 R0 K19 ["selectedProvider"]
       46 SETTABLEKS                       R9 R8 K19 ["selectedProvider"]
       48 SETTABLEKS                       R8 R7 K14 ["providerConfig"]
       50 SETTABLEKS                       R3 R7 K15 ["allowedTools"]
       52 SETTABLEKS                       R7 R6 K12 ["_roblox"]
       54 SETTABLEKS                       R6 R5 K10 ["_meta"]
       56 RETURN                           R5 1

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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["service"]
        3 MOVE                             R5 R0
        4 MOVE                             R6 R1
        5 MOVE                             R7 R2
        6 NAMECALL                         R3 R3 K1 ["setClientToolUiContext"]
        8 CALL                             R3 4 0
        9 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["getOrCreateAssistantMessage"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_8:
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
       18 JUMPIFNOT                        R0 ; [+4]
       19 GETUPVAL                         R0 2
       20 CALL                             R0 0 0
       21 LOADNIL                          R0
       22 SETUPVAL                         R0 2
       23 RETURN                           R0 0

PROTO_9:
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
       26 JUMPIFNOT                        R1 ; [+4]
       27 GETUPVAL                         R1 5
       28 CALL                             R1 0 0
       29 LOADNIL                          R1
       30 SETUPVAL                         R1 5
       31 GETUPVAL                         R1 6
       32 MOVE                             R2 R0
       33 CALL                             R1 1 0
       34 RETURN                           R0 0

PROTO_10:
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

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["sessionUpdate"]
        2 JUMPIFNOTEQKS                    R1 K1 ["state_update"] ; [+132]
        4 GETTABLEKS                       R2 R0 K2 ["state"]
        6 JUMPIFNOTEQKS                    R2 K3 ["running"] ; [+14]
        8 LOADB                            R2 1
        9 SETUPVAL                         R2 0
       10 GETUPVAL                         R2 1
       11 JUMPIFNOT                        R2 ; [+122]
       12 GETUPVAL                         R2 2
       13 JUMPIFEQKS                       R2 K4 ["pendingCancel"] ; [+120]
       15 GETUPVAL                         R2 2
       16 JUMPIFEQKS                       R2 K5 ["done"] ; [+117]
       18 LOADK                            R2 K3 ["running"]
       19 SETUPVAL                         R2 2
       20 RETURN                           R0 0
       21 GETTABLEKS                       R2 R0 K2 ["state"]
       23 JUMPIFNOTEQKS                    R2 K6 ["idle"] ; [+110]
       25 GETUPVAL                         R2 3
       26 MOVE                             R4 R0
       27 NAMECALL                         R2 R2 K7 ["handleUpdate"]
       29 CALL                             R2 2 0
       30 GETUPVAL                         R2 4
       31 JUMPIFNOT                        R2 ; [+10]
       32 GETUPVAL                         R2 5
       33 GETTABLEKS                       R2 R2 K8 ["onAssistantMessageFinished"]
       35 JUMPIFNOT                        R2 ; [+6]
       36 GETUPVAL                         R2 5
       37 GETTABLEKS                       R2 R2 K8 ["onAssistantMessageFinished"]
       39 GETUPVAL                         R3 4
       40 GETUPVAL                         R4 6
       41 CALL                             R2 2 0
       42 GETUPVAL                         R2 7
       43 GETTABLEKS                       R2 R2 K9 ["Engine"]
       45 GETTABLEKS                       R2 R2 K10 ["ErrorTypes"]
       47 GETTABLEKS                       R2 R2 K11 ["handleStopReason"]
       49 GETTABLEKS                       R3 R0 K12 ["stopReason"]
       51 NEWCLOSURE                       R4 P0
       52 CAPTURE                          UPVAL U5
       53 CAPTURE                          UPVAL U4
       54 CAPTURE                          UPVAL U6
       55 CAPTURE                          UPVAL U8
       56 CALL                             R2 2 1
       57 JUMPIF                           R2 ; [+40]
       58 GETTABLEKS                       R5 R0 K12 ["stopReason"]
       60 JUMPIFNOTEQKS                    R5 K13 ["end_turn"] ; [+4]
       62 LOADK                            R3 K14 ["message_stop"]
       63 LOADB                            R4 0
       64 JUMP                             ; [+17]
       65 JUMPIFNOTEQKS                    R5 K15 ["cancelled"] ; [+4]
       67 LOADK                            R3 K16 ["user_cancelled"]
       68 LOADB                            R4 0
       69 JUMP                             ; [+12]
       70 ORK                              R6 R5 K17 ["unknown_stop_reason"]
       71 GETIMPORT                        R7 K19 [warn]
       73 LOADK                            R9 K20 ["[Assistant][ACP] Unrecognized terminal stop reason: %*"]
       74 MOVE                             R11 R6
       75 NAMECALL                         R9 R9 K21 ["format"]
       77 CALL                             R9 2 1
       78 MOVE                             R8 R9
       79 CALL                             R7 1 0
       80 MOVE                             R3 R6
       81 LOADB                            R4 1
       82 JUMPIFNOT                        R4 ; [+11]
       83 GETUPVAL                         R5 5
       84 GETTABLEKS                       R5 R5 K22 ["showError"]
       86 JUMPIFNOT                        R5 ; [+7]
       87 GETUPVAL                         R5 5
       88 GETTABLEKS                       R5 R5 K22 ["showError"]
       90 LOADK                            R6 K23 ["client_error"]
       91 GETUPVAL                         R7 4
       92 GETUPVAL                         R8 6
       93 CALL                             R5 3 0
       94 GETUPVAL                         R5 8
       95 MOVE                             R6 R3
       96 GETUPVAL                         R7 6
       97 CALL                             R5 2 0
       98 GETTABLEKS                       R3 R0 K12 ["stopReason"]
      100 GETUPVAL                         R4 9
      101 JUMPIFNOT                        R4 ; [+1]
      102 RETURN                           R0 0
      103 LOADB                            R4 1
      104 SETUPVAL                         R4 9
      105 SETUPVAL                         R3 10
      106 LOADK                            R4 K5 ["done"]
      107 SETUPVAL                         R4 2
      108 GETUPVAL                         R4 5
      109 GETTABLEKS                       R4 R4 K24 ["service"]
      111 GETUPVAL                         R6 6
      112 LOADNIL                          R7
      113 NAMECALL                         R4 R4 K25 ["setClientToolConfirmationHandler"]
      115 CALL                             R4 3 0
      116 GETUPVAL                         R4 5
      117 GETTABLEKS                       R4 R4 K26 ["unregisterPromptController"]
      119 JUMPIFNOT                        R4 ; [+5]
      120 GETUPVAL                         R4 5
      121 GETTABLEKS                       R4 R4 K26 ["unregisterPromptController"]
      123 GETUPVAL                         R5 6
      124 CALL                             R4 1 0
      125 GETUPVAL                         R4 11
      126 JUMPIFNOT                        R4 ; [+4]
      127 GETUPVAL                         R4 11
      128 CALL                             R4 0 0
      129 LOADNIL                          R4
      130 SETUPVAL                         R4 11
      131 GETUPVAL                         R4 12
      132 MOVE                             R5 R3
      133 CALL                             R4 1 0
      134 RETURN                           R0 0
      135 GETUPVAL                         R2 2
      136 JUMPIFNOTEQKS                    R2 K27 ["pendingAccept"] ; [+80]
      138 JUMPIFNOTEQKS                    R1 K28 ["user_message"] ; [+64]
      140 GETTABLEKS                       R2 R0 K29 ["messageId"]
      142 SETUPVAL                         R2 13
      143 GETTABLEKS                       R2 R0 K30 ["_meta"]
      145 JUMPIFNOT                        R2 ; [+4]
      146 GETTABLEKS                       R2 R0 K30 ["_meta"]
      148 GETTABLEKS                       R2 R2 K31 ["_roblox"]
      150 FASTCALL1                        TYPEOF R2 ; [+3]
      151 MOVE                             R4 R2
      152 GETIMPORT                        R3 K33 [typeof]
      154 CALL                             R3 1 1
      155 JUMPIFNOTEQKS                    R3 K34 ["table"] ; [+12]
      157 GETTABLEKS                       R4 R2 K35 ["turnId"]
      159 FASTCALL1                        TYPEOF R4 ; [+2]
      160 GETIMPORT                        R3 K33 [typeof]
      162 CALL                             R3 1 1
      163 JUMPIFNOTEQKS                    R3 K36 ["number"] ; [+4]
      165 GETTABLEKS                       R3 R2 K35 ["turnId"]
      167 SETUPVAL                         R3 14
      168 LOADB                            R3 1
      169 SETUPVAL                         R3 1
      170 GETUPVAL                         R3 0
      171 JUMPIFNOT                        R3 ; [+2]
      172 LOADK                            R3 K3 ["running"]
      173 SETUPVAL                         R3 2
      174 GETUPVAL                         R3 15
      175 GETTABLEKS                       R3 R3 K37 ["retry"]
      177 JUMPIF                           R3 ; [+9]
      178 GETUPVAL                         R3 15
      179 GETTABLEKS                       R3 R3 K38 ["userMessageAlreadyRendered"]
      181 JUMPIF                           R3 ; [+5]
      182 GETUPVAL                         R3 3
      183 MOVE                             R5 R0
      184 NAMECALL                         R3 R3 K7 ["handleUpdate"]
      186 CALL                             R3 2 0
      187 GETUPVAL                         R3 3
      188 NAMECALL                         R3 R3 K39 ["getOrCreateAssistantMessage"]
      190 CALL                             R3 1 1
      191 SETUPVAL                         R3 4
      192 GETUPVAL                         R4 5
      193 GETTABLEKS                       R4 R4 K40 ["onUserMessageAccepted"]
      195 JUMPIFNOT                        R4 ; [+6]
      196 GETUPVAL                         R4 5
      197 GETTABLEKS                       R4 R4 K40 ["onUserMessageAccepted"]
      199 MOVE                             R5 R3
      200 GETUPVAL                         R6 6
      201 CALL                             R4 2 0
      202 RETURN                           R0 0
      203 GETIMPORT                        R2 K19 [warn]
      205 LOADK                            R4 K41 ["[Assistant][ACP] Ignoring session/update before user_message accept: %*"]
      206 FASTCALL1                        TOSTRING R1 ; [+3]
      207 MOVE                             R7 R1
      208 GETIMPORT                        R6 K43 [tostring]
      210 CALL                             R6 1 1
      211 NAMECALL                         R4 R4 K21 ["format"]
      213 CALL                             R4 2 1
      214 MOVE                             R3 R4
      215 CALL                             R2 1 0
      216 RETURN                           R0 0
      217 GETUPVAL                         R2 3
      218 MOVE                             R4 R0
      219 NAMECALL                         R2 R2 K7 ["handleUpdate"]
      221 CALL                             R2 2 0
      222 RETURN                           R0 0

PROTO_12:
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
       26 GETTABLEKS                       R3 R3 K5 ["service"]
       28 GETUPVAL                         R5 0
       29 GETTABLEKS                       R5 R5 K6 ["threadId"]
       31 GETUPVAL                         R6 0
       32 GETTABLEKS                       R6 R6 K7 ["acpSessionId"]
       34 NAMECALL                         R3 R3 K8 ["getOrCreateSessionForThread"]
       36 CALL                             R3 3 1
       37 NAMECALL                         R3 R3 K9 ["await"]
       39 CALL                             R3 1 2
       40 JUMPIF                           R3 ; [+15]
       41 LOADK                            R5 K10 ["done"]
       42 SETUPVAL                         R5 2
       43 MOVE                             R5 R1
       44 LOADK                            R7 K11 ["failed to resolve sessionId: %*"]
       45 FASTCALL1                        TOSTRING R4 ; [+3]
       46 MOVE                             R10 R4
       47 GETIMPORT                        R9 K13 [tostring]
       49 CALL                             R9 1 1
       50 NAMECALL                         R7 R7 K14 ["format"]
       52 CALL                             R7 2 1
       53 MOVE                             R6 R7
       54 CALL                             R5 1 0
       55 RETURN                           R0 0
       56 SETUPVAL                         R4 3
       57 GETUPVAL                         R5 0
       58 GETTABLEKS                       R5 R5 K5 ["service"]
       60 MOVE                             R7 R4
       61 DUPTABLE                         R8 K16 [{"sessionId", "threadId", "acpSessionId", "assistantMode"}]
       62 GETUPVAL                         R9 0
       63 GETTABLEKS                       R9 R9 K17 ["conversationSessionId"]
       65 SETTABLEKS                       R9 R8 K15 ["sessionId"]
       67 GETUPVAL                         R9 0
       68 GETTABLEKS                       R9 R9 K6 ["threadId"]
       70 SETTABLEKS                       R9 R8 K6 ["threadId"]
       72 SETTABLEKS                       R4 R8 K7 ["acpSessionId"]
       74 GETUPVAL                         R9 0
       75 GETTABLEKS                       R9 R9 K1 ["assistantMode"]
       77 SETTABLEKS                       R9 R8 K1 ["assistantMode"]
       79 NAMECALL                         R5 R5 K18 ["setSessionToolCallMeta"]
       81 CALL                             R5 3 0
       82 GETUPVAL                         R5 0
       83 GETTABLEKS                       R5 R5 K7 ["acpSessionId"]
       85 JUMPIFNOTEQKNIL                  R5 ; [+10]
       87 GETUPVAL                         R5 0
       88 GETTABLEKS                       R5 R5 K19 ["setAcpSessionId"]
       90 JUMPIFNOT                        R5 ; [+5]
       91 GETUPVAL                         R5 0
       92 GETTABLEKS                       R5 R5 K19 ["setAcpSessionId"]
       94 MOVE                             R6 R4
       95 CALL                             R5 1 0
       96 GETUPVAL                         R5 0
       97 GETTABLEKS                       R5 R5 K20 ["registerPromptController"]
       99 JUMPIFNOT                        R5 ; [+6]
      100 GETUPVAL                         R5 0
      101 GETTABLEKS                       R5 R5 K20 ["registerPromptController"]
      103 MOVE                             R6 R4
      104 GETUPVAL                         R7 4
      105 CALL                             R5 2 0
      106 GETUPVAL                         R5 5
      107 GETTABLEKS                       R5 R5 K21 ["new"]
      109 DUPTABLE                         R6 K27 [{"addMessage", "addContent", "editContent", "acceptedUserMessageHidden", "onToolWidgetCreated"}]
      110 GETUPVAL                         R7 0
      111 GETTABLEKS                       R7 R7 K22 ["addMessage"]
      113 SETTABLEKS                       R7 R6 K22 ["addMessage"]
      115 GETUPVAL                         R7 0
      116 GETTABLEKS                       R7 R7 K23 ["addContent"]
      118 SETTABLEKS                       R7 R6 K23 ["addContent"]
      120 GETUPVAL                         R7 0
      121 GETTABLEKS                       R7 R7 K24 ["editContent"]
      123 SETTABLEKS                       R7 R6 K24 ["editContent"]
      125 GETUPVAL                         R8 6
      126 GETTABLEKS                       R8 R8 K28 ["hidden"]
      128 JUMPIFEQKB                       R8 TRUE ; [+2]
      130 LOADB                            R7 0 +1
      131 LOADB                            R7 1
      132 SETTABLEKS                       R7 R6 K25 ["acceptedUserMessageHidden"]
      134 NEWCLOSURE                       R7 P0
      135 CAPTURE                          UPVAL U0
      136 SETTABLEKS                       R7 R6 K26 ["onToolWidgetCreated"]
      138 CALL                             R5 1 1
      139 GETUPVAL                         R6 0
      140 GETTABLEKS                       R6 R6 K5 ["service"]
      142 MOVE                             R8 R4
      143 GETUPVAL                         R9 7
      144 GETTABLEKS                       R9 R9 K29 ["create"]
      146 DUPTABLE                         R10 K31 [{"addContent", "editContent", "getMessageId"}]
      147 GETUPVAL                         R11 0
      148 GETTABLEKS                       R11 R11 K23 ["addContent"]
      150 SETTABLEKS                       R11 R10 K23 ["addContent"]
      152 GETUPVAL                         R11 0
      153 GETTABLEKS                       R11 R11 K24 ["editContent"]
      155 SETTABLEKS                       R11 R10 K24 ["editContent"]
      157 NEWCLOSURE                       R11 P1
      158 CAPTURE                          VAL R5
      159 SETTABLEKS                       R11 R10 K30 ["getMessageId"]
      161 CALL                             R9 1 -1
      162 NAMECALL                         R6 R6 K32 ["setClientToolConfirmationHandler"]
      164 CALL                             R6 -1 0
      165 LOADB                            R6 0
      166 LOADB                            R7 0
      167 LOADB                            R8 0
      168 LOADNIL                          R9
      169 NEWCLOSURE                       R10 P2
      170 CAPTURE                          UPVAL U0
      171 CAPTURE                          VAL R4
      172 CAPTURE                          REF R9
      173 NEWCLOSURE                       R11 P3
      174 CAPTURE                          REF R8
      175 CAPTURE                          UPVAL U8
      176 CAPTURE                          UPVAL U2
      177 CAPTURE                          UPVAL U0
      178 CAPTURE                          VAL R4
      179 CAPTURE                          REF R9
      180 CAPTURE                          VAL R0
      181 GETUPVAL                         R12 0
      182 GETTABLEKS                       R12 R12 K5 ["service"]
      184 MOVE                             R14 R4
      185 NEWCLOSURE                       R15 P4
      186 CAPTURE                          REF R7
      187 CAPTURE                          REF R6
      188 CAPTURE                          UPVAL U2
      189 CAPTURE                          VAL R5
      190 CAPTURE                          UPVAL U9
      191 CAPTURE                          UPVAL U0
      192 CAPTURE                          VAL R4
      193 CAPTURE                          UPVAL U10
      194 CAPTURE                          UPVAL U11
      195 CAPTURE                          REF R8
      196 CAPTURE                          UPVAL U8
      197 CAPTURE                          REF R9
      198 CAPTURE                          VAL R0
      199 CAPTURE                          UPVAL U12
      200 CAPTURE                          UPVAL U13
      201 CAPTURE                          UPVAL U6
      202 NAMECALL                         R12 R12 K33 ["subscribeToSessionUpdates"]
      204 CALL                             R12 3 1
      205 MOVE                             R9 R12
      206 GETUPVAL                         R12 14
      207 GETUPVAL                         R13 0
      208 GETUPVAL                         R14 6
      209 MOVE                             R15 R4
      210 MOVE                             R16 R2
      211 CALL                             R12 4 1
      212 GETUPVAL                         R13 0
      213 GETTABLEKS                       R13 R13 K5 ["service"]
      215 MOVE                             R15 R12
      216 NAMECALL                         R13 R13 K34 ["prompt"]
      218 CALL                             R13 2 1
      219 NAMECALL                         R13 R13 K9 ["await"]
      221 CALL                             R13 1 2
      222 JUMPIF                           R13 ; [+37]
      223 JUMPIF                           R8 ; [+36]
      224 LOADB                            R8 1
      225 LOADK                            R15 K10 ["done"]
      226 SETUPVAL                         R15 2
      227 GETUPVAL                         R15 0
      228 GETTABLEKS                       R15 R15 K5 ["service"]
      230 MOVE                             R17 R4
      231 LOADNIL                          R18
      232 NAMECALL                         R15 R15 K32 ["setClientToolConfirmationHandler"]
      234 CALL                             R15 3 0
      235 GETUPVAL                         R15 0
      236 GETTABLEKS                       R15 R15 K35 ["unregisterPromptController"]
      238 JUMPIFNOT                        R15 ; [+5]
      239 GETUPVAL                         R15 0
      240 GETTABLEKS                       R15 R15 K35 ["unregisterPromptController"]
      242 MOVE                             R16 R4
      243 CALL                             R15 1 0
      244 JUMPIFNOT                        R9 ; [+3]
      245 MOVE                             R15 R9
      246 CALL                             R15 0 0
      247 LOADNIL                          R9
      248 MOVE                             R15 R1
      249 LOADK                            R17 K36 ["prompt failed: %*"]
      250 FASTCALL1                        TOSTRING R14 ; [+3]
      251 MOVE                             R20 R14
      252 GETIMPORT                        R19 K13 [tostring]
      254 CALL                             R19 1 1
      255 NAMECALL                         R17 R17 K14 ["format"]
      257 CALL                             R17 2 1
      258 MOVE                             R16 R17
      259 CALL                             R15 1 0
      260 CLOSEUPVALS                      R6
      261 RETURN                           R0 0

PROTO_13:
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
       37 CAPTURE                          REF R3
       38 CAPTURE                          REF R4
       39 CAPTURE                          VAL R13
       40 CAPTURE                          UPVAL U2
       41 CAPTURE                          VAL R1
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
       20 GETTABLEKS                       R3 R3 K7 ["ACPClientServiceUIRelay"]
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
       70 DUPCLOSURE                       R12 K18 [PROTO_13]
       71 CAPTURE                          VAL R7
       72 CAPTURE                          VAL R8
       73 CAPTURE                          VAL R2
       74 CAPTURE                          VAL R4
       75 CAPTURE                          VAL R3
       76 CAPTURE                          VAL R10
       77 RETURN                           R12 1
