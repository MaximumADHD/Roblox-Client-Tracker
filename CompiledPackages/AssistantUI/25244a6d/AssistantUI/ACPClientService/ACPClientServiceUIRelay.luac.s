PROTO_0:
        0 NEWTABLE                         R2 16 0
        2 GETUPVAL                         R3 0
        3 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
        5 GETIMPORT                        R1 K1 [setmetatable]
        7 CALL                             R1 2 1
        8 SETTABLEKS                       R0 R1 K2 ["_callbacks"]
       10 GETTABLEKS                       R2 R0 K3 ["initialAssistantMessageId"]
       12 SETTABLEKS                       R2 R1 K4 ["_activeAssistantMessageId"]
       14 NEWTABLE                         R2 0 0
       16 SETTABLEKS                       R2 R1 K5 ["_contentIdByToolCallId"]
       18 NEWTABLE                         R2 0 0
       20 SETTABLEKS                       R2 R1 K6 ["_toolNameByToolCallId"]
       22 GETTABLEKS                       R3 R0 K7 ["isHistoryReplay"]
       24 JUMPIFEQKB                       R3 TRUE ; [+2]
       26 LOADB                            R2 0 +1
       27 LOADB                            R2 1
       28 SETTABLEKS                       R2 R1 K8 ["_isHistoryReplay"]
       30 NEWTABLE                         R2 0 0
       32 SETTABLEKS                       R2 R1 K9 ["_openToolCallIds"]
       34 GETTABLEKS                       R3 R0 K10 ["acceptedUserMessageHidden"]
       36 JUMPIFEQKB                       R3 TRUE ; [+2]
       38 LOADB                            R2 0 +1
       39 LOADB                            R2 1
       40 SETTABLEKS                       R2 R1 K11 ["_acceptedUserMessageHidden"]
       42 LOADB                            R2 0
       43 SETTABLEKS                       R2 R1 K12 ["_suppressUserMessageEcho"]
       45 LOADNIL                          R2
       46 SETTABLEKS                       R2 R1 K13 ["_activeStreamKind"]
       48 LOADNIL                          R2
       49 SETTABLEKS                       R2 R1 K14 ["_activeStreamContentId"]
       51 LOADNIL                          R2
       52 SETTABLEKS                       R2 R1 K15 ["_activeThoughtStartedAt"]
       54 LOADNIL                          R2
       55 SETTABLEKS                       R2 R1 K16 ["_compactionContentId"]
       57 GETUPVAL                         R2 1
       58 GETTABLEKS                       R2 R2 K17 ["new"]
       60 CALL                             R2 0 1
       61 SETTABLEKS                       R2 R1 K18 ["onMessageAddedSignal"]
       63 RETURN                           R1 1

PROTO_1:
        0 NAMECALL                         R2 R0 K0 ["_resetActiveStream"]
        2 CALL                             R2 1 0
        3 JUMPIFNOT                        R1 ; [+3]
        4 GETTABLEKS                       R2 R1 K1 ["initialAssistantMessageId"]
        6 JUMP                             ; [+1]
        7 LOADNIL                          R2
        8 SETTABLEKS                       R2 R0 K2 ["_activeAssistantMessageId"]
       10 LOADB                            R2 0
       11 JUMPIFEQKNIL                     R1 ; [+7]
       13 GETTABLEKS                       R3 R1 K3 ["suppressUserMessageEcho"]
       15 JUMPIFEQKB                       R3 TRUE ; [+2]
       17 LOADB                            R2 0 +1
       18 LOADB                            R2 1
       19 SETTABLEKS                       R2 R0 K4 ["_suppressUserMessageEcho"]
       21 RETURN                           R0 0

PROTO_2:
        0 LOADB                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["_suppressUserMessageEcho"]
        3 RETURN                           R0 0

PROTO_3:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["_isHistoryReplay"]
        3 RETURN                           R0 0

PROTO_4:
        0 LOADB                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["_isHistoryReplay"]
        3 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R2 R0 K0 ["_callbacks"]
        2 GETTABLEKS                       R2 R2 K1 ["addMessage"]
        4 MOVE                             R3 R1
        5 CALL                             R2 1 1
        6 GETTABLEKS                       R3 R0 K2 ["onMessageAddedSignal"]
        8 MOVE                             R5 R2
        9 NAMECALL                         R3 R3 K3 ["Fire"]
       11 CALL                             R3 2 0
       12 RETURN                           R2 1

PROTO_6:
        0 LOADNIL                          R1
        1 SETTABLEKS                       R1 R0 K0 ["_activeAssistantMessageId"]
        3 LOADNIL                          R1
        4 SETTABLEKS                       R1 R0 K1 ["_activeStreamKind"]
        6 LOADNIL                          R1
        7 SETTABLEKS                       R1 R0 K2 ["_activeStreamContentId"]
        9 LOADNIL                          R1
       10 SETTABLEKS                       R1 R0 K3 ["_activeThoughtStartedAt"]
       12 LOADNIL                          R1
       13 SETTABLEKS                       R1 R0 K4 ["_compactionContentId"]
       15 GETIMPORT                        R1 K7 [table.clear]
       17 GETTABLEKS                       R2 R0 K8 ["_contentIdByToolCallId"]
       19 CALL                             R1 1 0
       20 GETIMPORT                        R1 K7 [table.clear]
       22 GETTABLEKS                       R2 R0 K9 ["_toolNameByToolCallId"]
       24 CALL                             R1 1 0
       25 GETIMPORT                        R1 K7 [table.clear]
       27 GETTABLEKS                       R2 R0 K10 ["_openToolCallIds"]
       29 CALL                             R1 1 0
       30 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["get"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+1]
        6 RETURN                           R1 1
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K1 ["Type"]
       10 RETURN                           R2 1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["FFlagAssistantUseRemoteService"]
        3 JUMPIFNOT                        R2 ; [+6]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["toUIToolName"]
        7 MOVE                             R2 R0
        8 CALL                             R1 1 1
        9 RETURN                           R1 1
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R1 R1 K2 ["stripPrefix"]
       13 MOVE                             R2 R0
       14 CALL                             R1 1 1
       15 RETURN                           R1 1

PROTO_9:
        0 JUMPIF                           R0 ; [+2]
        1 LOADNIL                          R1
        2 RETURN                           R1 1
        3 NEWTABLE                         R1 0 0
        5 MOVE                             R2 R0
        6 LOADNIL                          R3
        7 LOADNIL                          R4
        8 FORGPREP                         R2
        9 GETTABLEKS                       R7 R6 K0 ["type"]
       11 JUMPIFNOTEQKS                    R7 K1 ["content"] ; [+157]
       13 GETTABLEKS                       R7 R6 K1 ["content"]
       15 GETTABLEKS                       R8 R7 K0 ["type"]
       17 JUMPIFNOTEQKS                    R8 K2 ["text"] ; [+13]
       19 DUPTABLE                         R10 K3 [{[1] = "text", ["text"]}]
       20 GETTABLEKS                       R11 R7 K2 ["text"]
       22 SETTABLEKS                       R11 R10 K2 ["text"]
       24 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
       26 MOVE                             R9 R1
       27 GETIMPORT                        R8 K6 [table.insert]
       29 CALL                             R8 2 0
       30 JUMP                             ; [+138]
       31 GETTABLEKS                       R8 R7 K0 ["type"]
       33 JUMPIFNOTEQKS                    R8 K7 ["image"] ; [+17]
       35 DUPTABLE                         R10 K10 [{[1] = "image", ["data"], ["mimeType"]}]
       36 GETTABLEKS                       R11 R7 K8 ["data"]
       38 SETTABLEKS                       R11 R10 K8 ["data"]
       40 GETTABLEKS                       R11 R7 K9 ["mimeType"]
       42 SETTABLEKS                       R11 R10 K9 ["mimeType"]
       44 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
       46 MOVE                             R9 R1
       47 GETIMPORT                        R8 K6 [table.insert]
       49 CALL                             R8 2 0
       50 JUMP                             ; [+118]
       51 GETTABLEKS                       R8 R7 K0 ["type"]
       53 JUMPIFNOTEQKS                    R8 K11 ["audio"] ; [+17]
       55 DUPTABLE                         R10 K12 [{[1] = "audio", ["data"], ["mimeType"]}]
       56 GETTABLEKS                       R11 R7 K8 ["data"]
       58 SETTABLEKS                       R11 R10 K8 ["data"]
       60 GETTABLEKS                       R11 R7 K9 ["mimeType"]
       62 SETTABLEKS                       R11 R10 K9 ["mimeType"]
       64 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
       66 MOVE                             R9 R1
       67 GETIMPORT                        R8 K6 [table.insert]
       69 CALL                             R8 2 0
       70 JUMP                             ; [+98]
       71 GETTABLEKS                       R8 R7 K0 ["type"]
       73 JUMPIFNOTEQKS                    R8 K13 ["resource_link"] ; [+25]
       75 DUPTABLE                         R10 K17 [{[1] = "resource_link", ["uri"], ["name"], ["description"], ["mimeType"]}]
       76 GETTABLEKS                       R11 R7 K14 ["uri"]
       78 SETTABLEKS                       R11 R10 K14 ["uri"]
       80 GETTABLEKS                       R11 R7 K15 ["name"]
       82 SETTABLEKS                       R11 R10 K15 ["name"]
       84 GETTABLEKS                       R11 R7 K16 ["description"]
       86 SETTABLEKS                       R11 R10 K16 ["description"]
       88 GETTABLEKS                       R11 R7 K9 ["mimeType"]
       90 SETTABLEKS                       R11 R10 K9 ["mimeType"]
       92 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
       94 MOVE                             R9 R1
       95 GETIMPORT                        R8 K6 [table.insert]
       97 CALL                             R8 2 0
       98 JUMP                             ; [+70]
       99 GETTABLEKS                       R8 R7 K0 ["type"]
      101 JUMPIFNOTEQKS                    R8 K18 ["resource"] ; [+67]
      103 GETTABLEKS                       R8 R7 K18 ["resource"]
      105 GETTABLEKS                       R10 R8 K14 ["uri"]
      107 FASTCALL1                        TYPEOF R10 ; [+2]
      108 GETIMPORT                        R9 K20 [typeof]
      110 CALL                             R9 1 1
      111 JUMPIFNOTEQKS                    R9 K21 ["string"] ; [+57]
      113 DUPTABLE                         R11 K22 [{[1] = "resource", ["resource"]}]
      114 DUPTABLE                         R12 K24 [{"uri", "mimeType", "text", "blob"}]
      115 GETTABLEKS                       R13 R8 K14 ["uri"]
      117 SETTABLEKS                       R13 R12 K14 ["uri"]
      119 GETTABLEKS                       R15 R8 K9 ["mimeType"]
      121 FASTCALL1                        TYPEOF R15 ; [+2]
      122 GETIMPORT                        R14 K20 [typeof]
      124 CALL                             R14 1 1
      125 JUMPIFNOTEQKS                    R14 K21 ["string"] ; [+4]
      127 GETTABLEKS                       R13 R8 K9 ["mimeType"]
      129 JUMP                             ; [+1]
      130 LOADNIL                          R13
      131 SETTABLEKS                       R13 R12 K9 ["mimeType"]
      133 GETTABLEKS                       R15 R8 K2 ["text"]
      135 FASTCALL1                        TYPEOF R15 ; [+2]
      136 GETIMPORT                        R14 K20 [typeof]
      138 CALL                             R14 1 1
      139 JUMPIFNOTEQKS                    R14 K21 ["string"] ; [+4]
      141 GETTABLEKS                       R13 R8 K2 ["text"]
      143 JUMP                             ; [+1]
      144 LOADNIL                          R13
      145 SETTABLEKS                       R13 R12 K2 ["text"]
      147 GETTABLEKS                       R15 R8 K23 ["blob"]
      149 FASTCALL1                        TYPEOF R15 ; [+2]
      150 GETIMPORT                        R14 K20 [typeof]
      152 CALL                             R14 1 1
      153 JUMPIFNOTEQKS                    R14 K21 ["string"] ; [+4]
      155 GETTABLEKS                       R13 R8 K23 ["blob"]
      157 JUMP                             ; [+1]
      158 LOADNIL                          R13
      159 SETTABLEKS                       R13 R12 K23 ["blob"]
      161 SETTABLEKS                       R12 R11 K18 ["resource"]
      163 FASTCALL2                        TABLE_INSERT R1 R11 ; [+4]
      165 MOVE                             R10 R1
      166 GETIMPORT                        R9 K6 [table.insert]
      168 CALL                             R9 2 0
      169 FORGLOOP                         R2 2 ; [-161]
      171 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R1 R0 K0 ["trackedElapsedSeconds"]
        3 LOADNIL                          R1
        4 SETTABLEKS                       R1 R0 K1 ["streaming"]
        6 LOADNIL                          R1
        7 RETURN                           R1 1

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["_activeStreamKind"]
        2 JUMPIFNOTEQKS                    R1 K1 ["thought"] ; [+55]
        4 GETTABLEKS                       R1 R0 K2 ["_activeStreamContentId"]
        6 JUMPIFNOT                        R1 ; [+51]
        7 GETTABLEKS                       R1 R0 K3 ["_activeAssistantMessageId"]
        9 JUMPIFNOT                        R1 ; [+48]
       10 GETTABLEKS                       R1 R0 K4 ["_activeThoughtStartedAt"]
       12 JUMPIFNOT                        R1 ; [+45]
       13 GETIMPORT                        R2 K6 [tick]
       15 CALL                             R2 0 1
       16 GETTABLEKS                       R3 R0 K4 ["_activeThoughtStartedAt"]
       18 SUB                              R1 R2 R3
       19 LOADN                            R3 1
       20 JUMPIFNOTLT                      R1 R3 ; [+14]
       22 MULK                             R5 R1 K7 [100]
       23 FASTCALL1                        MATH_FLOOR R5 ; [+2]
       24 GETIMPORT                        R4 K10 [math.floor]
       26 CALL                             R4 1 1
       27 DIVK                             R3 R4 K7 [100]
       28 FASTCALL2K                       MATH_MAX R3 K11 ; [+4]
       30 LOADK                            R4 K11 [0.01]
       31 GETIMPORT                        R2 K13 [math.max]
       33 CALL                             R2 2 1
       34 JUMP                             ; [+5]
       35 FASTCALL1                        MATH_FLOOR R1 ; [+3]
       36 MOVE                             R3 R1
       37 GETIMPORT                        R2 K10 [math.floor]
       39 CALL                             R2 1 1
       40 GETTABLEKS                       R3 R0 K14 ["_callbacks"]
       42 GETTABLEKS                       R3 R3 K15 ["editContent"]
       44 DUPTABLE                         R4 K19 [{"messageId", "contentId", "transformFn"}]
       45 GETTABLEKS                       R5 R0 K3 ["_activeAssistantMessageId"]
       47 SETTABLEKS                       R5 R4 K16 ["messageId"]
       49 GETTABLEKS                       R5 R0 K2 ["_activeStreamContentId"]
       51 SETTABLEKS                       R5 R4 K17 ["contentId"]
       53 NEWCLOSURE                       R5 P0
       54 CAPTURE                          VAL R2
       55 SETTABLEKS                       R5 R4 K18 ["transformFn"]
       57 CALL                             R3 1 0
       58 LOADNIL                          R1
       59 SETTABLEKS                       R1 R0 K0 ["_activeStreamKind"]
       61 LOADNIL                          R1
       62 SETTABLEKS                       R1 R0 K2 ["_activeStreamContentId"]
       64 LOADNIL                          R1
       65 SETTABLEKS                       R1 R0 K4 ["_activeThoughtStartedAt"]
       67 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["_activeAssistantMessageId"]
        2 JUMPIFNOT                        R1 ; [+3]
        3 GETTABLEKS                       R1 R0 K0 ["_activeAssistantMessageId"]
        5 RETURN                           R1 1
        6 DUPTABLE                         R3 K2 [{"role"}]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K3 ["ROLE"]
       10 GETTABLEKS                       R4 R4 K4 ["Assistant"]
       12 SETTABLEKS                       R4 R3 K1 ["role"]
       14 NAMECALL                         R1 R0 K5 ["_addMessage"]
       16 CALL                             R1 2 1
       17 SETTABLEKS                       R1 R0 K0 ["_activeAssistantMessageId"]
       19 RETURN                           R1 1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R1 R0 K0 ["text"]
        3 LOADNIL                          R1
        4 RETURN                           R1 1

PROTO_14:
        0 GETTABLEKS                       R2 R0 K0 ["_activeStreamKind"]
        2 JUMPIFNOT                        R2 ; [+7]
        3 GETTABLEKS                       R2 R0 K0 ["_activeStreamKind"]
        5 JUMPIFEQKS                       R2 K1 ["text"] ; [+4]
        7 NAMECALL                         R2 R0 K2 ["_resetActiveStream"]
        9 CALL                             R2 1 0
       10 NAMECALL                         R2 R0 K3 ["getOrCreateAssistantMessage"]
       12 CALL                             R2 1 1
       13 GETTABLEKS                       R3 R0 K0 ["_activeStreamKind"]
       15 JUMPIFNOTEQKS                    R3 K1 ["text"] ; [+21]
       17 GETTABLEKS                       R3 R0 K4 ["_activeStreamContentId"]
       19 JUMPIFNOT                        R3 ; [+17]
       20 GETTABLEKS                       R3 R0 K5 ["_callbacks"]
       22 GETTABLEKS                       R3 R3 K6 ["editContent"]
       24 DUPTABLE                         R4 K10 [{"messageId", "contentId", "transformFn"}]
       25 SETTABLEKS                       R2 R4 K7 ["messageId"]
       27 GETTABLEKS                       R5 R0 K4 ["_activeStreamContentId"]
       29 SETTABLEKS                       R5 R4 K8 ["contentId"]
       31 NEWCLOSURE                       R5 P0
       32 CAPTURE                          VAL R1
       33 SETTABLEKS                       R5 R4 K9 ["transformFn"]
       35 CALL                             R3 1 0
       36 RETURN                           R0 0
       37 GETTABLEKS                       R3 R0 K5 ["_callbacks"]
       39 GETTABLEKS                       R3 R3 K11 ["addContent"]
       41 DUPTABLE                         R4 K13 [{"messageId", "content"}]
       42 SETTABLEKS                       R2 R4 K7 ["messageId"]
       44 DUPTABLE                         R5 K15 [{"type", "text"}]
       45 GETUPVAL                         R6 0
       46 GETTABLEKS                       R6 R6 K16 ["Type"]
       48 SETTABLEKS                       R6 R5 K14 ["type"]
       50 SETTABLEKS                       R1 R5 K1 ["text"]
       52 SETTABLEKS                       R5 R4 K12 ["content"]
       54 CALL                             R3 1 1
       55 LOADK                            R4 K1 ["text"]
       56 SETTABLEKS                       R4 R0 K0 ["_activeStreamKind"]
       58 SETTABLEKS                       R3 R0 K4 ["_activeStreamContentId"]
       60 RETURN                           R0 0

PROTO_15:
        0 NAMECALL                         R2 R0 K0 ["_resetActiveStream"]
        2 CALL                             R2 1 0
        3 LOADNIL                          R2
        4 SETTABLEKS                       R2 R0 K1 ["_activeAssistantMessageId"]
        6 DUPTABLE                         R4 K4 [{"role", "hidden"}]
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R5 R5 K5 ["ROLE"]
       10 GETTABLEKS                       R5 R5 K6 ["User"]
       12 SETTABLEKS                       R5 R4 K2 ["role"]
       14 GETTABLEKS                       R5 R0 K7 ["_acceptedUserMessageHidden"]
       16 SETTABLEKS                       R5 R4 K3 ["hidden"]
       18 NAMECALL                         R2 R0 K8 ["_addMessage"]
       20 CALL                             R2 2 1
       21 GETTABLEKS                       R3 R0 K9 ["_callbacks"]
       23 GETTABLEKS                       R3 R3 K10 ["addContent"]
       25 DUPTABLE                         R4 K13 [{"messageId", "content"}]
       26 SETTABLEKS                       R2 R4 K11 ["messageId"]
       28 DUPTABLE                         R5 K16 [{"type", "text"}]
       29 GETUPVAL                         R6 1
       30 GETTABLEKS                       R6 R6 K17 ["Type"]
       32 SETTABLEKS                       R6 R5 K14 ["type"]
       34 SETTABLEKS                       R1 R5 K15 ["text"]
       36 SETTABLEKS                       R5 R4 K12 ["content"]
       38 CALL                             R3 1 0
       39 RETURN                           R0 0

PROTO_16:
        0 GETTABLEKS                       R2 R0 K0 ["_suppressUserMessageEcho"]
        2 JUMPIFNOT                        R2 ; [+4]
        3 LOADB                            R2 0
        4 SETTABLEKS                       R2 R0 K0 ["_suppressUserMessageEcho"]
        6 RETURN                           R0 0
        7 NAMECALL                         R2 R0 K1 ["_resetActiveStream"]
        9 CALL                             R2 1 0
       10 LOADNIL                          R2
       11 SETTABLEKS                       R2 R0 K2 ["_activeAssistantMessageId"]
       13 DUPTABLE                         R4 K5 [{"role", "hidden"}]
       14 GETUPVAL                         R5 0
       15 GETTABLEKS                       R5 R5 K6 ["ROLE"]
       17 GETTABLEKS                       R5 R5 K7 ["User"]
       19 SETTABLEKS                       R5 R4 K3 ["role"]
       21 GETTABLEKS                       R5 R0 K8 ["_acceptedUserMessageHidden"]
       23 SETTABLEKS                       R5 R4 K4 ["hidden"]
       25 NAMECALL                         R2 R0 K9 ["_addMessage"]
       27 CALL                             R2 2 1
       28 NEWTABLE                         R3 0 0
       30 GETTABLEKS                       R4 R1 K10 ["content"]
       32 LOADNIL                          R5
       33 LOADNIL                          R6
       34 FORGPREP                         R4
       35 GETTABLEKS                       R9 R8 K11 ["type"]
       37 JUMPIFNOTEQKS                    R9 K12 ["text"] ; [+37]
       39 GETTABLEKS                       R9 R8 K12 ["text"]
       41 JUMPIFEQKS                       R9 K13 [""] ; [+33]
       43 GETIMPORT                        R9 K16 [string.find]
       45 GETTABLEKS                       R10 R8 K12 ["text"]
       47 GETUPVAL                         R11 0
       48 GETTABLEKS                       R11 R11 K17 ["SYSTEM_REMINDER_OPEN"]
       50 LOADN                            R12 1
       51 LOADB                            R13 1
       52 CALL                             R9 4 1
       53 JUMPIF                           R9 ; [+21]
       54 GETTABLEKS                       R9 R0 K18 ["_callbacks"]
       56 GETTABLEKS                       R9 R9 K19 ["addContent"]
       58 DUPTABLE                         R10 K21 [{"messageId", "content"}]
       59 SETTABLEKS                       R2 R10 K20 ["messageId"]
       61 DUPTABLE                         R11 K22 [{"type", "text"}]
       62 GETUPVAL                         R12 1
       63 GETTABLEKS                       R12 R12 K23 ["Type"]
       65 SETTABLEKS                       R12 R11 K11 ["type"]
       67 GETTABLEKS                       R12 R8 K12 ["text"]
       69 SETTABLEKS                       R12 R11 K12 ["text"]
       71 SETTABLEKS                       R11 R10 K10 ["content"]
       73 CALL                             R9 1 0
       74 JUMP                             ; [+19]
       75 GETTABLEKS                       R9 R8 K11 ["type"]
       77 JUMPIFNOTEQKS                    R9 K24 ["image"] ; [+16]
       79 DUPTABLE                         R11 K27 [{["type"] = "image", ["data"], ["mimeType"]}]
       80 GETTABLEKS                       R12 R8 K25 ["data"]
       82 SETTABLEKS                       R12 R11 K25 ["data"]
       84 GETTABLEKS                       R12 R8 K26 ["mimeType"]
       86 SETTABLEKS                       R12 R11 K26 ["mimeType"]
       88 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
       90 MOVE                             R10 R3
       91 GETIMPORT                        R9 K30 [table.insert]
       93 CALL                             R9 2 0
       94 FORGLOOP                         R4 2 ; [-60]
       96 LENGTH                           R4 R3
       97 LOADN                            R5 0
       98 JUMPIFNOTLT                      R5 R4 ; [+19]
      100 GETTABLEKS                       R4 R0 K18 ["_callbacks"]
      102 GETTABLEKS                       R4 R4 K19 ["addContent"]
      104 DUPTABLE                         R5 K21 [{"messageId", "content"}]
      105 SETTABLEKS                       R2 R5 K20 ["messageId"]
      107 DUPTABLE                         R6 K34 [{["type"], ["imageContents"], ["expanded"] = False}]
      108 GETUPVAL                         R7 2
      109 GETTABLEKS                       R7 R7 K23 ["Type"]
      111 SETTABLEKS                       R7 R6 K11 ["type"]
      113 SETTABLEKS                       R3 R6 K31 ["imageContents"]
      115 SETTABLEKS                       R6 R5 K10 ["content"]
      117 CALL                             R4 1 0
      118 GETTABLEKS                       R4 R0 K35 ["_isHistoryReplay"]
      120 JUMPIF                           R4 ; [+3]
      121 NAMECALL                         R4 R0 K36 ["getOrCreateAssistantMessage"]
      123 CALL                             R4 1 0
      124 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R1 R0 K0 ["thinking"]
        3 LOADNIL                          R1
        4 RETURN                           R1 1

PROTO_18:
        0 GETTABLEKS                       R2 R0 K0 ["_activeStreamKind"]
        2 JUMPIFNOT                        R2 ; [+7]
        3 GETTABLEKS                       R2 R0 K0 ["_activeStreamKind"]
        5 JUMPIFEQKS                       R2 K1 ["thought"] ; [+4]
        7 NAMECALL                         R2 R0 K2 ["_resetActiveStream"]
        9 CALL                             R2 1 0
       10 NAMECALL                         R2 R0 K3 ["getOrCreateAssistantMessage"]
       12 CALL                             R2 1 1
       13 GETTABLEKS                       R3 R0 K0 ["_activeStreamKind"]
       15 JUMPIFNOTEQKS                    R3 K1 ["thought"] ; [+21]
       17 GETTABLEKS                       R3 R0 K4 ["_activeStreamContentId"]
       19 JUMPIFNOT                        R3 ; [+17]
       20 GETTABLEKS                       R3 R0 K5 ["_callbacks"]
       22 GETTABLEKS                       R3 R3 K6 ["editContent"]
       24 DUPTABLE                         R4 K10 [{"messageId", "contentId", "transformFn"}]
       25 SETTABLEKS                       R2 R4 K7 ["messageId"]
       27 GETTABLEKS                       R5 R0 K4 ["_activeStreamContentId"]
       29 SETTABLEKS                       R5 R4 K8 ["contentId"]
       31 NEWCLOSURE                       R5 P0
       32 CAPTURE                          VAL R1
       33 SETTABLEKS                       R5 R4 K9 ["transformFn"]
       35 CALL                             R3 1 0
       36 RETURN                           R0 0
       37 GETTABLEKS                       R3 R0 K5 ["_callbacks"]
       39 GETTABLEKS                       R3 R3 K11 ["addContent"]
       41 DUPTABLE                         R4 K13 [{"messageId", "content"}]
       42 SETTABLEKS                       R2 R4 K7 ["messageId"]
       44 DUPTABLE                         R5 K21 [{["type"], ["thinking"], ["signature"] = "", ["expanded"] = False, ["streaming"]}]
       45 GETUPVAL                         R6 0
       46 GETTABLEKS                       R6 R6 K22 ["Type"]
       48 SETTABLEKS                       R6 R5 K14 ["type"]
       50 SETTABLEKS                       R1 R5 K15 ["thinking"]
       52 GETTABLEKS                       R7 R0 K23 ["_isHistoryReplay"]
       54 JUMPIF                           R7 ; [+3]
       55 NEWTABLE                         R6 0 0
       57 JUMP                             ; [+1]
       58 LOADNIL                          R6
       59 SETTABLEKS                       R6 R5 K20 ["streaming"]
       61 SETTABLEKS                       R5 R4 K12 ["content"]
       63 CALL                             R3 1 1
       64 LOADK                            R4 K1 ["thought"]
       65 SETTABLEKS                       R4 R0 K0 ["_activeStreamKind"]
       67 SETTABLEKS                       R3 R0 K4 ["_activeStreamContentId"]
       69 GETTABLEKS                       R5 R0 K23 ["_isHistoryReplay"]
       71 JUMPIFNOT                        R5 ; [+2]
       72 LOADNIL                          R4
       73 JUMP                             ; [+3]
       74 GETIMPORT                        R4 K25 [tick]
       76 CALL                             R4 0 1
       77 SETTABLEKS                       R4 R0 K26 ["_activeThoughtStartedAt"]
       79 RETURN                           R0 0

PROTO_19:
        0 NAMECALL                         R2 R0 K0 ["_resetActiveStream"]
        2 CALL                             R2 1 0
        3 GETTABLEKS                       R3 R1 K2 ["title"]
        5 ORK                              R2 R3 K1 ["unknown_tool"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K3 ["FFlagAssistantUseRemoteService"]
        9 JUMPIFNOT                        R4 ; [+6]
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R3 R3 K4 ["toUIToolName"]
       13 MOVE                             R4 R2
       14 CALL                             R3 1 1
       15 JUMP                             ; [+5]
       16 GETUPVAL                         R3 1
       17 GETTABLEKS                       R3 R3 K5 ["stripPrefix"]
       19 MOVE                             R4 R2
       20 CALL                             R3 1 1
       21 GETUPVAL                         R5 2
       22 GETTABLEKS                       R5 R5 K6 ["get"]
       24 MOVE                             R6 R3
       25 CALL                             R5 1 1
       26 JUMPIFNOT                        R5 ; [+2]
       27 MOVE                             R4 R5
       28 JUMP                             ; [+3]
       29 GETUPVAL                         R4 3
       30 GETTABLEKS                       R4 R4 K7 ["Type"]
       32 GETUPVAL                         R6 2
       33 GETTABLEKS                       R6 R6 K8 ["None"]
       35 JUMPIFNOTEQ                      R4 R6 ; [+2]
       37 LOADB                            R5 0 +1
       38 LOADB                            R5 1
       39 GETUPVAL                         R6 0
       40 GETTABLEKS                       R6 R6 K9 ["FFlagDebugLogAssistantUI"]
       42 JUMPIFNOT                        R6 ; [+24]
       43 GETIMPORT                        R6 K11 [print]
       45 LOADK                            R10 K12 ["[Tool Call] UI create: toolCallId=%* title=%* actualToolName=%* "]
       46 GETTABLEKS                       R13 R1 K13 ["toolCallId"]
       48 FASTCALL1                        TOSTRING R13 ; [+2]
       49 GETIMPORT                        R12 K15 [tostring]
       51 CALL                             R12 1 1
       52 MOVE                             R13 R2
       53 MOVE                             R14 R3
       54 NAMECALL                         R10 R10 K16 ["format"]
       56 CALL                             R10 4 1
       57 MOVE                             R8 R10
       58 LOADK                            R10 K17 ["widgetType=%* foundWidget=%*"]
       59 MOVE                             R12 R4
       60 MOVE                             R13 R5
       61 NAMECALL                         R10 R10 K16 ["format"]
       63 CALL                             R10 3 1
       64 MOVE                             R9 R10
       65 CONCAT                           R7 R8 R9
       66 CALL                             R6 1 0
       67 GETUPVAL                         R6 2
       68 GETTABLEKS                       R6 R6 K8 ["None"]
       70 JUMPIFNOTEQ                      R4 R6 ; [+15]
       72 GETUPVAL                         R6 0
       73 GETTABLEKS                       R6 R6 K9 ["FFlagDebugLogAssistantUI"]
       75 JUMPIFNOT                        R6 ; [+9]
       76 GETIMPORT                        R6 K11 [print]
       78 LOADK                            R8 K18 ["[Tool Call] UI create skipped: no widget for actualToolName=%*"]
       79 MOVE                             R10 R3
       80 NAMECALL                         R8 R8 K16 ["format"]
       82 CALL                             R8 2 1
       83 MOVE                             R7 R8
       84 CALL                             R6 1 0
       85 RETURN                           R0 0
       86 GETTABLEKS                       R7 R1 K19 ["rawInput"]
       88 JUMPIFNOTEQKNIL                  R7 ; [+2]
       90 LOADB                            R6 0 +1
       91 LOADB                            R6 1
       92 DUPTABLE                         R7 K27 [{["type"] = "tool_use", ["id"], ["name"], ["input"], ["thoughtSignature"] = }]
       93 GETTABLEKS                       R8 R1 K13 ["toolCallId"]
       95 SETTABLEKS                       R8 R7 K22 ["id"]
       97 SETTABLEKS                       R3 R7 K23 ["name"]
       99 GETUPVAL                         R9 0
      100 GETTABLEKS                       R9 R9 K28 ["FFlagAssistantDisableSafeEmptyTableJsonEncode"]
      102 JUMPIFNOT                        R9 ; [+6]
      103 GETTABLEKS                       R8 R1 K19 ["rawInput"]
      105 JUMPIF                           R8 ; [+11]
      106 NEWTABLE                         R8 0 0
      108 JUMP                             ; [+8]
      109 GETUPVAL                         R8 4
      110 GETTABLEKS                       R8 R8 K29 ["Engine"]
      112 GETTABLEKS                       R8 R8 K30 ["normalizeToolInput"]
      114 GETTABLEKS                       R9 R1 K19 ["rawInput"]
      116 CALL                             R8 1 1
      117 SETTABLEKS                       R8 R7 K24 ["input"]
      119 LOADNIL                          R8
      120 GETTABLEKS                       R9 R0 K31 ["_isHistoryReplay"]
      122 JUMPIFNOT                        R9 ; [+18]
      123 GETUPVAL                         R10 0
      124 GETTABLEKS                       R10 R10 K32 ["FFlagAssistantAskInputTool"]
      126 NOT                              R9 R10
      127 JUMPIFNOT                        R9 ; [+13]
      128 LOADB                            R9 1
      129 GETUPVAL                         R10 5
      130 GETTABLEKS                       R10 R10 K33 ["PrimitiveGen"]
      132 JUMPIFEQ                         R3 R10 ; [+8]
      134 GETUPVAL                         R10 5
      135 GETTABLEKS                       R10 R10 K34 ["MeshGen"]
      137 JUMPIFEQ                         R3 R10 ; [+2]
      139 LOADB                            R9 0 +1
      140 LOADB                            R9 1
      141 JUMPIF                           R9 ; [+5]
      142 GETUPVAL                         R10 3
      143 GETTABLEKS                       R10 R10 K7 ["Type"]
      145 JUMPIFNOTEQ                      R4 R10 ; [+9]
      147 DUPTABLE                         R10 K39 [{["type"], ["expanded"] = False, ["generating"] = True}]
      148 GETUPVAL                         R11 3
      149 GETTABLEKS                       R11 R11 K7 ["Type"]
      151 SETTABLEKS                       R11 R10 K20 ["type"]
      153 MOVE                             R8 R10
      154 JUMP                             ; [+4]
      155 DUPTABLE                         R10 K39 [{["type"], ["expanded"] = False, ["generating"] = True}]
      156 SETTABLEKS                       R4 R10 K20 ["type"]
      158 MOVE                             R8 R10
      159 JUMPIFNOT                        R6 ; [+3]
      160 SETTABLEKS                       R7 R8 K40 ["toolUse"]
      162 JUMP                             ; [+7]
      163 GETTABLEKS                       R10 R0 K31 ["_isHistoryReplay"]
      165 JUMPIF                           R10 ; [+4]
      166 NEWTABLE                         R10 0 0
      168 SETTABLEKS                       R10 R8 K41 ["streaming"]
      170 LOADB                            R10 1
      171 SETTABLEKS                       R10 R8 K37 ["generating"]
      173 FASTCALL1                        TYPEOF R4 ; [+3]
      174 MOVE                             R12 R4
      175 GETIMPORT                        R11 K43 [typeof]
      177 CALL                             R11 1 1
      178 JUMPIFNOTEQKS                    R11 K44 ["string"] ; [+7]
      180 GETUPVAL                         R10 6
      181 GETTABLEKS                       R10 R10 K45 ["getAutoExpand"]
      183 MOVE                             R11 R4
      184 CALL                             R10 1 1
      185 JUMP                             ; [+1]
      186 LOADNIL                          R10
      187 JUMPIFNOT                        R10 ; [+9]
      188 GETTABLEKS                       R12 R10 K46 ["expandWhileGenerating"]
      190 JUMPIFNOT                        R12 ; [+2]
      191 LOADB                            R11 1
      192 JUMP                             ; [+1]
      193 LOADB                            R11 0
      194 SETTABLEKS                       R11 R8 K35 ["expanded"]
      196 JUMP                             ; [+7]
      197 GETTABLEKS                       R11 R8 K35 ["expanded"]
      199 JUMPIFNOTEQKNIL                  R11 ; [+4]
      201 LOADB                            R11 0
      202 SETTABLEKS                       R11 R8 K35 ["expanded"]
      204 NAMECALL                         R11 R0 K47 ["getOrCreateAssistantMessage"]
      206 CALL                             R11 1 1
      207 GETTABLEKS                       R12 R0 K48 ["_callbacks"]
      209 GETTABLEKS                       R12 R12 K49 ["addContent"]
      211 DUPTABLE                         R13 K52 [{"messageId", "content"}]
      212 SETTABLEKS                       R11 R13 K50 ["messageId"]
      214 SETTABLEKS                       R8 R13 K51 ["content"]
      216 CALL                             R12 1 1
      217 GETUPVAL                         R13 0
      218 GETTABLEKS                       R13 R13 K9 ["FFlagDebugLogAssistantUI"]
      220 JUMPIFNOT                        R13 ; [+31]
      221 GETIMPORT                        R13 K11 [print]
      223 LOADK                            R17 K53 ["[Tool Call] UI update (create): toolCallId=%* messageId=%* "]
      224 GETTABLEKS                       R20 R1 K13 ["toolCallId"]
      226 FASTCALL1                        TOSTRING R20 ; [+2]
      227 GETIMPORT                        R19 K15 [tostring]
      229 CALL                             R19 1 1
      230 MOVE                             R20 R11
      231 NAMECALL                         R17 R17 K16 ["format"]
      233 CALL                             R17 3 1
      234 MOVE                             R15 R17
      235 LOADK                            R17 K54 ["contentId=%* widgetType=%* status=%*"]
      236 MOVE                             R19 R12
      237 GETTABLEKS                       R21 R8 K20 ["type"]
      239 OR                               R20 R21 R4
      240 GETTABLEKS                       R22 R1 K55 ["status"]
      242 FASTCALL1                        TOSTRING R22 ; [+2]
      243 GETIMPORT                        R21 K15 [tostring]
      245 CALL                             R21 1 1
      246 NAMECALL                         R17 R17 K16 ["format"]
      248 CALL                             R17 4 1
      249 MOVE                             R16 R17
      250 CONCAT                           R14 R15 R16
      251 CALL                             R13 1 0
      252 GETTABLEKS                       R13 R1 K13 ["toolCallId"]
      254 JUMPIFNOT                        R13 ; [+30]
      255 GETTABLEKS                       R13 R0 K56 ["_contentIdByToolCallId"]
      257 GETTABLEKS                       R14 R1 K13 ["toolCallId"]
      259 SETTABLE                         R12 R13 R14
      260 GETTABLEKS                       R13 R0 K57 ["_toolNameByToolCallId"]
      262 GETTABLEKS                       R14 R1 K13 ["toolCallId"]
      264 SETTABLE                         R3 R13 R14
      265 GETTABLEKS                       R13 R0 K58 ["_openToolCallIds"]
      267 GETTABLEKS                       R14 R1 K13 ["toolCallId"]
      269 LOADB                            R15 1
      270 SETTABLE                         R15 R13 R14
      271 GETTABLEKS                       R13 R0 K48 ["_callbacks"]
      273 GETTABLEKS                       R13 R13 K59 ["onToolWidgetCreated"]
      275 JUMPIFNOT                        R13 ; [+9]
      276 GETTABLEKS                       R13 R0 K48 ["_callbacks"]
      278 GETTABLEKS                       R13 R13 K59 ["onToolWidgetCreated"]
      280 GETTABLEKS                       R14 R1 K13 ["toolCallId"]
      282 MOVE                             R15 R11
      283 MOVE                             R16 R12
      284 CALL                             R13 3 0
      285 RETURN                           R0 0

PROTO_20:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 GETTABLEKS                       R2 R0 K3 ["streaming"]
        4 JUMPIF                           R2 ; [+2]
        5 NEWTABLE                         R2 0 0
        7 CALL                             R1 1 1
        8 GETUPVAL                         R2 0
        9 SETTABLEKS                       R2 R1 K4 ["toolUse"]
       11 SETTABLEKS                       R1 R0 K3 ["streaming"]
       13 DUPTABLE                         R2 K7 [{["rawTransformValues"] = True}]
       14 RETURN                           R2 1

PROTO_21:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+34]
        2 DUPTABLE                         R1 K7 [{[1] = "tool_use", ["id"], ["name"], ["input"], ["thoughtSignature"] = }]
        3 GETUPVAL                         R2 1
        4 SETTABLEKS                       R2 R1 K2 ["id"]
        6 GETUPVAL                         R2 2
        7 SETTABLEKS                       R2 R1 K3 ["name"]
        9 GETUPVAL                         R3 3
       10 GETTABLEKS                       R3 R3 K8 ["FFlagAssistantDisableSafeEmptyTableJsonEncode"]
       12 JUMPIFNOT                        R3 ; [+7]
       13 GETUPVAL                         R2 4
       14 GETTABLEKS                       R2 R2 K9 ["rawInput"]
       16 JUMPIF                           R2 ; [+12]
       17 NEWTABLE                         R2 0 0
       19 JUMP                             ; [+9]
       20 GETUPVAL                         R2 5
       21 GETTABLEKS                       R2 R2 K10 ["Engine"]
       23 GETTABLEKS                       R2 R2 K11 ["normalizeToolInput"]
       25 GETUPVAL                         R3 4
       26 GETTABLEKS                       R3 R3 K9 ["rawInput"]
       28 CALL                             R2 1 1
       29 SETTABLEKS                       R2 R1 K4 ["input"]
       31 SETTABLEKS                       R1 R0 K12 ["toolUse"]
       33 LOADNIL                          R2
       34 SETTABLEKS                       R2 R0 K13 ["streaming"]
       36 GETUPVAL                         R1 6
       37 JUMPIFNOT                        R1 ; [+31]
       38 DUPTABLE                         R1 K21 [{[1] = "tool_result", ["id"], ["name"], ["content"], ["isError"], ["structuredContent"], ["startTime"] = 0, ["startTimeAfterConfirmation"] = 0}]
       39 GETUPVAL                         R2 1
       40 SETTABLEKS                       R2 R1 K2 ["id"]
       42 GETUPVAL                         R2 2
       43 SETTABLEKS                       R2 R1 K3 ["name"]
       45 GETUPVAL                         R2 7
       46 GETUPVAL                         R3 4
       47 GETTABLEKS                       R3 R3 K15 ["content"]
       49 CALL                             R2 1 1
       50 JUMPIF                           R2 ; [+2]
       51 NEWTABLE                         R2 0 0
       53 SETTABLEKS                       R2 R1 K15 ["content"]
       55 GETUPVAL                         R3 8
       56 JUMPIFEQKS                       R3 K22 ["failed"] ; [+2]
       58 LOADB                            R2 0 +1
       59 LOADB                            R2 1
       60 SETTABLEKS                       R2 R1 K16 ["isError"]
       62 GETUPVAL                         R2 4
       63 GETTABLEKS                       R2 R2 K23 ["rawOutput"]
       65 SETTABLEKS                       R2 R1 K17 ["structuredContent"]
       67 SETTABLEKS                       R1 R0 K24 ["toolResult"]
       69 GETUPVAL                         R1 9
       70 JUMPIFNOT                        R1 ; [+34]
       71 LOADB                            R1 0
       72 SETTABLEKS                       R1 R0 K25 ["generating"]
       74 GETUPVAL                         R2 2
       75 GETUPVAL                         R3 10
       76 GETTABLEKS                       R3 R3 K26 ["get"]
       78 MOVE                             R4 R2
       79 CALL                             R3 1 1
       80 JUMPIFNOT                        R3 ; [+2]
       81 MOVE                             R1 R3
       82 JUMP                             ; [+3]
       83 GETUPVAL                         R1 11
       84 GETTABLEKS                       R1 R1 K27 ["Type"]
       86 GETUPVAL                         R3 10
       87 GETTABLEKS                       R3 R3 K28 ["None"]
       89 JUMPIFEQ                         R1 R3 ; [+7]
       91 GETUPVAL                         R2 12
       92 GETTABLEKS                       R2 R2 K29 ["getAutoExpand"]
       94 MOVE                             R3 R1
       95 CALL                             R2 1 1
       96 JUMP                             ; [+1]
       97 LOADNIL                          R2
       98 JUMPIFNOT                        R2 ; [+6]
       99 GETTABLEKS                       R3 R2 K30 ["collapseOnComplete"]
      101 JUMPIFNOT                        R3 ; [+3]
      102 LOADB                            R3 0
      103 SETTABLEKS                       R3 R0 K31 ["expanded"]
      105 LOADNIL                          R1
      106 RETURN                           R1 1

PROTO_22:
        0 GETTABLEKS                       R2 R1 K0 ["toolCallId"]
        2 JUMPIFNOT                        R2 ; [+4]
        3 GETTABLEKS                       R4 R0 K1 ["_contentIdByToolCallId"]
        5 GETTABLE                         R3 R4 R2
        6 JUMP                             ; [+1]
        7 LOADNIL                          R3
        8 GETTABLEKS                       R4 R0 K2 ["_activeAssistantMessageId"]
       10 LOADB                            R5 0
       11 JUMPIFNOT                        R2 ; [+24]
       12 JUMPIF                           R3 ; [+23]
       13 GETUPVAL                         R6 0
       14 GETTABLEKS                       R6 R6 K3 ["FFlagDebugLogAssistantUI"]
       16 JUMPIFNOT                        R6 ; [+9]
       17 GETIMPORT                        R6 K5 [print]
       19 LOADK                            R8 K6 ["[Tool Call] UI update upsert: first payload is tool_call_update toolCallId=%*"]
       20 MOVE                             R10 R2
       21 NAMECALL                         R8 R8 K7 ["format"]
       23 CALL                             R8 2 1
       24 MOVE                             R7 R8
       25 CALL                             R6 1 0
       26 LOADB                            R5 1
       27 MOVE                             R8 R1
       28 NAMECALL                         R6 R0 K8 ["_handleToolCall"]
       30 CALL                             R6 2 0
       31 GETTABLEKS                       R6 R0 K1 ["_contentIdByToolCallId"]
       33 GETTABLE                         R3 R6 R2
       34 GETTABLEKS                       R4 R0 K2 ["_activeAssistantMessageId"]
       36 JUMPIFNOT                        R3 ; [+2]
       37 JUMPIFNOT                        R4 ; [+1]
       38 JUMPIF                           R2 ; [+40]
       39 GETUPVAL                         R6 0
       40 GETTABLEKS                       R6 R6 K3 ["FFlagDebugLogAssistantUI"]
       42 JUMPIFNOT                        R6 ; [+35]
       43 GETIMPORT                        R6 K5 [print]
       45 LOADK                            R10 K9 ["[Tool Call] UI update skipped: toolCallId=%* contentId=%* "]
       46 FASTCALL1                        TOSTRING R2 ; [+3]
       47 MOVE                             R13 R2
       48 GETIMPORT                        R12 K11 [tostring]
       50 CALL                             R12 1 1
       51 FASTCALL1                        TOSTRING R3 ; [+3]
       52 MOVE                             R14 R3
       53 GETIMPORT                        R13 K11 [tostring]
       55 CALL                             R13 1 1
       56 NAMECALL                         R10 R10 K7 ["format"]
       58 CALL                             R10 3 1
       59 MOVE                             R8 R10
       60 LOADK                            R10 K12 ["messageId=%* status=%*"]
       61 FASTCALL1                        TOSTRING R4 ; [+3]
       62 MOVE                             R13 R4
       63 GETIMPORT                        R12 K11 [tostring]
       65 CALL                             R12 1 1
       66 GETTABLEKS                       R14 R1 K13 ["status"]
       68 FASTCALL1                        TOSTRING R14 ; [+2]
       69 GETIMPORT                        R13 K11 [tostring]
       71 CALL                             R13 1 1
       72 NAMECALL                         R10 R10 K7 ["format"]
       74 CALL                             R10 3 1
       75 MOVE                             R9 R10
       76 CONCAT                           R7 R8 R9
       77 CALL                             R6 1 0
       78 RETURN                           R0 0
       79 GETTABLEKS                       R6 R1 K13 ["status"]
       81 LOADB                            R7 1
       82 JUMPIFEQKS                       R6 K14 ["completed"] ; [+8]
       84 LOADB                            R7 1
       85 JUMPIFEQKS                       R6 K15 ["failed"] ; [+5]
       87 JUMPIFEQKS                       R6 K16 ["cancelled"] ; [+2]
       89 LOADB                            R7 0 +1
       90 LOADB                            R7 1
       91 LOADB                            R8 1
       92 GETTABLEKS                       R9 R1 K17 ["content"]
       94 JUMPIFNOTEQKNIL                  R9 ; [+7]
       96 LOADB                            R8 1
       97 GETTABLEKS                       R9 R1 K18 ["rawOutput"]
       99 JUMPIFNOTEQKNIL                  R9 ; [+2]
      101 MOVE                             R8 R7
      102 GETTABLEKS                       R10 R1 K19 ["rawInput"]
      104 JUMPIFNOTEQKNIL                  R10 ; [+2]
      106 LOADB                            R9 0 +1
      107 LOADB                            R9 1
      108 GETTABLEKS                       R11 R0 K20 ["_toolNameByToolCallId"]
      110 GETTABLE                         R10 R11 R2
      111 JUMPIFNOT                        R10 ; [+2]
      112 MOVE                             R11 R10
      113 JUMP                             ; [+20]
      114 GETTABLEKS                       R13 R1 K22 ["title"]
      116 ORK                              R12 R13 K21 ["unknown_tool"]
      117 GETUPVAL                         R13 0
      118 GETTABLEKS                       R13 R13 K23 ["FFlagAssistantUseRemoteService"]
      120 JUMPIFNOT                        R13 ; [+7]
      121 GETUPVAL                         R13 1
      122 GETTABLEKS                       R13 R13 K24 ["toUIToolName"]
      124 MOVE                             R14 R12
      125 CALL                             R13 1 1
      126 MOVE                             R11 R13
      127 JUMP                             ; [+6]
      128 GETUPVAL                         R13 1
      129 GETTABLEKS                       R13 R13 K25 ["stripPrefix"]
      131 MOVE                             R14 R12
      132 CALL                             R13 1 1
      133 MOVE                             R11 R13
      134 GETUPVAL                         R12 0
      135 GETTABLEKS                       R12 R12 K3 ["FFlagDebugLogAssistantUI"]
      137 JUMPIFNOT                        R12 ; [+32]
      138 GETIMPORT                        R12 K5 [print]
      140 LOADK                            R17 K26 ["[Tool Call] UI update: toolCallId=%* actualToolName=%* status=%* "]
      141 MOVE                             R19 R2
      142 MOVE                             R20 R11
      143 FASTCALL1                        TOSTRING R6 ; [+3]
      144 MOVE                             R22 R6
      145 GETIMPORT                        R21 K11 [tostring]
      147 CALL                             R21 1 1
      148 NAMECALL                         R17 R17 K7 ["format"]
      150 CALL                             R17 4 1
      151 MOVE                             R14 R17
      152 LOADK                            R17 K27 ["hasRawInput=%* hasResult=%* isTerminal=%* "]
      153 MOVE                             R19 R9
      154 MOVE                             R20 R8
      155 MOVE                             R21 R7
      156 NAMECALL                         R17 R17 K7 ["format"]
      158 CALL                             R17 4 1
      159 MOVE                             R15 R17
      160 LOADK                            R17 K28 ["wasUpsert=%* messageId=%* contentId=%*"]
      161 MOVE                             R19 R5
      162 MOVE                             R20 R4
      163 MOVE                             R21 R3
      164 NAMECALL                         R17 R17 K7 ["format"]
      166 CALL                             R17 4 1
      167 MOVE                             R16 R17
      168 CONCAT                           R13 R14 R16
      169 CALL                             R12 1 0
      170 GETTABLEKS                       R12 R1 K29 ["_meta"]
      172 JUMPIFNOT                        R12 ; [+4]
      173 GETTABLEKS                       R12 R1 K29 ["_meta"]
      175 GETTABLEKS                       R12 R12 K30 ["_roblox"]
      177 FASTCALL1                        TYPEOF R12 ; [+3]
      178 MOVE                             R15 R12
      179 GETIMPORT                        R14 K32 [typeof]
      181 CALL                             R14 1 1
      182 JUMPIFNOTEQKS                    R14 K33 ["table"] ; [+4]
      184 GETTABLEKS                       R13 R12 K34 ["rawInputDelta"]
      186 JUMP                             ; [+1]
      187 LOADNIL                          R13
      188 JUMPIFEQKNIL                     R13 ; [+39]
      190 JUMPIF                           R9 ; [+37]
      191 GETUPVAL                         R15 2
      192 GETTABLEKS                       R15 R15 K35 ["get"]
      194 MOVE                             R16 R11
      195 CALL                             R15 1 1
      196 JUMPIFNOT                        R15 ; [+2]
      197 MOVE                             R14 R15
      198 JUMP                             ; [+3]
      199 GETUPVAL                         R14 3
      200 GETTABLEKS                       R14 R14 K36 ["Type"]
      202 GETUPVAL                         R15 2
      203 GETTABLEKS                       R15 R15 K37 ["None"]
      205 JUMPIFEQ                         R14 R15 ; [+21]
      207 GETUPVAL                         R15 4
      208 GETTABLEKS                       R15 R15 K38 ["needsStreamingToolUse"]
      210 MOVE                             R16 R14
      211 CALL                             R15 1 1
      212 JUMPIFNOT                        R15 ; [+14]
      213 GETTABLEKS                       R15 R0 K39 ["_callbacks"]
      215 GETTABLEKS                       R15 R15 K40 ["editContent"]
      217 DUPTABLE                         R16 K44 [{"messageId", "contentId", "transformFn"}]
      218 SETTABLEKS                       R4 R16 K41 ["messageId"]
      220 SETTABLEKS                       R3 R16 K42 ["contentId"]
      222 NEWCLOSURE                       R17 P0
      223 CAPTURE                          VAL R13
      224 SETTABLEKS                       R17 R16 K43 ["transformFn"]
      226 CALL                             R15 1 0
      227 RETURN                           R0 0
      228 GETTABLEKS                       R14 R0 K39 ["_callbacks"]
      230 GETTABLEKS                       R14 R14 K40 ["editContent"]
      232 DUPTABLE                         R15 K44 [{"messageId", "contentId", "transformFn"}]
      233 SETTABLEKS                       R4 R15 K41 ["messageId"]
      235 SETTABLEKS                       R3 R15 K42 ["contentId"]
      237 NEWCLOSURE                       R16 P1
      238 CAPTURE                          VAL R9
      239 CAPTURE                          VAL R2
      240 CAPTURE                          VAL R11
      241 CAPTURE                          UPVAL U0
      242 CAPTURE                          VAL R1
      243 CAPTURE                          UPVAL U5
      244 CAPTURE                          VAL R8
      245 CAPTURE                          UPVAL U6
      246 CAPTURE                          VAL R6
      247 CAPTURE                          VAL R7
      248 CAPTURE                          UPVAL U2
      249 CAPTURE                          UPVAL U3
      250 CAPTURE                          UPVAL U4
      251 SETTABLEKS                       R16 R15 K43 ["transformFn"]
      253 CALL                             R14 1 0
      254 JUMPIFNOT                        R7 ; [+4]
      255 GETTABLEKS                       R14 R0 K45 ["_openToolCallIds"]
      257 LOADNIL                          R15
      258 SETTABLE                         R15 R14 R2
      259 RETURN                           R0 0

PROTO_23:
        0 GETTABLEKS                       R1 R0 K0 ["_openToolCallIds"]
        2 GETIMPORT                        R2 K2 [next]
        4 MOVE                             R3 R1
        5 CALL                             R2 1 1
        6 JUMPIFNOTEQKNIL                  R2 ; [+2]
        8 RETURN                           R0 0
        9 NEWTABLE                         R2 0 0
       11 MOVE                             R3 R1
       12 LOADNIL                          R4
       13 LOADNIL                          R5
       14 FORGPREP                         R3
       15 FASTCALL2                        TABLE_INSERT R2 R6 ; [+5]
       17 MOVE                             R9 R2
       18 MOVE                             R10 R6
       19 GETIMPORT                        R8 K5 [table.insert]
       21 CALL                             R8 2 0
       22 FORGLOOP                         R3 1 ; [-8]
       24 MOVE                             R3 R2
       25 LOADNIL                          R4
       26 LOADNIL                          R5
       27 FORGPREP                         R3
       28 GETUPVAL                         R8 0
       29 GETTABLEKS                       R8 R8 K6 ["FFlagDebugLogAssistantUI"]
       31 JUMPIFNOT                        R8 ; [+9]
       32 GETIMPORT                        R8 K8 [print]
       34 LOADK                            R10 K9 ["[Tool Call] UI cancel on idle: toolCallId=%*"]
       35 MOVE                             R12 R7
       36 NAMECALL                         R10 R10 K10 ["format"]
       38 CALL                             R10 2 1
       39 MOVE                             R9 R10
       40 CALL                             R8 1 0
       41 DUPTABLE                         R10 K15 [{["sessionUpdate"], ["toolCallId"], ["status"] = "cancelled"}]
       42 GETUPVAL                         R11 1
       43 GETTABLEKS                       R11 R11 K16 ["ToolCallUpdate"]
       45 SETTABLEKS                       R11 R10 K11 ["sessionUpdate"]
       47 SETTABLEKS                       R7 R10 K12 ["toolCallId"]
       49 NAMECALL                         R8 R0 K17 ["_handleToolCallUpdate"]
       51 CALL                             R8 2 0
       52 FORGLOOP                         R3 2 ; [-25]
       54 RETURN                           R0 0

PROTO_24:
        0 GETTABLEKS                       R2 R0 K0 ["_callbacks"]
        2 GETTABLEKS                       R2 R2 K1 ["onPlan"]
        4 JUMPIFNOT                        R2 ; [+7]
        5 GETTABLEKS                       R2 R0 K0 ["_callbacks"]
        7 GETTABLEKS                       R2 R2 K1 ["onPlan"]
        9 GETTABLEKS                       R3 R1 K2 ["entries"]
       11 CALL                             R2 1 0
       12 RETURN                           R0 0

PROTO_25:
        0 GETTABLEKS                       R2 R0 K0 ["_callbacks"]
        2 GETTABLEKS                       R2 R2 K1 ["onAvailableCommands"]
        4 JUMPIFNOT                        R2 ; [+7]
        5 GETTABLEKS                       R2 R0 K0 ["_callbacks"]
        7 GETTABLEKS                       R2 R2 K1 ["onAvailableCommands"]
        9 GETTABLEKS                       R3 R1 K2 ["availableCommands"]
       11 CALL                             R2 1 0
       12 RETURN                           R0 0

PROTO_26:
        0 GETTABLEKS                       R2 R0 K0 ["_callbacks"]
        2 GETTABLEKS                       R2 R2 K1 ["onSessionInfo"]
        4 JUMPIFNOT                        R2 ; [+10]
        5 GETTABLEKS                       R2 R0 K0 ["_callbacks"]
        7 GETTABLEKS                       R2 R2 K1 ["onSessionInfo"]
        9 DUPTABLE                         R3 K3 [{"title"}]
       10 GETTABLEKS                       R4 R1 K2 ["title"]
       12 SETTABLEKS                       R4 R3 K2 ["title"]
       14 CALL                             R2 1 0
       15 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["Compaction"]
        2 LOADK                            R4 K1 ["Complete"]
        3 NAMECALL                         R1 R1 K2 ["getText"]
        5 CALL                             R1 3 1
        6 SETTABLEKS                       R1 R0 K3 ["summary"]
        8 LOADNIL                          R1
        9 RETURN                           R1 1

PROTO_28:
        0 NAMECALL                         R2 R0 K0 ["getOrCreateAssistantMessage"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R3 R1 K1 ["status"]
        5 JUMPIFNOTEQKS                    R3 K2 ["in_progress"] ; [+28]
        7 GETTABLEKS                       R3 R0 K3 ["_callbacks"]
        9 GETTABLEKS                       R3 R3 K4 ["addContent"]
       11 DUPTABLE                         R4 K7 [{"messageId", "content"}]
       12 SETTABLEKS                       R2 R4 K5 ["messageId"]
       14 DUPTABLE                         R5 K10 [{"type", "summary"}]
       15 GETUPVAL                         R6 0
       16 GETTABLEKS                       R6 R6 K11 ["Type"]
       18 SETTABLEKS                       R6 R5 K8 ["type"]
       20 GETUPVAL                         R6 1
       21 LOADK                            R8 K12 ["Compaction"]
       22 LOADK                            R9 K13 ["InProgress"]
       23 NAMECALL                         R6 R6 K14 ["getText"]
       25 CALL                             R6 3 1
       26 SETTABLEKS                       R6 R5 K9 ["summary"]
       28 SETTABLEKS                       R5 R4 K6 ["content"]
       30 CALL                             R3 1 1
       31 SETTABLEKS                       R3 R0 K15 ["_compactionContentId"]
       33 RETURN                           R0 0
       34 GETTABLEKS                       R3 R1 K1 ["status"]
       36 JUMPIFNOTEQKS                    R3 K16 ["complete"] ; [+23]
       38 GETTABLEKS                       R3 R0 K15 ["_compactionContentId"]
       40 JUMPIFNOT                        R3 ; [+19]
       41 GETTABLEKS                       R3 R0 K3 ["_callbacks"]
       43 GETTABLEKS                       R3 R3 K17 ["editContent"]
       45 DUPTABLE                         R4 K20 [{"messageId", "contentId", "transformFn"}]
       46 SETTABLEKS                       R2 R4 K5 ["messageId"]
       48 GETTABLEKS                       R5 R0 K15 ["_compactionContentId"]
       50 SETTABLEKS                       R5 R4 K18 ["contentId"]
       52 DUPCLOSURE                       R5 K21 [PROTO_27]
       53 CAPTURE                          UPVAL U1
       54 SETTABLEKS                       R5 R4 K19 ["transformFn"]
       56 CALL                             R3 1 0
       57 LOADNIL                          R3
       58 SETTABLEKS                       R3 R0 K15 ["_compactionContentId"]
       60 RETURN                           R0 0

PROTO_29:
        0 GETTABLEKS                       R2 R1 K0 ["sessionUpdate"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["AgentMessageChunk"]
        5 JUMPIFNOTEQ                      R2 R3 ; [+14]
        7 GETTABLEKS                       R5 R1 K2 ["content"]
        9 JUMPIFNOT                        R5 ; [+5]
       10 GETTABLEKS                       R4 R1 K2 ["content"]
       12 GETTABLEKS                       R4 R4 K3 ["text"]
       14 JUMPIF                           R4 ; [+1]
       15 LOADK                            R4 K4 [""]
       16 NAMECALL                         R2 R0 K5 ["_handleMessageChunk"]
       18 CALL                             R2 2 0
       19 RETURN                           R0 0
       20 GETTABLEKS                       R2 R1 K0 ["sessionUpdate"]
       22 GETUPVAL                         R3 0
       23 GETTABLEKS                       R3 R3 K6 ["UserMessage"]
       25 JUMPIFNOTEQ                      R2 R3 ; [+6]
       27 MOVE                             R4 R1
       28 NAMECALL                         R2 R0 K7 ["_handleUserMessage"]
       30 CALL                             R2 2 0
       31 RETURN                           R0 0
       32 GETTABLEKS                       R2 R1 K0 ["sessionUpdate"]
       34 GETUPVAL                         R3 0
       35 GETTABLEKS                       R3 R3 K8 ["UserMessageChunk"]
       37 JUMPIFNOTEQ                      R2 R3 ; [+14]
       39 GETTABLEKS                       R5 R1 K2 ["content"]
       41 JUMPIFNOT                        R5 ; [+5]
       42 GETTABLEKS                       R4 R1 K2 ["content"]
       44 GETTABLEKS                       R4 R4 K3 ["text"]
       46 JUMPIF                           R4 ; [+1]
       47 LOADK                            R4 K4 [""]
       48 NAMECALL                         R2 R0 K9 ["_handleUserMessageChunk"]
       50 CALL                             R2 2 0
       51 RETURN                           R0 0
       52 GETTABLEKS                       R2 R1 K0 ["sessionUpdate"]
       54 GETUPVAL                         R3 0
       55 GETTABLEKS                       R3 R3 K10 ["AgentThoughtChunk"]
       57 JUMPIFNOTEQ                      R2 R3 ; [+14]
       59 GETTABLEKS                       R5 R1 K2 ["content"]
       61 JUMPIFNOT                        R5 ; [+5]
       62 GETTABLEKS                       R4 R1 K2 ["content"]
       64 GETTABLEKS                       R4 R4 K3 ["text"]
       66 JUMPIF                           R4 ; [+1]
       67 LOADK                            R4 K4 [""]
       68 NAMECALL                         R2 R0 K11 ["_handleThoughtChunk"]
       70 CALL                             R2 2 0
       71 RETURN                           R0 0
       72 GETTABLEKS                       R2 R1 K0 ["sessionUpdate"]
       74 GETUPVAL                         R3 0
       75 GETTABLEKS                       R3 R3 K12 ["ToolCall"]
       77 JUMPIFNOTEQ                      R2 R3 ; [+6]
       79 MOVE                             R4 R1
       80 NAMECALL                         R2 R0 K13 ["_handleToolCall"]
       82 CALL                             R2 2 0
       83 RETURN                           R0 0
       84 GETTABLEKS                       R2 R1 K0 ["sessionUpdate"]
       86 GETUPVAL                         R3 0
       87 GETTABLEKS                       R3 R3 K14 ["ToolCallUpdate"]
       89 JUMPIFNOTEQ                      R2 R3 ; [+6]
       91 MOVE                             R4 R1
       92 NAMECALL                         R2 R0 K15 ["_handleToolCallUpdate"]
       94 CALL                             R2 2 0
       95 RETURN                           R0 0
       96 GETTABLEKS                       R2 R1 K0 ["sessionUpdate"]
       98 GETUPVAL                         R3 0
       99 GETTABLEKS                       R3 R3 K16 ["Plan"]
      101 JUMPIFNOTEQ                      R2 R3 ; [+6]
      103 MOVE                             R4 R1
      104 NAMECALL                         R2 R0 K17 ["_handlePlan"]
      106 CALL                             R2 2 0
      107 RETURN                           R0 0
      108 GETTABLEKS                       R2 R1 K0 ["sessionUpdate"]
      110 GETUPVAL                         R3 0
      111 GETTABLEKS                       R3 R3 K18 ["AvailableCommandsUpdate"]
      113 JUMPIFNOTEQ                      R2 R3 ; [+6]
      115 MOVE                             R4 R1
      116 NAMECALL                         R2 R0 K19 ["_handleAvailableCommands"]
      118 CALL                             R2 2 0
      119 RETURN                           R0 0
      120 GETTABLEKS                       R2 R1 K0 ["sessionUpdate"]
      122 GETUPVAL                         R3 0
      123 GETTABLEKS                       R3 R3 K20 ["SessionInfoUpdate"]
      125 JUMPIFNOTEQ                      R2 R3 ; [+6]
      127 MOVE                             R4 R1
      128 NAMECALL                         R2 R0 K21 ["_handleSessionInfo"]
      130 CALL                             R2 2 0
      131 RETURN                           R0 0
      132 GETTABLEKS                       R2 R1 K0 ["sessionUpdate"]
      134 GETUPVAL                         R3 0
      135 GETTABLEKS                       R3 R3 K22 ["CompactionStatus"]
      137 JUMPIFNOTEQ                      R2 R3 ; [+6]
      139 MOVE                             R4 R1
      140 NAMECALL                         R2 R0 K23 ["_handleCompactionStatus"]
      142 CALL                             R2 2 0
      143 RETURN                           R0 0
      144 GETTABLEKS                       R2 R1 K0 ["sessionUpdate"]
      146 GETUPVAL                         R3 0
      147 GETTABLEKS                       R3 R3 K24 ["StateUpdate"]
      149 JUMPIFNOTEQ                      R2 R3 ; [+15]
      151 GETTABLEKS                       R2 R1 K25 ["state"]
      153 JUMPIFNOTEQKS                    R2 K26 ["idle"] ; [+11]
      155 GETUPVAL                         R2 1
      156 GETTABLEKS                       R2 R2 K27 ["FFlagAssistantACPFixPendingToolCall"]
      158 JUMPIFNOT                        R2 ; [+3]
      159 NAMECALL                         R2 R0 K28 ["_cancelOpenToolCalls"]
      161 CALL                             R2 1 0
      162 NAMECALL                         R2 R0 K29 ["_resetActiveStream"]
      164 CALL                             R2 1 0
      165 RETURN                           R0 0

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
       16 GETTABLEKS                       R3 R0 K8 ["Util"]
       18 GETTABLEKS                       R3 R3 K9 ["ContentWidgets"]
       20 GETTABLEKS                       R3 R3 K10 ["ContentWidgetRegistry"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K11 ["Flags"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K12 ["Components"]
       32 GETTABLEKS                       R5 R5 K9 ["ContentWidgets"]
       34 GETTABLEKS                       R5 R5 K13 ["GenericToolContentWidget"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K12 ["Components"]
       41 GETTABLEKS                       R6 R6 K9 ["ContentWidgets"]
       43 GETTABLEKS                       R6 R6 K14 ["ImageContentWidget"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K6 ["Parent"]
       50 GETTABLEKS                       R7 R7 K15 ["Signal"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K12 ["Components"]
       57 GETTABLEKS                       R8 R8 K9 ["ContentWidgets"]
       59 GETTABLEKS                       R8 R8 K16 ["SummarizedContentWidget"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K5 [require]
       64 GETTABLEKS                       R9 R0 K12 ["Components"]
       66 GETTABLEKS                       R9 R9 K9 ["ContentWidgets"]
       68 GETTABLEKS                       R9 R9 K17 ["TextContentWidget"]
       70 CALL                             R8 1 1
       71 GETIMPORT                        R9 K5 [require]
       73 GETTABLEKS                       R10 R0 K12 ["Components"]
       75 GETTABLEKS                       R10 R10 K9 ["ContentWidgets"]
       77 GETTABLEKS                       R10 R10 K18 ["ThinkingContentWidget"]
       79 CALL                             R9 1 1
       80 GETTABLEKS                       R10 R1 K19 ["Engine"]
       82 GETTABLEKS                       R10 R10 K20 ["Providers"]
       84 GETTABLEKS                       R10 R10 K21 ["ToolNames"]
       86 GETIMPORT                        R11 K5 [require]
       88 GETTABLEKS                       R12 R0 K8 ["Util"]
       90 GETTABLEKS                       R12 R12 K9 ["ContentWidgets"]
       92 GETTABLEKS                       R12 R12 K22 ["ToolWidgetMappingRegistry"]
       94 CALL                             R11 1 1
       95 GETIMPORT                        R12 K5 [require]
       97 GETTABLEKS                       R13 R0 K23 ["Resources"]
       99 GETTABLEKS                       R13 R13 K24 ["Localization"]
      101 GETTABLEKS                       R13 R13 K25 ["Translator"]
      103 CALL                             R12 1 1
      104 GETIMPORT                        R13 K5 [require]
      106 GETTABLEKS                       R14 R0 K26 ["Types"]
      108 CALL                             R13 1 1
      109 GETIMPORT                        R14 K5 [require]
      111 GETTABLEKS                       R15 R0 K27 ["Hooks"]
      113 GETTABLEKS                       R15 R15 K28 ["useAddContent"]
      115 CALL                             R14 1 1
      116 GETIMPORT                        R15 K5 [require]
      118 GETTABLEKS                       R16 R0 K27 ["Hooks"]
      120 GETTABLEKS                       R16 R16 K29 ["useAddMessage"]
      122 CALL                             R15 1 1
      123 GETIMPORT                        R16 K5 [require]
      125 GETTABLEKS                       R17 R0 K27 ["Hooks"]
      127 GETTABLEKS                       R17 R17 K30 ["useEditContent"]
      129 CALL                             R16 1 1
      130 GETTABLEKS                       R17 R1 K31 ["Acp"]
      132 GETTABLEKS                       R17 R17 K26 ["Types"]
      134 GETTABLEKS                       R17 R17 K32 ["SessionUpdateKind"]
      136 GETTABLEKS                       R18 R1 K33 ["ToolNaming"]
      138 NEWTABLE                         R19 32 0
      140 SETTABLEKS                       R19 R19 K34 ["__index"]
      142 DUPCLOSURE                       R20 K35 [PROTO_0]
      143 CAPTURE                          VAL R19
      144 CAPTURE                          VAL R6
      145 SETTABLEKS                       R20 R19 K36 ["new"]
      147 DUPCLOSURE                       R20 K37 [PROTO_1]
      148 SETTABLEKS                       R20 R19 K38 ["beginTurn"]
      150 DUPCLOSURE                       R20 K39 [PROTO_2]
      151 SETTABLEKS                       R20 R19 K40 ["endTurn"]
      153 DUPCLOSURE                       R20 K41 [PROTO_3]
      154 SETTABLEKS                       R20 R19 K42 ["beginHistoryReplay"]
      156 DUPCLOSURE                       R20 K43 [PROTO_4]
      157 SETTABLEKS                       R20 R19 K44 ["endHistoryReplay"]
      159 DUPCLOSURE                       R20 K45 [PROTO_5]
      160 SETTABLEKS                       R20 R19 K46 ["_addMessage"]
      162 DUPCLOSURE                       R20 K47 [PROTO_6]
      163 SETTABLEKS                       R20 R19 K48 ["resetRenderedState"]
      165 DUPCLOSURE                       R20 K49 [PROTO_7]
      166 CAPTURE                          VAL R11
      167 CAPTURE                          VAL R4
      168 DUPCLOSURE                       R21 K50 [PROTO_8]
      169 CAPTURE                          VAL R3
      170 CAPTURE                          VAL R18
      171 DUPCLOSURE                       R22 K51 [PROTO_9]
      172 DUPCLOSURE                       R23 K52 [PROTO_11]
      173 SETTABLEKS                       R23 R19 K53 ["_resetActiveStream"]
      175 DUPCLOSURE                       R23 K54 [PROTO_12]
      176 CAPTURE                          VAL R13
      177 SETTABLEKS                       R23 R19 K55 ["getOrCreateAssistantMessage"]
      179 DUPCLOSURE                       R23 K56 [PROTO_14]
      180 CAPTURE                          VAL R8
      181 SETTABLEKS                       R23 R19 K57 ["_handleMessageChunk"]
      183 DUPCLOSURE                       R23 K58 [PROTO_15]
      184 CAPTURE                          VAL R13
      185 CAPTURE                          VAL R8
      186 SETTABLEKS                       R23 R19 K59 ["_handleUserMessageChunk"]
      188 DUPCLOSURE                       R23 K60 [PROTO_16]
      189 CAPTURE                          VAL R13
      190 CAPTURE                          VAL R8
      191 CAPTURE                          VAL R5
      192 SETTABLEKS                       R23 R19 K61 ["_handleUserMessage"]
      194 DUPCLOSURE                       R23 K62 [PROTO_18]
      195 CAPTURE                          VAL R9
      196 SETTABLEKS                       R23 R19 K63 ["_handleThoughtChunk"]
      198 DUPCLOSURE                       R23 K64 [PROTO_19]
      199 CAPTURE                          VAL R3
      200 CAPTURE                          VAL R18
      201 CAPTURE                          VAL R11
      202 CAPTURE                          VAL R4
      203 CAPTURE                          VAL R1
      204 CAPTURE                          VAL R10
      205 CAPTURE                          VAL R2
      206 SETTABLEKS                       R23 R19 K65 ["_handleToolCall"]
      208 DUPCLOSURE                       R23 K66 [PROTO_22]
      209 CAPTURE                          VAL R3
      210 CAPTURE                          VAL R18
      211 CAPTURE                          VAL R11
      212 CAPTURE                          VAL R4
      213 CAPTURE                          VAL R2
      214 CAPTURE                          VAL R1
      215 CAPTURE                          VAL R22
      216 SETTABLEKS                       R23 R19 K67 ["_handleToolCallUpdate"]
      218 DUPCLOSURE                       R23 K68 [PROTO_23]
      219 CAPTURE                          VAL R3
      220 CAPTURE                          VAL R17
      221 SETTABLEKS                       R23 R19 K69 ["_cancelOpenToolCalls"]
      223 DUPCLOSURE                       R23 K70 [PROTO_24]
      224 SETTABLEKS                       R23 R19 K71 ["_handlePlan"]
      226 DUPCLOSURE                       R23 K72 [PROTO_25]
      227 SETTABLEKS                       R23 R19 K73 ["_handleAvailableCommands"]
      229 DUPCLOSURE                       R23 K74 [PROTO_26]
      230 SETTABLEKS                       R23 R19 K75 ["_handleSessionInfo"]
      232 DUPCLOSURE                       R23 K76 [PROTO_28]
      233 CAPTURE                          VAL R7
      234 CAPTURE                          VAL R12
      235 SETTABLEKS                       R23 R19 K77 ["_handleCompactionStatus"]
      237 DUPCLOSURE                       R23 K78 [PROTO_29]
      238 CAPTURE                          VAL R17
      239 CAPTURE                          VAL R3
      240 SETTABLEKS                       R23 R19 K79 ["handleUpdate"]
      242 RETURN                           R19 1
