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
       25 JUMPIFNOT                        R2 ; [+22]
       26 GETTABLEKS                       R2 R0 K7 ["images"]
       28 LOADNIL                          R3
       29 LOADNIL                          R4
       30 FORGPREP                         R2
       31 DUPTABLE                         R9 K11 [{[1] = "image", ["data"], ["mimeType"]}]
       32 GETTABLEKS                       R10 R6 K9 ["data"]
       34 SETTABLEKS                       R10 R9 K9 ["data"]
       36 GETTABLEKS                       R10 R6 K10 ["mimeType"]
       38 SETTABLEKS                       R10 R9 K10 ["mimeType"]
       40 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       42 MOVE                             R8 R1
       43 GETIMPORT                        R7 K6 [table.insert]
       45 CALL                             R7 2 0
       46 FORGLOOP                         R2 2 ; [-16]
       48 RETURN                           R1 1

PROTO_1:
        0 DUPTABLE                         R3 K3 [{"sessionId", "prompt", "_meta"}]
        1 SETTABLEKS                       R2 R3 K0 ["sessionId"]
        3 GETUPVAL                         R4 0
        4 MOVE                             R5 R1
        5 CALL                             R4 1 1
        6 SETTABLEKS                       R4 R3 K1 ["prompt"]
        8 DUPTABLE                         R4 K5 [{"_roblox"}]
        9 DUPTABLE                         R5 K10 [{"providerConfig", "assistantMode", "useInternalToolDefinitions", "retry"}]
       10 DUPTABLE                         R6 K14 [{"apiKeys", "selectedModel", "selectedProvider"}]
       11 GETTABLEKS                       R7 R0 K11 ["apiKeys"]
       13 SETTABLEKS                       R7 R6 K11 ["apiKeys"]
       15 GETTABLEKS                       R7 R0 K12 ["selectedModel"]
       17 SETTABLEKS                       R7 R6 K12 ["selectedModel"]
       19 GETTABLEKS                       R7 R0 K13 ["selectedProvider"]
       21 SETTABLEKS                       R7 R6 K13 ["selectedProvider"]
       23 SETTABLEKS                       R6 R5 K6 ["providerConfig"]
       25 GETTABLEKS                       R6 R0 K7 ["assistantMode"]
       27 SETTABLEKS                       R6 R5 K7 ["assistantMode"]
       29 GETTABLEKS                       R7 R0 K13 ["selectedProvider"]
       31 GETUPVAL                         R8 1
       32 GETTABLEKS                       R8 R8 K15 ["LLMProviderTypes"]
       34 GETTABLEKS                       R8 R8 K16 ["Studio"]
       36 JUMPIFEQ                         R7 R8 ; [+2]
       38 LOADB                            R6 0 +1
       39 LOADB                            R6 1
       40 SETTABLEKS                       R6 R5 K8 ["useInternalToolDefinitions"]
       42 GETTABLEKS                       R7 R1 K9 ["retry"]
       44 JUMPIFNOT                        R7 ; [+6]
       45 DUPTABLE                         R6 K18 [{"previousMessageId"}]
       46 GETTABLEKS                       R7 R1 K17 ["previousMessageId"]
       48 SETTABLEKS                       R7 R6 K17 ["previousMessageId"]
       50 JUMP                             ; [+1]
       51 LOADNIL                          R6
       52 SETTABLEKS                       R6 R5 K9 ["retry"]
       54 SETTABLEKS                       R5 R4 K4 ["_roblox"]
       56 SETTABLEKS                       R4 R3 K2 ["_meta"]
       58 RETURN                           R3 1

PROTO_2:
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

PROTO_3:
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
       13 GETTABLEKS                       R0 R0 K2 ["service"]
       15 DUPTABLE                         R2 K4 [{"sessionId"}]
       16 GETUPVAL                         R3 1
       17 SETTABLEKS                       R3 R2 K3 ["sessionId"]
       19 NAMECALL                         R0 R0 K5 ["cancel"]
       21 CALL                             R0 2 0
       22 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["service"]
        3 MOVE                             R5 R0
        4 MOVE                             R6 R1
        5 MOVE                             R7 R2
        6 NAMECALL                         R3 R3 K1 ["setClientToolUiContext"]
        8 CALL                             R3 4 0
        9 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["getOrCreateAssistantMessage"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_6:
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

PROTO_7:
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

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["sessionUpdate"]
        2 JUMPIFNOTEQKS                    R1 K1 ["state_update"] ; [+59]
        4 GETTABLEKS                       R2 R0 K2 ["state"]
        6 JUMPIFNOTEQKS                    R2 K3 ["running"] ; [+14]
        8 LOADB                            R2 1
        9 SETUPVAL                         R2 0
       10 GETUPVAL                         R2 1
       11 JUMPIFNOT                        R2 ; [+49]
       12 GETUPVAL                         R2 2
       13 JUMPIFEQKS                       R2 K4 ["pendingCancel"] ; [+47]
       15 GETUPVAL                         R2 2
       16 JUMPIFEQKS                       R2 K5 ["done"] ; [+44]
       18 LOADK                            R2 K3 ["running"]
       19 SETUPVAL                         R2 2
       20 RETURN                           R0 0
       21 GETTABLEKS                       R2 R0 K2 ["state"]
       23 JUMPIFNOTEQKS                    R2 K6 ["idle"] ; [+37]
       25 GETTABLEKS                       R2 R0 K7 ["stopReason"]
       27 GETUPVAL                         R3 3
       28 JUMPIFNOT                        R3 ; [+1]
       29 RETURN                           R0 0
       30 LOADB                            R3 1
       31 SETUPVAL                         R3 3
       32 SETUPVAL                         R2 4
       33 LOADK                            R3 K5 ["done"]
       34 SETUPVAL                         R3 2
       35 GETUPVAL                         R3 5
       36 GETTABLEKS                       R3 R3 K8 ["service"]
       38 GETUPVAL                         R5 6
       39 LOADNIL                          R6
       40 NAMECALL                         R3 R3 K9 ["setClientToolConfirmationHandler"]
       42 CALL                             R3 3 0
       43 GETUPVAL                         R3 5
       44 GETTABLEKS                       R3 R3 K10 ["unregisterPromptController"]
       46 JUMPIFNOT                        R3 ; [+5]
       47 GETUPVAL                         R3 5
       48 GETTABLEKS                       R3 R3 K10 ["unregisterPromptController"]
       50 GETUPVAL                         R4 6
       51 CALL                             R3 1 0
       52 GETUPVAL                         R3 7
       53 JUMPIFNOT                        R3 ; [+4]
       54 GETUPVAL                         R3 7
       55 CALL                             R3 0 0
       56 LOADNIL                          R3
       57 SETUPVAL                         R3 7
       58 GETUPVAL                         R3 8
       59 MOVE                             R4 R2
       60 CALL                             R3 1 0
       61 RETURN                           R0 0
       62 GETUPVAL                         R2 2
       63 JUMPIFNOTEQKS                    R2 K11 ["pendingAccept"] ; [+65]
       65 JUMPIFNOTEQKS                    R1 K12 ["user_message"] ; [+49]
       67 GETTABLEKS                       R2 R0 K13 ["messageId"]
       69 SETUPVAL                         R2 9
       70 GETTABLEKS                       R2 R0 K14 ["_meta"]
       72 JUMPIFNOT                        R2 ; [+4]
       73 GETTABLEKS                       R2 R0 K14 ["_meta"]
       75 GETTABLEKS                       R2 R2 K15 ["_roblox"]
       77 FASTCALL1                        TYPEOF R2 ; [+3]
       78 MOVE                             R4 R2
       79 GETIMPORT                        R3 K17 [typeof]
       81 CALL                             R3 1 1
       82 JUMPIFNOTEQKS                    R3 K18 ["table"] ; [+12]
       84 GETTABLEKS                       R4 R2 K19 ["turnId"]
       86 FASTCALL1                        TYPEOF R4 ; [+2]
       87 GETIMPORT                        R3 K17 [typeof]
       89 CALL                             R3 1 1
       90 JUMPIFNOTEQKS                    R3 K20 ["number"] ; [+4]
       92 GETTABLEKS                       R3 R2 K19 ["turnId"]
       94 SETUPVAL                         R3 10
       95 LOADB                            R3 1
       96 SETUPVAL                         R3 1
       97 GETUPVAL                         R3 0
       98 JUMPIFNOT                        R3 ; [+2]
       99 LOADK                            R3 K3 ["running"]
      100 SETUPVAL                         R3 2
      101 GETUPVAL                         R3 11
      102 GETTABLEKS                       R3 R3 K21 ["retry"]
      104 JUMPIF                           R3 ; [+9]
      105 GETUPVAL                         R3 11
      106 GETTABLEKS                       R3 R3 K22 ["userMessageAlreadyRendered"]
      108 JUMPIF                           R3 ; [+5]
      109 GETUPVAL                         R3 12
      110 MOVE                             R5 R0
      111 NAMECALL                         R3 R3 K23 ["handleUpdate"]
      113 CALL                             R3 2 0
      114 RETURN                           R0 0
      115 GETIMPORT                        R2 K25 [warn]
      117 LOADK                            R4 K26 ["[Assistant][ACP] Ignoring session/update before user_message accept: %*"]
      118 FASTCALL1                        TOSTRING R1 ; [+3]
      119 MOVE                             R7 R1
      120 GETIMPORT                        R6 K28 [tostring]
      122 CALL                             R6 1 1
      123 NAMECALL                         R4 R4 K29 ["format"]
      125 CALL                             R4 2 1
      126 MOVE                             R3 R4
      127 CALL                             R2 1 0
      128 RETURN                           R0 0
      129 GETUPVAL                         R2 12
      130 MOVE                             R4 R0
      131 NAMECALL                         R2 R2 K23 ["handleUpdate"]
      133 CALL                             R2 2 0
      134 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["service"]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R4 R4 K1 ["threadId"]
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R5 R5 K2 ["acpSessionId"]
        9 NAMECALL                         R2 R2 K3 ["getOrCreateSessionForThread"]
       11 CALL                             R2 3 1
       12 NAMECALL                         R2 R2 K4 ["await"]
       14 CALL                             R2 1 2
       15 JUMPIF                           R2 ; [+15]
       16 LOADK                            R4 K5 ["done"]
       17 SETUPVAL                         R4 1
       18 MOVE                             R4 R1
       19 LOADK                            R6 K6 ["failed to resolve sessionId: %*"]
       20 FASTCALL1                        TOSTRING R3 ; [+3]
       21 MOVE                             R9 R3
       22 GETIMPORT                        R8 K8 [tostring]
       24 CALL                             R8 1 1
       25 NAMECALL                         R6 R6 K9 ["format"]
       27 CALL                             R6 2 1
       28 MOVE                             R5 R6
       29 CALL                             R4 1 0
       30 RETURN                           R0 0
       31 SETUPVAL                         R3 2
       32 GETUPVAL                         R4 0
       33 GETTABLEKS                       R4 R4 K2 ["acpSessionId"]
       35 JUMPIFNOTEQKNIL                  R4 ; [+10]
       37 GETUPVAL                         R4 0
       38 GETTABLEKS                       R4 R4 K10 ["setAcpSessionId"]
       40 JUMPIFNOT                        R4 ; [+5]
       41 GETUPVAL                         R4 0
       42 GETTABLEKS                       R4 R4 K10 ["setAcpSessionId"]
       44 MOVE                             R5 R3
       45 CALL                             R4 1 0
       46 GETUPVAL                         R4 0
       47 GETTABLEKS                       R4 R4 K11 ["registerPromptController"]
       49 JUMPIFNOT                        R4 ; [+6]
       50 GETUPVAL                         R4 0
       51 GETTABLEKS                       R4 R4 K11 ["registerPromptController"]
       53 MOVE                             R5 R3
       54 GETUPVAL                         R6 3
       55 CALL                             R4 2 0
       56 GETUPVAL                         R4 4
       57 GETTABLEKS                       R4 R4 K12 ["new"]
       59 DUPTABLE                         R5 K18 [{"addMessage", "addContent", "editContent", "acceptedUserMessageHidden", "onToolWidgetCreated"}]
       60 GETUPVAL                         R6 0
       61 GETTABLEKS                       R6 R6 K13 ["addMessage"]
       63 SETTABLEKS                       R6 R5 K13 ["addMessage"]
       65 GETUPVAL                         R6 0
       66 GETTABLEKS                       R6 R6 K14 ["addContent"]
       68 SETTABLEKS                       R6 R5 K14 ["addContent"]
       70 GETUPVAL                         R6 0
       71 GETTABLEKS                       R6 R6 K15 ["editContent"]
       73 SETTABLEKS                       R6 R5 K15 ["editContent"]
       75 GETUPVAL                         R7 5
       76 GETTABLEKS                       R7 R7 K19 ["hidden"]
       78 JUMPIFEQKB                       R7 TRUE ; [+2]
       80 LOADB                            R6 0 +1
       81 LOADB                            R6 1
       82 SETTABLEKS                       R6 R5 K16 ["acceptedUserMessageHidden"]
       84 NEWCLOSURE                       R6 P0
       85 CAPTURE                          UPVAL U0
       86 SETTABLEKS                       R6 R5 K17 ["onToolWidgetCreated"]
       88 CALL                             R4 1 1
       89 GETUPVAL                         R5 0
       90 GETTABLEKS                       R5 R5 K0 ["service"]
       92 MOVE                             R7 R3
       93 GETUPVAL                         R8 6
       94 GETTABLEKS                       R8 R8 K20 ["create"]
       96 DUPTABLE                         R9 K22 [{"addContent", "editContent", "getMessageId"}]
       97 GETUPVAL                         R10 0
       98 GETTABLEKS                       R10 R10 K14 ["addContent"]
      100 SETTABLEKS                       R10 R9 K14 ["addContent"]
      102 GETUPVAL                         R10 0
      103 GETTABLEKS                       R10 R10 K15 ["editContent"]
      105 SETTABLEKS                       R10 R9 K15 ["editContent"]
      107 NEWCLOSURE                       R10 P1
      108 CAPTURE                          VAL R4
      109 SETTABLEKS                       R10 R9 K21 ["getMessageId"]
      111 CALL                             R8 1 -1
      112 NAMECALL                         R5 R5 K23 ["setClientToolConfirmationHandler"]
      114 CALL                             R5 -1 0
      115 LOADB                            R5 0
      116 LOADB                            R6 0
      117 LOADB                            R7 0
      118 LOADNIL                          R8
      119 NEWCLOSURE                       R9 P2
      120 CAPTURE                          UPVAL U0
      121 CAPTURE                          VAL R3
      122 CAPTURE                          REF R8
      123 NEWCLOSURE                       R10 P3
      124 CAPTURE                          REF R7
      125 CAPTURE                          UPVAL U7
      126 CAPTURE                          UPVAL U1
      127 CAPTURE                          UPVAL U0
      128 CAPTURE                          VAL R3
      129 CAPTURE                          REF R8
      130 CAPTURE                          VAL R0
      131 GETUPVAL                         R11 0
      132 GETTABLEKS                       R11 R11 K0 ["service"]
      134 MOVE                             R13 R3
      135 NEWCLOSURE                       R14 P4
      136 CAPTURE                          REF R6
      137 CAPTURE                          REF R5
      138 CAPTURE                          UPVAL U1
      139 CAPTURE                          REF R7
      140 CAPTURE                          UPVAL U7
      141 CAPTURE                          UPVAL U0
      142 CAPTURE                          VAL R3
      143 CAPTURE                          REF R8
      144 CAPTURE                          VAL R0
      145 CAPTURE                          UPVAL U8
      146 CAPTURE                          UPVAL U9
      147 CAPTURE                          UPVAL U5
      148 CAPTURE                          VAL R4
      149 NAMECALL                         R11 R11 K24 ["subscribeToSessionUpdates"]
      151 CALL                             R11 3 1
      152 MOVE                             R8 R11
      153 GETUPVAL                         R11 10
      154 GETUPVAL                         R12 0
      155 GETUPVAL                         R13 5
      156 MOVE                             R14 R3
      157 CALL                             R11 3 1
      158 GETUPVAL                         R12 0
      159 GETTABLEKS                       R12 R12 K0 ["service"]
      161 MOVE                             R14 R11
      162 NAMECALL                         R12 R12 K25 ["prompt"]
      164 CALL                             R12 2 1
      165 NAMECALL                         R12 R12 K4 ["await"]
      167 CALL                             R12 1 2
      168 JUMPIF                           R12 ; [+37]
      169 JUMPIF                           R7 ; [+36]
      170 LOADB                            R7 1
      171 LOADK                            R14 K5 ["done"]
      172 SETUPVAL                         R14 1
      173 GETUPVAL                         R14 0
      174 GETTABLEKS                       R14 R14 K0 ["service"]
      176 MOVE                             R16 R3
      177 LOADNIL                          R17
      178 NAMECALL                         R14 R14 K23 ["setClientToolConfirmationHandler"]
      180 CALL                             R14 3 0
      181 GETUPVAL                         R14 0
      182 GETTABLEKS                       R14 R14 K26 ["unregisterPromptController"]
      184 JUMPIFNOT                        R14 ; [+5]
      185 GETUPVAL                         R14 0
      186 GETTABLEKS                       R14 R14 K26 ["unregisterPromptController"]
      188 MOVE                             R15 R3
      189 CALL                             R14 1 0
      190 JUMPIFNOT                        R8 ; [+3]
      191 MOVE                             R14 R8
      192 CALL                             R14 0 0
      193 LOADNIL                          R8
      194 MOVE                             R14 R1
      195 LOADK                            R16 K27 ["prompt failed: %*"]
      196 FASTCALL1                        TOSTRING R13 ; [+3]
      197 MOVE                             R19 R13
      198 GETIMPORT                        R18 K8 [tostring]
      200 CALL                             R18 1 1
      201 NAMECALL                         R16 R16 K9 ["format"]
      203 CALL                             R16 2 1
      204 MOVE                             R15 R16
      205 CALL                             R14 1 0
      206 CLOSEUPVALS                      R5
      207 RETURN                           R0 0

PROTO_10:
        0 LOADK                            R2 K0 ["pendingAccept"]
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 LOADNIL                          R5
        4 LOADNIL                          R6
        5 NEWCLOSURE                       R7 P0
        6 CAPTURE                          REF R2
        7 CAPTURE                          REF R3
        8 CAPTURE                          REF R4
        9 CAPTURE                          REF R5
       10 CAPTURE                          REF R6
       11 NEWCLOSURE                       R8 P1
       12 CAPTURE                          REF R2
       13 CAPTURE                          REF R3
       14 CAPTURE                          VAL R0
       15 DUPTABLE                         R9 K3 [{"cancelSessionPrompt", "getStateOfSessionPrompt"}]
       16 SETTABLEKS                       R8 R9 K1 ["cancelSessionPrompt"]
       18 SETTABLEKS                       R7 R9 K2 ["getStateOfSessionPrompt"]
       20 GETUPVAL                         R10 0
       21 GETTABLEKS                       R10 R10 K4 ["new"]
       23 NEWCLOSURE                       R11 P2
       24 CAPTURE                          VAL R0
       25 CAPTURE                          REF R2
       26 CAPTURE                          REF R3
       27 CAPTURE                          VAL R9
       28 CAPTURE                          UPVAL U1
       29 CAPTURE                          VAL R1
       30 CAPTURE                          UPVAL U2
       31 CAPTURE                          REF R6
       32 CAPTURE                          REF R5
       33 CAPTURE                          REF R4
       34 CAPTURE                          UPVAL U3
       35 CALL                             R10 1 1
       36 DUPTABLE                         R11 K6 [{"promise", "cancelSessionPrompt", "getStateOfSessionPrompt"}]
       37 SETTABLEKS                       R10 R11 K5 ["promise"]
       39 SETTABLEKS                       R8 R11 K1 ["cancelSessionPrompt"]
       41 SETTABLEKS                       R7 R11 K2 ["getStateOfSessionPrompt"]
       43 CLOSEUPVALS                      R2
       44 RETURN                           R11 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["AssistantHarness"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETIMPORT                        R3 K1 [script]
       18 GETTABLEKS                       R3 R3 K6 ["Parent"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETIMPORT                        R4 K1 [script]
       25 GETTABLEKS                       R4 R4 K6 ["Parent"]
       27 GETTABLEKS                       R4 R4 K8 ["AssistantServiceUIRelay"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETIMPORT                        R5 K1 [script]
       34 GETTABLEKS                       R5 R5 K6 ["Parent"]
       36 GETTABLEKS                       R5 R5 K9 ["ClientToolConfirmation"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K6 ["Parent"]
       43 GETTABLEKS                       R6 R6 K10 ["Promise"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K11 ["Types"]
       50 CALL                             R6 1 1
       51 DUPCLOSURE                       R7 K12 [PROTO_0]
       52 DUPCLOSURE                       R8 K13 [PROTO_1]
       53 CAPTURE                          VAL R7
       54 CAPTURE                          VAL R6
       55 DUPCLOSURE                       R9 K14 [PROTO_10]
       56 CAPTURE                          VAL R5
       57 CAPTURE                          VAL R3
       58 CAPTURE                          VAL R4
       59 CAPTURE                          VAL R8
       60 RETURN                           R9 1
