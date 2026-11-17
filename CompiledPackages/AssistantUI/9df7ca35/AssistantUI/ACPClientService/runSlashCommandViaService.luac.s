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

PROTO_4:
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

PROTO_5:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["getOrCreateAssistantMessage"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_6:
        0 DUPTABLE                         R0 K4 [{[1] = "running", ["sessionId"], ["messageId"]}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K2 ["sessionId"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K3 ["messageId"]
        7 RETURN                           R0 1

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

PROTO_9:
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

PROTO_10:
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

PROTO_11:
        0 SETUPVAL                         R0 0
        1 RETURN                           R0 0

PROTO_12:
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
      212 JUMPIFNOTEQKNIL                  R1 ; [+9]
      214 GETIMPORT                        R2 K12 [warn]
      216 LOADK                            R3 K13 ["[Assistant][ACP] Unrecognized slash command stop reason: %*"]
      217 MOVE                             R5 R0
      218 NAMECALL                         R3 R3 K14 ["format"]
      220 CALL                             R3 2 1
      221 CALL                             R2 1 0
      222 GETUPVAL                         R2 2
      223 GETTABLEKS                       R2 R2 K15 ["showError"]
      225 JUMPIFNOT                        R2 ; [+21]
      226 GETUPVAL                         R2 2
      227 GETTABLEKS                       R2 R2 K15 ["showError"]
      229 DUPTABLE                         R3 K20 [{"errorType", "messageGuid", "acpSessionId", "threadId"}]
      230 ORK                              R4 R1 K21 ["client_error"]
      231 SETTABLEKS                       R4 R3 K16 ["errorType"]
      233 GETUPVAL                         R4 2
      234 GETTABLEKS                       R4 R4 K22 ["assistantMessageId"]
      236 SETTABLEKS                       R4 R3 K17 ["messageGuid"]
      238 GETUPVAL                         R4 3
      239 SETTABLEKS                       R4 R3 K18 ["acpSessionId"]
      241 GETUPVAL                         R4 2
      242 GETTABLEKS                       R4 R4 K19 ["threadId"]
      244 SETTABLEKS                       R4 R3 K19 ["threadId"]
      246 CALL                             R2 1 0
      247 GETUPVAL                         R2 10
      248 CALL                             R2 0 0
      249 CLOSEUPVALS                      R1
      250 RETURN                           R0 0

PROTO_13:
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

PROTO_14:
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
       27 JUMPIF                           R3 ; [+15]
       28 NAMECALL                         R5 R2 K12 ["endTurn"]
       30 CALL                             R5 1 0
       31 MOVE                             R5 R1
       32 LOADK                            R6 K13 ["failed to resolve sessionId: %*"]
       33 FASTCALL1                        TOSTRING R4 ; [+3]
       34 MOVE                             R9 R4
       35 GETIMPORT                        R8 K15 [tostring]
       37 CALL                             R8 1 1
       38 NAMECALL                         R6 R6 K16 ["format"]
       40 CALL                             R6 2 1
       41 CALL                             R5 1 0
       42 RETURN                           R0 0
       43 SETUPVAL                         R4 1
       44 GETUPVAL                         R5 0
       45 GETTABLEKS                       R5 R5 K7 ["service"]
       47 MOVE                             R7 R4
       48 DUPTABLE                         R8 K19 [{"sessionId", "threadId", "acpSessionId", "assistantMode"}]
       49 GETUPVAL                         R9 0
       50 GETTABLEKS                       R9 R9 K20 ["conversationSessionId"]
       52 SETTABLEKS                       R9 R8 K17 ["sessionId"]
       54 GETUPVAL                         R9 0
       55 GETTABLEKS                       R9 R9 K8 ["threadId"]
       57 SETTABLEKS                       R9 R8 K8 ["threadId"]
       59 SETTABLEKS                       R4 R8 K9 ["acpSessionId"]
       61 GETUPVAL                         R9 0
       62 GETTABLEKS                       R9 R9 K18 ["assistantMode"]
       64 SETTABLEKS                       R9 R8 K18 ["assistantMode"]
       66 NAMECALL                         R5 R5 K21 ["setSessionToolCallMeta"]
       68 CALL                             R5 3 0
       69 GETUPVAL                         R5 0
       70 GETTABLEKS                       R5 R5 K9 ["acpSessionId"]
       72 JUMPIFNOTEQKNIL                  R5 ; [+10]
       74 GETUPVAL                         R5 0
       75 GETTABLEKS                       R5 R5 K22 ["setAcpSessionId"]
       77 JUMPIFNOT                        R5 ; [+5]
       78 GETUPVAL                         R5 0
       79 GETTABLEKS                       R5 R5 K22 ["setAcpSessionId"]
       81 MOVE                             R6 R4
       82 CALL                             R5 1 0
       83 MOVE                             R7 R4
       84 NAMECALL                         R5 R2 K23 ["attachSession"]
       86 CALL                             R5 2 0
       87 GETUPVAL                         R5 0
       88 GETTABLEKS                       R5 R5 K7 ["service"]
       90 MOVE                             R7 R4
       91 GETUPVAL                         R8 2
       92 GETTABLEKS                       R8 R8 K24 ["create"]
       94 DUPTABLE                         R9 K28 [{"addContent", "editContent", "getMessageId"}]
       95 NEWCLOSURE                       R10 P0
       96 CAPTURE                          UPVAL U0
       97 SETTABLEKS                       R10 R9 K25 ["addContent"]
       99 NEWCLOSURE                       R10 P1
      100 CAPTURE                          UPVAL U0
      101 SETTABLEKS                       R10 R9 K26 ["editContent"]
      103 NEWCLOSURE                       R10 P2
      104 CAPTURE                          VAL R2
      105 SETTABLEKS                       R10 R9 K27 ["getMessageId"]
      107 CALL                             R8 1 -1
      108 NAMECALL                         R5 R5 K29 ["setClientToolConfirmationHandler"]
      110 CALL                             R5 -1 0
      111 DUPTABLE                         R5 K32 [{"cancelSessionPrompt", "getStateOfSessionPrompt"}]
      112 GETUPVAL                         R6 3
      113 SETTABLEKS                       R6 R5 K30 ["cancelSessionPrompt"]
      115 NEWCLOSURE                       R6 P3
      116 CAPTURE                          VAL R4
      117 CAPTURE                          UPVAL U4
      118 SETTABLEKS                       R6 R5 K31 ["getStateOfSessionPrompt"]
      120 GETUPVAL                         R6 0
      121 GETTABLEKS                       R6 R6 K33 ["registerPromptController"]
      123 JUMPIFNOT                        R6 ; [+6]
      124 GETUPVAL                         R6 0
      125 GETTABLEKS                       R6 R6 K33 ["registerPromptController"]
      127 MOVE                             R7 R4
      128 MOVE                             R8 R5
      129 CALL                             R6 2 0
      130 LOADNIL                          R6
      131 LOADB                            R7 0
      132 LOADNIL                          R8
      133 NEWCLOSURE                       R9 P4
      134 CAPTURE                          UPVAL U0
      135 CAPTURE                          VAL R4
      136 CAPTURE                          VAL R2
      137 CAPTURE                          REF R8
      138 NEWCLOSURE                       R10 P5
      139 CAPTURE                          REF R7
      140 CAPTURE                          UPVAL U0
      141 CAPTURE                          VAL R4
      142 CAPTURE                          VAL R2
      143 CAPTURE                          REF R8
      144 CAPTURE                          VAL R0
      145 CAPTURE                          REF R6
      146 NEWCLOSURE                       R11 P6
      147 CAPTURE                          REF R7
      148 CAPTURE                          UPVAL U0
      149 CAPTURE                          VAL R4
      150 CAPTURE                          VAL R2
      151 CAPTURE                          REF R8
      152 CAPTURE                          VAL R1
      153 NEWCLOSURE                       R12 P7
      154 CAPTURE                          REF R7
      155 CAPTURE                          UPVAL U0
      156 CAPTURE                          VAL R4
      157 CAPTURE                          VAL R2
      158 CAPTURE                          REF R8
      159 CAPTURE                          VAL R0
      160 CAPTURE                          REF R6
      161 NEWCLOSURE                       R13 P8
      162 CAPTURE                          UPVAL U5
      163 CAPTURE                          REF R7
      164 CAPTURE                          UPVAL U0
      165 CAPTURE                          VAL R4
      166 CAPTURE                          VAL R2
      167 CAPTURE                          REF R8
      168 CAPTURE                          VAL R1
      169 CAPTURE                          VAL R0
      170 CAPTURE                          REF R6
      171 CAPTURE                          UPVAL U6
      172 CAPTURE                          VAL R12
      173 NEWCLOSURE                       R16 P9
      174 CAPTURE                          VAL R13
      175 CAPTURE                          UPVAL U4
      176 CAPTURE                          REF R6
      177 CAPTURE                          UPVAL U7
      178 NAMECALL                         R14 R2 K34 ["observeUpdates"]
      180 CALL                             R14 2 1
      181 MOVE                             R8 R14
      182 DUPTABLE                         R14 K38 [{"sessionId", "name", "arguments", "userPromptText"}]
      183 SETTABLEKS                       R4 R14 K17 ["sessionId"]
      185 GETUPVAL                         R15 8
      186 GETTABLEKS                       R15 R15 K39 ["agentToolName"]
      188 SETTABLEKS                       R15 R14 K35 ["name"]
      190 GETUPVAL                         R15 8
      191 GETTABLEKS                       R15 R15 K36 ["arguments"]
      193 SETTABLEKS                       R15 R14 K36 ["arguments"]
      195 GETUPVAL                         R15 8
      196 GETTABLEKS                       R15 R15 K37 ["userPromptText"]
      198 SETTABLEKS                       R15 R14 K37 ["userPromptText"]
      200 GETUPVAL                         R15 5
      201 GETTABLEKS                       R15 R15 K40 ["FFlagAssistantOmitSlashToolCallDroppedFields"]
      203 JUMPIF                           R15 ; [+13]
      204 GETUPVAL                         R15 9
      205 GETUPVAL                         R16 8
      206 GETTABLEKS                       R16 R16 K41 ["images"]
      208 CALL                             R15 1 1
      209 SETTABLEKS                       R15 R14 K41 ["images"]
      211 DUPTABLE                         R15 K43 [{"_roblox"}]
      212 DUPTABLE                         R16 K45 [{["isSlashCommand"] = True}]
      213 SETTABLEKS                       R16 R15 K42 ["_roblox"]
      215 SETTABLEKS                       R15 R14 K46 ["_meta"]
      217 GETUPVAL                         R15 0
      218 GETTABLEKS                       R15 R15 K7 ["service"]
      220 MOVE                             R17 R14
      221 NAMECALL                         R15 R15 K47 ["requestToolCall"]
      223 CALL                             R15 2 1
      224 NAMECALL                         R15 R15 K11 ["await"]
      226 CALL                             R15 1 2
      227 JUMPIFNOT                        R15 ; [+18]
      228 FASTCALL1                        TYPE R16 ; [+3]
      229 MOVE                             R18 R16
      230 GETIMPORT                        R17 K49 [type]
      232 CALL                             R17 1 1
      233 JUMPIFNOTEQKS                    R17 K50 ["table"] ; [+12]
      235 GETTABLEKS                       R18 R16 K51 ["toolCallId"]
      237 FASTCALL1                        TYPEOF R18 ; [+2]
      238 GETIMPORT                        R17 K53 [typeof]
      240 CALL                             R17 1 1
      241 JUMPIFNOTEQKS                    R17 K54 ["string"] ; [+4]
      243 GETTABLEKS                       R17 R16 K51 ["toolCallId"]
      245 SETUPVAL                         R17 4
      246 JUMPIF                           R15 ; [+39]
      247 JUMPIF                           R7 ; [+38]
      248 LOADB                            R7 1
      249 GETUPVAL                         R17 0
      250 GETTABLEKS                       R17 R17 K7 ["service"]
      252 MOVE                             R19 R4
      253 LOADNIL                          R20
      254 NAMECALL                         R17 R17 K29 ["setClientToolConfirmationHandler"]
      256 CALL                             R17 3 0
      257 GETUPVAL                         R17 0
      258 GETTABLEKS                       R17 R17 K55 ["unregisterPromptController"]
      260 JUMPIFNOT                        R17 ; [+5]
      261 GETUPVAL                         R17 0
      262 GETTABLEKS                       R17 R17 K55 ["unregisterPromptController"]
      264 MOVE                             R18 R4
      265 CALL                             R17 1 0
      266 NAMECALL                         R17 R2 K12 ["endTurn"]
      268 CALL                             R17 1 0
      269 JUMPIFNOT                        R8 ; [+3]
      270 MOVE                             R17 R8
      271 CALL                             R17 0 0
      272 LOADNIL                          R8
      273 MOVE                             R17 R1
      274 LOADK                            R18 K56 ["_roblox/session/tool_call failed: %*"]
      275 FASTCALL1                        TOSTRING R16 ; [+3]
      276 MOVE                             R21 R16
      277 GETIMPORT                        R20 K15 [tostring]
      279 CALL                             R20 1 1
      280 NAMECALL                         R18 R18 K16 ["format"]
      282 CALL                             R18 2 1
      283 CALL                             R17 1 0
      284 CLOSEUPVALS                      R6
      285 RETURN                           R0 0
      286 GETUPVAL                         R17 10
      287 JUMPIFNOT                        R17 ; [+9]
      288 GETUPVAL                         R17 0
      289 GETTABLEKS                       R17 R17 K7 ["service"]
      291 DUPTABLE                         R19 K57 [{"sessionId"}]
      292 SETTABLEKS                       R4 R19 K17 ["sessionId"]
      294 NAMECALL                         R17 R17 K58 ["cancel"]
      296 CALL                             R17 2 0
      297 CLOSEUPVALS                      R6
      298 RETURN                           R0 0

PROTO_15:
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
       73 DUPCLOSURE                       R12 K18 [PROTO_15]
       74 CAPTURE                          VAL R8
       75 CAPTURE                          VAL R4
       76 CAPTURE                          VAL R5
       77 CAPTURE                          VAL R3
       78 CAPTURE                          VAL R11
       79 CAPTURE                          VAL R10
       80 RETURN                           R12 1
