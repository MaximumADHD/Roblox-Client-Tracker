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
       33 DUPTABLE                         R1 K8 [{["content"], ["isError"] = True, ["structuredContent"]}]
       34 GETUPVAL                         R3 6
       35 JUMPIFNOT                        R3 ; [+4]
       36 GETUPVAL                         R2 6
       37 GETTABLEKS                       R2 R2 K4 ["content"]
       39 JUMP                             ; [+2]
       40 NEWTABLE                         R2 0 0
       42 SETTABLEKS                       R2 R1 K4 ["content"]
       44 GETUPVAL                         R3 6
       45 JUMPIFNOT                        R3 ; [+4]
       46 GETUPVAL                         R2 6
       47 GETTABLEKS                       R2 R2 K7 ["structuredContent"]
       49 JUMP                             ; [+1]
       50 LOADNIL                          R2
       51 SETTABLEKS                       R2 R1 K7 ["structuredContent"]
       53 CALL                             R0 1 0
       54 RETURN                           R0 0

PROTO_9:
        0 SETUPVAL                         R0 0
        1 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantSlashToolNameAndError"]
        3 JUMPIF                           R1 ; [+78]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K1 ["FFlagAssistantDestroySessionMonitorsOnClose"]
        7 JUMPIFNOT                        R1 ; [+38]
        8 JUMPIFNOTEQKS                    R0 K2 ["cancelled"] ; [+37]
       10 GETUPVAL                         R1 1
       11 JUMPIFNOT                        R1 ; [+1]
       12 RETURN                           R0 0
       13 LOADB                            R1 1
       14 SETUPVAL                         R1 1
       15 GETUPVAL                         R1 2
       16 GETTABLEKS                       R1 R1 K3 ["service"]
       18 GETUPVAL                         R3 3
       19 LOADNIL                          R4
       20 NAMECALL                         R1 R1 K4 ["setClientToolConfirmationHandler"]
       22 CALL                             R1 3 0
       23 GETUPVAL                         R1 2
       24 GETTABLEKS                       R1 R1 K5 ["unregisterPromptController"]
       26 JUMPIFNOT                        R1 ; [+5]
       27 GETUPVAL                         R1 2
       28 GETTABLEKS                       R1 R1 K5 ["unregisterPromptController"]
       30 GETUPVAL                         R2 3
       31 CALL                             R1 1 0
       32 GETUPVAL                         R1 4
       33 NAMECALL                         R1 R1 K6 ["endTurn"]
       35 CALL                             R1 1 0
       36 GETUPVAL                         R1 5
       37 JUMPIFNOT                        R1 ; [+4]
       38 GETUPVAL                         R1 5
       39 CALL                             R1 0 0
       40 LOADNIL                          R1
       41 SETUPVAL                         R1 5
       42 GETUPVAL                         R1 6
       43 LOADK                            R2 K2 ["cancelled"]
       44 CALL                             R1 1 0
       45 RETURN                           R0 0
       46 GETUPVAL                         R1 1
       47 JUMPIFNOT                        R1 ; [+1]
       48 RETURN                           R0 0
       49 LOADB                            R1 1
       50 SETUPVAL                         R1 1
       51 GETUPVAL                         R1 2
       52 GETTABLEKS                       R1 R1 K3 ["service"]
       54 GETUPVAL                         R3 3
       55 LOADNIL                          R4
       56 NAMECALL                         R1 R1 K4 ["setClientToolConfirmationHandler"]
       58 CALL                             R1 3 0
       59 GETUPVAL                         R1 2
       60 GETTABLEKS                       R1 R1 K5 ["unregisterPromptController"]
       62 JUMPIFNOT                        R1 ; [+5]
       63 GETUPVAL                         R1 2
       64 GETTABLEKS                       R1 R1 K5 ["unregisterPromptController"]
       66 GETUPVAL                         R2 3
       67 CALL                             R1 1 0
       68 GETUPVAL                         R1 4
       69 NAMECALL                         R1 R1 K6 ["endTurn"]
       71 CALL                             R1 1 0
       72 GETUPVAL                         R1 5
       73 JUMPIFNOT                        R1 ; [+4]
       74 GETUPVAL                         R1 5
       75 CALL                             R1 0 0
       76 LOADNIL                          R1
       77 SETUPVAL                         R1 5
       78 GETUPVAL                         R1 7
       79 GETUPVAL                         R2 8
       80 CALL                             R1 1 0
       81 RETURN                           R0 0
       82 JUMPIFNOTEQKS                    R0 K2 ["cancelled"] ; [+77]
       84 GETUPVAL                         R1 0
       85 GETTABLEKS                       R1 R1 K1 ["FFlagAssistantDestroySessionMonitorsOnClose"]
       87 JUMPIFNOT                        R1 ; [+36]
       88 GETUPVAL                         R1 1
       89 JUMPIFNOT                        R1 ; [+1]
       90 RETURN                           R0 0
       91 LOADB                            R1 1
       92 SETUPVAL                         R1 1
       93 GETUPVAL                         R1 2
       94 GETTABLEKS                       R1 R1 K3 ["service"]
       96 GETUPVAL                         R3 3
       97 LOADNIL                          R4
       98 NAMECALL                         R1 R1 K4 ["setClientToolConfirmationHandler"]
      100 CALL                             R1 3 0
      101 GETUPVAL                         R1 2
      102 GETTABLEKS                       R1 R1 K5 ["unregisterPromptController"]
      104 JUMPIFNOT                        R1 ; [+5]
      105 GETUPVAL                         R1 2
      106 GETTABLEKS                       R1 R1 K5 ["unregisterPromptController"]
      108 GETUPVAL                         R2 3
      109 CALL                             R1 1 0
      110 GETUPVAL                         R1 4
      111 NAMECALL                         R1 R1 K6 ["endTurn"]
      113 CALL                             R1 1 0
      114 GETUPVAL                         R1 5
      115 JUMPIFNOT                        R1 ; [+4]
      116 GETUPVAL                         R1 5
      117 CALL                             R1 0 0
      118 LOADNIL                          R1
      119 SETUPVAL                         R1 5
      120 GETUPVAL                         R1 6
      121 LOADK                            R2 K2 ["cancelled"]
      122 CALL                             R1 1 0
      123 RETURN                           R0 0
      124 GETUPVAL                         R1 1
      125 JUMPIFNOT                        R1 ; [+1]
      126 RETURN                           R0 0
      127 LOADB                            R1 1
      128 SETUPVAL                         R1 1
      129 GETUPVAL                         R1 2
      130 GETTABLEKS                       R1 R1 K3 ["service"]
      132 GETUPVAL                         R3 3
      133 LOADNIL                          R4
      134 NAMECALL                         R1 R1 K4 ["setClientToolConfirmationHandler"]
      136 CALL                             R1 3 0
      137 GETUPVAL                         R1 2
      138 GETTABLEKS                       R1 R1 K5 ["unregisterPromptController"]
      140 JUMPIFNOT                        R1 ; [+5]
      141 GETUPVAL                         R1 2
      142 GETTABLEKS                       R1 R1 K5 ["unregisterPromptController"]
      144 GETUPVAL                         R2 3
      145 CALL                             R1 1 0
      146 GETUPVAL                         R1 4
      147 NAMECALL                         R1 R1 K6 ["endTurn"]
      149 CALL                             R1 1 0
      150 GETUPVAL                         R1 5
      151 JUMPIFNOT                        R1 ; [+4]
      152 GETUPVAL                         R1 5
      153 CALL                             R1 0 0
      154 LOADNIL                          R1
      155 SETUPVAL                         R1 5
      156 GETUPVAL                         R1 7
      157 GETUPVAL                         R2 8
      158 CALL                             R1 1 0
      159 RETURN                           R0 0
      160 JUMPIFEQKNIL                     R0 ; [+3]
      162 JUMPIFNOTEQKS                    R0 K7 ["end_turn"] ; [+37]
      164 GETUPVAL                         R1 1
      165 JUMPIFNOT                        R1 ; [+1]
      166 RETURN                           R0 0
      167 LOADB                            R1 1
      168 SETUPVAL                         R1 1
      169 GETUPVAL                         R1 2
      170 GETTABLEKS                       R1 R1 K3 ["service"]
      172 GETUPVAL                         R3 3
      173 LOADNIL                          R4
      174 NAMECALL                         R1 R1 K4 ["setClientToolConfirmationHandler"]
      176 CALL                             R1 3 0
      177 GETUPVAL                         R1 2
      178 GETTABLEKS                       R1 R1 K5 ["unregisterPromptController"]
      180 JUMPIFNOT                        R1 ; [+5]
      181 GETUPVAL                         R1 2
      182 GETTABLEKS                       R1 R1 K5 ["unregisterPromptController"]
      184 GETUPVAL                         R2 3
      185 CALL                             R1 1 0
      186 GETUPVAL                         R1 4
      187 NAMECALL                         R1 R1 K6 ["endTurn"]
      189 CALL                             R1 1 0
      190 GETUPVAL                         R1 5
      191 JUMPIFNOT                        R1 ; [+4]
      192 GETUPVAL                         R1 5
      193 CALL                             R1 0 0
      194 LOADNIL                          R1
      195 SETUPVAL                         R1 5
      196 GETUPVAL                         R1 7
      197 GETUPVAL                         R2 8
      198 CALL                             R1 1 0
      199 RETURN                           R0 0
      200 LOADNIL                          R1
      201 GETUPVAL                         R2 9
      202 GETTABLEKS                       R2 R2 K8 ["Engine"]
      204 GETTABLEKS                       R2 R2 K9 ["ErrorTypes"]
      206 GETTABLEKS                       R2 R2 K10 ["handleStopReason"]
      208 MOVE                             R3 R0
      209 NEWCLOSURE                       R4 P0
      210 CAPTURE                          REF R1
      211 CALL                             R2 2 0
      212 JUMPIFNOTEQKNIL                  R1 ; [+10]
      214 GETIMPORT                        R2 K12 [warn]
      216 LOADK                            R4 K13 ["[Assistant][ACP] Unrecognized slash command stop reason: %*"]
      217 MOVE                             R6 R0
      218 NAMECALL                         R4 R4 K14 ["format"]
      220 CALL                             R4 2 1
      221 MOVE                             R3 R4
      222 CALL                             R2 1 0
      223 GETUPVAL                         R2 2
      224 GETTABLEKS                       R2 R2 K15 ["showError"]
      226 JUMPIFNOT                        R2 ; [+16]
      227 GETUPVAL                         R2 2
      228 GETTABLEKS                       R2 R2 K15 ["showError"]
      230 DUPTABLE                         R3 K19 [{"errorType", "messageGuid", "acpSessionId"}]
      231 ORK                              R4 R1 K20 ["client_error"]
      232 SETTABLEKS                       R4 R3 K16 ["errorType"]
      234 GETUPVAL                         R4 2
      235 GETTABLEKS                       R4 R4 K21 ["assistantMessageId"]
      237 SETTABLEKS                       R4 R3 K17 ["messageGuid"]
      239 GETUPVAL                         R4 3
      240 SETTABLEKS                       R4 R3 K18 ["acpSessionId"]
      242 CALL                             R2 1 0
      243 GETUPVAL                         R2 10
      244 CALL                             R2 0 0
      245 CLOSEUPVALS                      R1
      246 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["sessionUpdate"]
        2 JUMPIFNOTEQKS                    R1 K1 ["state_update"] ; [+10]
        4 GETTABLEKS                       R2 R0 K2 ["state"]
        6 JUMPIFNOTEQKS                    R2 K3 ["idle"] ; [+5]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R3 R0 K4 ["stopReason"]
       11 CALL                             R2 1 0
       12 RETURN                           R0 0
       13 JUMPIFEQKS                       R1 K5 ["tool_call"] ; [+3]
       15 JUMPIFNOTEQKS                    R1 K6 ["tool_call_update"] ; [+15]
       17 GETTABLEKS                       R3 R0 K7 ["toolCallId"]
       19 FASTCALL1                        TYPEOF R3 ; [+2]
       20 GETIMPORT                        R2 K9 [typeof]
       22 CALL                             R2 1 1
       23 JUMPIFNOTEQKS                    R2 K10 ["string"] ; [+7]
       25 GETUPVAL                         R2 1
       26 JUMPIFNOTEQKNIL                  R2 ; [+4]
       28 GETTABLEKS                       R2 R0 K7 ["toolCallId"]
       30 SETUPVAL                         R2 1
       31 JUMPIFNOTEQKS                    R1 K6 ["tool_call_update"] ; [+18]
       33 GETTABLEKS                       R2 R0 K7 ["toolCallId"]
       35 GETUPVAL                         R3 1
       36 JUMPIFNOTEQ                      R2 R3 ; [+13]
       38 GETTABLEKS                       R2 R0 K11 ["status"]
       40 JUMPIFEQKS                       R2 K12 ["completed"] ; [+5]
       42 GETTABLEKS                       R2 R0 K11 ["status"]
       44 JUMPIFNOTEQKS                    R2 K13 ["failed"] ; [+5]
       46 GETUPVAL                         R2 3
       47 MOVE                             R3 R0
       48 CALL                             R2 1 1
       49 SETUPVAL                         R2 2
       50 RETURN                           R0 0

PROTO_12:
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
      156 NEWCLOSURE                       R12 P5
      157 CAPTURE                          REF R7
      158 CAPTURE                          UPVAL U0
      159 CAPTURE                          VAL R4
      160 CAPTURE                          VAL R2
      161 CAPTURE                          REF R8
      162 CAPTURE                          VAL R0
      163 CAPTURE                          REF R6
      164 NEWCLOSURE                       R13 P6
      165 CAPTURE                          UPVAL U5
      166 CAPTURE                          REF R7
      167 CAPTURE                          UPVAL U0
      168 CAPTURE                          VAL R4
      169 CAPTURE                          VAL R2
      170 CAPTURE                          REF R8
      171 CAPTURE                          VAL R1
      172 CAPTURE                          VAL R0
      173 CAPTURE                          REF R6
      174 CAPTURE                          UPVAL U6
      175 CAPTURE                          VAL R12
      176 NEWCLOSURE                       R16 P7
      177 CAPTURE                          VAL R13
      178 CAPTURE                          UPVAL U4
      179 CAPTURE                          REF R6
      180 CAPTURE                          UPVAL U7
      181 NAMECALL                         R14 R2 K34 ["observeUpdates"]
      183 CALL                             R14 2 1
      184 MOVE                             R8 R14
      185 DUPTABLE                         R14 K38 [{"sessionId", "name", "arguments", "userPromptText"}]
      186 SETTABLEKS                       R4 R14 K17 ["sessionId"]
      188 GETUPVAL                         R15 8
      189 GETTABLEKS                       R15 R15 K39 ["agentToolName"]
      191 SETTABLEKS                       R15 R14 K35 ["name"]
      193 GETUPVAL                         R15 8
      194 GETTABLEKS                       R15 R15 K36 ["arguments"]
      196 SETTABLEKS                       R15 R14 K36 ["arguments"]
      198 GETUPVAL                         R15 8
      199 GETTABLEKS                       R15 R15 K37 ["userPromptText"]
      201 SETTABLEKS                       R15 R14 K37 ["userPromptText"]
      203 GETUPVAL                         R15 5
      204 GETTABLEKS                       R15 R15 K40 ["FFlagAssistantOmitSlashToolCallDroppedFields"]
      206 JUMPIF                           R15 ; [+13]
      207 GETUPVAL                         R15 9
      208 GETUPVAL                         R16 8
      209 GETTABLEKS                       R16 R16 K41 ["images"]
      211 CALL                             R15 1 1
      212 SETTABLEKS                       R15 R14 K41 ["images"]
      214 DUPTABLE                         R15 K43 [{"_roblox"}]
      215 DUPTABLE                         R16 K45 [{["isSlashCommand"] = True}]
      216 SETTABLEKS                       R16 R15 K42 ["_roblox"]
      218 SETTABLEKS                       R15 R14 K46 ["_meta"]
      220 GETUPVAL                         R15 0
      221 GETTABLEKS                       R15 R15 K7 ["service"]
      223 MOVE                             R17 R14
      224 NAMECALL                         R15 R15 K47 ["requestToolCall"]
      226 CALL                             R15 2 1
      227 NAMECALL                         R15 R15 K11 ["await"]
      229 CALL                             R15 1 2
      230 JUMPIFNOT                        R15 ; [+18]
      231 FASTCALL1                        TYPE R16 ; [+3]
      232 MOVE                             R18 R16
      233 GETIMPORT                        R17 K49 [type]
      235 CALL                             R17 1 1
      236 JUMPIFNOTEQKS                    R17 K50 ["table"] ; [+12]
      238 GETTABLEKS                       R18 R16 K51 ["toolCallId"]
      240 FASTCALL1                        TYPEOF R18 ; [+2]
      241 GETIMPORT                        R17 K53 [typeof]
      243 CALL                             R17 1 1
      244 JUMPIFNOTEQKS                    R17 K54 ["string"] ; [+4]
      246 GETTABLEKS                       R17 R16 K51 ["toolCallId"]
      248 SETUPVAL                         R17 4
      249 JUMPIF                           R15 ; [+40]
      250 JUMPIF                           R7 ; [+39]
      251 LOADB                            R7 1
      252 GETUPVAL                         R17 0
      253 GETTABLEKS                       R17 R17 K7 ["service"]
      255 MOVE                             R19 R4
      256 LOADNIL                          R20
      257 NAMECALL                         R17 R17 K29 ["setClientToolConfirmationHandler"]
      259 CALL                             R17 3 0
      260 GETUPVAL                         R17 0
      261 GETTABLEKS                       R17 R17 K55 ["unregisterPromptController"]
      263 JUMPIFNOT                        R17 ; [+5]
      264 GETUPVAL                         R17 0
      265 GETTABLEKS                       R17 R17 K55 ["unregisterPromptController"]
      267 MOVE                             R18 R4
      268 CALL                             R17 1 0
      269 NAMECALL                         R17 R2 K12 ["endTurn"]
      271 CALL                             R17 1 0
      272 JUMPIFNOT                        R8 ; [+3]
      273 MOVE                             R17 R8
      274 CALL                             R17 0 0
      275 LOADNIL                          R8
      276 MOVE                             R17 R1
      277 LOADK                            R19 K56 ["_roblox/session/tool_call failed: %*"]
      278 FASTCALL1                        TOSTRING R16 ; [+3]
      279 MOVE                             R22 R16
      280 GETIMPORT                        R21 K15 [tostring]
      282 CALL                             R21 1 1
      283 NAMECALL                         R19 R19 K16 ["format"]
      285 CALL                             R19 2 1
      286 MOVE                             R18 R19
      287 CALL                             R17 1 0
      288 CLOSEUPVALS                      R6
      289 RETURN                           R0 0
      290 GETUPVAL                         R17 10
      291 JUMPIFNOT                        R17 ; [+9]
      292 GETUPVAL                         R17 0
      293 GETTABLEKS                       R17 R17 K7 ["service"]
      295 DUPTABLE                         R19 K57 [{"sessionId"}]
      296 SETTABLEKS                       R4 R19 K17 ["sessionId"]
      298 NAMECALL                         R17 R17 K58 ["cancel"]
      300 CALL                             R17 2 0
      301 CLOSEUPVALS                      R6
      302 RETURN                           R0 0

PROTO_13:
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
       18 CAPTURE                          UPVAL U4
       19 CAPTURE                          VAL R1
       20 CAPTURE                          UPVAL U5
       21 CAPTURE                          REF R4
       22 CALL                             R6 1 1
       23 DUPTABLE                         R7 K3 [{"promise", "cancel"}]
       24 SETTABLEKS                       R6 R7 K1 ["promise"]
       26 SETTABLEKS                       R5 R7 K2 ["cancel"]
       28 CLOSEUPVALS                      R2
       29 RETURN                           R7 1

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
       55 GETTABLEKS                       R8 R8 K13 ["ModelContextProtocol"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R9 R0 K6 ["Parent"]
       62 GETTABLEKS                       R9 R9 K14 ["Promise"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R10 R0 K15 ["Types"]
       69 CALL                             R9 1 1
       70 DUPCLOSURE                       R10 K16 [PROTO_0]
       71 CAPTURE                          VAL R6
       72 DUPCLOSURE                       R11 K17 [PROTO_1]
       73 DUPCLOSURE                       R12 K18 [PROTO_13]
       74 CAPTURE                          VAL R8
       75 CAPTURE                          VAL R4
       76 CAPTURE                          VAL R5
       77 CAPTURE                          VAL R3
       78 CAPTURE                          VAL R11
       79 CAPTURE                          VAL R10
       80 RETURN                           R12 1
