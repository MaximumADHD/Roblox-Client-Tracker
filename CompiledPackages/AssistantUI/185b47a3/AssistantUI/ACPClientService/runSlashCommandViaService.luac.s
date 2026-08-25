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
       14 DUPTABLE                         R9 K9 [{["type"] = "image", ["data"], ["mimeType"], ["uri"]}]
       15 GETTABLEKS                       R10 R6 K6 ["data"]
       17 SETTABLEKS                       R10 R9 K6 ["data"]
       19 GETTABLEKS                       R10 R6 K7 ["mimeType"]
       21 SETTABLEKS                       R10 R9 K7 ["mimeType"]
       23 GETUPVAL                         R10 0
       24 GETTABLEKS                       R10 R10 K10 ["storeImage"]
       26 MOVE                             R11 R6
       27 CALL                             R10 1 1
       28 SETTABLEKS                       R10 R9 K8 ["uri"]
       30 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       32 MOVE                             R8 R1
       33 GETIMPORT                        R7 K12 [table.insert]
       35 CALL                             R7 2 0
       36 FORGLOOP                         R2 2 ; [-23]
       38 RETURN                           R1 1

PROTO_1:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["content"]
        4 JUMPIF                           R2 ; [+2]
        5 NEWTABLE                         R2 0 0
        7 LOADNIL                          R3
        8 LOADNIL                          R4
        9 FORGPREP                         R2
       10 GETTABLEKS                       R7 R6 K1 ["type"]
       12 JUMPIFNOTEQKS                    R7 K0 ["content"] ; [+9]
       14 GETTABLEKS                       R9 R6 K0 ["content"]
       16 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       18 MOVE                             R8 R1
       19 GETIMPORT                        R7 K4 [table.insert]
       21 CALL                             R7 2 0
       22 FORGLOOP                         R2 2 ; [-13]
       24 DUPTABLE                         R2 K7 [{"content", "isError", "structuredContent"}]
       25 SETTABLEKS                       R1 R2 K0 ["content"]
       27 GETTABLEKS                       R4 R0 K8 ["status"]
       29 JUMPIFEQKS                       R4 K9 ["failed"] ; [+2]
       31 LOADB                            R3 0 +1
       32 LOADB                            R3 1
       33 SETTABLEKS                       R3 R2 K5 ["isError"]
       35 GETTABLEKS                       R3 R0 K10 ["rawOutput"]
       37 SETTABLEKS                       R3 R2 K6 ["structuredContent"]
       39 RETURN                           R2 1

PROTO_2:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 JUMPIFNOT                        R0 ; [+10]
        4 GETUPVAL                         R0 2
        5 GETTABLEKS                       R0 R0 K0 ["service"]
        7 DUPTABLE                         R2 K2 [{"sessionId"}]
        8 GETUPVAL                         R3 1
        9 SETTABLEKS                       R3 R2 K1 ["sessionId"]
       11 NAMECALL                         R0 R0 K3 ["cancel"]
       13 CALL                             R0 2 0
       14 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["getOrCreateAssistantMessage"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_4:
        0 DUPTABLE                         R0 K4 [{[1] = "running", ["sessionId"], ["messageId"]}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K2 ["sessionId"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K3 ["messageId"]
        7 RETURN                           R0 1

PROTO_5:
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

PROTO_6:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+1]
        2 RETURN                           R0 0
        3 LOADB                            R0 1
        4 SETUPVAL                         R0 0
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K0 ["service"]
        8 GETUPVAL                         R2 2
        9 LOADNIL                          R3
       10 NAMECALL                         R0 R0 K1 ["setClientToolConfirmationHandler"]
       12 CALL                             R0 3 0
       13 GETUPVAL                         R0 1
       14 GETTABLEKS                       R0 R0 K2 ["unregisterPromptController"]
       16 JUMPIFNOT                        R0 ; [+5]
       17 GETUPVAL                         R0 1
       18 GETTABLEKS                       R0 R0 K2 ["unregisterPromptController"]
       20 GETUPVAL                         R1 2
       21 CALL                             R0 1 0
       22 GETUPVAL                         R0 3
       23 NAMECALL                         R0 R0 K3 ["endTurn"]
       25 CALL                             R0 1 0
       26 GETUPVAL                         R0 4
       27 JUMPIFNOT                        R0 ; [+4]
       28 GETUPVAL                         R0 4
       29 CALL                             R0 0 0
       30 LOADNIL                          R0
       31 SETUPVAL                         R0 4
       32 GETUPVAL                         R0 5
       33 GETUPVAL                         R1 6
       34 CALL                             R0 1 0
       35 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+1]
        2 RETURN                           R0 0
        3 LOADB                            R0 1
        4 SETUPVAL                         R0 0
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K0 ["service"]
        8 GETUPVAL                         R2 2
        9 LOADNIL                          R3
       10 NAMECALL                         R0 R0 K1 ["setClientToolConfirmationHandler"]
       12 CALL                             R0 3 0
       13 GETUPVAL                         R0 1
       14 GETTABLEKS                       R0 R0 K2 ["unregisterPromptController"]
       16 JUMPIFNOT                        R0 ; [+5]
       17 GETUPVAL                         R0 1
       18 GETTABLEKS                       R0 R0 K2 ["unregisterPromptController"]
       20 GETUPVAL                         R1 2
       21 CALL                             R0 1 0
       22 GETUPVAL                         R0 3
       23 NAMECALL                         R0 R0 K3 ["endTurn"]
       25 CALL                             R0 1 0
       26 GETUPVAL                         R0 4
       27 JUMPIFNOT                        R0 ; [+4]
       28 GETUPVAL                         R0 4
       29 CALL                             R0 0 0
       30 LOADNIL                          R0
       31 SETUPVAL                         R0 4
       32 GETUPVAL                         R0 5
       33 LOADK                            R1 K4 ["cancelled"]
       34 CALL                             R0 1 0
       35 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["sessionUpdate"]
        2 JUMPIFNOTEQKS                    R1 K1 ["state_update"] ; [+85]
        4 GETTABLEKS                       R2 R0 K2 ["state"]
        6 JUMPIFNOTEQKS                    R2 K3 ["idle"] ; [+80]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K4 ["FFlagAssistantDestroySessionMonitorsOnClose"]
       11 JUMPIFNOT                        R2 ; [+40]
       12 GETTABLEKS                       R2 R0 K5 ["stopReason"]
       14 JUMPIFNOTEQKS                    R2 K6 ["cancelled"] ; [+37]
       16 GETUPVAL                         R2 1
       17 JUMPIFNOT                        R2 ; [+1]
       18 RETURN                           R0 0
       19 LOADB                            R2 1
       20 SETUPVAL                         R2 1
       21 GETUPVAL                         R2 2
       22 GETTABLEKS                       R2 R2 K7 ["service"]
       24 GETUPVAL                         R4 3
       25 LOADNIL                          R5
       26 NAMECALL                         R2 R2 K8 ["setClientToolConfirmationHandler"]
       28 CALL                             R2 3 0
       29 GETUPVAL                         R2 2
       30 GETTABLEKS                       R2 R2 K9 ["unregisterPromptController"]
       32 JUMPIFNOT                        R2 ; [+5]
       33 GETUPVAL                         R2 2
       34 GETTABLEKS                       R2 R2 K9 ["unregisterPromptController"]
       36 GETUPVAL                         R3 3
       37 CALL                             R2 1 0
       38 GETUPVAL                         R2 4
       39 NAMECALL                         R2 R2 K10 ["endTurn"]
       41 CALL                             R2 1 0
       42 GETUPVAL                         R2 5
       43 JUMPIFNOT                        R2 ; [+4]
       44 GETUPVAL                         R2 5
       45 CALL                             R2 0 0
       46 LOADNIL                          R2
       47 SETUPVAL                         R2 5
       48 GETUPVAL                         R2 6
       49 LOADK                            R3 K6 ["cancelled"]
       50 CALL                             R2 1 0
       51 RETURN                           R0 0
       52 GETUPVAL                         R2 1
       53 JUMPIFNOT                        R2 ; [+1]
       54 RETURN                           R0 0
       55 LOADB                            R2 1
       56 SETUPVAL                         R2 1
       57 GETUPVAL                         R2 2
       58 GETTABLEKS                       R2 R2 K7 ["service"]
       60 GETUPVAL                         R4 3
       61 LOADNIL                          R5
       62 NAMECALL                         R2 R2 K8 ["setClientToolConfirmationHandler"]
       64 CALL                             R2 3 0
       65 GETUPVAL                         R2 2
       66 GETTABLEKS                       R2 R2 K9 ["unregisterPromptController"]
       68 JUMPIFNOT                        R2 ; [+5]
       69 GETUPVAL                         R2 2
       70 GETTABLEKS                       R2 R2 K9 ["unregisterPromptController"]
       72 GETUPVAL                         R3 3
       73 CALL                             R2 1 0
       74 GETUPVAL                         R2 4
       75 NAMECALL                         R2 R2 K10 ["endTurn"]
       77 CALL                             R2 1 0
       78 GETUPVAL                         R2 5
       79 JUMPIFNOT                        R2 ; [+4]
       80 GETUPVAL                         R2 5
       81 CALL                             R2 0 0
       82 LOADNIL                          R2
       83 SETUPVAL                         R2 5
       84 GETUPVAL                         R2 7
       85 GETUPVAL                         R3 8
       86 CALL                             R2 1 0
       87 RETURN                           R0 0
       88 JUMPIFEQKS                       R1 K11 ["tool_call"] ; [+3]
       90 JUMPIFNOTEQKS                    R1 K12 ["tool_call_update"] ; [+15]
       92 GETTABLEKS                       R3 R0 K13 ["toolCallId"]
       94 FASTCALL1                        TYPEOF R3 ; [+2]
       95 GETIMPORT                        R2 K15 [typeof]
       97 CALL                             R2 1 1
       98 JUMPIFNOTEQKS                    R2 K16 ["string"] ; [+7]
      100 GETUPVAL                         R2 9
      101 JUMPIFNOTEQKNIL                  R2 ; [+4]
      103 GETTABLEKS                       R2 R0 K13 ["toolCallId"]
      105 SETUPVAL                         R2 9
      106 JUMPIFNOTEQKS                    R1 K12 ["tool_call_update"] ; [+18]
      108 GETTABLEKS                       R2 R0 K13 ["toolCallId"]
      110 GETUPVAL                         R3 9
      111 JUMPIFNOTEQ                      R2 R3 ; [+13]
      113 GETTABLEKS                       R2 R0 K17 ["status"]
      115 JUMPIFEQKS                       R2 K18 ["completed"] ; [+5]
      117 GETTABLEKS                       R2 R0 K17 ["status"]
      119 JUMPIFNOTEQKS                    R2 K19 ["failed"] ; [+5]
      121 GETUPVAL                         R2 10
      122 MOVE                             R3 R0
      123 CALL                             R2 1 1
      124 SETUPVAL                         R2 8
      125 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["sessionMonitor"]
        3 DUPTABLE                         R5 K4 [{["suppressUserMessageEcho"] = True, ["initialAssistantMessageId"]}]
        4 GETUPVAL                         R6 0
        5 GETTABLEKS                       R6 R6 K5 ["assistantMessageId"]
        7 SETTABLEKS                       R6 R5 K3 ["initialAssistantMessageId"]
        9 NAMECALL                         R3 R2 K6 ["beginTurn"]
       11 CALL                             R3 2 0
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R3 R3 K7 ["service"]
       15 GETUPVAL                         R5 0
       16 GETTABLEKS                       R5 R5 K8 ["threadId"]
       18 GETUPVAL                         R6 0
       19 GETTABLEKS                       R6 R6 K9 ["acpSessionId"]
       21 NAMECALL                         R3 R3 K10 ["getOrCreateSessionForThread"]
       23 CALL                             R3 3 1
       24 NAMECALL                         R3 R3 K11 ["await"]
       26 CALL                             R3 1 2
       27 JUMPIF                           R3 ; [+16]
       28 NAMECALL                         R5 R2 K12 ["endTurn"]
       30 CALL                             R5 1 0
       31 MOVE                             R5 R1
       32 LOADK                            R7 K13 ["failed to resolve sessionId: %*"]
       33 FASTCALL1                        TOSTRING R4 ; [+3]
       34 MOVE                             R10 R4
       35 GETIMPORT                        R9 K15 [tostring]
       37 CALL                             R9 1 1
       38 NAMECALL                         R7 R7 K16 ["format"]
       40 CALL                             R7 2 1
       41 MOVE                             R6 R7
       42 CALL                             R5 1 0
       43 RETURN                           R0 0
       44 SETUPVAL                         R4 1
       45 GETUPVAL                         R5 0
       46 GETTABLEKS                       R5 R5 K7 ["service"]
       48 MOVE                             R7 R4
       49 DUPTABLE                         R8 K19 [{"sessionId", "threadId", "acpSessionId", "assistantMode"}]
       50 GETUPVAL                         R9 0
       51 GETTABLEKS                       R9 R9 K20 ["conversationSessionId"]
       53 SETTABLEKS                       R9 R8 K17 ["sessionId"]
       55 GETUPVAL                         R9 0
       56 GETTABLEKS                       R9 R9 K8 ["threadId"]
       58 SETTABLEKS                       R9 R8 K8 ["threadId"]
       60 SETTABLEKS                       R4 R8 K9 ["acpSessionId"]
       62 GETUPVAL                         R9 0
       63 GETTABLEKS                       R9 R9 K18 ["assistantMode"]
       65 SETTABLEKS                       R9 R8 K18 ["assistantMode"]
       67 NAMECALL                         R5 R5 K21 ["setSessionToolCallMeta"]
       69 CALL                             R5 3 0
       70 GETUPVAL                         R5 0
       71 GETTABLEKS                       R5 R5 K9 ["acpSessionId"]
       73 JUMPIFNOTEQKNIL                  R5 ; [+10]
       75 GETUPVAL                         R5 0
       76 GETTABLEKS                       R5 R5 K22 ["setAcpSessionId"]
       78 JUMPIFNOT                        R5 ; [+5]
       79 GETUPVAL                         R5 0
       80 GETTABLEKS                       R5 R5 K22 ["setAcpSessionId"]
       82 MOVE                             R6 R4
       83 CALL                             R5 1 0
       84 MOVE                             R7 R4
       85 NAMECALL                         R5 R2 K23 ["attachSession"]
       87 CALL                             R5 2 0
       88 GETUPVAL                         R5 0
       89 GETTABLEKS                       R5 R5 K7 ["service"]
       91 MOVE                             R7 R4
       92 GETUPVAL                         R8 2
       93 GETTABLEKS                       R8 R8 K24 ["create"]
       95 DUPTABLE                         R9 K28 [{"addContent", "editContent", "getMessageId"}]
       96 GETUPVAL                         R10 0
       97 GETTABLEKS                       R10 R10 K25 ["addContent"]
       99 SETTABLEKS                       R10 R9 K25 ["addContent"]
      101 GETUPVAL                         R10 0
      102 GETTABLEKS                       R10 R10 K26 ["editContent"]
      104 SETTABLEKS                       R10 R9 K26 ["editContent"]
      106 NEWCLOSURE                       R10 P0
      107 CAPTURE                          VAL R2
      108 SETTABLEKS                       R10 R9 K27 ["getMessageId"]
      110 CALL                             R8 1 -1
      111 NAMECALL                         R5 R5 K29 ["setClientToolConfirmationHandler"]
      113 CALL                             R5 -1 0
      114 DUPTABLE                         R5 K32 [{"cancelSessionPrompt", "getStateOfSessionPrompt"}]
      115 GETUPVAL                         R6 3
      116 SETTABLEKS                       R6 R5 K30 ["cancelSessionPrompt"]
      118 NEWCLOSURE                       R6 P1
      119 CAPTURE                          VAL R4
      120 CAPTURE                          UPVAL U4
      121 SETTABLEKS                       R6 R5 K31 ["getStateOfSessionPrompt"]
      123 GETUPVAL                         R6 0
      124 GETTABLEKS                       R6 R6 K33 ["registerPromptController"]
      126 JUMPIFNOT                        R6 ; [+6]
      127 GETUPVAL                         R6 0
      128 GETTABLEKS                       R6 R6 K33 ["registerPromptController"]
      130 MOVE                             R7 R4
      131 MOVE                             R8 R5
      132 CALL                             R6 2 0
      133 LOADNIL                          R6
      134 LOADB                            R7 0
      135 LOADNIL                          R8
      136 NEWCLOSURE                       R9 P2
      137 CAPTURE                          UPVAL U0
      138 CAPTURE                          VAL R4
      139 CAPTURE                          VAL R2
      140 CAPTURE                          REF R8
      141 NEWCLOSURE                       R10 P3
      142 CAPTURE                          REF R7
      143 CAPTURE                          UPVAL U0
      144 CAPTURE                          VAL R4
      145 CAPTURE                          VAL R2
      146 CAPTURE                          REF R8
      147 CAPTURE                          VAL R0
      148 CAPTURE                          REF R6
      149 NEWCLOSURE                       R11 P4
      150 CAPTURE                          REF R7
      151 CAPTURE                          UPVAL U0
      152 CAPTURE                          VAL R4
      153 CAPTURE                          VAL R2
      154 CAPTURE                          REF R8
      155 CAPTURE                          VAL R1
      156 NEWCLOSURE                       R14 P5
      157 CAPTURE                          UPVAL U5
      158 CAPTURE                          REF R7
      159 CAPTURE                          UPVAL U0
      160 CAPTURE                          VAL R4
      161 CAPTURE                          VAL R2
      162 CAPTURE                          REF R8
      163 CAPTURE                          VAL R1
      164 CAPTURE                          VAL R0
      165 CAPTURE                          REF R6
      166 CAPTURE                          UPVAL U4
      167 CAPTURE                          UPVAL U6
      168 NAMECALL                         R12 R2 K34 ["observeUpdates"]
      170 CALL                             R12 2 1
      171 MOVE                             R8 R12
      172 DUPTABLE                         R12 K38 [{"sessionId", "name", "arguments", "userPromptText"}]
      173 SETTABLEKS                       R4 R12 K17 ["sessionId"]
      175 GETUPVAL                         R13 7
      176 GETTABLEKS                       R13 R13 K39 ["agentToolName"]
      178 SETTABLEKS                       R13 R12 K35 ["name"]
      180 GETUPVAL                         R13 7
      181 GETTABLEKS                       R13 R13 K36 ["arguments"]
      183 SETTABLEKS                       R13 R12 K36 ["arguments"]
      185 GETUPVAL                         R13 7
      186 GETTABLEKS                       R13 R13 K37 ["userPromptText"]
      188 SETTABLEKS                       R13 R12 K37 ["userPromptText"]
      190 GETUPVAL                         R13 5
      191 GETTABLEKS                       R13 R13 K40 ["FFlagAssistantOmitSlashToolCallDroppedFields"]
      193 JUMPIF                           R13 ; [+13]
      194 GETUPVAL                         R13 8
      195 GETUPVAL                         R14 7
      196 GETTABLEKS                       R14 R14 K41 ["images"]
      198 CALL                             R13 1 1
      199 SETTABLEKS                       R13 R12 K41 ["images"]
      201 DUPTABLE                         R13 K43 [{"_roblox"}]
      202 DUPTABLE                         R14 K45 [{["isSlashCommand"] = True}]
      203 SETTABLEKS                       R14 R13 K42 ["_roblox"]
      205 SETTABLEKS                       R13 R12 K46 ["_meta"]
      207 GETUPVAL                         R13 0
      208 GETTABLEKS                       R13 R13 K7 ["service"]
      210 MOVE                             R15 R12
      211 NAMECALL                         R13 R13 K47 ["requestToolCall"]
      213 CALL                             R13 2 1
      214 NAMECALL                         R13 R13 K11 ["await"]
      216 CALL                             R13 1 2
      217 JUMPIFNOT                        R13 ; [+18]
      218 FASTCALL1                        TYPE R14 ; [+3]
      219 MOVE                             R16 R14
      220 GETIMPORT                        R15 K49 [type]
      222 CALL                             R15 1 1
      223 JUMPIFNOTEQKS                    R15 K50 ["table"] ; [+12]
      225 GETTABLEKS                       R16 R14 K51 ["toolCallId"]
      227 FASTCALL1                        TYPEOF R16 ; [+2]
      228 GETIMPORT                        R15 K53 [typeof]
      230 CALL                             R15 1 1
      231 JUMPIFNOTEQKS                    R15 K54 ["string"] ; [+4]
      233 GETTABLEKS                       R15 R14 K51 ["toolCallId"]
      235 SETUPVAL                         R15 4
      236 JUMPIF                           R13 ; [+40]
      237 JUMPIF                           R7 ; [+39]
      238 LOADB                            R7 1
      239 GETUPVAL                         R15 0
      240 GETTABLEKS                       R15 R15 K7 ["service"]
      242 MOVE                             R17 R4
      243 LOADNIL                          R18
      244 NAMECALL                         R15 R15 K29 ["setClientToolConfirmationHandler"]
      246 CALL                             R15 3 0
      247 GETUPVAL                         R15 0
      248 GETTABLEKS                       R15 R15 K55 ["unregisterPromptController"]
      250 JUMPIFNOT                        R15 ; [+5]
      251 GETUPVAL                         R15 0
      252 GETTABLEKS                       R15 R15 K55 ["unregisterPromptController"]
      254 MOVE                             R16 R4
      255 CALL                             R15 1 0
      256 NAMECALL                         R15 R2 K12 ["endTurn"]
      258 CALL                             R15 1 0
      259 JUMPIFNOT                        R8 ; [+3]
      260 MOVE                             R15 R8
      261 CALL                             R15 0 0
      262 LOADNIL                          R8
      263 MOVE                             R15 R1
      264 LOADK                            R17 K56 ["_roblox/session/tool_call failed: %*"]
      265 FASTCALL1                        TOSTRING R14 ; [+3]
      266 MOVE                             R20 R14
      267 GETIMPORT                        R19 K15 [tostring]
      269 CALL                             R19 1 1
      270 NAMECALL                         R17 R17 K16 ["format"]
      272 CALL                             R17 2 1
      273 MOVE                             R16 R17
      274 CALL                             R15 1 0
      275 CLOSEUPVALS                      R6
      276 RETURN                           R0 0
      277 GETUPVAL                         R15 9
      278 JUMPIFNOT                        R15 ; [+9]
      279 GETUPVAL                         R15 0
      280 GETTABLEKS                       R15 R15 K7 ["service"]
      282 DUPTABLE                         R17 K57 [{"sessionId"}]
      283 SETTABLEKS                       R4 R17 K17 ["sessionId"]
      285 NAMECALL                         R15 R15 K58 ["cancel"]
      287 CALL                             R15 2 0
      288 CLOSEUPVALS                      R6
      289 RETURN                           R0 0

PROTO_10:
        0 LOADNIL                          R2
        1 LOADNIL                          R3
        2 LOADB                            R4 0
        3 NEWCLOSURE                       R5 P0
        4 CAPTURE                          REF R4
        5 CAPTURE                          REF R3
        6 CAPTURE                          VAL R0
        7 GETUPVAL                         R6 0
        8 GETTABLEKS                       R6 R6 K0 ["new"]
       10 NEWCLOSURE                       R7 P1
       11 CAPTURE                          VAL R0
       12 CAPTURE                          REF R3
       13 CAPTURE                          UPVAL U1
       14 CAPTURE                          VAL R5
       15 CAPTURE                          REF R2
       16 CAPTURE                          UPVAL U2
       17 CAPTURE                          UPVAL U3
       18 CAPTURE                          VAL R1
       19 CAPTURE                          UPVAL U4
       20 CAPTURE                          REF R4
       21 CALL                             R6 1 1
       22 DUPTABLE                         R7 K3 [{"promise", "cancel"}]
       23 SETTABLEKS                       R6 R7 K1 ["promise"]
       25 SETTABLEKS                       R5 R7 K2 ["cancel"]
       27 CLOSEUPVALS                      R2
       28 RETURN                           R7 1

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
       25 GETIMPORT                        R4 K1 [script]
       27 GETTABLEKS                       R4 R4 K6 ["Parent"]
       29 GETTABLEKS                       R4 R4 K8 ["ClientToolConfirmation"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K9 ["Flags"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K10 ["Util"]
       41 GETTABLEKS                       R6 R6 K11 ["ImageContentStore"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K6 ["Parent"]
       48 GETTABLEKS                       R7 R7 K12 ["ModelContextProtocol"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K6 ["Parent"]
       55 GETTABLEKS                       R8 R8 K13 ["Promise"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R9 R0 K14 ["Types"]
       62 CALL                             R8 1 1
       63 DUPCLOSURE                       R9 K15 [PROTO_0]
       64 CAPTURE                          VAL R5
       65 DUPCLOSURE                       R10 K16 [PROTO_1]
       66 DUPCLOSURE                       R11 K17 [PROTO_10]
       67 CAPTURE                          VAL R7
       68 CAPTURE                          VAL R3
       69 CAPTURE                          VAL R4
       70 CAPTURE                          VAL R10
       71 CAPTURE                          VAL R9
       72 RETURN                           R11 1
