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
       30 GETTABLEKS                       R3 R0 K9 ["acceptedUserMessageHidden"]
       32 JUMPIFEQKB                       R3 TRUE ; [+2]
       34 LOADB                            R2 0 +1
       35 LOADB                            R2 1
       36 SETTABLEKS                       R2 R1 K10 ["_acceptedUserMessageHidden"]
       38 LOADB                            R2 0
       39 SETTABLEKS                       R2 R1 K11 ["_suppressUserMessageEcho"]
       41 LOADNIL                          R2
       42 SETTABLEKS                       R2 R1 K12 ["_activeStreamKind"]
       44 LOADNIL                          R2
       45 SETTABLEKS                       R2 R1 K13 ["_activeStreamContentId"]
       47 LOADNIL                          R2
       48 SETTABLEKS                       R2 R1 K14 ["_activeThoughtStartedAt"]
       50 LOADNIL                          R2
       51 SETTABLEKS                       R2 R1 K15 ["_compactionContentId"]
       53 RETURN                           R1 1

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
        0 LOADNIL                          R1
        1 SETTABLEKS                       R1 R0 K0 ["_activeAssistantMessageId"]
        3 LOADNIL                          R1
        4 SETTABLEKS                       R1 R0 K1 ["_activeStreamKind"]
        6 LOADNIL                          R1
        7 SETTABLEKS                       R1 R0 K2 ["_activeStreamContentId"]
        9 LOADNIL                          R1
       10 SETTABLEKS                       R1 R0 K3 ["_activeThoughtStartedAt"]
       12 GETIMPORT                        R1 K6 [table.clear]
       14 GETTABLEKS                       R2 R0 K7 ["_contentIdByToolCallId"]
       16 CALL                             R1 1 0
       17 GETIMPORT                        R1 K6 [table.clear]
       19 GETTABLEKS                       R2 R0 K8 ["_toolNameByToolCallId"]
       21 CALL                             R1 1 0
       22 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantSplitToolsAndWidgets"]
        3 JUMPIFNOT                        R1 ; [+7]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["get"]
        7 MOVE                             R2 R0
        8 CALL                             R1 1 1
        9 JUMPIFNOT                        R1 ; [+1]
       10 RETURN                           R1 1
       11 GETUPVAL                         R1 2
       12 GETTABLEKS                       R1 R1 K2 ["Type"]
       14 RETURN                           R1 1

PROTO_5:
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

PROTO_6:
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

PROTO_7:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R1 R0 K0 ["trackedElapsedSeconds"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["FFlagAssistantSplitToolsAndWidgets"]
        6 JUMPIFNOT                        R1 ; [+4]
        7 LOADNIL                          R1
        8 SETTABLEKS                       R1 R0 K2 ["streaming"]
       10 JUMP                             ; [+3]
       11 LOADB                            R1 0
       12 SETTABLEKS                       R1 R0 K3 ["generating"]
       14 LOADNIL                          R1
       15 RETURN                           R1 1

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["_activeStreamKind"]
        2 JUMPIFNOTEQKS                    R1 K1 ["thought"] ; [+56]
        4 GETTABLEKS                       R1 R0 K2 ["_activeStreamContentId"]
        6 JUMPIFNOT                        R1 ; [+52]
        7 GETTABLEKS                       R1 R0 K3 ["_activeAssistantMessageId"]
        9 JUMPIFNOT                        R1 ; [+49]
       10 GETTABLEKS                       R1 R0 K4 ["_activeThoughtStartedAt"]
       12 JUMPIFNOT                        R1 ; [+46]
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
       55 CAPTURE                          UPVAL U0
       56 SETTABLEKS                       R5 R4 K18 ["transformFn"]
       58 CALL                             R3 1 0
       59 LOADNIL                          R1
       60 SETTABLEKS                       R1 R0 K0 ["_activeStreamKind"]
       62 LOADNIL                          R1
       63 SETTABLEKS                       R1 R0 K2 ["_activeStreamContentId"]
       65 LOADNIL                          R1
       66 SETTABLEKS                       R1 R0 K4 ["_activeThoughtStartedAt"]
       68 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["_activeAssistantMessageId"]
        2 JUMPIFNOT                        R1 ; [+3]
        3 GETTABLEKS                       R1 R0 K0 ["_activeAssistantMessageId"]
        5 RETURN                           R1 1
        6 GETTABLEKS                       R1 R0 K1 ["_callbacks"]
        8 GETTABLEKS                       R1 R1 K2 ["addMessage"]
       10 DUPTABLE                         R2 K4 [{"role"}]
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K5 ["ROLE"]
       14 GETTABLEKS                       R3 R3 K6 ["Assistant"]
       16 SETTABLEKS                       R3 R2 K3 ["role"]
       18 CALL                             R1 1 1
       19 SETTABLEKS                       R1 R0 K0 ["_activeAssistantMessageId"]
       21 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R1 R0 K0 ["text"]
        3 LOADNIL                          R1
        4 RETURN                           R1 1

PROTO_11:
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

PROTO_12:
        0 NAMECALL                         R2 R0 K0 ["_resetActiveStream"]
        2 CALL                             R2 1 0
        3 LOADNIL                          R2
        4 SETTABLEKS                       R2 R0 K1 ["_activeAssistantMessageId"]
        6 GETTABLEKS                       R2 R0 K2 ["_callbacks"]
        8 GETTABLEKS                       R2 R2 K3 ["addMessage"]
       10 DUPTABLE                         R3 K6 [{"role", "hidden"}]
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K7 ["ROLE"]
       14 GETTABLEKS                       R4 R4 K8 ["User"]
       16 SETTABLEKS                       R4 R3 K4 ["role"]
       18 GETTABLEKS                       R4 R0 K9 ["_acceptedUserMessageHidden"]
       20 SETTABLEKS                       R4 R3 K5 ["hidden"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R0 K2 ["_callbacks"]
       25 GETTABLEKS                       R3 R3 K10 ["addContent"]
       27 DUPTABLE                         R4 K13 [{"messageId", "content"}]
       28 SETTABLEKS                       R2 R4 K11 ["messageId"]
       30 DUPTABLE                         R5 K16 [{"type", "text"}]
       31 GETUPVAL                         R6 1
       32 GETTABLEKS                       R6 R6 K17 ["Type"]
       34 SETTABLEKS                       R6 R5 K14 ["type"]
       36 SETTABLEKS                       R1 R5 K15 ["text"]
       38 SETTABLEKS                       R5 R4 K12 ["content"]
       40 CALL                             R3 1 0
       41 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R2 R0 K0 ["_suppressUserMessageEcho"]
        2 JUMPIFNOT                        R2 ; [+4]
        3 LOADB                            R2 0
        4 SETTABLEKS                       R2 R0 K0 ["_suppressUserMessageEcho"]
        6 RETURN                           R0 0
        7 NAMECALL                         R2 R0 K1 ["_resetActiveStream"]
        9 CALL                             R2 1 0
       10 LOADNIL                          R2
       11 SETTABLEKS                       R2 R0 K2 ["_activeAssistantMessageId"]
       13 GETTABLEKS                       R2 R0 K3 ["_callbacks"]
       15 GETTABLEKS                       R2 R2 K4 ["addMessage"]
       17 DUPTABLE                         R3 K7 [{"role", "hidden"}]
       18 GETUPVAL                         R4 0
       19 GETTABLEKS                       R4 R4 K8 ["ROLE"]
       21 GETTABLEKS                       R4 R4 K9 ["User"]
       23 SETTABLEKS                       R4 R3 K5 ["role"]
       25 GETTABLEKS                       R4 R0 K10 ["_acceptedUserMessageHidden"]
       27 SETTABLEKS                       R4 R3 K6 ["hidden"]
       29 CALL                             R2 1 1
       30 NEWTABLE                         R3 0 0
       32 GETTABLEKS                       R4 R1 K11 ["content"]
       34 LOADNIL                          R5
       35 LOADNIL                          R6
       36 FORGPREP                         R4
       37 GETTABLEKS                       R9 R8 K12 ["type"]
       39 JUMPIFNOTEQKS                    R9 K13 ["text"] ; [+37]
       41 GETTABLEKS                       R9 R8 K13 ["text"]
       43 JUMPIFEQKS                       R9 K14 [""] ; [+33]
       45 GETIMPORT                        R9 K17 [string.find]
       47 GETTABLEKS                       R10 R8 K13 ["text"]
       49 GETUPVAL                         R11 0
       50 GETTABLEKS                       R11 R11 K18 ["SYSTEM_REMINDER_OPEN"]
       52 LOADN                            R12 1
       53 LOADB                            R13 1
       54 CALL                             R9 4 1
       55 JUMPIF                           R9 ; [+21]
       56 GETTABLEKS                       R9 R0 K3 ["_callbacks"]
       58 GETTABLEKS                       R9 R9 K19 ["addContent"]
       60 DUPTABLE                         R10 K21 [{"messageId", "content"}]
       61 SETTABLEKS                       R2 R10 K20 ["messageId"]
       63 DUPTABLE                         R11 K22 [{"type", "text"}]
       64 GETUPVAL                         R12 1
       65 GETTABLEKS                       R12 R12 K23 ["Type"]
       67 SETTABLEKS                       R12 R11 K12 ["type"]
       69 GETTABLEKS                       R12 R8 K13 ["text"]
       71 SETTABLEKS                       R12 R11 K13 ["text"]
       73 SETTABLEKS                       R11 R10 K11 ["content"]
       75 CALL                             R9 1 0
       76 JUMP                             ; [+19]
       77 GETTABLEKS                       R9 R8 K12 ["type"]
       79 JUMPIFNOTEQKS                    R9 K24 ["image"] ; [+16]
       81 DUPTABLE                         R11 K27 [{["type"] = "image", ["data"], ["mimeType"]}]
       82 GETTABLEKS                       R12 R8 K25 ["data"]
       84 SETTABLEKS                       R12 R11 K25 ["data"]
       86 GETTABLEKS                       R12 R8 K26 ["mimeType"]
       88 SETTABLEKS                       R12 R11 K26 ["mimeType"]
       90 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
       92 MOVE                             R10 R3
       93 GETIMPORT                        R9 K30 [table.insert]
       95 CALL                             R9 2 0
       96 FORGLOOP                         R4 2 ; [-60]
       98 LENGTH                           R4 R3
       99 LOADN                            R5 0
      100 JUMPIFNOTLT                      R5 R4 ; [+19]
      102 GETTABLEKS                       R4 R0 K3 ["_callbacks"]
      104 GETTABLEKS                       R4 R4 K19 ["addContent"]
      106 DUPTABLE                         R5 K21 [{"messageId", "content"}]
      107 SETTABLEKS                       R2 R5 K20 ["messageId"]
      109 DUPTABLE                         R6 K34 [{["type"], ["imageContents"], ["expanded"] = False}]
      110 GETUPVAL                         R7 2
      111 GETTABLEKS                       R7 R7 K23 ["Type"]
      113 SETTABLEKS                       R7 R6 K12 ["type"]
      115 SETTABLEKS                       R3 R6 K31 ["imageContents"]
      117 SETTABLEKS                       R6 R5 K11 ["content"]
      119 CALL                             R4 1 0
      120 GETTABLEKS                       R4 R0 K35 ["_isHistoryReplay"]
      122 JUMPIF                           R4 ; [+3]
      123 NAMECALL                         R4 R0 K36 ["getOrCreateAssistantMessage"]
      125 CALL                             R4 1 0
      126 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R1 R0 K0 ["thinking"]
        3 LOADNIL                          R1
        4 RETURN                           R1 1

PROTO_15:
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
       44 DUPTABLE                         R5 K22 [{["type"], ["thinking"], ["signature"] = "", ["expanded"] = False, ["generating"], ["streaming"]}]
       45 GETUPVAL                         R6 0
       46 GETTABLEKS                       R6 R6 K23 ["Type"]
       48 SETTABLEKS                       R6 R5 K14 ["type"]
       50 SETTABLEKS                       R1 R5 K15 ["thinking"]
       52 GETUPVAL                         R7 1
       53 GETTABLEKS                       R7 R7 K24 ["FFlagAssistantSplitToolsAndWidgets"]
       55 JUMPIFNOT                        R7 ; [+2]
       56 LOADNIL                          R6
       57 JUMP                             ; [+3]
       58 GETTABLEKS                       R7 R0 K25 ["_isHistoryReplay"]
       60 NOT                              R6 R7
       61 SETTABLEKS                       R6 R5 K20 ["generating"]
       63 GETUPVAL                         R7 1
       64 GETTABLEKS                       R7 R7 K24 ["FFlagAssistantSplitToolsAndWidgets"]
       66 JUMPIFNOT                        R7 ; [+6]
       67 GETTABLEKS                       R7 R0 K25 ["_isHistoryReplay"]
       69 JUMPIF                           R7 ; [+3]
       70 NEWTABLE                         R6 0 0
       72 JUMP                             ; [+1]
       73 LOADNIL                          R6
       74 SETTABLEKS                       R6 R5 K21 ["streaming"]
       76 SETTABLEKS                       R5 R4 K12 ["content"]
       78 CALL                             R3 1 1
       79 LOADK                            R4 K1 ["thought"]
       80 SETTABLEKS                       R4 R0 K0 ["_activeStreamKind"]
       82 SETTABLEKS                       R3 R0 K4 ["_activeStreamContentId"]
       84 GETTABLEKS                       R5 R0 K25 ["_isHistoryReplay"]
       86 JUMPIFNOT                        R5 ; [+2]
       87 LOADNIL                          R4
       88 JUMP                             ; [+3]
       89 GETIMPORT                        R4 K27 [tick]
       91 CALL                             R4 0 1
       92 SETTABLEKS                       R4 R0 K28 ["_activeThoughtStartedAt"]
       94 RETURN                           R0 0

PROTO_16:
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
       21 GETUPVAL                         R5 0
       22 GETTABLEKS                       R5 R5 K6 ["FFlagAssistantSplitToolsAndWidgets"]
       24 JUMPIFNOT                        R5 ; [+8]
       25 GETUPVAL                         R5 2
       26 GETTABLEKS                       R5 R5 K7 ["get"]
       28 MOVE                             R6 R3
       29 CALL                             R5 1 1
       30 JUMPIFNOT                        R5 ; [+2]
       31 MOVE                             R4 R5
       32 JUMP                             ; [+3]
       33 GETUPVAL                         R4 3
       34 GETTABLEKS                       R4 R4 K8 ["Type"]
       36 GETUPVAL                         R5 4
       37 GETTABLEKS                       R5 R5 K9 ["getStreamTransform"]
       39 MOVE                             R6 R3
       40 CALL                             R5 1 1
       41 GETUPVAL                         R7 2
       42 GETTABLEKS                       R7 R7 K10 ["None"]
       44 JUMPIFNOTEQ                      R4 R7 ; [+2]
       46 LOADB                            R6 0 +1
       47 LOADB                            R6 1
       48 LOADB                            R7 0
       49 JUMPIFEQKNIL                     R5 ; [+8]
       51 GETUPVAL                         R8 4
       52 GETTABLEKS                       R8 R8 K10 ["None"]
       54 JUMPIFNOTEQ                      R5 R8 ; [+2]
       56 LOADB                            R7 0 +1
       57 LOADB                            R7 1
       58 GETUPVAL                         R8 0
       59 GETTABLEKS                       R8 R8 K11 ["FFlagDebugLogAssistantUI"]
       61 JUMPIFNOT                        R8 ; [+25]
       62 GETIMPORT                        R8 K13 [print]
       64 LOADK                            R12 K14 ["[Tool Call] UI create: toolCallId=%* title=%* actualToolName=%* "]
       65 GETTABLEKS                       R15 R1 K15 ["toolCallId"]
       67 FASTCALL1                        TOSTRING R15 ; [+2]
       68 GETIMPORT                        R14 K17 [tostring]
       70 CALL                             R14 1 1
       71 MOVE                             R15 R2
       72 MOVE                             R16 R3
       73 NAMECALL                         R12 R12 K18 ["format"]
       75 CALL                             R12 4 1
       76 MOVE                             R10 R12
       77 LOADK                            R12 K19 ["widgetType=%* foundWidget=%* foundStreamTransform=%*"]
       78 MOVE                             R14 R4
       79 MOVE                             R15 R6
       80 MOVE                             R16 R7
       81 NAMECALL                         R12 R12 K18 ["format"]
       83 CALL                             R12 4 1
       84 MOVE                             R11 R12
       85 CONCAT                           R9 R10 R11
       86 CALL                             R8 1 0
       87 GETUPVAL                         R8 2
       88 GETTABLEKS                       R8 R8 K10 ["None"]
       90 JUMPIFNOTEQ                      R4 R8 ; [+15]
       92 GETUPVAL                         R8 0
       93 GETTABLEKS                       R8 R8 K11 ["FFlagDebugLogAssistantUI"]
       95 JUMPIFNOT                        R8 ; [+9]
       96 GETIMPORT                        R8 K13 [print]
       98 LOADK                            R10 K20 ["[Tool Call] UI create skipped: no widget for actualToolName=%*"]
       99 MOVE                             R12 R3
      100 NAMECALL                         R10 R10 K18 ["format"]
      102 CALL                             R10 2 1
      103 MOVE                             R9 R10
      104 CALL                             R8 1 0
      105 RETURN                           R0 0
      106 GETTABLEKS                       R9 R1 K21 ["rawInput"]
      108 JUMPIFNOTEQKNIL                  R9 ; [+2]
      110 LOADB                            R8 0 +1
      111 LOADB                            R8 1
      112 DUPTABLE                         R9 K29 [{["type"] = "tool_use", ["id"], ["name"], ["input"], ["thoughtSignature"] = }]
      113 GETTABLEKS                       R10 R1 K15 ["toolCallId"]
      115 SETTABLEKS                       R10 R9 K24 ["id"]
      117 SETTABLEKS                       R3 R9 K25 ["name"]
      119 GETTABLEKS                       R10 R1 K21 ["rawInput"]
      121 JUMPIF                           R10 ; [+2]
      122 NEWTABLE                         R10 0 0
      124 SETTABLEKS                       R10 R9 K26 ["input"]
      126 LOADNIL                          R10
      127 GETTABLEKS                       R11 R0 K30 ["_isHistoryReplay"]
      129 JUMPIFNOT                        R11 ; [+13]
      130 LOADB                            R11 1
      131 GETUPVAL                         R12 5
      132 GETTABLEKS                       R12 R12 K31 ["PrimitiveGen"]
      134 JUMPIFEQ                         R3 R12 ; [+8]
      136 GETUPVAL                         R12 5
      137 GETTABLEKS                       R12 R12 K32 ["MeshGen"]
      139 JUMPIFEQ                         R3 R12 ; [+2]
      141 LOADB                            R11 0 +1
      142 LOADB                            R11 1
      143 JUMPIFNOT                        R11 ; [+10]
      144 DUPTABLE                         R12 K38 [{["type"], ["toolIdentifier"], ["expanded"] = False, ["generating"] = True}]
      145 GETUPVAL                         R13 3
      146 GETTABLEKS                       R13 R13 K8 ["Type"]
      148 SETTABLEKS                       R13 R12 K22 ["type"]
      150 SETTABLEKS                       R3 R12 K33 ["toolIdentifier"]
      152 MOVE                             R10 R12
      153 JUMP                             ; [+64]
      154 GETUPVAL                         R12 4
      155 GETTABLEKS                       R12 R12 K10 ["None"]
      157 JUMPIFNOTEQ                      R5 R12 ; [+15]
      159 GETUPVAL                         R12 0
      160 GETTABLEKS                       R12 R12 K11 ["FFlagDebugLogAssistantUI"]
      162 JUMPIFNOT                        R12 ; [+9]
      163 GETIMPORT                        R12 K13 [print]
      165 LOADK                            R14 K39 ["[Tool Call] UI create skipped: streamTransform=None for actualToolName=%*"]
      166 MOVE                             R16 R3
      167 NAMECALL                         R14 R14 K18 ["format"]
      169 CALL                             R14 2 1
      170 MOVE                             R13 R14
      171 CALL                             R12 1 0
      172 RETURN                           R0 0
      173 FASTCALL1                        TYPEOF R5 ; [+3]
      174 MOVE                             R13 R5
      175 GETIMPORT                        R12 K41 [typeof]
      177 CALL                             R12 1 1
      178 JUMPIFNOTEQKS                    R12 K42 ["table"] ; [+20]
      180 GETTABLEKS                       R12 R5 K43 ["transformInitialContent"]
      182 MOVE                             R13 R9
      183 CALL                             R12 1 1
      184 MOVE                             R10 R12
      185 JUMPIFNOT                        R8 ; [+32]
      186 GETTABLEKS                       R12 R5 K44 ["getTransformPreExecuteFn"]
      188 JUMPIFNOT                        R12 ; [+4]
      189 MOVE                             R13 R12
      190 MOVE                             R14 R9
      191 CALL                             R13 1 1
      192 JUMP                             ; [+1]
      193 LOADNIL                          R13
      194 JUMPIFNOT                        R13 ; [+23]
      195 MOVE                             R14 R13
      196 MOVE                             R15 R10
      197 CALL                             R14 1 0
      198 JUMP                             ; [+19]
      199 GETUPVAL                         R12 3
      200 GETTABLEKS                       R12 R12 K8 ["Type"]
      202 JUMPIFNOTEQ                      R4 R12 ; [+11]
      204 DUPTABLE                         R12 K38 [{["type"], ["toolIdentifier"], ["expanded"] = False, ["generating"] = True}]
      205 GETUPVAL                         R13 3
      206 GETTABLEKS                       R13 R13 K8 ["Type"]
      208 SETTABLEKS                       R13 R12 K22 ["type"]
      210 SETTABLEKS                       R3 R12 K33 ["toolIdentifier"]
      212 MOVE                             R10 R12
      213 JUMP                             ; [+4]
      214 DUPTABLE                         R12 K45 [{["type"], ["expanded"] = False, ["generating"] = True}]
      215 SETTABLEKS                       R4 R12 K22 ["type"]
      217 MOVE                             R10 R12
      218 JUMPIFNOT                        R8 ; [+3]
      219 SETTABLEKS                       R9 R10 K46 ["toolUse"]
      221 JUMP                             ; [+11]
      222 GETUPVAL                         R12 0
      223 GETTABLEKS                       R12 R12 K6 ["FFlagAssistantSplitToolsAndWidgets"]
      225 JUMPIFNOT                        R12 ; [+7]
      226 GETTABLEKS                       R12 R0 K30 ["_isHistoryReplay"]
      228 JUMPIF                           R12 ; [+4]
      229 NEWTABLE                         R12 0 0
      231 SETTABLEKS                       R12 R10 K47 ["streaming"]
      233 LOADB                            R12 1
      234 SETTABLEKS                       R12 R10 K36 ["generating"]
      236 GETUPVAL                         R13 0
      237 GETTABLEKS                       R13 R13 K6 ["FFlagAssistantSplitToolsAndWidgets"]
      239 JUMPIFNOT                        R13 ; [+13]
      240 FASTCALL1                        TYPEOF R4 ; [+3]
      241 MOVE                             R14 R4
      242 GETIMPORT                        R13 K41 [typeof]
      244 CALL                             R13 1 1
      245 JUMPIFNOTEQKS                    R13 K48 ["string"] ; [+7]
      247 GETUPVAL                         R12 6
      248 GETTABLEKS                       R12 R12 K49 ["getAutoExpand"]
      250 MOVE                             R13 R4
      251 CALL                             R12 1 1
      252 JUMP                             ; [+1]
      253 LOADNIL                          R12
      254 JUMPIFNOT                        R12 ; [+9]
      255 GETTABLEKS                       R14 R12 K50 ["expandWhileGenerating"]
      257 JUMPIFNOT                        R14 ; [+2]
      258 LOADB                            R13 1
      259 JUMP                             ; [+1]
      260 LOADB                            R13 0
      261 SETTABLEKS                       R13 R10 K34 ["expanded"]
      263 JUMP                             ; [+7]
      264 GETTABLEKS                       R13 R10 K34 ["expanded"]
      266 JUMPIFNOTEQKNIL                  R13 ; [+4]
      268 LOADB                            R13 0
      269 SETTABLEKS                       R13 R10 K34 ["expanded"]
      271 NAMECALL                         R13 R0 K51 ["getOrCreateAssistantMessage"]
      273 CALL                             R13 1 1
      274 GETTABLEKS                       R14 R0 K52 ["_callbacks"]
      276 GETTABLEKS                       R14 R14 K53 ["addContent"]
      278 DUPTABLE                         R15 K56 [{"messageId", "content"}]
      279 SETTABLEKS                       R13 R15 K54 ["messageId"]
      281 SETTABLEKS                       R10 R15 K55 ["content"]
      283 CALL                             R14 1 1
      284 GETUPVAL                         R15 0
      285 GETTABLEKS                       R15 R15 K11 ["FFlagDebugLogAssistantUI"]
      287 JUMPIFNOT                        R15 ; [+31]
      288 GETIMPORT                        R15 K13 [print]
      290 LOADK                            R19 K57 ["[Tool Call] UI update (create): toolCallId=%* messageId=%* "]
      291 GETTABLEKS                       R22 R1 K15 ["toolCallId"]
      293 FASTCALL1                        TOSTRING R22 ; [+2]
      294 GETIMPORT                        R21 K17 [tostring]
      296 CALL                             R21 1 1
      297 MOVE                             R22 R13
      298 NAMECALL                         R19 R19 K18 ["format"]
      300 CALL                             R19 3 1
      301 MOVE                             R17 R19
      302 LOADK                            R19 K58 ["contentId=%* widgetType=%* status=%*"]
      303 MOVE                             R21 R14
      304 GETTABLEKS                       R23 R10 K22 ["type"]
      306 OR                               R22 R23 R4
      307 GETTABLEKS                       R24 R1 K59 ["status"]
      309 FASTCALL1                        TOSTRING R24 ; [+2]
      310 GETIMPORT                        R23 K17 [tostring]
      312 CALL                             R23 1 1
      313 NAMECALL                         R19 R19 K18 ["format"]
      315 CALL                             R19 4 1
      316 MOVE                             R18 R19
      317 CONCAT                           R16 R17 R18
      318 CALL                             R15 1 0
      319 GETTABLEKS                       R15 R1 K15 ["toolCallId"]
      321 JUMPIFNOT                        R15 ; [+24]
      322 GETTABLEKS                       R15 R0 K60 ["_contentIdByToolCallId"]
      324 GETTABLEKS                       R16 R1 K15 ["toolCallId"]
      326 SETTABLE                         R14 R15 R16
      327 GETTABLEKS                       R15 R0 K61 ["_toolNameByToolCallId"]
      329 GETTABLEKS                       R16 R1 K15 ["toolCallId"]
      331 SETTABLE                         R3 R15 R16
      332 GETTABLEKS                       R15 R0 K52 ["_callbacks"]
      334 GETTABLEKS                       R15 R15 K62 ["onToolWidgetCreated"]
      336 JUMPIFNOT                        R15 ; [+9]
      337 GETTABLEKS                       R15 R0 K52 ["_callbacks"]
      339 GETTABLEKS                       R15 R15 K62 ["onToolWidgetCreated"]
      341 GETTABLEKS                       R16 R1 K15 ["toolCallId"]
      343 MOVE                             R17 R13
      344 MOVE                             R18 R14
      345 CALL                             R15 3 0
      346 RETURN                           R0 0

PROTO_17:
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

PROTO_18:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+50]
        2 DUPTABLE                         R1 K7 [{[1] = "tool_use", ["id"], ["name"], ["input"], ["thoughtSignature"] = }]
        3 GETUPVAL                         R2 1
        4 SETTABLEKS                       R2 R1 K2 ["id"]
        6 GETUPVAL                         R2 2
        7 SETTABLEKS                       R2 R1 K3 ["name"]
        9 GETUPVAL                         R2 3
       10 GETTABLEKS                       R2 R2 K8 ["rawInput"]
       12 JUMPIF                           R2 ; [+2]
       13 NEWTABLE                         R2 0 0
       15 SETTABLEKS                       R2 R1 K4 ["input"]
       17 GETUPVAL                         R2 4
       18 GETTABLEKS                       R2 R2 K9 ["getStreamTransform"]
       20 GETUPVAL                         R3 2
       21 CALL                             R2 1 1
       22 FASTCALL1                        TYPEOF R2 ; [+3]
       23 MOVE                             R5 R2
       24 GETIMPORT                        R4 K11 [typeof]
       26 CALL                             R4 1 1
       27 JUMPIFNOTEQKS                    R4 K12 ["table"] ; [+4]
       29 GETTABLEKS                       R3 R2 K13 ["getTransformPreExecuteFn"]
       31 JUMP                             ; [+1]
       32 LOADNIL                          R3
       33 JUMPIFNOT                        R3 ; [+4]
       34 MOVE                             R4 R3
       35 MOVE                             R5 R1
       36 CALL                             R4 1 1
       37 JUMP                             ; [+1]
       38 LOADNIL                          R4
       39 JUMPIFNOT                        R4 ; [+3]
       40 MOVE                             R5 R4
       41 MOVE                             R6 R0
       42 CALL                             R5 1 0
       43 SETTABLEKS                       R1 R0 K14 ["toolUse"]
       45 GETUPVAL                         R5 5
       46 GETTABLEKS                       R5 R5 K15 ["FFlagAssistantSplitToolsAndWidgets"]
       48 JUMPIFNOT                        R5 ; [+3]
       49 LOADNIL                          R5
       50 SETTABLEKS                       R5 R0 K16 ["streaming"]
       52 GETUPVAL                         R1 6
       53 JUMPIFNOT                        R1 ; [+57]
       54 DUPTABLE                         R1 K24 [{[1] = "tool_result", ["id"], ["name"], ["content"], ["isError"], ["structuredContent"], ["startTime"] = 0, ["startTimeAfterConfirmation"] = 0}]
       55 GETUPVAL                         R2 1
       56 SETTABLEKS                       R2 R1 K2 ["id"]
       58 GETUPVAL                         R2 2
       59 SETTABLEKS                       R2 R1 K3 ["name"]
       61 GETUPVAL                         R2 7
       62 GETUPVAL                         R3 3
       63 GETTABLEKS                       R3 R3 K18 ["content"]
       65 CALL                             R2 1 1
       66 JUMPIF                           R2 ; [+2]
       67 NEWTABLE                         R2 0 0
       69 SETTABLEKS                       R2 R1 K18 ["content"]
       71 GETUPVAL                         R3 8
       72 JUMPIFEQKS                       R3 K25 ["failed"] ; [+2]
       74 LOADB                            R2 0 +1
       75 LOADB                            R2 1
       76 SETTABLEKS                       R2 R1 K19 ["isError"]
       78 GETUPVAL                         R2 3
       79 GETTABLEKS                       R2 R2 K26 ["rawOutput"]
       81 SETTABLEKS                       R2 R1 K20 ["structuredContent"]
       83 GETUPVAL                         R2 4
       84 GETTABLEKS                       R2 R2 K9 ["getStreamTransform"]
       86 GETUPVAL                         R3 2
       87 CALL                             R2 1 1
       88 FASTCALL1                        TYPEOF R2 ; [+3]
       89 MOVE                             R5 R2
       90 GETIMPORT                        R4 K11 [typeof]
       92 CALL                             R4 1 1
       93 JUMPIFNOTEQKS                    R4 K12 ["table"] ; [+4]
       95 GETTABLEKS                       R3 R2 K27 ["getTransformResultFn"]
       97 JUMP                             ; [+1]
       98 LOADNIL                          R3
       99 JUMPIFNOT                        R3 ; [+4]
      100 MOVE                             R4 R3
      101 MOVE                             R5 R1
      102 CALL                             R4 1 1
      103 JUMP                             ; [+1]
      104 LOADNIL                          R4
      105 JUMPIFNOT                        R4 ; [+3]
      106 MOVE                             R5 R4
      107 MOVE                             R6 R0
      108 CALL                             R5 1 0
      109 SETTABLEKS                       R1 R0 K28 ["toolResult"]
      111 GETUPVAL                         R1 9
      112 JUMPIFNOT                        R1 ; [+42]
      113 LOADB                            R1 0
      114 SETTABLEKS                       R1 R0 K29 ["generating"]
      116 GETUPVAL                         R2 2
      117 GETUPVAL                         R3 5
      118 GETTABLEKS                       R3 R3 K15 ["FFlagAssistantSplitToolsAndWidgets"]
      120 JUMPIFNOT                        R3 ; [+8]
      121 GETUPVAL                         R3 10
      122 GETTABLEKS                       R3 R3 K30 ["get"]
      124 MOVE                             R4 R2
      125 CALL                             R3 1 1
      126 JUMPIFNOT                        R3 ; [+2]
      127 MOVE                             R1 R3
      128 JUMP                             ; [+3]
      129 GETUPVAL                         R1 11
      130 GETTABLEKS                       R1 R1 K31 ["Type"]
      132 GETUPVAL                         R3 5
      133 GETTABLEKS                       R3 R3 K15 ["FFlagAssistantSplitToolsAndWidgets"]
      135 JUMPIFNOT                        R3 ; [+11]
      136 GETUPVAL                         R3 10
      137 GETTABLEKS                       R3 R3 K32 ["None"]
      139 JUMPIFEQ                         R1 R3 ; [+7]
      141 GETUPVAL                         R2 12
      142 GETTABLEKS                       R2 R2 K33 ["getAutoExpand"]
      144 MOVE                             R3 R1
      145 CALL                             R2 1 1
      146 JUMP                             ; [+1]
      147 LOADNIL                          R2
      148 JUMPIFNOT                        R2 ; [+6]
      149 GETTABLEKS                       R3 R2 K34 ["collapseOnComplete"]
      151 JUMPIFNOT                        R3 ; [+3]
      152 LOADB                            R3 0
      153 SETTABLEKS                       R3 R0 K35 ["expanded"]
      155 LOADNIL                          R1
      156 RETURN                           R1 1

PROTO_19:
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
      188 JUMPIFEQKNIL                     R13 ; [+47]
      190 JUMPIF                           R9 ; [+45]
      191 GETUPVAL                         R14 0
      192 GETTABLEKS                       R14 R14 K35 ["FFlagAssistantSplitToolsAndWidgets"]
      194 JUMPIFNOT                        R14 ; [+41]
      195 GETUPVAL                         R15 0
      196 GETTABLEKS                       R15 R15 K35 ["FFlagAssistantSplitToolsAndWidgets"]
      198 JUMPIFNOT                        R15 ; [+8]
      199 GETUPVAL                         R15 2
      200 GETTABLEKS                       R15 R15 K36 ["get"]
      202 MOVE                             R16 R11
      203 CALL                             R15 1 1
      204 JUMPIFNOT                        R15 ; [+2]
      205 MOVE                             R14 R15
      206 JUMP                             ; [+3]
      207 GETUPVAL                         R14 3
      208 GETTABLEKS                       R14 R14 K37 ["Type"]
      210 GETUPVAL                         R15 2
      211 GETTABLEKS                       R15 R15 K38 ["None"]
      213 JUMPIFEQ                         R14 R15 ; [+21]
      215 GETUPVAL                         R15 4
      216 GETTABLEKS                       R15 R15 K39 ["needsStreamingToolUse"]
      218 MOVE                             R16 R14
      219 CALL                             R15 1 1
      220 JUMPIFNOT                        R15 ; [+14]
      221 GETTABLEKS                       R15 R0 K40 ["_callbacks"]
      223 GETTABLEKS                       R15 R15 K41 ["editContent"]
      225 DUPTABLE                         R16 K45 [{"messageId", "contentId", "transformFn"}]
      226 SETTABLEKS                       R4 R16 K42 ["messageId"]
      228 SETTABLEKS                       R3 R16 K43 ["contentId"]
      230 NEWCLOSURE                       R17 P0
      231 CAPTURE                          VAL R13
      232 SETTABLEKS                       R17 R16 K44 ["transformFn"]
      234 CALL                             R15 1 0
      235 RETURN                           R0 0
      236 GETTABLEKS                       R14 R0 K40 ["_callbacks"]
      238 GETTABLEKS                       R14 R14 K41 ["editContent"]
      240 DUPTABLE                         R15 K45 [{"messageId", "contentId", "transformFn"}]
      241 SETTABLEKS                       R4 R15 K42 ["messageId"]
      243 SETTABLEKS                       R3 R15 K43 ["contentId"]
      245 NEWCLOSURE                       R16 P1
      246 CAPTURE                          VAL R9
      247 CAPTURE                          VAL R2
      248 CAPTURE                          VAL R11
      249 CAPTURE                          VAL R1
      250 CAPTURE                          UPVAL U5
      251 CAPTURE                          UPVAL U0
      252 CAPTURE                          VAL R8
      253 CAPTURE                          UPVAL U6
      254 CAPTURE                          VAL R6
      255 CAPTURE                          VAL R7
      256 CAPTURE                          UPVAL U2
      257 CAPTURE                          UPVAL U3
      258 CAPTURE                          UPVAL U4
      259 SETTABLEKS                       R16 R15 K44 ["transformFn"]
      261 CALL                             R14 1 0
      262 RETURN                           R0 0

PROTO_20:
        0 GETTABLEKS                       R2 R0 K0 ["_callbacks"]
        2 GETTABLEKS                       R2 R2 K1 ["onPlan"]
        4 JUMPIFNOT                        R2 ; [+7]
        5 GETTABLEKS                       R2 R0 K0 ["_callbacks"]
        7 GETTABLEKS                       R2 R2 K1 ["onPlan"]
        9 GETTABLEKS                       R3 R1 K2 ["entries"]
       11 CALL                             R2 1 0
       12 RETURN                           R0 0

PROTO_21:
        0 GETTABLEKS                       R2 R0 K0 ["_callbacks"]
        2 GETTABLEKS                       R2 R2 K1 ["onAvailableCommands"]
        4 JUMPIFNOT                        R2 ; [+7]
        5 GETTABLEKS                       R2 R0 K0 ["_callbacks"]
        7 GETTABLEKS                       R2 R2 K1 ["onAvailableCommands"]
        9 GETTABLEKS                       R3 R1 K2 ["availableCommands"]
       11 CALL                             R2 1 0
       12 RETURN                           R0 0

PROTO_22:
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

PROTO_23:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["Compaction"]
        2 LOADK                            R4 K1 ["Complete"]
        3 NAMECALL                         R1 R1 K2 ["getText"]
        5 CALL                             R1 3 1
        6 SETTABLEKS                       R1 R0 K3 ["summary"]
        8 LOADNIL                          R1
        9 RETURN                           R1 1

PROTO_24:
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
       52 DUPCLOSURE                       R5 K21 [PROTO_23]
       53 CAPTURE                          UPVAL U1
       54 SETTABLEKS                       R5 R4 K19 ["transformFn"]
       56 CALL                             R3 1 0
       57 LOADNIL                          R3
       58 SETTABLEKS                       R3 R0 K15 ["_compactionContentId"]
       60 RETURN                           R0 0

PROTO_25:
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
      149 JUMPIFNOTEQ                      R2 R3 ; [+8]
      151 GETTABLEKS                       R2 R1 K25 ["state"]
      153 JUMPIFNOTEQKS                    R2 K26 ["idle"] ; [+4]
      155 NAMECALL                         R2 R0 K27 ["_resetActiveStream"]
      157 CALL                             R2 1 0
      158 RETURN                           R0 0

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
       48 GETTABLEKS                       R7 R0 K12 ["Components"]
       50 GETTABLEKS                       R7 R7 K9 ["ContentWidgets"]
       52 GETTABLEKS                       R7 R7 K15 ["SummarizedContentWidget"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R8 R0 K12 ["Components"]
       59 GETTABLEKS                       R8 R8 K9 ["ContentWidgets"]
       61 GETTABLEKS                       R8 R8 K16 ["TextContentWidget"]
       63 CALL                             R7 1 1
       64 GETIMPORT                        R8 K5 [require]
       66 GETTABLEKS                       R9 R0 K12 ["Components"]
       68 GETTABLEKS                       R9 R9 K9 ["ContentWidgets"]
       70 GETTABLEKS                       R9 R9 K17 ["ThinkingContentWidget"]
       72 CALL                             R8 1 1
       73 GETTABLEKS                       R9 R1 K18 ["Engine"]
       75 GETTABLEKS                       R9 R9 K19 ["Providers"]
       77 GETTABLEKS                       R9 R9 K20 ["ToolNames"]
       79 GETIMPORT                        R10 K5 [require]
       81 GETTABLEKS                       R11 R0 K8 ["Util"]
       83 GETTABLEKS                       R11 R11 K9 ["ContentWidgets"]
       85 GETTABLEKS                       R11 R11 K21 ["ToolWidgetMappingRegistry"]
       87 CALL                             R10 1 1
       88 GETIMPORT                        R11 K5 [require]
       90 GETTABLEKS                       R12 R0 K22 ["Resources"]
       92 GETTABLEKS                       R12 R12 K23 ["Localization"]
       94 GETTABLEKS                       R12 R12 K24 ["Translator"]
       96 CALL                             R11 1 1
       97 GETIMPORT                        R12 K5 [require]
       99 GETTABLEKS                       R13 R0 K25 ["Types"]
      101 CALL                             R12 1 1
      102 GETIMPORT                        R13 K5 [require]
      104 GETTABLEKS                       R14 R0 K12 ["Components"]
      106 GETTABLEKS                       R14 R14 K26 ["UIToolRegistry"]
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
      132 GETTABLEKS                       R17 R17 K25 ["Types"]
      134 GETTABLEKS                       R17 R17 K32 ["SessionUpdateKind"]
      136 GETTABLEKS                       R18 R1 K33 ["ToolNaming"]
      138 NEWTABLE                         R19 32 0
      140 SETTABLEKS                       R19 R19 K34 ["__index"]
      142 DUPCLOSURE                       R20 K35 [PROTO_0]
      143 CAPTURE                          VAL R19
      144 SETTABLEKS                       R20 R19 K36 ["new"]
      146 DUPCLOSURE                       R20 K37 [PROTO_1]
      147 SETTABLEKS                       R20 R19 K38 ["beginTurn"]
      149 DUPCLOSURE                       R20 K39 [PROTO_2]
      150 SETTABLEKS                       R20 R19 K40 ["endTurn"]
      152 DUPCLOSURE                       R20 K41 [PROTO_3]
      153 SETTABLEKS                       R20 R19 K42 ["resetRenderedState"]
      155 DUPCLOSURE                       R20 K43 [PROTO_4]
      156 CAPTURE                          VAL R3
      157 CAPTURE                          VAL R10
      158 CAPTURE                          VAL R4
      159 DUPCLOSURE                       R21 K44 [PROTO_5]
      160 CAPTURE                          VAL R3
      161 CAPTURE                          VAL R18
      162 DUPCLOSURE                       R22 K45 [PROTO_6]
      163 DUPCLOSURE                       R23 K46 [PROTO_8]
      164 CAPTURE                          VAL R3
      165 SETTABLEKS                       R23 R19 K47 ["_resetActiveStream"]
      167 DUPCLOSURE                       R23 K48 [PROTO_9]
      168 CAPTURE                          VAL R12
      169 SETTABLEKS                       R23 R19 K49 ["getOrCreateAssistantMessage"]
      171 DUPCLOSURE                       R23 K50 [PROTO_11]
      172 CAPTURE                          VAL R7
      173 SETTABLEKS                       R23 R19 K51 ["_handleMessageChunk"]
      175 DUPCLOSURE                       R23 K52 [PROTO_12]
      176 CAPTURE                          VAL R12
      177 CAPTURE                          VAL R7
      178 SETTABLEKS                       R23 R19 K53 ["_handleUserMessageChunk"]
      180 DUPCLOSURE                       R23 K54 [PROTO_13]
      181 CAPTURE                          VAL R12
      182 CAPTURE                          VAL R7
      183 CAPTURE                          VAL R5
      184 SETTABLEKS                       R23 R19 K55 ["_handleUserMessage"]
      186 DUPCLOSURE                       R23 K56 [PROTO_15]
      187 CAPTURE                          VAL R8
      188 CAPTURE                          VAL R3
      189 SETTABLEKS                       R23 R19 K57 ["_handleThoughtChunk"]
      191 DUPCLOSURE                       R23 K58 [PROTO_16]
      192 CAPTURE                          VAL R3
      193 CAPTURE                          VAL R18
      194 CAPTURE                          VAL R10
      195 CAPTURE                          VAL R4
      196 CAPTURE                          VAL R13
      197 CAPTURE                          VAL R9
      198 CAPTURE                          VAL R2
      199 SETTABLEKS                       R23 R19 K59 ["_handleToolCall"]
      201 DUPCLOSURE                       R23 K60 [PROTO_19]
      202 CAPTURE                          VAL R3
      203 CAPTURE                          VAL R18
      204 CAPTURE                          VAL R10
      205 CAPTURE                          VAL R4
      206 CAPTURE                          VAL R2
      207 CAPTURE                          VAL R13
      208 CAPTURE                          VAL R22
      209 SETTABLEKS                       R23 R19 K61 ["_handleToolCallUpdate"]
      211 DUPCLOSURE                       R23 K62 [PROTO_20]
      212 SETTABLEKS                       R23 R19 K63 ["_handlePlan"]
      214 DUPCLOSURE                       R23 K64 [PROTO_21]
      215 SETTABLEKS                       R23 R19 K65 ["_handleAvailableCommands"]
      217 DUPCLOSURE                       R23 K66 [PROTO_22]
      218 SETTABLEKS                       R23 R19 K67 ["_handleSessionInfo"]
      220 DUPCLOSURE                       R23 K68 [PROTO_24]
      221 CAPTURE                          VAL R6
      222 CAPTURE                          VAL R11
      223 SETTABLEKS                       R23 R19 K69 ["_handleCompactionStatus"]
      225 DUPCLOSURE                       R23 K70 [PROTO_25]
      226 CAPTURE                          VAL R17
      227 SETTABLEKS                       R23 R19 K71 ["handleUpdate"]
      229 RETURN                           R19 1
