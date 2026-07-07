PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["McpAssistantStorage"]
        3 GETTABLEKS                       R0 R0 K1 ["getThreadsAsync"]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K2 ["placeId"]
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K3 ["cursor"]
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R3 R3 K4 ["limit"]
       14 LOADNIL                          R4
       15 CALL                             R0 4 -1
       16 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["JSONDecode"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["callWithOptions"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 DUPTABLE                         R3 K3 [{["retryCount"] = 2}]
        7 CALL                             R1 2 1
        8 GETTABLEKS                       R2 R1 K4 ["success"]
       10 JUMPIF                           R2 ; [+6]
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K5 ["throwError"]
       14 MOVE                             R3 R1
       15 CALL                             R2 1 -1
       16 RETURN                           R2 -1
       17 GETTABLEKS                       R2 R1 K6 ["data"]
       19 GETTABLEKS                       R3 R2 K7 ["threads"]
       21 LOADNIL                          R4
       22 JUMPIFNOT                        R3 ; [+155]
       23 GETIMPORT                        R5 K10 [table.create]
       25 LENGTH                           R6 R3
       26 CALL                             R5 1 1
       27 MOVE                             R4 R5
       28 MOVE                             R5 R3
       29 LOADNIL                          R6
       30 LOADNIL                          R7
       31 FORGPREP                         R5
       32 LOADNIL                          R10
       33 GETTABLEKS                       R11 R9 K11 ["metadata"]
       35 JUMPIFNOT                        R11 ; [+38]
       36 FASTCALL1                        TYPEOF R11 ; [+3]
       37 MOVE                             R13 R11
       38 GETIMPORT                        R12 K13 [typeof]
       40 CALL                             R12 1 1
       41 JUMPIFNOTEQKS                    R12 K14 ["string"] ; [+32]
       43 LENGTH                           R12 R11
       44 LOADN                            R13 0
       45 JUMPIFNOTLT                      R13 R12 ; [+28]
       47 GETIMPORT                        R12 K16 [pcall]
       49 NEWCLOSURE                       R13 P1
       50 CAPTURE                          UPVAL U2
       51 CAPTURE                          VAL R11
       52 CALL                             R12 1 2
       53 JUMPIF                           R12 ; [+16]
       54 GETUPVAL                         R14 3
       55 GETTABLEKS                       R14 R14 K17 ["FFlagDebugLogAssistantUI"]
       57 JUMPIFNOT                        R14 ; [+12]
       58 GETIMPORT                        R14 K19 [warn]
       60 LOADK                            R16 K20 ["[CloudIO] Failed to decode metadata for thread with title \"%*\" and metadata \"%*\". Error was \"%*\". Skipping this thread."]
       61 GETTABLEKS                       R18 R9 K21 ["title"]
       63 MOVE                             R19 R11
       64 MOVE                             R20 R13
       65 NAMECALL                         R16 R16 K22 ["format"]
       67 CALL                             R16 4 1
       68 MOVE                             R15 R16
       69 CALL                             R14 1 0
       70 JUMPIFNOT                        R12 ; [+2]
       71 MOVE                             R10 R13
       72 JUMP                             ; [+1]
       73 LOADNIL                          R10
       74 MOVE                             R12 R10
       75 JUMPIF                           R12 ; [+2]
       76 NEWTABLE                         R12 0 0
       78 MOVE                             R10 R12
       79 GETTABLEKS                       R12 R9 K23 ["threadId"]
       81 JUMPIF                           R12 ; [+16]
       82 GETUPVAL                         R13 3
       83 GETTABLEKS                       R13 R13 K17 ["FFlagDebugLogAssistantUI"]
       85 JUMPIFNOT                        R13 ; [+89]
       86 GETIMPORT                        R13 K19 [warn]
       88 LOADK                            R15 K24 ["[CloudIO] threadId missing for thread with title \"%*\" and metadata \"%*\". Skipping this thread."]
       89 GETTABLEKS                       R17 R9 K21 ["title"]
       91 MOVE                             R18 R11
       92 NAMECALL                         R15 R15 K22 ["format"]
       94 CALL                             R15 3 1
       95 MOVE                             R14 R15
       96 CALL                             R13 1 0
       97 JUMP                             ; [+77]
       98 LOADNIL                          R13
       99 GETUPVAL                         R14 3
      100 GETTABLEKS                       R14 R14 K25 ["FFlagAssistantMarkdownPlanMode"]
      102 JUMPIFNOT                        R14 ; [+9]
      103 GETTABLEKS                       R14 R10 K26 ["loadUntilMessageId"]
      105 JUMPIFNOT                        R14 ; [+6]
      106 DUPTABLE                         R14 K27 [{"loadUntilMessageId"}]
      107 GETTABLEKS                       R15 R10 K26 ["loadUntilMessageId"]
      109 SETTABLEKS                       R15 R14 K26 ["loadUntilMessageId"]
      111 MOVE                             R13 R14
      112 DUPTABLE                         R16 K46 [{["threadId"], ["sourceId"], ["rootId"], ["createdAt"], ["updatedAt"], ["ephemeral"] = False, ["isDirty"] = False, ["isDeleted"], ["lastActivityAt"], ["title"], ["isPinned"], ["lastViewedAt"], ["messages"], ["messageLoadState"] = , ["messagePageState"] = , ["messageCountAdded"] = 0, ["messageCountLoaded"] = 0, ["metadata"]}]
      113 SETTABLEKS                       R12 R16 K23 ["threadId"]
      115 GETTABLEKS                       R17 R10 K28 ["sourceId"]
      117 SETTABLEKS                       R17 R16 K28 ["sourceId"]
      119 GETTABLEKS                       R17 R10 K29 ["rootId"]
      121 SETTABLEKS                       R17 R16 K29 ["rootId"]
      123 GETTABLEKS                       R18 R9 K47 ["createdUtc"]
      125 ORK                              R17 R18 K44 [0]
      126 SETTABLEKS                       R17 R16 K30 ["createdAt"]
      128 GETTABLEKS                       R18 R9 K48 ["updatedUtc"]
      130 ORK                              R17 R18 K44 [0]
      131 SETTABLEKS                       R17 R16 K31 ["updatedAt"]
      133 GETTABLEKS                       R17 R9 K35 ["isDeleted"]
      135 SETTABLEKS                       R17 R16 K35 ["isDeleted"]
      137 GETTABLEKS                       R18 R9 K49 ["lastActivityUtc"]
      139 ORK                              R17 R18 K44 [0]
      140 SETTABLEKS                       R17 R16 K36 ["lastActivityAt"]
      142 GETTABLEKS                       R17 R9 K21 ["title"]
      144 JUMPIF                           R17 ; [+6]
      145 LOADK                            R18 K50 ["IMPORTED_THREAD_%*"]
      146 MOVE                             R20 R12
      147 NAMECALL                         R18 R18 K22 ["format"]
      149 CALL                             R18 2 1
      150 MOVE                             R17 R18
      151 SETTABLEKS                       R17 R16 K21 ["title"]
      153 GETTABLEKS                       R18 R9 K37 ["isPinned"]
      155 ORK                              R17 R18 K33 [False]
      156 SETTABLEKS                       R17 R16 K37 ["isPinned"]
      158 GETTABLEKS                       R18 R10 K38 ["lastViewedAt"]
      160 ORK                              R17 R18 K51 [-1]
      161 SETTABLEKS                       R17 R16 K38 ["lastViewedAt"]
      163 NEWTABLE                         R17 0 0
      165 SETTABLEKS                       R17 R16 K39 ["messages"]
      167 SETTABLEKS                       R13 R16 K11 ["metadata"]
      169 FASTCALL2                        TABLE_INSERT R4 R16 ; [+4]
      171 MOVE                             R15 R4
      172 GETIMPORT                        R14 K53 [table.insert]
      174 CALL                             R14 2 0
      175 FORGLOOP                         R5 2 ; [-144]
      177 JUMP                             ; [+2]
      178 NEWTABLE                         R4 0 0
      180 LOADB                            R5 1
      181 DUPTABLE                         R6 K55 [{"threads", "cursor"}]
      182 SETTABLEKS                       R4 R6 K7 ["threads"]
      184 GETTABLEKS                       R7 R2 K54 ["cursor"]
      186 SETTABLEKS                       R7 R6 K54 ["cursor"]
      188 RETURN                           R5 2

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["JSONEncode"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["McpAssistantStorage"]
        3 GETTABLEKS                       R0 R0 K1 ["postUploadThreadsAsync"]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K2 ["placeId"]
        8 LOADNIL                          R2
        9 DUPTABLE                         R3 K4 [{"threads"}]
       10 GETUPVAL                         R4 2
       11 SETTABLEKS                       R4 R3 K3 ["threads"]
       13 CALL                             R0 3 -1
       14 RETURN                           R0 -1

PROTO_5:
        0 GETIMPORT                        R2 K2 [table.create]
        2 LENGTH                           R3 R0
        3 CALL                             R2 1 1
        4 MOVE                             R3 R0
        5 LOADNIL                          R4
        6 LOADNIL                          R5
        7 FORGPREP                         R3
        8 DUPTABLE                         R8 K7 [{"sourceId", "rootId", "lastViewedAt", "loadUntilMessageId"}]
        9 GETTABLEKS                       R10 R7 K3 ["sourceId"]
       11 ORK                              R9 R10 K8 []
       12 SETTABLEKS                       R9 R8 K3 ["sourceId"]
       14 GETTABLEKS                       R10 R7 K4 ["rootId"]
       16 ORK                              R9 R10 K8 []
       17 SETTABLEKS                       R9 R8 K4 ["rootId"]
       19 GETTABLEKS                       R10 R7 K5 ["lastViewedAt"]
       21 ORK                              R9 R10 K8 []
       22 SETTABLEKS                       R9 R8 K5 ["lastViewedAt"]
       24 GETUPVAL                         R10 0
       25 GETTABLEKS                       R10 R10 K9 ["FFlagAssistantMarkdownPlanMode"]
       27 JUMPIFNOT                        R10 ; [+8]
       28 GETTABLEKS                       R10 R7 K10 ["metadata"]
       30 JUMPIFNOT                        R10 ; [+5]
       31 GETTABLEKS                       R9 R7 K10 ["metadata"]
       33 GETTABLEKS                       R9 R9 K6 ["loadUntilMessageId"]
       35 JUMP                             ; [+1]
       36 LOADNIL                          R9
       37 SETTABLEKS                       R9 R8 K6 ["loadUntilMessageId"]
       39 GETIMPORT                        R9 K12 [pcall]
       41 NEWCLOSURE                       R10 P0
       42 CAPTURE                          UPVAL U1
       43 CAPTURE                          VAL R8
       44 CALL                             R9 1 2
       45 JUMPIF                           R9 ; [+17]
       46 GETUPVAL                         R11 0
       47 GETTABLEKS                       R11 R11 K13 ["FFlagDebugLogAssistantUI"]
       49 JUMPIFNOT                        R11 ; [+13]
       50 GETIMPORT                        R11 K15 [warn]
       52 LOADK                            R13 K16 ["[CloudIO] Failed to serialize metadata for thread with threadId \"%*\" and title \"%*\". Error was \"%*\". Skipping this thread."]
       53 GETTABLEKS                       R15 R7 K17 ["threadId"]
       55 GETTABLEKS                       R16 R7 K18 ["title"]
       57 MOVE                             R17 R10
       58 NAMECALL                         R13 R13 K19 ["format"]
       60 CALL                             R13 4 1
       61 MOVE                             R12 R13
       62 CALL                             R11 1 0
       63 DUPTABLE                         R13 K25 [{"threadId", "createdUtc", "updatedUtc", "isDeleted", "lastActivityUtc", "isPinned", "title", "metadata"}]
       64 GETTABLEKS                       R14 R7 K17 ["threadId"]
       66 SETTABLEKS                       R14 R13 K17 ["threadId"]
       68 GETTABLEKS                       R14 R7 K26 ["createdAt"]
       70 SETTABLEKS                       R14 R13 K20 ["createdUtc"]
       72 GETTABLEKS                       R14 R7 K27 ["updatedAt"]
       74 SETTABLEKS                       R14 R13 K21 ["updatedUtc"]
       76 GETTABLEKS                       R14 R7 K22 ["isDeleted"]
       78 SETTABLEKS                       R14 R13 K22 ["isDeleted"]
       80 GETTABLEKS                       R14 R7 K28 ["lastActivityAt"]
       82 SETTABLEKS                       R14 R13 K23 ["lastActivityUtc"]
       84 GETTABLEKS                       R14 R7 K24 ["isPinned"]
       86 SETTABLEKS                       R14 R13 K24 ["isPinned"]
       88 GETTABLEKS                       R14 R7 K18 ["title"]
       90 SETTABLEKS                       R14 R13 K18 ["title"]
       92 JUMPIFNOT                        R9 ; [+2]
       93 MOVE                             R14 R10
       94 JUMP                             ; [+1]
       95 LOADNIL                          R14
       96 SETTABLEKS                       R14 R13 K10 ["metadata"]
       98 FASTCALL2                        TABLE_INSERT R2 R13 ; [+4]
      100 MOVE                             R12 R2
      101 GETIMPORT                        R11 K30 [table.insert]
      103 CALL                             R11 2 0
      104 FORGLOOP                         R3 2 ; [-97]
      106 GETUPVAL                         R3 2
      107 GETTABLEKS                       R3 R3 K31 ["callWithOptions"]
      109 NEWCLOSURE                       R4 P1
      110 CAPTURE                          UPVAL U3
      111 CAPTURE                          VAL R1
      112 CAPTURE                          VAL R2
      113 NEWTABLE                         R5 0 0
      115 CALL                             R3 2 1
      116 GETTABLEKS                       R4 R3 K32 ["success"]
      118 JUMPIF                           R4 ; [+6]
      119 GETUPVAL                         R4 2
      120 GETTABLEKS                       R4 R4 K33 ["throwError"]
      122 MOVE                             R5 R3
      123 CALL                             R4 1 -1
      124 RETURN                           R4 -1
      125 GETTABLEKS                       R4 R3 K32 ["success"]
      127 RETURN                           R4 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["McpAssistantStorage"]
        3 GETTABLEKS                       R0 R0 K1 ["deleteThreadAsync"]
        5 GETUPVAL                         R1 1
        6 LOADNIL                          R2
        7 CALL                             R0 2 -1
        8 RETURN                           R0 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["callWithOptions"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 NEWTABLE                         R3 0 0
        8 CALL                             R1 2 1
        9 GETTABLEKS                       R2 R1 K1 ["success"]
       11 JUMPIF                           R2 ; [+6]
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K2 ["throwError"]
       15 MOVE                             R3 R1
       16 CALL                             R2 1 -1
       17 RETURN                           R2 -1
       18 LOADB                            R2 1
       19 RETURN                           R2 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["McpAssistantStorage"]
        3 GETTABLEKS                       R0 R0 K1 ["getMessagesAsync"]
        5 GETUPVAL                         R1 1
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R2 R2 K2 ["cursor"]
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R3 R3 K3 ["limit"]
       12 LOADNIL                          R4
       13 CALL                             R0 4 -1
       14 RETURN                           R0 -1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["JSONDecode"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["JSONDecode"]
        4 CALL                             R0 2 1
        5 GETUPVAL                         R2 2
        6 DUPTABLE                         R3 K8 [{"threadId", "messageId", "contentId", "createdAt", "updatedAt", "isDeleted", "mcpContent"}]
        7 GETUPVAL                         R4 3
        8 SETTABLEKS                       R4 R3 K1 ["threadId"]
       10 GETUPVAL                         R4 4
       11 SETTABLEKS                       R4 R3 K2 ["messageId"]
       13 GETUPVAL                         R4 5
       14 SETTABLEKS                       R4 R3 K3 ["contentId"]
       16 GETUPVAL                         R5 6
       17 GETTABLEKS                       R5 R5 K10 ["createdUtc"]
       19 ORK                              R4 R5 K9 [0]
       20 SETTABLEKS                       R4 R3 K4 ["createdAt"]
       22 GETUPVAL                         R5 6
       23 GETTABLEKS                       R5 R5 K11 ["updatedUtc"]
       25 ORK                              R4 R5 K9 [0]
       26 SETTABLEKS                       R4 R3 K5 ["updatedAt"]
       28 GETUPVAL                         R4 6
       29 GETTABLEKS                       R4 R4 K6 ["isDeleted"]
       31 SETTABLEKS                       R4 R3 K6 ["isDeleted"]
       33 SETTABLEKS                       R0 R3 K7 ["mcpContent"]
       35 FASTCALL2                        TABLE_INSERT R2 R3 ; [+3]
       37 GETIMPORT                        R1 K14 [table.insert]
       39 CALL                             R1 2 0
       40 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["deserialize"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_12:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["callWithOptions"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R1
        7 DUPTABLE                         R4 K3 [{["retryCount"] = 2}]
        8 CALL                             R2 2 1
        9 GETTABLEKS                       R3 R2 K4 ["success"]
       11 JUMPIF                           R3 ; [+6]
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R3 R3 K5 ["throwError"]
       15 MOVE                             R4 R2
       16 CALL                             R3 1 -1
       17 RETURN                           R3 -1
       18 GETTABLEKS                       R3 R2 K6 ["data"]
       20 GETTABLEKS                       R4 R3 K7 ["messages"]
       22 LOADNIL                          R5
       23 JUMPIFNOT                        R4 ; [+270]
       24 GETIMPORT                        R6 K10 [table.create]
       26 LENGTH                           R7 R4
       27 CALL                             R6 1 1
       28 MOVE                             R5 R6
       29 MOVE                             R6 R4
       30 LOADNIL                          R7
       31 LOADNIL                          R8
       32 FORGPREP                         R6
       33 LOADNIL                          R11
       34 GETTABLEKS                       R12 R10 K11 ["metadata"]
       36 JUMPIFNOT                        R12 ; [+40]
       37 FASTCALL1                        TYPEOF R12 ; [+3]
       38 MOVE                             R14 R12
       39 GETIMPORT                        R13 K13 [typeof]
       41 CALL                             R13 1 1
       42 JUMPIFNOTEQKS                    R13 K14 ["string"] ; [+34]
       44 LENGTH                           R13 R12
       45 LOADN                            R14 0
       46 JUMPIFNOTLT                      R14 R13 ; [+30]
       48 GETIMPORT                        R13 K16 [pcall]
       50 NEWCLOSURE                       R14 P1
       51 CAPTURE                          UPVAL U2
       52 CAPTURE                          VAL R12
       53 CALL                             R13 1 2
       54 JUMPIF                           R13 ; [+18]
       55 GETUPVAL                         R15 3
       56 GETTABLEKS                       R15 R15 K17 ["FFlagDebugLogAssistantUI"]
       58 JUMPIFNOT                        R15 ; [+14]
       59 GETIMPORT                        R15 K19 [warn]
       61 LOADK                            R17 K20 ["[CloudIO] Failed to decode metadata for message with messageId \"%*\" and role \"%*\" and metadata \"%*\". Error was \"%*\". Skipping this message."]
       62 GETTABLEKS                       R19 R10 K21 ["messageId"]
       64 GETTABLEKS                       R20 R10 K22 ["role"]
       66 MOVE                             R21 R12
       67 MOVE                             R22 R14
       68 NAMECALL                         R17 R17 K23 ["format"]
       70 CALL                             R17 5 1
       71 MOVE                             R16 R17
       72 CALL                             R15 1 0
       73 JUMPIFNOT                        R13 ; [+2]
       74 MOVE                             R11 R14
       75 JUMP                             ; [+1]
       76 LOADNIL                          R11
       77 MOVE                             R13 R11
       78 JUMPIF                           R13 ; [+2]
       79 NEWTABLE                         R13 0 0
       81 MOVE                             R11 R13
       82 GETTABLEKS                       R13 R10 K21 ["messageId"]
       84 JUMPIF                           R13 ; [+16]
       85 GETUPVAL                         R14 3
       86 GETTABLEKS                       R14 R14 K17 ["FFlagDebugLogAssistantUI"]
       88 JUMPIFNOT                        R14 ; [+202]
       89 GETIMPORT                        R14 K19 [warn]
       91 LOADK                            R16 K24 ["[CloudIO] messageId missing for message with role \"%*\" and metadata \"%*\". Skipping this message."]
       92 GETTABLEKS                       R18 R10 K22 ["role"]
       94 MOVE                             R19 R12
       95 NAMECALL                         R16 R16 K23 ["format"]
       97 CALL                             R16 3 1
       98 MOVE                             R15 R16
       99 CALL                             R14 1 0
      100 JUMP                             ; [+190]
      101 GETTABLEKS                       R14 R10 K25 ["contents"]
      103 NEWTABLE                         R15 0 0
      105 LOADN                            R16 0
      106 JUMPIFNOT                        R14 ; [+104]
      107 GETIMPORT                        R17 K10 [table.create]
      109 LENGTH                           R18 R14
      110 CALL                             R17 1 1
      111 MOVE                             R18 R14
      112 LOADNIL                          R19
      113 LOADNIL                          R20
      114 FORGPREP                         R18
      115 GETTABLEKS                       R23 R22 K26 ["mcpContent"]
      117 JUMPIF                           R23 ; [+12]
      118 GETIMPORT                        R24 K19 [warn]
      120 LOADK                            R26 K27 ["[CloudIO] mcpContent missing for content with contentId \"%*\" in message \"%*\". Skipping this content."]
      121 GETTABLEKS                       R28 R22 K28 ["contentId"]
      123 MOVE                             R29 R13
      124 NAMECALL                         R26 R26 K23 ["format"]
      126 CALL                             R26 3 1
      127 MOVE                             R25 R26
      128 CALL                             R24 1 0
      129 JUMP                             ; [+46]
      130 GETTABLEKS                       R24 R22 K28 ["contentId"]
      132 JUMPIF                           R24 ; [+15]
      133 GETUPVAL                         R25 3
      134 GETTABLEKS                       R25 R25 K17 ["FFlagDebugLogAssistantUI"]
      136 JUMPIFNOT                        R25 ; [+39]
      137 GETIMPORT                        R25 K19 [warn]
      139 LOADK                            R27 K29 ["[CloudIO] contentId missing for content with mcpContent \"%*\" in message \"%*\". Skipping this content."]
      140 MOVE                             R29 R23
      141 MOVE                             R30 R13
      142 NAMECALL                         R27 R27 K23 ["format"]
      144 CALL                             R27 3 1
      145 MOVE                             R26 R27
      146 CALL                             R25 1 0
      147 JUMP                             ; [+28]
      148 GETIMPORT                        R25 K16 [pcall]
      150 NEWCLOSURE                       R26 P2
      151 CAPTURE                          UPVAL U2
      152 CAPTURE                          VAL R23
      153 CAPTURE                          VAL R17
      154 CAPTURE                          VAL R0
      155 CAPTURE                          VAL R13
      156 CAPTURE                          VAL R24
      157 CAPTURE                          VAL R22
      158 CALL                             R25 1 2
      159 JUMPIF                           R25 ; [+16]
      160 GETUPVAL                         R27 3
      161 GETTABLEKS                       R27 R27 K17 ["FFlagDebugLogAssistantUI"]
      163 JUMPIFNOT                        R27 ; [+12]
      164 GETIMPORT                        R27 K19 [warn]
      166 LOADK                            R29 K30 ["[CloudIO] Failed to deserialize content with contentId \"%*\" in message \"%*\". mcpContent was \"%*\". Error was \"%*\". Skipping this content."]
      167 MOVE                             R31 R24
      168 MOVE                             R32 R13
      169 MOVE                             R33 R23
      170 MOVE                             R34 R26
      171 NAMECALL                         R29 R29 K23 ["format"]
      173 CALL                             R29 5 1
      174 MOVE                             R28 R29
      175 CALL                             R27 1 0
      176 FORGLOOP                         R18 2 ; [-62]
      178 GETIMPORT                        R18 K16 [pcall]
      180 NEWCLOSURE                       R19 P3
      181 CAPTURE                          UPVAL U4
      182 CAPTURE                          VAL R17
      183 CALL                             R18 1 2
      184 JUMPIF                           R18 ; [+16]
      185 GETUPVAL                         R20 3
      186 GETTABLEKS                       R20 R20 K17 ["FFlagDebugLogAssistantUI"]
      188 JUMPIFNOT                        R20 ; [+102]
      189 GETIMPORT                        R20 K19 [warn]
      191 LOADK                            R22 K31 ["[CloudIO] Failed to deserialize content in message \"%*\". deserializableContents was \"%*\". Error was \"%*\". Skipping this content."]
      192 MOVE                             R24 R13
      193 MOVE                             R25 R17
      194 MOVE                             R26 R19
      195 NAMECALL                         R22 R22 K23 ["format"]
      197 CALL                             R22 4 1
      198 MOVE                             R21 R22
      199 CALL                             R20 1 0
      200 JUMP                             ; [+90]
      201 MOVE                             R20 R19
      202 LOADNIL                          R21
      203 LOADNIL                          R22
      204 FORGPREP                         R20
      205 GETTABLEKS                       R25 R24 K28 ["contentId"]
      207 SETTABLE                         R24 R15 R25
      208 ADDK                             R16 R16 K32 [1]
      209 FORGLOOP                         R20 2 ; [-5]
      211 LOADK                            R17 K33 ["system"]
      212 GETTABLEKS                       R18 R10 K22 ["role"]
      214 JUMPIFNOT                        R18 ; [+31]
      215 FASTCALL1                        TYPEOF R18 ; [+3]
      216 MOVE                             R20 R18
      217 GETIMPORT                        R19 K13 [typeof]
      219 CALL                             R19 1 1
      220 JUMPIFNOTEQKS                    R19 K14 ["string"] ; [+25]
      222 GETUPVAL                         R20 5
      223 GETTABLEKS                       R20 R20 K34 ["Types"]
      225 GETTABLEKS                       R20 R20 K35 ["VALID_ROLES"]
      227 GETTABLE                         R19 R20 R18
      228 JUMPIFNOT                        R19 ; [+2]
      229 MOVE                             R17 R18
      230 JUMP                             ; [+15]
      231 GETUPVAL                         R19 3
      232 GETTABLEKS                       R19 R19 K17 ["FFlagDebugLogAssistantUI"]
      234 JUMPIFNOT                        R19 ; [+11]
      235 GETIMPORT                        R19 K19 [warn]
      237 LOADK                            R21 K36 ["[CloudIO] Invalid role \"%*\" for message with messageId \"%*\". Defaulting to \"system\"."]
      238 GETTABLEKS                       R23 R10 K22 ["role"]
      240 MOVE                             R24 R13
      241 NAMECALL                         R21 R21 K23 ["format"]
      243 CALL                             R21 3 1
      244 MOVE                             R20 R21
      245 CALL                             R19 1 0
      246 DUPTABLE                         R21 K51 [{["messageId"], ["sourceId"], ["rootId"], ["createdAt"], ["updatedAt"], ["ephemeral"] = False, ["isDirty"] = False, ["isDeleted"], ["role"], ["thumbsState"], ["contents"], ["contentCountAdded"] = 0, ["contentCountLoaded"], ["LayoutOrder"] = 0, ["hidden"]}]
      247 SETTABLEKS                       R13 R21 K21 ["messageId"]
      249 GETTABLEKS                       R22 R11 K37 ["sourceId"]
      251 SETTABLEKS                       R22 R21 K37 ["sourceId"]
      253 GETTABLEKS                       R22 R11 K38 ["rootId"]
      255 SETTABLEKS                       R22 R21 K38 ["rootId"]
      257 GETTABLEKS                       R23 R10 K52 ["createdUtc"]
      259 ORK                              R22 R23 K47 [0]
      260 SETTABLEKS                       R22 R21 K39 ["createdAt"]
      262 GETTABLEKS                       R23 R10 K53 ["updatedUtc"]
      264 ORK                              R22 R23 K47 [0]
      265 SETTABLEKS                       R22 R21 K40 ["updatedAt"]
      267 GETTABLEKS                       R22 R10 K44 ["isDeleted"]
      269 SETTABLEKS                       R22 R21 K44 ["isDeleted"]
      271 SETTABLEKS                       R17 R21 K22 ["role"]
      273 GETTABLEKS                       R22 R11 K45 ["thumbsState"]
      275 SETTABLEKS                       R22 R21 K45 ["thumbsState"]
      277 SETTABLEKS                       R15 R21 K25 ["contents"]
      279 SETTABLEKS                       R16 R21 K48 ["contentCountLoaded"]
      281 GETTABLEKS                       R22 R11 K50 ["hidden"]
      283 SETTABLEKS                       R22 R21 K50 ["hidden"]
      285 FASTCALL2                        TABLE_INSERT R5 R21 ; [+4]
      287 MOVE                             R20 R5
      288 GETIMPORT                        R19 K55 [table.insert]
      290 CALL                             R19 2 0
      291 FORGLOOP                         R6 2 ; [-259]
      293 JUMP                             ; [+2]
      294 NEWTABLE                         R5 0 0
      296 LOADB                            R6 1
      297 DUPTABLE                         R7 K57 [{"messages", "cursor"}]
      298 SETTABLEKS                       R5 R7 K7 ["messages"]
      300 GETTABLEKS                       R8 R3 K56 ["cursor"]
      302 SETTABLEKS                       R8 R7 K56 ["cursor"]
      304 RETURN                           R6 2

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["JSONEncode"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["serialize"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["JSONEncode"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["McpAssistantStorage"]
        3 GETTABLEKS                       R0 R0 K1 ["postUploadMessagesAsync"]
        5 GETUPVAL                         R1 1
        6 LOADNIL                          R2
        7 DUPTABLE                         R3 K3 [{"messages"}]
        8 GETUPVAL                         R4 2
        9 SETTABLEKS                       R4 R3 K2 ["messages"]
       11 CALL                             R0 3 -1
       12 RETURN                           R0 -1

PROTO_17:
        0 GETIMPORT                        R2 K2 [table.create]
        2 LENGTH                           R3 R1
        3 CALL                             R2 1 1
        4 MOVE                             R3 R1
        5 LOADNIL                          R4
        6 LOADNIL                          R5
        7 FORGPREP                         R3
        8 DUPTABLE                         R8 K7 [{"sourceId", "rootId", "thumbsState", "hidden"}]
        9 GETTABLEKS                       R10 R7 K3 ["sourceId"]
       11 ORK                              R9 R10 K8 []
       12 SETTABLEKS                       R9 R8 K3 ["sourceId"]
       14 GETTABLEKS                       R10 R7 K4 ["rootId"]
       16 ORK                              R9 R10 K8 []
       17 SETTABLEKS                       R9 R8 K4 ["rootId"]
       19 GETTABLEKS                       R10 R7 K5 ["thumbsState"]
       21 ORK                              R9 R10 K8 []
       22 SETTABLEKS                       R9 R8 K5 ["thumbsState"]
       24 GETTABLEKS                       R10 R7 K6 ["hidden"]
       26 ORK                              R9 R10 K8 []
       27 SETTABLEKS                       R9 R8 K6 ["hidden"]
       29 GETIMPORT                        R9 K10 [pcall]
       31 NEWCLOSURE                       R10 P0
       32 CAPTURE                          UPVAL U0
       33 CAPTURE                          VAL R8
       34 CALL                             R9 1 2
       35 JUMPIF                           R9 ; [+17]
       36 GETUPVAL                         R11 1
       37 GETTABLEKS                       R11 R11 K11 ["FFlagDebugLogAssistantUI"]
       39 JUMPIFNOT                        R11 ; [+13]
       40 GETIMPORT                        R11 K13 [warn]
       42 LOADK                            R13 K14 ["[CloudIO] Failed to serialize metadata for message with messageId \"%*\" and role \"%*\". Error was \"%*\". Skipping this message."]
       43 GETTABLEKS                       R15 R7 K15 ["messageId"]
       45 GETTABLEKS                       R16 R7 K16 ["role"]
       47 MOVE                             R17 R10
       48 NAMECALL                         R13 R13 K17 ["format"]
       50 CALL                             R13 4 1
       51 MOVE                             R12 R13
       52 CALL                             R11 1 0
       53 GETIMPORT                        R11 K2 [table.create]
       55 GETTABLEKS                       R13 R7 K18 ["contentCountAdded"]
       57 GETTABLEKS                       R14 R7 K19 ["contentCountLoaded"]
       59 ADD                              R12 R13 R14
       60 CALL                             R11 1 1
       61 GETTABLEKS                       R12 R7 K20 ["contents"]
       63 JUMPIFNOT                        R12 ; [+98]
       64 MOVE                             R13 R12
       65 LOADNIL                          R14
       66 LOADNIL                          R15
       67 FORGPREP                         R13
       68 GETTABLEKS                       R18 R17 K21 ["contentId"]
       70 GETIMPORT                        R19 K10 [pcall]
       72 NEWCLOSURE                       R20 P1
       73 CAPTURE                          UPVAL U2
       74 CAPTURE                          VAL R17
       75 CALL                             R19 1 2
       76 JUMPIF                           R19 ; [+17]
       77 GETUPVAL                         R21 1
       78 GETTABLEKS                       R21 R21 K11 ["FFlagDebugLogAssistantUI"]
       80 JUMPIFNOT                        R21 ; [+79]
       81 GETIMPORT                        R21 K13 [warn]
       83 LOADK                            R23 K22 ["[CloudIO] Failed to serialize content with contentId \"%*\" in message \"%*\". Error was \"%*\". Skipping this content."]
       84 MOVE                             R25 R18
       85 GETTABLEKS                       R26 R7 K15 ["messageId"]
       87 MOVE                             R27 R20
       88 NAMECALL                         R23 R23 K17 ["format"]
       90 CALL                             R23 4 1
       91 MOVE                             R22 R23
       92 CALL                             R21 1 0
       93 JUMP                             ; [+66]
       94 MOVE                             R21 R20
       95 LOADNIL                          R22
       96 LOADNIL                          R23
       97 FORGPREP                         R21
       98 GETIMPORT                        R26 K10 [pcall]
      100 NEWCLOSURE                       R27 P2
      101 CAPTURE                          UPVAL U0
      102 CAPTURE                          VAL R25
      103 CALL                             R26 1 2
      104 JUMPIF                           R26 ; [+17]
      105 GETUPVAL                         R28 1
      106 GETTABLEKS                       R28 R28 K11 ["FFlagDebugLogAssistantUI"]
      108 JUMPIFNOT                        R28 ; [+49]
      109 GETIMPORT                        R28 K13 [warn]
      111 LOADK                            R30 K23 ["[CloudIO] Failed to encode content with contentId \"%*\" in message \"%*\". Error was \"%*\". Skipping this content."]
      112 MOVE                             R32 R18
      113 GETTABLEKS                       R33 R7 K15 ["messageId"]
      115 MOVE                             R34 R27
      116 NAMECALL                         R30 R30 K17 ["format"]
      118 CALL                             R30 4 1
      119 MOVE                             R29 R30
      120 CALL                             R28 1 0
      121 JUMP                             ; [+36]
      122 DUPTABLE                         R30 K30 [{"contentId", "sequenceNumber", "createdUtc", "updatedUtc", "isDeleted", "mcpVersion", "mcpContent"}]
      123 SETTABLEKS                       R18 R30 K21 ["contentId"]
      125 SETTABLEKS                       R24 R30 K24 ["sequenceNumber"]
      127 GETTABLEKS                       R31 R17 K31 ["createdAt"]
      129 SETTABLEKS                       R31 R30 K25 ["createdUtc"]
      131 GETTABLEKS                       R31 R17 K32 ["updatedAt"]
      133 SETTABLEKS                       R31 R30 K26 ["updatedUtc"]
      135 GETTABLEKS                       R31 R17 K27 ["isDeleted"]
      137 SETTABLEKS                       R31 R30 K27 ["isDeleted"]
      139 GETUPVAL                         R31 3
      140 GETTABLEKS                       R31 R31 K33 ["Types"]
      142 GETTABLEKS                       R31 R31 K34 ["LATEST_PROTOCOL_VERSION"]
      144 SETTABLEKS                       R31 R30 K28 ["mcpVersion"]
      146 JUMPIFNOT                        R26 ; [+2]
      147 MOVE                             R31 R27
      148 JUMP                             ; [+1]
      149 LOADNIL                          R31
      150 SETTABLEKS                       R31 R30 K29 ["mcpContent"]
      152 FASTCALL2                        TABLE_INSERT R11 R30 ; [+4]
      154 MOVE                             R29 R11
      155 GETIMPORT                        R28 K36 [table.insert]
      157 CALL                             R28 2 0
      158 FORGLOOP                         R21 2 ; [-61]
      160 FORGLOOP                         R13 2 ; [-93]
      162 DUPTABLE                         R15 K39 [{"threadId", "messageId", "createdUtc", "updatedUtc", "isDeleted", "role", "metadata", "contents"}]
      163 SETTABLEKS                       R0 R15 K37 ["threadId"]
      165 GETTABLEKS                       R16 R7 K15 ["messageId"]
      167 SETTABLEKS                       R16 R15 K15 ["messageId"]
      169 GETTABLEKS                       R16 R7 K31 ["createdAt"]
      171 SETTABLEKS                       R16 R15 K25 ["createdUtc"]
      173 GETTABLEKS                       R16 R7 K32 ["updatedAt"]
      175 SETTABLEKS                       R16 R15 K26 ["updatedUtc"]
      177 GETTABLEKS                       R16 R7 K27 ["isDeleted"]
      179 SETTABLEKS                       R16 R15 K27 ["isDeleted"]
      181 GETTABLEKS                       R16 R7 K16 ["role"]
      183 SETTABLEKS                       R16 R15 K16 ["role"]
      185 JUMPIFNOT                        R9 ; [+2]
      186 MOVE                             R16 R10
      187 JUMP                             ; [+1]
      188 LOADNIL                          R16
      189 SETTABLEKS                       R16 R15 K38 ["metadata"]
      191 SETTABLEKS                       R11 R15 K20 ["contents"]
      193 FASTCALL2                        TABLE_INSERT R2 R15 ; [+4]
      195 MOVE                             R14 R2
      196 GETIMPORT                        R13 K36 [table.insert]
      198 CALL                             R13 2 0
      199 FORGLOOP                         R3 2 ; [-192]
      201 GETUPVAL                         R3 4
      202 GETTABLEKS                       R3 R3 K40 ["callWithOptions"]
      204 NEWCLOSURE                       R4 P3
      205 CAPTURE                          UPVAL U5
      206 CAPTURE                          VAL R0
      207 CAPTURE                          VAL R2
      208 NEWTABLE                         R5 0 0
      210 CALL                             R3 2 1
      211 GETTABLEKS                       R4 R3 K41 ["success"]
      213 JUMPIF                           R4 ; [+6]
      214 GETUPVAL                         R4 4
      215 GETTABLEKS                       R4 R4 K42 ["throwError"]
      217 MOVE                             R5 R3
      218 CALL                             R4 1 -1
      219 RETURN                           R4 -1
      220 GETTABLEKS                       R4 R3 K41 ["success"]
      222 RETURN                           R4 1

PROTO_18:
        0 DUPTABLE                         R0 K5 [{"getThreadsAsync", "uploadThreadsAsync", "deleteThreadAsync", "getMessagesAsync", "uploadMessagesAsync"}]
        1 DUPCLOSURE                       R1 K6 [PROTO_2]
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 SETTABLEKS                       R1 R0 K0 ["getThreadsAsync"]
        8 DUPCLOSURE                       R1 K7 [PROTO_5]
        9 CAPTURE                          UPVAL U3
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          UPVAL U0
       12 CAPTURE                          UPVAL U1
       13 SETTABLEKS                       R1 R0 K1 ["uploadThreadsAsync"]
       15 DUPCLOSURE                       R1 K8 [PROTO_7]
       16 CAPTURE                          UPVAL U0
       17 CAPTURE                          UPVAL U1
       18 SETTABLEKS                       R1 R0 K2 ["deleteThreadAsync"]
       20 DUPCLOSURE                       R1 K9 [PROTO_12]
       21 CAPTURE                          UPVAL U0
       22 CAPTURE                          UPVAL U1
       23 CAPTURE                          UPVAL U2
       24 CAPTURE                          UPVAL U3
       25 CAPTURE                          UPVAL U4
       26 CAPTURE                          UPVAL U5
       27 SETTABLEKS                       R1 R0 K3 ["getMessagesAsync"]
       29 DUPCLOSURE                       R1 K10 [PROTO_17]
       30 CAPTURE                          UPVAL U2
       31 CAPTURE                          UPVAL U3
       32 CAPTURE                          UPVAL U4
       33 CAPTURE                          UPVAL U6
       34 CAPTURE                          UPVAL U0
       35 CAPTURE                          UPVAL U1
       36 SETTABLEKS                       R1 R0 K4 ["uploadMessagesAsync"]
       38 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["HttpService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R0 K10 ["Packages"]
       17 GETTABLEKS                       R3 R3 K11 ["AssistantUI"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R0 K12 ["Src"]
       24 GETTABLEKS                       R4 R4 K13 ["Flags"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R0 K12 ["Src"]
       31 GETTABLEKS                       R5 R5 K14 ["Generated"]
       33 GETTABLEKS                       R5 R5 K15 ["OpenAPI"]
       35 GETTABLEKS                       R5 R5 K16 ["McpAssistantStorageApi"]
       37 CALL                             R4 1 1
       38 GETIMPORT                        R5 K9 [require]
       40 GETTABLEKS                       R6 R0 K10 ["Packages"]
       42 GETTABLEKS                       R6 R6 K17 ["ModelContextProtocol"]
       44 CALL                             R5 1 1
       45 GETIMPORT                        R6 K9 [require]
       47 GETTABLEKS                       R7 R0 K12 ["Src"]
       49 GETTABLEKS                       R7 R7 K18 ["Util"]
       51 GETTABLEKS                       R7 R7 K19 ["StudioEndpointUtil"]
       53 CALL                             R6 1 1
       54 GETIMPORT                        R7 K9 [require]
       56 GETTABLEKS                       R8 R0 K12 ["Src"]
       58 GETTABLEKS                       R8 R8 K14 ["Generated"]
       60 GETTABLEKS                       R8 R8 K15 ["OpenAPI"]
       62 GETTABLEKS                       R8 R8 K16 ["McpAssistantStorageApi"]
       64 GETTABLEKS                       R8 R8 K20 ["Models"]
       66 GETTABLEKS                       R8 R8 K21 ["ContentBody"]
       68 CALL                             R7 1 1
       69 GETIMPORT                        R8 K9 [require]
       71 GETTABLEKS                       R9 R0 K12 ["Src"]
       73 GETTABLEKS                       R9 R9 K14 ["Generated"]
       75 GETTABLEKS                       R9 R9 K15 ["OpenAPI"]
       77 GETTABLEKS                       R9 R9 K16 ["McpAssistantStorageApi"]
       79 GETTABLEKS                       R9 R9 K20 ["Models"]
       81 GETTABLEKS                       R9 R9 K22 ["MessageBody"]
       83 CALL                             R8 1 1
       84 GETIMPORT                        R9 K9 [require]
       86 GETTABLEKS                       R10 R0 K12 ["Src"]
       88 GETTABLEKS                       R10 R10 K14 ["Generated"]
       90 GETTABLEKS                       R10 R10 K15 ["OpenAPI"]
       92 GETTABLEKS                       R10 R10 K16 ["McpAssistantStorageApi"]
       94 GETTABLEKS                       R10 R10 K20 ["Models"]
       96 GETTABLEKS                       R10 R10 K23 ["ThreadBody"]
       98 CALL                             R9 1 1
       99 GETTABLEKS                       R10 R2 K24 ["Serializer"]
      101 DUPCLOSURE                       R11 K25 [PROTO_18]
      102 CAPTURE                          VAL R6
      103 CAPTURE                          VAL R4
      104 CAPTURE                          VAL R1
      105 CAPTURE                          VAL R3
      106 CAPTURE                          VAL R10
      107 CAPTURE                          VAL R2
      108 CAPTURE                          VAL R5
      109 DUPTABLE                         R12 K27 [{"createCloudIO"}]
      110 SETTABLEKS                       R11 R12 K26 ["createCloudIO"]
      112 RETURN                           R12 1
