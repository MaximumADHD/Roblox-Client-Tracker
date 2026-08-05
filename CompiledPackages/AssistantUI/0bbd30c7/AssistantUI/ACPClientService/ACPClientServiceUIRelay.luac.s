PROTO_0:
        0 NEWTABLE                         R2 16 0
        2 GETUPVAL                         R3 0
        3 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
        5 GETIMPORT                        R1 K1 [setmetatable]
        7 CALL                             R1 2 1
        8 SETTABLEKS                       R0 R1 K2 ["_callbacks"]
       10 LOADNIL                          R2
       11 SETTABLEKS                       R2 R1 K3 ["_activeAssistantMessageId"]
       13 NEWTABLE                         R2 0 0
       15 SETTABLEKS                       R2 R1 K4 ["_contentIdByToolCallId"]
       17 NEWTABLE                         R2 0 0
       19 SETTABLEKS                       R2 R1 K5 ["_toolNameByToolCallId"]
       21 GETTABLEKS                       R3 R0 K6 ["isHistoryReplay"]
       23 JUMPIFEQKB                       R3 TRUE ; [+2]
       25 LOADB                            R2 0 +1
       26 LOADB                            R2 1
       27 SETTABLEKS                       R2 R1 K7 ["_isHistoryReplay"]
       29 GETTABLEKS                       R3 R0 K8 ["acceptedUserMessageHidden"]
       31 JUMPIFEQKB                       R3 TRUE ; [+2]
       33 LOADB                            R2 0 +1
       34 LOADB                            R2 1
       35 SETTABLEKS                       R2 R1 K9 ["_acceptedUserMessageHidden"]
       37 LOADNIL                          R2
       38 SETTABLEKS                       R2 R1 K10 ["_activeStreamKind"]
       40 LOADNIL                          R2
       41 SETTABLEKS                       R2 R1 K11 ["_activeStreamContentId"]
       43 LOADNIL                          R2
       44 SETTABLEKS                       R2 R1 K12 ["_activeThoughtStartedAt"]
       46 LOADNIL                          R2
       47 SETTABLEKS                       R2 R1 K13 ["_compactionContentId"]
       49 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantSplitToolsAndWidgets"]
        3 JUMPIFNOT                        R1 ; [+11]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["get"]
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R2 R2 K2 ["stripPrefix"]
       10 MOVE                             R3 R0
       11 CALL                             R2 1 -1
       12 CALL                             R1 -1 1
       13 JUMPIFNOT                        R1 ; [+1]
       14 RETURN                           R1 1
       15 GETUPVAL                         R1 3
       16 GETTABLEKS                       R1 R1 K3 ["Type"]
       18 RETURN                           R1 1

PROTO_2:
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

PROTO_3:
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

PROTO_4:
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

PROTO_5:
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

PROTO_6:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R1 R0 K0 ["text"]
        3 LOADNIL                          R1
        4 RETURN                           R1 1

PROTO_7:
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

PROTO_8:
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

PROTO_9:
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
       23 NEWTABLE                         R3 0 0
       25 GETTABLEKS                       R4 R1 K10 ["content"]
       27 LOADNIL                          R5
       28 LOADNIL                          R6
       29 FORGPREP                         R4
       30 GETTABLEKS                       R9 R8 K11 ["type"]
       32 JUMPIFNOTEQKS                    R9 K12 ["text"] ; [+37]
       34 GETTABLEKS                       R9 R8 K12 ["text"]
       36 JUMPIFEQKS                       R9 K13 [""] ; [+33]
       38 GETIMPORT                        R9 K16 [string.find]
       40 GETTABLEKS                       R10 R8 K12 ["text"]
       42 GETUPVAL                         R11 0
       43 GETTABLEKS                       R11 R11 K17 ["SYSTEM_REMINDER_OPEN"]
       45 LOADN                            R12 1
       46 LOADB                            R13 1
       47 CALL                             R9 4 1
       48 JUMPIF                           R9 ; [+21]
       49 GETTABLEKS                       R9 R0 K2 ["_callbacks"]
       51 GETTABLEKS                       R9 R9 K18 ["addContent"]
       53 DUPTABLE                         R10 K20 [{"messageId", "content"}]
       54 SETTABLEKS                       R2 R10 K19 ["messageId"]
       56 DUPTABLE                         R11 K21 [{"type", "text"}]
       57 GETUPVAL                         R12 1
       58 GETTABLEKS                       R12 R12 K22 ["Type"]
       60 SETTABLEKS                       R12 R11 K11 ["type"]
       62 GETTABLEKS                       R12 R8 K12 ["text"]
       64 SETTABLEKS                       R12 R11 K12 ["text"]
       66 SETTABLEKS                       R11 R10 K10 ["content"]
       68 CALL                             R9 1 0
       69 JUMP                             ; [+19]
       70 GETTABLEKS                       R9 R8 K11 ["type"]
       72 JUMPIFNOTEQKS                    R9 K23 ["image"] ; [+16]
       74 DUPTABLE                         R11 K26 [{["type"] = "image", ["data"], ["mimeType"]}]
       75 GETTABLEKS                       R12 R8 K24 ["data"]
       77 SETTABLEKS                       R12 R11 K24 ["data"]
       79 GETTABLEKS                       R12 R8 K25 ["mimeType"]
       81 SETTABLEKS                       R12 R11 K25 ["mimeType"]
       83 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
       85 MOVE                             R10 R3
       86 GETIMPORT                        R9 K29 [table.insert]
       88 CALL                             R9 2 0
       89 FORGLOOP                         R4 2 ; [-60]
       91 LENGTH                           R4 R3
       92 LOADN                            R5 0
       93 JUMPIFNOTLT                      R5 R4 ; [+19]
       95 GETTABLEKS                       R4 R0 K2 ["_callbacks"]
       97 GETTABLEKS                       R4 R4 K18 ["addContent"]
       99 DUPTABLE                         R5 K20 [{"messageId", "content"}]
      100 SETTABLEKS                       R2 R5 K19 ["messageId"]
      102 DUPTABLE                         R6 K33 [{["type"], ["imageContents"], ["expanded"] = False}]
      103 GETUPVAL                         R7 2
      104 GETTABLEKS                       R7 R7 K22 ["Type"]
      106 SETTABLEKS                       R7 R6 K11 ["type"]
      108 SETTABLEKS                       R3 R6 K30 ["imageContents"]
      110 SETTABLEKS                       R6 R5 K10 ["content"]
      112 CALL                             R4 1 0
      113 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R1 R0 K0 ["thinking"]
        3 LOADNIL                          R1
        4 RETURN                           R1 1

PROTO_11:
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

PROTO_12:
        0 NAMECALL                         R2 R0 K0 ["_resetActiveStream"]
        2 CALL                             R2 1 0
        3 GETTABLEKS                       R3 R1 K2 ["title"]
        5 ORK                              R2 R3 K1 ["unknown_tool"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K3 ["FFlagAssistantSplitToolsAndWidgets"]
        9 JUMPIFNOT                        R4 ; [+12]
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R4 R4 K4 ["get"]
       13 GETUPVAL                         R5 2
       14 GETTABLEKS                       R5 R5 K5 ["stripPrefix"]
       16 MOVE                             R6 R2
       17 CALL                             R5 1 -1
       18 CALL                             R4 -1 1
       19 JUMPIFNOT                        R4 ; [+2]
       20 MOVE                             R3 R4
       21 JUMP                             ; [+3]
       22 GETUPVAL                         R3 3
       23 GETTABLEKS                       R3 R3 K6 ["Type"]
       25 GETUPVAL                         R4 1
       26 GETTABLEKS                       R4 R4 K7 ["None"]
       28 JUMPIFNOTEQ                      R3 R4 ; [+2]
       30 RETURN                           R0 0
       31 GETUPVAL                         R4 2
       32 GETTABLEKS                       R4 R4 K5 ["stripPrefix"]
       34 MOVE                             R5 R2
       35 CALL                             R4 1 1
       36 GETTABLEKS                       R6 R1 K8 ["rawInput"]
       38 JUMPIFNOTEQKNIL                  R6 ; [+2]
       40 LOADB                            R5 0 +1
       41 LOADB                            R5 1
       42 DUPTABLE                         R6 K16 [{["type"] = "tool_use", ["id"], ["name"], ["input"], ["thoughtSignature"] = }]
       43 GETTABLEKS                       R7 R1 K17 ["toolCallId"]
       45 SETTABLEKS                       R7 R6 K11 ["id"]
       47 SETTABLEKS                       R4 R6 K12 ["name"]
       49 GETTABLEKS                       R7 R1 K8 ["rawInput"]
       51 JUMPIF                           R7 ; [+2]
       52 NEWTABLE                         R7 0 0
       54 SETTABLEKS                       R7 R6 K13 ["input"]
       56 LOADNIL                          R7
       57 GETUPVAL                         R8 4
       58 GETTABLEKS                       R8 R8 K18 ["getStreamTransform"]
       60 MOVE                             R9 R4
       61 CALL                             R8 1 1
       62 GETTABLEKS                       R9 R0 K19 ["_isHistoryReplay"]
       64 JUMPIFNOT                        R9 ; [+13]
       65 LOADB                            R9 1
       66 GETUPVAL                         R10 5
       67 GETTABLEKS                       R10 R10 K20 ["PrimitiveGen"]
       69 JUMPIFEQ                         R4 R10 ; [+8]
       71 GETUPVAL                         R10 5
       72 GETTABLEKS                       R10 R10 K21 ["MeshGen"]
       74 JUMPIFEQ                         R4 R10 ; [+2]
       76 LOADB                            R9 0 +1
       77 LOADB                            R9 1
       78 JUMPIFNOT                        R9 ; [+10]
       79 DUPTABLE                         R10 K27 [{["type"], ["toolIdentifier"], ["expanded"] = False, ["generating"] = True}]
       80 GETUPVAL                         R11 3
       81 GETTABLEKS                       R11 R11 K6 ["Type"]
       83 SETTABLEKS                       R11 R10 K9 ["type"]
       85 SETTABLEKS                       R4 R10 K22 ["toolIdentifier"]
       87 MOVE                             R7 R10
       88 JUMP                             ; [+51]
       89 GETUPVAL                         R10 4
       90 GETTABLEKS                       R10 R10 K7 ["None"]
       92 JUMPIFNOTEQ                      R8 R10 ; [+2]
       94 RETURN                           R0 0
       95 FASTCALL1                        TYPEOF R8 ; [+3]
       96 MOVE                             R11 R8
       97 GETIMPORT                        R10 K29 [typeof]
       99 CALL                             R10 1 1
      100 JUMPIFNOTEQKS                    R10 K30 ["table"] ; [+20]
      102 GETTABLEKS                       R10 R8 K31 ["transformInitialContent"]
      104 MOVE                             R11 R6
      105 CALL                             R10 1 1
      106 MOVE                             R7 R10
      107 JUMPIFNOT                        R5 ; [+32]
      108 GETTABLEKS                       R10 R8 K32 ["getTransformPreExecuteFn"]
      110 JUMPIFNOT                        R10 ; [+4]
      111 MOVE                             R11 R10
      112 MOVE                             R12 R6
      113 CALL                             R11 1 1
      114 JUMP                             ; [+1]
      115 LOADNIL                          R11
      116 JUMPIFNOT                        R11 ; [+23]
      117 MOVE                             R12 R11
      118 MOVE                             R13 R7
      119 CALL                             R12 1 0
      120 JUMP                             ; [+19]
      121 GETUPVAL                         R10 3
      122 GETTABLEKS                       R10 R10 K6 ["Type"]
      124 JUMPIFNOTEQ                      R3 R10 ; [+11]
      126 DUPTABLE                         R10 K27 [{["type"], ["toolIdentifier"], ["expanded"] = False, ["generating"] = True}]
      127 GETUPVAL                         R11 3
      128 GETTABLEKS                       R11 R11 K6 ["Type"]
      130 SETTABLEKS                       R11 R10 K9 ["type"]
      132 SETTABLEKS                       R4 R10 K22 ["toolIdentifier"]
      134 MOVE                             R7 R10
      135 JUMP                             ; [+4]
      136 DUPTABLE                         R10 K33 [{["type"], ["expanded"] = False, ["generating"] = True}]
      137 SETTABLEKS                       R3 R10 K9 ["type"]
      139 MOVE                             R7 R10
      140 JUMPIFNOT                        R5 ; [+3]
      141 SETTABLEKS                       R6 R7 K34 ["toolUse"]
      143 JUMP                             ; [+11]
      144 GETUPVAL                         R10 0
      145 GETTABLEKS                       R10 R10 K3 ["FFlagAssistantSplitToolsAndWidgets"]
      147 JUMPIFNOT                        R10 ; [+7]
      148 GETTABLEKS                       R10 R0 K19 ["_isHistoryReplay"]
      150 JUMPIF                           R10 ; [+4]
      151 NEWTABLE                         R10 0 0
      153 SETTABLEKS                       R10 R7 K35 ["streaming"]
      155 LOADB                            R10 1
      156 SETTABLEKS                       R10 R7 K25 ["generating"]
      158 GETTABLEKS                       R10 R7 K23 ["expanded"]
      160 JUMPIFNOTEQKNIL                  R10 ; [+4]
      162 LOADB                            R10 0
      163 SETTABLEKS                       R10 R7 K23 ["expanded"]
      165 NAMECALL                         R10 R0 K36 ["getOrCreateAssistantMessage"]
      167 CALL                             R10 1 1
      168 GETTABLEKS                       R11 R0 K37 ["_callbacks"]
      170 GETTABLEKS                       R11 R11 K38 ["addContent"]
      172 DUPTABLE                         R12 K41 [{"messageId", "content"}]
      173 SETTABLEKS                       R10 R12 K39 ["messageId"]
      175 SETTABLEKS                       R7 R12 K40 ["content"]
      177 CALL                             R11 1 1
      178 GETTABLEKS                       R12 R1 K17 ["toolCallId"]
      180 JUMPIFNOT                        R12 ; [+24]
      181 GETTABLEKS                       R12 R0 K42 ["_contentIdByToolCallId"]
      183 GETTABLEKS                       R13 R1 K17 ["toolCallId"]
      185 SETTABLE                         R11 R12 R13
      186 GETTABLEKS                       R12 R0 K43 ["_toolNameByToolCallId"]
      188 GETTABLEKS                       R13 R1 K17 ["toolCallId"]
      190 SETTABLE                         R4 R12 R13
      191 GETTABLEKS                       R12 R0 K37 ["_callbacks"]
      193 GETTABLEKS                       R12 R12 K44 ["onToolWidgetCreated"]
      195 JUMPIFNOT                        R12 ; [+9]
      196 GETTABLEKS                       R12 R0 K37 ["_callbacks"]
      198 GETTABLEKS                       R12 R12 K44 ["onToolWidgetCreated"]
      200 GETTABLEKS                       R13 R1 K17 ["toolCallId"]
      202 MOVE                             R14 R10
      203 MOVE                             R15 R11
      204 CALL                             R12 3 0
      205 RETURN                           R0 0

PROTO_13:
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
       58 GETUPVAL                         R2 7
       59 SETTABLEKS                       R2 R1 K3 ["name"]
       61 GETUPVAL                         R2 8
       62 GETUPVAL                         R3 3
       63 GETTABLEKS                       R3 R3 K18 ["content"]
       65 CALL                             R2 1 1
       66 JUMPIF                           R2 ; [+2]
       67 NEWTABLE                         R2 0 0
       69 SETTABLEKS                       R2 R1 K18 ["content"]
       71 GETUPVAL                         R3 9
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
      111 GETUPVAL                         R1 10
      112 JUMPIFNOT                        R1 ; [+3]
      113 LOADB                            R1 0
      114 SETTABLEKS                       R1 R0 K29 ["generating"]
      116 LOADNIL                          R1
      117 RETURN                           R1 1

PROTO_14:
        0 GETTABLEKS                       R2 R1 K0 ["toolCallId"]
        2 JUMPIFNOT                        R2 ; [+4]
        3 GETTABLEKS                       R4 R0 K1 ["_contentIdByToolCallId"]
        5 GETTABLE                         R3 R4 R2
        6 JUMP                             ; [+1]
        7 LOADNIL                          R3
        8 GETTABLEKS                       R4 R0 K2 ["_activeAssistantMessageId"]
       10 JUMPIFNOT                        R2 ; [+10]
       11 JUMPIF                           R3 ; [+9]
       12 MOVE                             R7 R1
       13 NAMECALL                         R5 R0 K3 ["_handleToolCall"]
       15 CALL                             R5 2 0
       16 GETTABLEKS                       R5 R0 K1 ["_contentIdByToolCallId"]
       18 GETTABLE                         R3 R5 R2
       19 GETTABLEKS                       R4 R0 K2 ["_activeAssistantMessageId"]
       21 JUMPIFNOT                        R3 ; [+2]
       22 JUMPIFNOT                        R4 ; [+1]
       23 JUMPIF                           R2 ; [+1]
       24 RETURN                           R0 0
       25 GETTABLEKS                       R5 R1 K4 ["status"]
       27 LOADB                            R6 1
       28 JUMPIFEQKS                       R5 K5 ["completed"] ; [+5]
       30 JUMPIFEQKS                       R5 K6 ["failed"] ; [+2]
       32 LOADB                            R6 0 +1
       33 LOADB                            R6 1
       34 LOADB                            R7 1
       35 GETTABLEKS                       R8 R1 K7 ["content"]
       37 JUMPIFNOTEQKNIL                  R8 ; [+7]
       39 LOADB                            R7 1
       40 GETTABLEKS                       R8 R1 K8 ["rawOutput"]
       42 JUMPIFNOTEQKNIL                  R8 ; [+2]
       44 MOVE                             R7 R6
       45 GETTABLEKS                       R9 R1 K9 ["rawInput"]
       47 JUMPIFNOTEQKNIL                  R9 ; [+2]
       49 LOADB                            R8 0 +1
       50 LOADB                            R8 1
       51 GETTABLEKS                       R10 R0 K10 ["_toolNameByToolCallId"]
       53 GETTABLE                         R9 R10 R2
       54 JUMPIF                           R9 ; [+4]
       55 GETTABLEKS                       R9 R1 K11 ["title"]
       57 JUMPIF                           R9 ; [+1]
       58 LOADK                            R9 K12 ["unknown_tool"]
       59 GETUPVAL                         R10 0
       60 GETTABLEKS                       R10 R10 K13 ["stripPrefix"]
       62 MOVE                             R11 R9
       63 CALL                             R10 1 1
       64 GETTABLEKS                       R11 R0 K14 ["_callbacks"]
       66 GETTABLEKS                       R11 R11 K15 ["editContent"]
       68 DUPTABLE                         R12 K19 [{"messageId", "contentId", "transformFn"}]
       69 SETTABLEKS                       R4 R12 K16 ["messageId"]
       71 SETTABLEKS                       R3 R12 K17 ["contentId"]
       73 NEWCLOSURE                       R13 P0
       74 CAPTURE                          VAL R8
       75 CAPTURE                          VAL R2
       76 CAPTURE                          VAL R10
       77 CAPTURE                          VAL R1
       78 CAPTURE                          UPVAL U1
       79 CAPTURE                          UPVAL U2
       80 CAPTURE                          VAL R7
       81 CAPTURE                          VAL R9
       82 CAPTURE                          UPVAL U3
       83 CAPTURE                          VAL R5
       84 CAPTURE                          VAL R6
       85 SETTABLEKS                       R13 R12 K18 ["transformFn"]
       87 CALL                             R11 1 0
       88 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R2 R0 K0 ["_callbacks"]
        2 GETTABLEKS                       R2 R2 K1 ["onPlan"]
        4 JUMPIFNOT                        R2 ; [+7]
        5 GETTABLEKS                       R2 R0 K0 ["_callbacks"]
        7 GETTABLEKS                       R2 R2 K1 ["onPlan"]
        9 GETTABLEKS                       R3 R1 K2 ["entries"]
       11 CALL                             R2 1 0
       12 RETURN                           R0 0

PROTO_16:
        0 GETTABLEKS                       R2 R0 K0 ["_callbacks"]
        2 GETTABLEKS                       R2 R2 K1 ["onAvailableCommands"]
        4 JUMPIFNOT                        R2 ; [+7]
        5 GETTABLEKS                       R2 R0 K0 ["_callbacks"]
        7 GETTABLEKS                       R2 R2 K1 ["onAvailableCommands"]
        9 GETTABLEKS                       R3 R1 K2 ["availableCommands"]
       11 CALL                             R2 1 0
       12 RETURN                           R0 0

PROTO_17:
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

PROTO_18:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["Compaction"]
        2 LOADK                            R4 K1 ["Complete"]
        3 NAMECALL                         R1 R1 K2 ["getText"]
        5 CALL                             R1 3 1
        6 SETTABLEKS                       R1 R0 K3 ["summary"]
        8 LOADNIL                          R1
        9 RETURN                           R1 1

PROTO_19:
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
       52 DUPCLOSURE                       R5 K21 [PROTO_18]
       53 CAPTURE                          UPVAL U1
       54 SETTABLEKS                       R5 R4 K19 ["transformFn"]
       56 CALL                             R3 1 0
       57 LOADNIL                          R3
       58 SETTABLEKS                       R3 R0 K15 ["_compactionContentId"]
       60 RETURN                           R0 0

PROTO_20:
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
       16 GETTABLEKS                       R3 R0 K8 ["Flags"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K9 ["Components"]
       23 GETTABLEKS                       R4 R4 K10 ["ContentWidgets"]
       25 GETTABLEKS                       R4 R4 K11 ["GenericToolContentWidget"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K9 ["Components"]
       32 GETTABLEKS                       R5 R5 K10 ["ContentWidgets"]
       34 GETTABLEKS                       R5 R5 K12 ["ImageContentWidget"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K9 ["Components"]
       41 GETTABLEKS                       R6 R6 K10 ["ContentWidgets"]
       43 GETTABLEKS                       R6 R6 K13 ["SummarizedContentWidget"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K9 ["Components"]
       50 GETTABLEKS                       R7 R7 K10 ["ContentWidgets"]
       52 GETTABLEKS                       R7 R7 K14 ["TextContentWidget"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R8 R0 K9 ["Components"]
       59 GETTABLEKS                       R8 R8 K10 ["ContentWidgets"]
       61 GETTABLEKS                       R8 R8 K15 ["ThinkingContentWidget"]
       63 CALL                             R7 1 1
       64 GETTABLEKS                       R8 R1 K16 ["Engine"]
       66 GETTABLEKS                       R8 R8 K17 ["Providers"]
       68 GETTABLEKS                       R8 R8 K18 ["ToolNames"]
       70 GETIMPORT                        R9 K5 [require]
       72 GETTABLEKS                       R10 R0 K19 ["Util"]
       74 GETTABLEKS                       R10 R10 K10 ["ContentWidgets"]
       76 GETTABLEKS                       R10 R10 K20 ["ToolWidgetMappingRegistry"]
       78 CALL                             R9 1 1
       79 GETIMPORT                        R10 K5 [require]
       81 GETTABLEKS                       R11 R0 K21 ["Resources"]
       83 GETTABLEKS                       R11 R11 K22 ["Localization"]
       85 GETTABLEKS                       R11 R11 K23 ["Translator"]
       87 CALL                             R10 1 1
       88 GETIMPORT                        R11 K5 [require]
       90 GETTABLEKS                       R12 R0 K24 ["Types"]
       92 CALL                             R11 1 1
       93 GETIMPORT                        R12 K5 [require]
       95 GETTABLEKS                       R13 R0 K9 ["Components"]
       97 GETTABLEKS                       R13 R13 K25 ["UIToolRegistry"]
       99 CALL                             R12 1 1
      100 GETIMPORT                        R13 K5 [require]
      102 GETTABLEKS                       R14 R0 K26 ["Hooks"]
      104 GETTABLEKS                       R14 R14 K27 ["useAddContent"]
      106 CALL                             R13 1 1
      107 GETIMPORT                        R14 K5 [require]
      109 GETTABLEKS                       R15 R0 K26 ["Hooks"]
      111 GETTABLEKS                       R15 R15 K28 ["useAddMessage"]
      113 CALL                             R14 1 1
      114 GETIMPORT                        R15 K5 [require]
      116 GETTABLEKS                       R16 R0 K26 ["Hooks"]
      118 GETTABLEKS                       R16 R16 K29 ["useEditContent"]
      120 CALL                             R15 1 1
      121 GETTABLEKS                       R16 R1 K30 ["Acp"]
      123 GETTABLEKS                       R16 R16 K24 ["Types"]
      125 GETTABLEKS                       R16 R16 K31 ["SessionUpdateKind"]
      127 GETTABLEKS                       R17 R1 K32 ["ToolNaming"]
      129 NEWTABLE                         R18 16 0
      131 SETTABLEKS                       R18 R18 K33 ["__index"]
      133 DUPCLOSURE                       R19 K34 [PROTO_0]
      134 CAPTURE                          VAL R18
      135 SETTABLEKS                       R19 R18 K35 ["new"]
      137 DUPCLOSURE                       R19 K36 [PROTO_1]
      138 CAPTURE                          VAL R2
      139 CAPTURE                          VAL R9
      140 CAPTURE                          VAL R17
      141 CAPTURE                          VAL R3
      142 DUPCLOSURE                       R20 K37 [PROTO_2]
      143 DUPCLOSURE                       R21 K38 [PROTO_4]
      144 CAPTURE                          VAL R2
      145 SETTABLEKS                       R21 R18 K39 ["_resetActiveStream"]
      147 DUPCLOSURE                       R21 K40 [PROTO_5]
      148 CAPTURE                          VAL R11
      149 SETTABLEKS                       R21 R18 K41 ["getOrCreateAssistantMessage"]
      151 DUPCLOSURE                       R21 K42 [PROTO_7]
      152 CAPTURE                          VAL R6
      153 SETTABLEKS                       R21 R18 K43 ["_handleMessageChunk"]
      155 DUPCLOSURE                       R21 K44 [PROTO_8]
      156 CAPTURE                          VAL R11
      157 CAPTURE                          VAL R6
      158 SETTABLEKS                       R21 R18 K45 ["_handleUserMessageChunk"]
      160 DUPCLOSURE                       R21 K46 [PROTO_9]
      161 CAPTURE                          VAL R11
      162 CAPTURE                          VAL R6
      163 CAPTURE                          VAL R4
      164 SETTABLEKS                       R21 R18 K47 ["_handleUserMessage"]
      166 DUPCLOSURE                       R21 K48 [PROTO_11]
      167 CAPTURE                          VAL R7
      168 CAPTURE                          VAL R2
      169 SETTABLEKS                       R21 R18 K49 ["_handleThoughtChunk"]
      171 DUPCLOSURE                       R21 K50 [PROTO_12]
      172 CAPTURE                          VAL R2
      173 CAPTURE                          VAL R9
      174 CAPTURE                          VAL R17
      175 CAPTURE                          VAL R3
      176 CAPTURE                          VAL R12
      177 CAPTURE                          VAL R8
      178 SETTABLEKS                       R21 R18 K51 ["_handleToolCall"]
      180 DUPCLOSURE                       R21 K52 [PROTO_14]
      181 CAPTURE                          VAL R17
      182 CAPTURE                          VAL R12
      183 CAPTURE                          VAL R2
      184 CAPTURE                          VAL R20
      185 SETTABLEKS                       R21 R18 K53 ["_handleToolCallUpdate"]
      187 DUPCLOSURE                       R21 K54 [PROTO_15]
      188 SETTABLEKS                       R21 R18 K55 ["_handlePlan"]
      190 DUPCLOSURE                       R21 K56 [PROTO_16]
      191 SETTABLEKS                       R21 R18 K57 ["_handleAvailableCommands"]
      193 DUPCLOSURE                       R21 K58 [PROTO_17]
      194 SETTABLEKS                       R21 R18 K59 ["_handleSessionInfo"]
      196 DUPCLOSURE                       R21 K60 [PROTO_19]
      197 CAPTURE                          VAL R5
      198 CAPTURE                          VAL R10
      199 SETTABLEKS                       R21 R18 K61 ["_handleCompactionStatus"]
      201 DUPCLOSURE                       R21 K62 [PROTO_20]
      202 CAPTURE                          VAL R16
      203 SETTABLEKS                       R21 R18 K63 ["handleUpdate"]
      205 RETURN                           R18 1
