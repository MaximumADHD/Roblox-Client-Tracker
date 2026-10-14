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
       57 LOADNIL                          R2
       58 SETTABLEKS                       R2 R1 K17 ["_parkedLiveCursor"]
       60 GETUPVAL                         R2 1
       61 GETTABLEKS                       R2 R2 K18 ["new"]
       63 CALL                             R2 0 1
       64 SETTABLEKS                       R2 R1 K19 ["onMessageAddedSignal"]
       66 RETURN                           R1 1

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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantACPBatchHistoryReplay"]
        3 JUMPIFNOT                        R1 ; [+31]
        4 DUPTABLE                         R1 K5 [{"assistantMessageId", "streamKind", "streamContentId", "thoughtStartedAt"}]
        5 GETTABLEKS                       R2 R0 K6 ["_activeAssistantMessageId"]
        7 SETTABLEKS                       R2 R1 K1 ["assistantMessageId"]
        9 GETTABLEKS                       R2 R0 K7 ["_activeStreamKind"]
       11 SETTABLEKS                       R2 R1 K2 ["streamKind"]
       13 GETTABLEKS                       R2 R0 K8 ["_activeStreamContentId"]
       15 SETTABLEKS                       R2 R1 K3 ["streamContentId"]
       17 GETTABLEKS                       R2 R0 K9 ["_activeThoughtStartedAt"]
       19 SETTABLEKS                       R2 R1 K4 ["thoughtStartedAt"]
       21 SETTABLEKS                       R1 R0 K10 ["_parkedLiveCursor"]
       23 LOADNIL                          R1
       24 SETTABLEKS                       R1 R0 K6 ["_activeAssistantMessageId"]
       26 LOADNIL                          R1
       27 SETTABLEKS                       R1 R0 K7 ["_activeStreamKind"]
       29 LOADNIL                          R1
       30 SETTABLEKS                       R1 R0 K8 ["_activeStreamContentId"]
       32 LOADNIL                          R1
       33 SETTABLEKS                       R1 R0 K9 ["_activeThoughtStartedAt"]
       35 LOADB                            R1 1
       36 SETTABLEKS                       R1 R0 K11 ["_isHistoryReplay"]
       38 RETURN                           R0 0

PROTO_4:
        0 LOADB                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["_isHistoryReplay"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["FFlagAssistantACPBatchHistoryReplay"]
        6 JUMPIFNOT                        R1 ; [+28]
        7 GETTABLEKS                       R1 R0 K2 ["_parkedLiveCursor"]
        9 JUMPIF                           R1 ; [+1]
       10 RETURN                           R0 0
       11 LOADNIL                          R2
       12 SETTABLEKS                       R2 R0 K2 ["_parkedLiveCursor"]
       14 GETTABLEKS                       R2 R1 K3 ["assistantMessageId"]
       16 JUMPIFNOTEQKNIL                  R2 ; [+2]
       18 RETURN                           R0 0
       19 GETTABLEKS                       R2 R1 K3 ["assistantMessageId"]
       21 SETTABLEKS                       R2 R0 K4 ["_activeAssistantMessageId"]
       23 GETTABLEKS                       R2 R1 K5 ["streamKind"]
       25 SETTABLEKS                       R2 R0 K6 ["_activeStreamKind"]
       27 GETTABLEKS                       R2 R1 K7 ["streamContentId"]
       29 SETTABLEKS                       R2 R0 K8 ["_activeStreamContentId"]
       31 GETTABLEKS                       R2 R1 K9 ["thoughtStartedAt"]
       33 SETTABLEKS                       R2 R0 K10 ["_activeThoughtStartedAt"]
       35 RETURN                           R0 0

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
       15 LOADNIL                          R1
       16 SETTABLEKS                       R1 R0 K5 ["_parkedLiveCursor"]
       18 GETIMPORT                        R1 K8 [table.clear]
       20 GETTABLEKS                       R2 R0 K9 ["_contentIdByToolCallId"]
       22 CALL                             R1 1 0
       23 GETIMPORT                        R1 K8 [table.clear]
       25 GETTABLEKS                       R2 R0 K10 ["_toolNameByToolCallId"]
       27 CALL                             R1 1 0
       28 GETIMPORT                        R1 K8 [table.clear]
       30 GETTABLEKS                       R2 R0 K11 ["_openToolCallIds"]
       32 CALL                             R1 1 0
       33 RETURN                           R0 0

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
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+6]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["toUIToolName"]
        6 MOVE                             R2 R0
        7 CALL                             R1 1 1
        8 RETURN                           R1 1
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R1 R1 K1 ["stripPrefix"]
       12 MOVE                             R2 R0
       13 CALL                             R1 1 1
       14 RETURN                           R1 1

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
        7 CALL                             R4 0 1
        8 JUMPIFNOT                        R4 ; [+6]
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R3 R3 K3 ["toUIToolName"]
       12 MOVE                             R4 R2
       13 CALL                             R3 1 1
       14 JUMP                             ; [+5]
       15 GETUPVAL                         R3 1
       16 GETTABLEKS                       R3 R3 K4 ["stripPrefix"]
       18 MOVE                             R4 R2
       19 CALL                             R3 1 1
       20 GETUPVAL                         R5 2
       21 GETTABLEKS                       R5 R5 K5 ["get"]
       23 MOVE                             R6 R3
       24 CALL                             R5 1 1
       25 JUMPIFNOT                        R5 ; [+2]
       26 MOVE                             R4 R5
       27 JUMP                             ; [+3]
       28 GETUPVAL                         R4 3
       29 GETTABLEKS                       R4 R4 K6 ["Type"]
       31 GETUPVAL                         R6 2
       32 GETTABLEKS                       R6 R6 K7 ["None"]
       34 JUMPIFNOTEQ                      R4 R6 ; [+2]
       36 LOADB                            R5 0 +1
       37 LOADB                            R5 1
       38 GETUPVAL                         R6 4
       39 GETTABLEKS                       R6 R6 K8 ["FFlagDebugLogAssistantUI"]
       41 JUMPIFNOT                        R6 ; [+23]
       42 GETIMPORT                        R6 K10 [print]
       44 LOADK                            R10 K11 ["[Tool Call] UI create: toolCallId=%* title=%* actualToolName=%* "]
       45 GETTABLEKS                       R13 R1 K12 ["toolCallId"]
       47 FASTCALL1                        TOSTRING R13 ; [+2]
       48 GETIMPORT                        R12 K14 [tostring]
       50 CALL                             R12 1 1
       51 MOVE                             R13 R2
       52 MOVE                             R14 R3
       53 NAMECALL                         R10 R10 K15 ["format"]
       55 CALL                             R10 4 1
       56 MOVE                             R8 R10
       57 LOADK                            R9 K16 ["widgetType=%* foundWidget=%*"]
       58 MOVE                             R11 R4
       59 MOVE                             R12 R5
       60 NAMECALL                         R9 R9 K15 ["format"]
       62 CALL                             R9 3 1
       63 CONCAT                           R7 R8 R9
       64 CALL                             R6 1 0
       65 GETUPVAL                         R6 2
       66 GETTABLEKS                       R6 R6 K7 ["None"]
       68 JUMPIFNOTEQ                      R4 R6 ; [+14]
       70 GETUPVAL                         R6 4
       71 GETTABLEKS                       R6 R6 K8 ["FFlagDebugLogAssistantUI"]
       73 JUMPIFNOT                        R6 ; [+8]
       74 GETIMPORT                        R6 K10 [print]
       76 LOADK                            R7 K17 ["[Tool Call] UI create skipped: no widget for actualToolName=%*"]
       77 MOVE                             R9 R3
       78 NAMECALL                         R7 R7 K15 ["format"]
       80 CALL                             R7 2 1
       81 CALL                             R6 1 0
       82 RETURN                           R0 0
       83 GETTABLEKS                       R7 R1 K18 ["rawInput"]
       85 JUMPIFNOTEQKNIL                  R7 ; [+2]
       87 LOADB                            R6 0 +1
       88 LOADB                            R6 1
       89 DUPTABLE                         R7 K26 [{["type"] = "tool_use", ["id"], ["name"], ["input"], ["thoughtSignature"] = }]
       90 GETTABLEKS                       R8 R1 K12 ["toolCallId"]
       92 SETTABLEKS                       R8 R7 K21 ["id"]
       94 SETTABLEKS                       R3 R7 K22 ["name"]
       96 GETUPVAL                         R9 4
       97 GETTABLEKS                       R9 R9 K27 ["FFlagAssistantDisableSafeEmptyTableJsonEncode"]
       99 JUMPIFNOT                        R9 ; [+6]
      100 GETTABLEKS                       R8 R1 K18 ["rawInput"]
      102 JUMPIF                           R8 ; [+11]
      103 NEWTABLE                         R8 0 0
      105 JUMP                             ; [+8]
      106 GETUPVAL                         R8 5
      107 GETTABLEKS                       R8 R8 K28 ["Engine"]
      109 GETTABLEKS                       R8 R8 K29 ["normalizeToolInput"]
      111 GETTABLEKS                       R9 R1 K18 ["rawInput"]
      113 CALL                             R8 1 1
      114 SETTABLEKS                       R8 R7 K23 ["input"]
      116 DUPTABLE                         R8 K34 [{["type"], ["expanded"] = False, ["generating"] = True}]
      117 SETTABLEKS                       R4 R8 K19 ["type"]
      119 JUMPIFNOT                        R6 ; [+3]
      120 SETTABLEKS                       R7 R8 K35 ["toolUse"]
      122 JUMP                             ; [+7]
      123 GETTABLEKS                       R9 R0 K36 ["_isHistoryReplay"]
      125 JUMPIF                           R9 ; [+4]
      126 NEWTABLE                         R9 0 0
      128 SETTABLEKS                       R9 R8 K37 ["streaming"]
      130 LOADB                            R9 1
      131 SETTABLEKS                       R9 R8 K32 ["generating"]
      133 FASTCALL1                        TYPEOF R4 ; [+3]
      134 MOVE                             R11 R4
      135 GETIMPORT                        R10 K39 [typeof]
      137 CALL                             R10 1 1
      138 JUMPIFNOTEQKS                    R10 K40 ["string"] ; [+7]
      140 GETUPVAL                         R9 6
      141 GETTABLEKS                       R9 R9 K41 ["getAutoExpand"]
      143 MOVE                             R10 R4
      144 CALL                             R9 1 1
      145 JUMP                             ; [+1]
      146 LOADNIL                          R9
      147 JUMPIFNOT                        R9 ; [+9]
      148 GETTABLEKS                       R11 R9 K42 ["expandWhileGenerating"]
      150 JUMPIFNOT                        R11 ; [+2]
      151 LOADB                            R10 1
      152 JUMP                             ; [+1]
      153 LOADB                            R10 0
      154 SETTABLEKS                       R10 R8 K30 ["expanded"]
      156 JUMP                             ; [+7]
      157 GETTABLEKS                       R10 R8 K30 ["expanded"]
      159 JUMPIFNOTEQKNIL                  R10 ; [+4]
      161 LOADB                            R10 0
      162 SETTABLEKS                       R10 R8 K30 ["expanded"]
      164 NAMECALL                         R10 R0 K43 ["getOrCreateAssistantMessage"]
      166 CALL                             R10 1 1
      167 GETTABLEKS                       R11 R0 K44 ["_callbacks"]
      169 GETTABLEKS                       R11 R11 K45 ["addContent"]
      171 DUPTABLE                         R12 K48 [{"messageId", "content"}]
      172 SETTABLEKS                       R10 R12 K46 ["messageId"]
      174 SETTABLEKS                       R8 R12 K47 ["content"]
      176 CALL                             R11 1 1
      177 GETUPVAL                         R12 4
      178 GETTABLEKS                       R12 R12 K8 ["FFlagDebugLogAssistantUI"]
      180 JUMPIFNOT                        R12 ; [+30]
      181 GETIMPORT                        R12 K10 [print]
      183 LOADK                            R16 K49 ["[Tool Call] UI update (create): toolCallId=%* messageId=%* "]
      184 GETTABLEKS                       R19 R1 K12 ["toolCallId"]
      186 FASTCALL1                        TOSTRING R19 ; [+2]
      187 GETIMPORT                        R18 K14 [tostring]
      189 CALL                             R18 1 1
      190 MOVE                             R19 R10
      191 NAMECALL                         R16 R16 K15 ["format"]
      193 CALL                             R16 3 1
      194 MOVE                             R14 R16
      195 LOADK                            R15 K50 ["contentId=%* widgetType=%* status=%*"]
      196 MOVE                             R17 R11
      197 GETTABLEKS                       R19 R8 K19 ["type"]
      199 OR                               R18 R19 R4
      200 GETTABLEKS                       R20 R1 K51 ["status"]
      202 FASTCALL1                        TOSTRING R20 ; [+2]
      203 GETIMPORT                        R19 K14 [tostring]
      205 CALL                             R19 1 1
      206 NAMECALL                         R15 R15 K15 ["format"]
      208 CALL                             R15 4 1
      209 CONCAT                           R13 R14 R15
      210 CALL                             R12 1 0
      211 GETTABLEKS                       R12 R1 K12 ["toolCallId"]
      213 JUMPIFNOT                        R12 ; [+30]
      214 GETTABLEKS                       R12 R0 K52 ["_contentIdByToolCallId"]
      216 GETTABLEKS                       R13 R1 K12 ["toolCallId"]
      218 SETTABLE                         R11 R12 R13
      219 GETTABLEKS                       R12 R0 K53 ["_toolNameByToolCallId"]
      221 GETTABLEKS                       R13 R1 K12 ["toolCallId"]
      223 SETTABLE                         R3 R12 R13
      224 GETTABLEKS                       R12 R0 K54 ["_openToolCallIds"]
      226 GETTABLEKS                       R13 R1 K12 ["toolCallId"]
      228 LOADB                            R14 1
      229 SETTABLE                         R14 R12 R13
      230 GETTABLEKS                       R12 R0 K44 ["_callbacks"]
      232 GETTABLEKS                       R12 R12 K55 ["onToolWidgetCreated"]
      234 JUMPIFNOT                        R12 ; [+9]
      235 GETTABLEKS                       R12 R0 K44 ["_callbacks"]
      237 GETTABLEKS                       R12 R12 K55 ["onToolWidgetCreated"]
      239 GETTABLEKS                       R13 R1 K12 ["toolCallId"]
      241 MOVE                             R14 R10
      242 MOVE                             R15 R11
      243 CALL                             R12 3 0
      244 RETURN                           R0 0

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
       11 JUMPIFNOT                        R2 ; [+23]
       12 JUMPIF                           R3 ; [+22]
       13 GETUPVAL                         R6 0
       14 GETTABLEKS                       R6 R6 K3 ["FFlagDebugLogAssistantUI"]
       16 JUMPIFNOT                        R6 ; [+8]
       17 GETIMPORT                        R6 K5 [print]
       19 LOADK                            R7 K6 ["[Tool Call] UI update upsert: first payload is tool_call_update toolCallId=%*"]
       20 MOVE                             R9 R2
       21 NAMECALL                         R7 R7 K7 ["format"]
       23 CALL                             R7 2 1
       24 CALL                             R6 1 0
       25 LOADB                            R5 1
       26 MOVE                             R8 R1
       27 NAMECALL                         R6 R0 K8 ["_handleToolCall"]
       29 CALL                             R6 2 0
       30 GETTABLEKS                       R6 R0 K1 ["_contentIdByToolCallId"]
       32 GETTABLE                         R3 R6 R2
       33 GETTABLEKS                       R4 R0 K2 ["_activeAssistantMessageId"]
       35 JUMPIFNOT                        R3 ; [+2]
       36 JUMPIFNOT                        R4 ; [+1]
       37 JUMPIF                           R2 ; [+39]
       38 GETUPVAL                         R6 0
       39 GETTABLEKS                       R6 R6 K3 ["FFlagDebugLogAssistantUI"]
       41 JUMPIFNOT                        R6 ; [+34]
       42 GETIMPORT                        R6 K5 [print]
       44 LOADK                            R10 K9 ["[Tool Call] UI update skipped: toolCallId=%* contentId=%* "]
       45 FASTCALL1                        TOSTRING R2 ; [+3]
       46 MOVE                             R13 R2
       47 GETIMPORT                        R12 K11 [tostring]
       49 CALL                             R12 1 1
       50 FASTCALL1                        TOSTRING R3 ; [+3]
       51 MOVE                             R14 R3
       52 GETIMPORT                        R13 K11 [tostring]
       54 CALL                             R13 1 1
       55 NAMECALL                         R10 R10 K7 ["format"]
       57 CALL                             R10 3 1
       58 MOVE                             R8 R10
       59 LOADK                            R9 K12 ["messageId=%* status=%*"]
       60 FASTCALL1                        TOSTRING R4 ; [+3]
       61 MOVE                             R12 R4
       62 GETIMPORT                        R11 K11 [tostring]
       64 CALL                             R11 1 1
       65 GETTABLEKS                       R13 R1 K13 ["status"]
       67 FASTCALL1                        TOSTRING R13 ; [+2]
       68 GETIMPORT                        R12 K11 [tostring]
       70 CALL                             R12 1 1
       71 NAMECALL                         R9 R9 K7 ["format"]
       73 CALL                             R9 3 1
       74 CONCAT                           R7 R8 R9
       75 CALL                             R6 1 0
       76 RETURN                           R0 0
       77 GETTABLEKS                       R6 R1 K13 ["status"]
       79 LOADB                            R7 1
       80 JUMPIFEQKS                       R6 K14 ["completed"] ; [+8]
       82 LOADB                            R7 1
       83 JUMPIFEQKS                       R6 K15 ["failed"] ; [+5]
       85 JUMPIFEQKS                       R6 K16 ["cancelled"] ; [+2]
       87 LOADB                            R7 0 +1
       88 LOADB                            R7 1
       89 LOADB                            R8 1
       90 GETTABLEKS                       R9 R1 K17 ["content"]
       92 JUMPIFNOTEQKNIL                  R9 ; [+7]
       94 LOADB                            R8 1
       95 GETTABLEKS                       R9 R1 K18 ["rawOutput"]
       97 JUMPIFNOTEQKNIL                  R9 ; [+2]
       99 MOVE                             R8 R7
      100 GETTABLEKS                       R10 R1 K19 ["rawInput"]
      102 JUMPIFNOTEQKNIL                  R10 ; [+2]
      104 LOADB                            R9 0 +1
      105 LOADB                            R9 1
      106 GETTABLEKS                       R11 R0 K20 ["_toolNameByToolCallId"]
      108 GETTABLE                         R10 R11 R2
      109 JUMPIFNOT                        R10 ; [+2]
      110 MOVE                             R11 R10
      111 JUMP                             ; [+19]
      112 GETTABLEKS                       R13 R1 K22 ["title"]
      114 ORK                              R12 R13 K21 ["unknown_tool"]
      115 GETUPVAL                         R13 1
      116 CALL                             R13 0 1
      117 JUMPIFNOT                        R13 ; [+7]
      118 GETUPVAL                         R13 2
      119 GETTABLEKS                       R13 R13 K23 ["toUIToolName"]
      121 MOVE                             R14 R12
      122 CALL                             R13 1 1
      123 MOVE                             R11 R13
      124 JUMP                             ; [+6]
      125 GETUPVAL                         R13 2
      126 GETTABLEKS                       R13 R13 K24 ["stripPrefix"]
      128 MOVE                             R14 R12
      129 CALL                             R13 1 1
      130 MOVE                             R11 R13
      131 GETUPVAL                         R12 0
      132 GETTABLEKS                       R12 R12 K3 ["FFlagDebugLogAssistantUI"]
      134 JUMPIFNOT                        R12 ; [+31]
      135 GETIMPORT                        R12 K5 [print]
      137 LOADK                            R17 K25 ["[Tool Call] UI update: toolCallId=%* actualToolName=%* status=%* "]
      138 MOVE                             R19 R2
      139 MOVE                             R20 R11
      140 FASTCALL1                        TOSTRING R6 ; [+3]
      141 MOVE                             R22 R6
      142 GETIMPORT                        R21 K11 [tostring]
      144 CALL                             R21 1 1
      145 NAMECALL                         R17 R17 K7 ["format"]
      147 CALL                             R17 4 1
      148 MOVE                             R14 R17
      149 LOADK                            R17 K26 ["hasRawInput=%* hasResult=%* isTerminal=%* "]
      150 MOVE                             R19 R9
      151 MOVE                             R20 R8
      152 MOVE                             R21 R7
      153 NAMECALL                         R17 R17 K7 ["format"]
      155 CALL                             R17 4 1
      156 MOVE                             R15 R17
      157 LOADK                            R16 K27 ["wasUpsert=%* messageId=%* contentId=%*"]
      158 MOVE                             R18 R5
      159 MOVE                             R19 R4
      160 MOVE                             R20 R3
      161 NAMECALL                         R16 R16 K7 ["format"]
      163 CALL                             R16 4 1
      164 CONCAT                           R13 R14 R16
      165 CALL                             R12 1 0
      166 GETTABLEKS                       R12 R1 K28 ["_meta"]
      168 JUMPIFNOT                        R12 ; [+4]
      169 GETTABLEKS                       R12 R1 K28 ["_meta"]
      171 GETTABLEKS                       R12 R12 K29 ["_roblox"]
      173 FASTCALL1                        TYPEOF R12 ; [+3]
      174 MOVE                             R15 R12
      175 GETIMPORT                        R14 K31 [typeof]
      177 CALL                             R14 1 1
      178 JUMPIFNOTEQKS                    R14 K32 ["table"] ; [+4]
      180 GETTABLEKS                       R13 R12 K33 ["rawInputDelta"]
      182 JUMP                             ; [+1]
      183 LOADNIL                          R13
      184 JUMPIFEQKNIL                     R13 ; [+39]
      186 JUMPIF                           R9 ; [+37]
      187 GETUPVAL                         R15 3
      188 GETTABLEKS                       R15 R15 K34 ["get"]
      190 MOVE                             R16 R11
      191 CALL                             R15 1 1
      192 JUMPIFNOT                        R15 ; [+2]
      193 MOVE                             R14 R15
      194 JUMP                             ; [+3]
      195 GETUPVAL                         R14 4
      196 GETTABLEKS                       R14 R14 K35 ["Type"]
      198 GETUPVAL                         R15 3
      199 GETTABLEKS                       R15 R15 K36 ["None"]
      201 JUMPIFEQ                         R14 R15 ; [+21]
      203 GETUPVAL                         R15 5
      204 GETTABLEKS                       R15 R15 K37 ["needsStreamingToolUse"]
      206 MOVE                             R16 R14
      207 CALL                             R15 1 1
      208 JUMPIFNOT                        R15 ; [+14]
      209 GETTABLEKS                       R15 R0 K38 ["_callbacks"]
      211 GETTABLEKS                       R15 R15 K39 ["editContent"]
      213 DUPTABLE                         R16 K43 [{"messageId", "contentId", "transformFn"}]
      214 SETTABLEKS                       R4 R16 K40 ["messageId"]
      216 SETTABLEKS                       R3 R16 K41 ["contentId"]
      218 NEWCLOSURE                       R17 P0
      219 CAPTURE                          VAL R13
      220 SETTABLEKS                       R17 R16 K42 ["transformFn"]
      222 CALL                             R15 1 0
      223 RETURN                           R0 0
      224 GETTABLEKS                       R14 R0 K38 ["_callbacks"]
      226 GETTABLEKS                       R14 R14 K39 ["editContent"]
      228 DUPTABLE                         R15 K43 [{"messageId", "contentId", "transformFn"}]
      229 SETTABLEKS                       R4 R15 K40 ["messageId"]
      231 SETTABLEKS                       R3 R15 K41 ["contentId"]
      233 NEWCLOSURE                       R16 P1
      234 CAPTURE                          VAL R9
      235 CAPTURE                          VAL R2
      236 CAPTURE                          VAL R11
      237 CAPTURE                          UPVAL U0
      238 CAPTURE                          VAL R1
      239 CAPTURE                          UPVAL U6
      240 CAPTURE                          VAL R8
      241 CAPTURE                          UPVAL U7
      242 CAPTURE                          VAL R6
      243 CAPTURE                          VAL R7
      244 CAPTURE                          UPVAL U3
      245 CAPTURE                          UPVAL U4
      246 CAPTURE                          UPVAL U5
      247 SETTABLEKS                       R16 R15 K42 ["transformFn"]
      249 CALL                             R14 1 0
      250 JUMPIFNOT                        R7 ; [+4]
      251 GETTABLEKS                       R14 R0 K44 ["_openToolCallIds"]
      253 LOADNIL                          R15
      254 SETTABLE                         R15 R14 R2
      255 RETURN                           R0 0

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
       31 JUMPIFNOT                        R8 ; [+8]
       32 GETIMPORT                        R8 K8 [print]
       34 LOADK                            R9 K9 ["[Tool Call] UI cancel on idle: toolCallId=%*"]
       35 MOVE                             R11 R7
       36 NAMECALL                         R9 R9 K10 ["format"]
       38 CALL                             R9 2 1
       39 CALL                             R8 1 0
       40 DUPTABLE                         R10 K15 [{["sessionUpdate"], ["toolCallId"], ["status"] = "cancelled"}]
       41 GETUPVAL                         R11 1
       42 GETTABLEKS                       R11 R11 K16 ["ToolCallUpdate"]
       44 SETTABLEKS                       R11 R10 K11 ["sessionUpdate"]
       46 SETTABLEKS                       R7 R10 K12 ["toolCallId"]
       48 NAMECALL                         R8 R0 K17 ["_handleToolCallUpdate"]
       50 CALL                             R8 2 0
       51 FORGLOOP                         R3 2 ; [-24]
       53 RETURN                           R0 0

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
       75 GETTABLEKS                       R3 R3 K12 ["ThoughtFinished"]
       77 JUMPIFNOTEQ                      R2 R3 ; [+5]
       79 NAMECALL                         R2 R0 K13 ["_resetActiveStream"]
       81 CALL                             R2 1 0
       82 RETURN                           R0 0
       83 GETTABLEKS                       R2 R1 K0 ["sessionUpdate"]
       85 GETUPVAL                         R3 0
       86 GETTABLEKS                       R3 R3 K14 ["ToolCall"]
       88 JUMPIFNOTEQ                      R2 R3 ; [+6]
       90 MOVE                             R4 R1
       91 NAMECALL                         R2 R0 K15 ["_handleToolCall"]
       93 CALL                             R2 2 0
       94 RETURN                           R0 0
       95 GETTABLEKS                       R2 R1 K0 ["sessionUpdate"]
       97 GETUPVAL                         R3 0
       98 GETTABLEKS                       R3 R3 K16 ["ToolCallUpdate"]
      100 JUMPIFNOTEQ                      R2 R3 ; [+6]
      102 MOVE                             R4 R1
      103 NAMECALL                         R2 R0 K17 ["_handleToolCallUpdate"]
      105 CALL                             R2 2 0
      106 RETURN                           R0 0
      107 GETTABLEKS                       R2 R1 K0 ["sessionUpdate"]
      109 GETUPVAL                         R3 0
      110 GETTABLEKS                       R3 R3 K18 ["Plan"]
      112 JUMPIFNOTEQ                      R2 R3 ; [+6]
      114 MOVE                             R4 R1
      115 NAMECALL                         R2 R0 K19 ["_handlePlan"]
      117 CALL                             R2 2 0
      118 RETURN                           R0 0
      119 GETTABLEKS                       R2 R1 K0 ["sessionUpdate"]
      121 GETUPVAL                         R3 0
      122 GETTABLEKS                       R3 R3 K20 ["AvailableCommandsUpdate"]
      124 JUMPIFNOTEQ                      R2 R3 ; [+6]
      126 MOVE                             R4 R1
      127 NAMECALL                         R2 R0 K21 ["_handleAvailableCommands"]
      129 CALL                             R2 2 0
      130 RETURN                           R0 0
      131 GETTABLEKS                       R2 R1 K0 ["sessionUpdate"]
      133 GETUPVAL                         R3 0
      134 GETTABLEKS                       R3 R3 K22 ["SessionInfoUpdate"]
      136 JUMPIFNOTEQ                      R2 R3 ; [+6]
      138 MOVE                             R4 R1
      139 NAMECALL                         R2 R0 K23 ["_handleSessionInfo"]
      141 CALL                             R2 2 0
      142 RETURN                           R0 0
      143 GETTABLEKS                       R2 R1 K0 ["sessionUpdate"]
      145 GETUPVAL                         R3 0
      146 GETTABLEKS                       R3 R3 K24 ["CompactionStatus"]
      148 JUMPIFNOTEQ                      R2 R3 ; [+6]
      150 MOVE                             R4 R1
      151 NAMECALL                         R2 R0 K25 ["_handleCompactionStatus"]
      153 CALL                             R2 2 0
      154 RETURN                           R0 0
      155 GETTABLEKS                       R2 R1 K0 ["sessionUpdate"]
      157 GETUPVAL                         R3 0
      158 GETTABLEKS                       R3 R3 K26 ["StateUpdate"]
      160 JUMPIFNOTEQ                      R2 R3 ; [+15]
      162 GETTABLEKS                       R2 R1 K27 ["state"]
      164 JUMPIFNOTEQKS                    R2 K28 ["idle"] ; [+11]
      166 GETUPVAL                         R2 1
      167 GETTABLEKS                       R2 R2 K29 ["FFlagAssistantACPFixPendingToolCall"]
      169 JUMPIFNOT                        R2 ; [+3]
      170 NAMECALL                         R2 R0 K30 ["_cancelOpenToolCalls"]
      172 CALL                             R2 1 0
      173 NAMECALL                         R2 R0 K13 ["_resetActiveStream"]
      175 CALL                             R2 1 0
      176 RETURN                           R0 0

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
       80 GETIMPORT                        R10 K5 [require]
       82 GETTABLEKS                       R11 R0 K8 ["Util"]
       84 GETTABLEKS                       R11 R11 K9 ["ContentWidgets"]
       86 GETTABLEKS                       R11 R11 K19 ["ToolWidgetMappingRegistry"]
       88 CALL                             R10 1 1
       89 GETIMPORT                        R11 K5 [require]
       91 GETTABLEKS                       R12 R0 K20 ["Resources"]
       93 GETTABLEKS                       R12 R12 K21 ["Localization"]
       95 GETTABLEKS                       R12 R12 K22 ["Translator"]
       97 CALL                             R11 1 1
       98 GETIMPORT                        R12 K5 [require]
      100 GETTABLEKS                       R13 R0 K23 ["Types"]
      102 CALL                             R12 1 1
      103 GETIMPORT                        R13 K5 [require]
      105 GETTABLEKS                       R14 R0 K24 ["FlagUtils"]
      107 GETTABLEKS                       R14 R14 K25 ["getIsAssistantUseRemoteService"]
      109 CALL                             R13 1 1
      110 GETTABLEKS                       R13 R13 K26 ["get"]
      112 GETIMPORT                        R14 K5 [require]
      114 GETTABLEKS                       R15 R0 K27 ["Hooks"]
      116 GETTABLEKS                       R15 R15 K28 ["useAddContent"]
      118 CALL                             R14 1 1
      119 GETIMPORT                        R15 K5 [require]
      121 GETTABLEKS                       R16 R0 K27 ["Hooks"]
      123 GETTABLEKS                       R16 R16 K29 ["useAddMessage"]
      125 CALL                             R15 1 1
      126 GETIMPORT                        R16 K5 [require]
      128 GETTABLEKS                       R17 R0 K27 ["Hooks"]
      130 GETTABLEKS                       R17 R17 K30 ["useEditContent"]
      132 CALL                             R16 1 1
      133 GETTABLEKS                       R17 R1 K31 ["Acp"]
      135 GETTABLEKS                       R17 R17 K23 ["Types"]
      137 GETTABLEKS                       R17 R17 K32 ["SessionUpdateKind"]
      139 GETTABLEKS                       R18 R1 K33 ["ToolNaming"]
      141 NEWTABLE                         R19 32 0
      143 SETTABLEKS                       R19 R19 K34 ["__index"]
      145 DUPCLOSURE                       R20 K35 [PROTO_0]
      146 CAPTURE                          VAL R19
      147 CAPTURE                          VAL R6
      148 SETTABLEKS                       R20 R19 K36 ["new"]
      150 DUPCLOSURE                       R20 K37 [PROTO_1]
      151 SETTABLEKS                       R20 R19 K38 ["beginTurn"]
      153 DUPCLOSURE                       R20 K39 [PROTO_2]
      154 SETTABLEKS                       R20 R19 K40 ["endTurn"]
      156 DUPCLOSURE                       R20 K41 [PROTO_3]
      157 CAPTURE                          VAL R3
      158 SETTABLEKS                       R20 R19 K42 ["beginHistoryReplay"]
      160 DUPCLOSURE                       R20 K43 [PROTO_4]
      161 CAPTURE                          VAL R3
      162 SETTABLEKS                       R20 R19 K44 ["endHistoryReplay"]
      164 DUPCLOSURE                       R20 K45 [PROTO_5]
      165 SETTABLEKS                       R20 R19 K46 ["_addMessage"]
      167 DUPCLOSURE                       R20 K47 [PROTO_6]
      168 SETTABLEKS                       R20 R19 K48 ["resetRenderedState"]
      170 DUPCLOSURE                       R20 K49 [PROTO_7]
      171 CAPTURE                          VAL R10
      172 CAPTURE                          VAL R4
      173 DUPCLOSURE                       R21 K50 [PROTO_8]
      174 CAPTURE                          VAL R13
      175 CAPTURE                          VAL R18
      176 DUPCLOSURE                       R22 K51 [PROTO_9]
      177 DUPCLOSURE                       R23 K52 [PROTO_11]
      178 SETTABLEKS                       R23 R19 K53 ["_resetActiveStream"]
      180 DUPCLOSURE                       R23 K54 [PROTO_12]
      181 CAPTURE                          VAL R12
      182 SETTABLEKS                       R23 R19 K55 ["getOrCreateAssistantMessage"]
      184 DUPCLOSURE                       R23 K56 [PROTO_14]
      185 CAPTURE                          VAL R8
      186 SETTABLEKS                       R23 R19 K57 ["_handleMessageChunk"]
      188 DUPCLOSURE                       R23 K58 [PROTO_15]
      189 CAPTURE                          VAL R12
      190 CAPTURE                          VAL R8
      191 SETTABLEKS                       R23 R19 K59 ["_handleUserMessageChunk"]
      193 DUPCLOSURE                       R23 K60 [PROTO_16]
      194 CAPTURE                          VAL R12
      195 CAPTURE                          VAL R8
      196 CAPTURE                          VAL R5
      197 SETTABLEKS                       R23 R19 K61 ["_handleUserMessage"]
      199 DUPCLOSURE                       R23 K62 [PROTO_18]
      200 CAPTURE                          VAL R9
      201 SETTABLEKS                       R23 R19 K63 ["_handleThoughtChunk"]
      203 DUPCLOSURE                       R23 K64 [PROTO_19]
      204 CAPTURE                          VAL R13
      205 CAPTURE                          VAL R18
      206 CAPTURE                          VAL R10
      207 CAPTURE                          VAL R4
      208 CAPTURE                          VAL R3
      209 CAPTURE                          VAL R1
      210 CAPTURE                          VAL R2
      211 SETTABLEKS                       R23 R19 K65 ["_handleToolCall"]
      213 DUPCLOSURE                       R23 K66 [PROTO_22]
      214 CAPTURE                          VAL R3
      215 CAPTURE                          VAL R13
      216 CAPTURE                          VAL R18
      217 CAPTURE                          VAL R10
      218 CAPTURE                          VAL R4
      219 CAPTURE                          VAL R2
      220 CAPTURE                          VAL R1
      221 CAPTURE                          VAL R22
      222 SETTABLEKS                       R23 R19 K67 ["_handleToolCallUpdate"]
      224 DUPCLOSURE                       R23 K68 [PROTO_23]
      225 CAPTURE                          VAL R3
      226 CAPTURE                          VAL R17
      227 SETTABLEKS                       R23 R19 K69 ["_cancelOpenToolCalls"]
      229 DUPCLOSURE                       R23 K70 [PROTO_24]
      230 SETTABLEKS                       R23 R19 K71 ["_handlePlan"]
      232 DUPCLOSURE                       R23 K72 [PROTO_25]
      233 SETTABLEKS                       R23 R19 K73 ["_handleAvailableCommands"]
      235 DUPCLOSURE                       R23 K74 [PROTO_26]
      236 SETTABLEKS                       R23 R19 K75 ["_handleSessionInfo"]
      238 DUPCLOSURE                       R23 K76 [PROTO_28]
      239 CAPTURE                          VAL R7
      240 CAPTURE                          VAL R11
      241 SETTABLEKS                       R23 R19 K77 ["_handleCompactionStatus"]
      243 DUPCLOSURE                       R23 K78 [PROTO_29]
      244 CAPTURE                          VAL R17
      245 CAPTURE                          VAL R3
      246 SETTABLEKS                       R23 R19 K79 ["handleUpdate"]
      248 RETURN                           R19 1
