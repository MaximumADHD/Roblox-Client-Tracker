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
        0 GETTABLEKS                       R1 R0 K0 ["sessionUpdate"]
        2 JUMPIFNOTEQKS                    R1 K1 ["state_update"] ; [+41]
        4 GETTABLEKS                       R2 R0 K2 ["state"]
        6 JUMPIFNOTEQKS                    R2 K3 ["idle"] ; [+36]
        8 GETUPVAL                         R2 0
        9 JUMPIFNOT                        R2 ; [+1]
       10 RETURN                           R0 0
       11 LOADB                            R2 1
       12 SETUPVAL                         R2 0
       13 GETUPVAL                         R2 1
       14 GETTABLEKS                       R2 R2 K4 ["service"]
       16 GETUPVAL                         R4 2
       17 LOADNIL                          R5
       18 NAMECALL                         R2 R2 K5 ["setClientToolConfirmationHandler"]
       20 CALL                             R2 3 0
       21 GETUPVAL                         R2 1
       22 GETTABLEKS                       R2 R2 K6 ["unregisterPromptController"]
       24 JUMPIFNOT                        R2 ; [+5]
       25 GETUPVAL                         R2 1
       26 GETTABLEKS                       R2 R2 K6 ["unregisterPromptController"]
       28 GETUPVAL                         R3 2
       29 CALL                             R2 1 0
       30 GETUPVAL                         R2 3
       31 NAMECALL                         R2 R2 K7 ["endTurn"]
       33 CALL                             R2 1 0
       34 GETUPVAL                         R2 4
       35 JUMPIFNOT                        R2 ; [+4]
       36 GETUPVAL                         R2 4
       37 CALL                             R2 0 0
       38 LOADNIL                          R2
       39 SETUPVAL                         R2 4
       40 GETUPVAL                         R2 5
       41 GETUPVAL                         R3 6
       42 CALL                             R2 1 0
       43 RETURN                           R0 0
       44 JUMPIFNOTEQKS                    R1 K8 ["tool_call_update"] ; [+18]
       46 GETTABLEKS                       R2 R0 K9 ["toolCallId"]
       48 GETUPVAL                         R3 7
       49 JUMPIFNOTEQ                      R2 R3 ; [+13]
       51 GETTABLEKS                       R2 R0 K10 ["status"]
       53 JUMPIFEQKS                       R2 K11 ["completed"] ; [+5]
       55 GETTABLEKS                       R2 R0 K10 ["status"]
       57 JUMPIFNOTEQKS                    R2 K12 ["failed"] ; [+5]
       59 GETUPVAL                         R2 8
       60 MOVE                             R3 R0
       61 CALL                             R2 1 1
       62 SETUPVAL                         R2 6
       63 RETURN                           R0 0

PROTO_8:
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
      149 NEWCLOSURE                       R13 P4
      150 CAPTURE                          REF R7
      151 CAPTURE                          UPVAL U0
      152 CAPTURE                          VAL R4
      153 CAPTURE                          VAL R2
      154 CAPTURE                          REF R8
      155 CAPTURE                          VAL R0
      156 CAPTURE                          REF R6
      157 CAPTURE                          UPVAL U4
      158 CAPTURE                          UPVAL U5
      159 NAMECALL                         R11 R2 K34 ["observeUpdates"]
      161 CALL                             R11 2 1
      162 MOVE                             R8 R11
      163 GETUPVAL                         R11 0
      164 GETTABLEKS                       R11 R11 K7 ["service"]
      166 DUPTABLE                         R13 K40 [{"sessionId", "name", "arguments", "userPromptText", "images", "_meta"}]
      167 SETTABLEKS                       R4 R13 K17 ["sessionId"]
      169 GETUPVAL                         R14 6
      170 GETTABLEKS                       R14 R14 K41 ["agentToolName"]
      172 SETTABLEKS                       R14 R13 K35 ["name"]
      174 GETUPVAL                         R14 6
      175 GETTABLEKS                       R14 R14 K36 ["arguments"]
      177 SETTABLEKS                       R14 R13 K36 ["arguments"]
      179 GETUPVAL                         R14 6
      180 GETTABLEKS                       R14 R14 K37 ["userPromptText"]
      182 SETTABLEKS                       R14 R13 K37 ["userPromptText"]
      184 GETUPVAL                         R14 7
      185 GETUPVAL                         R15 6
      186 GETTABLEKS                       R15 R15 K38 ["images"]
      188 CALL                             R14 1 1
      189 SETTABLEKS                       R14 R13 K38 ["images"]
      191 DUPTABLE                         R14 K43 [{"_roblox"}]
      192 DUPTABLE                         R15 K45 [{["isSlashCommand"] = True}]
      193 SETTABLEKS                       R15 R14 K42 ["_roblox"]
      195 SETTABLEKS                       R14 R13 K39 ["_meta"]
      197 NAMECALL                         R11 R11 K46 ["requestToolCall"]
      199 CALL                             R11 2 1
      200 NAMECALL                         R11 R11 K11 ["await"]
      202 CALL                             R11 1 2
      203 JUMPIFNOT                        R11 ; [+10]
      204 FASTCALL1                        TYPE R12 ; [+3]
      205 MOVE                             R14 R12
      206 GETIMPORT                        R13 K48 [type]
      208 CALL                             R13 1 1
      209 JUMPIFNOTEQKS                    R13 K49 ["table"] ; [+4]
      211 GETTABLEKS                       R13 R12 K50 ["toolCallId"]
      213 SETUPVAL                         R13 4
      214 JUMPIF                           R11 ; [+40]
      215 JUMPIF                           R7 ; [+39]
      216 LOADB                            R7 1
      217 GETUPVAL                         R13 0
      218 GETTABLEKS                       R13 R13 K7 ["service"]
      220 MOVE                             R15 R4
      221 LOADNIL                          R16
      222 NAMECALL                         R13 R13 K29 ["setClientToolConfirmationHandler"]
      224 CALL                             R13 3 0
      225 GETUPVAL                         R13 0
      226 GETTABLEKS                       R13 R13 K51 ["unregisterPromptController"]
      228 JUMPIFNOT                        R13 ; [+5]
      229 GETUPVAL                         R13 0
      230 GETTABLEKS                       R13 R13 K51 ["unregisterPromptController"]
      232 MOVE                             R14 R4
      233 CALL                             R13 1 0
      234 NAMECALL                         R13 R2 K12 ["endTurn"]
      236 CALL                             R13 1 0
      237 JUMPIFNOT                        R8 ; [+3]
      238 MOVE                             R13 R8
      239 CALL                             R13 0 0
      240 LOADNIL                          R8
      241 MOVE                             R13 R1
      242 LOADK                            R15 K52 ["session/tool_call failed: %*"]
      243 FASTCALL1                        TOSTRING R12 ; [+3]
      244 MOVE                             R18 R12
      245 GETIMPORT                        R17 K15 [tostring]
      247 CALL                             R17 1 1
      248 NAMECALL                         R15 R15 K16 ["format"]
      250 CALL                             R15 2 1
      251 MOVE                             R14 R15
      252 CALL                             R13 1 0
      253 CLOSEUPVALS                      R6
      254 RETURN                           R0 0
      255 GETUPVAL                         R13 8
      256 JUMPIFNOT                        R13 ; [+9]
      257 GETUPVAL                         R13 0
      258 GETTABLEKS                       R13 R13 K7 ["service"]
      260 DUPTABLE                         R15 K53 [{"sessionId"}]
      261 SETTABLEKS                       R4 R15 K17 ["sessionId"]
      263 NAMECALL                         R13 R13 K54 ["cancel"]
      265 CALL                             R13 2 0
      266 CLOSEUPVALS                      R6
      267 RETURN                           R0 0

PROTO_9:
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
       17 CAPTURE                          VAL R1
       18 CAPTURE                          UPVAL U3
       19 CAPTURE                          REF R4
       20 CALL                             R6 1 1
       21 DUPTABLE                         R7 K3 [{"promise", "cancel"}]
       22 SETTABLEKS                       R6 R7 K1 ["promise"]
       24 SETTABLEKS                       R5 R7 K2 ["cancel"]
       26 CLOSEUPVALS                      R2
       27 RETURN                           R7 1

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
       34 GETTABLEKS                       R5 R0 K9 ["Util"]
       36 GETTABLEKS                       R5 R5 K10 ["ImageContentStore"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K6 ["Parent"]
       43 GETTABLEKS                       R6 R6 K11 ["ModelContextProtocol"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K6 ["Parent"]
       50 GETTABLEKS                       R7 R7 K12 ["Promise"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K13 ["Types"]
       57 CALL                             R7 1 1
       58 DUPCLOSURE                       R8 K14 [PROTO_0]
       59 CAPTURE                          VAL R4
       60 DUPCLOSURE                       R9 K15 [PROTO_1]
       61 DUPCLOSURE                       R10 K16 [PROTO_9]
       62 CAPTURE                          VAL R6
       63 CAPTURE                          VAL R3
       64 CAPTURE                          VAL R9
       65 CAPTURE                          VAL R8
       66 RETURN                           R10 1
