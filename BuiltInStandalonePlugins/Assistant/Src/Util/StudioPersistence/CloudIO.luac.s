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
       22 JUMPIFNOT                        R3 ; [+152]
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
       35 JUMPIFNOT                        R11 ; [+37]
       36 FASTCALL1                        TYPEOF R11 ; [+3]
       37 MOVE                             R13 R11
       38 GETIMPORT                        R12 K13 [typeof]
       40 CALL                             R12 1 1
       41 JUMPIFNOTEQKS                    R12 K14 ["string"] ; [+31]
       43 LENGTH                           R12 R11
       44 LOADN                            R13 0
       45 JUMPIFNOTLT                      R13 R12 ; [+27]
       47 GETIMPORT                        R12 K16 [pcall]
       49 NEWCLOSURE                       R13 P1
       50 CAPTURE                          UPVAL U2
       51 CAPTURE                          VAL R11
       52 CALL                             R12 1 2
       53 JUMPIF                           R12 ; [+15]
       54 GETUPVAL                         R14 3
       55 CALL                             R14 0 1
       56 JUMPIFNOT                        R14 ; [+12]
       57 GETIMPORT                        R14 K18 [warn]
       59 LOADK                            R16 K19 ["[CloudIO] Failed to decode metadata for thread with title \"%*\" and metadata \"%*\". Error was \"%*\". Skipping this thread."]
       60 GETTABLEKS                       R18 R9 K20 ["title"]
       62 MOVE                             R19 R11
       63 MOVE                             R20 R13
       64 NAMECALL                         R16 R16 K21 ["format"]
       66 CALL                             R16 4 1
       67 MOVE                             R15 R16
       68 CALL                             R14 1 0
       69 JUMPIFNOT                        R12 ; [+2]
       70 MOVE                             R10 R13
       71 JUMP                             ; [+1]
       72 LOADNIL                          R10
       73 MOVE                             R12 R10
       74 JUMPIF                           R12 ; [+2]
       75 NEWTABLE                         R12 0 0
       77 MOVE                             R10 R12
       78 GETTABLEKS                       R12 R9 K22 ["threadId"]
       80 JUMPIF                           R12 ; [+15]
       81 GETUPVAL                         R13 3
       82 CALL                             R13 0 1
       83 JUMPIFNOT                        R13 ; [+88]
       84 GETIMPORT                        R13 K18 [warn]
       86 LOADK                            R15 K23 ["[CloudIO] threadId missing for thread with title \"%*\" and metadata \"%*\". Skipping this thread."]
       87 GETTABLEKS                       R17 R9 K20 ["title"]
       89 MOVE                             R18 R11
       90 NAMECALL                         R15 R15 K21 ["format"]
       92 CALL                             R15 3 1
       93 MOVE                             R14 R15
       94 CALL                             R13 1 0
       95 JUMP                             ; [+76]
       96 LOADNIL                          R13
       97 GETUPVAL                         R14 4
       98 CALL                             R14 0 1
       99 JUMPIFNOT                        R14 ; [+9]
      100 GETTABLEKS                       R14 R10 K24 ["loadUntilMessageId"]
      102 JUMPIFNOT                        R14 ; [+6]
      103 DUPTABLE                         R14 K25 [{"loadUntilMessageId"}]
      104 GETTABLEKS                       R15 R10 K24 ["loadUntilMessageId"]
      106 SETTABLEKS                       R15 R14 K24 ["loadUntilMessageId"]
      108 MOVE                             R13 R14
      109 DUPTABLE                         R16 K44 [{["threadId"], ["sourceId"], ["rootId"], ["createdAt"], ["updatedAt"], ["ephemeral"] = False, ["isDirty"] = False, ["isDeleted"], ["lastActivityAt"], ["title"], ["isPinned"], ["lastViewedAt"], ["messages"], ["messageLoadState"] = , ["messagePageState"] = , ["messageCountAdded"] = 0, ["messageCountLoaded"] = 0, ["metadata"]}]
      110 SETTABLEKS                       R12 R16 K22 ["threadId"]
      112 GETTABLEKS                       R17 R10 K26 ["sourceId"]
      114 SETTABLEKS                       R17 R16 K26 ["sourceId"]
      116 GETTABLEKS                       R17 R10 K27 ["rootId"]
      118 SETTABLEKS                       R17 R16 K27 ["rootId"]
      120 GETTABLEKS                       R18 R9 K45 ["createdUtc"]
      122 ORK                              R17 R18 K42 [0]
      123 SETTABLEKS                       R17 R16 K28 ["createdAt"]
      125 GETTABLEKS                       R18 R9 K46 ["updatedUtc"]
      127 ORK                              R17 R18 K42 [0]
      128 SETTABLEKS                       R17 R16 K29 ["updatedAt"]
      130 GETTABLEKS                       R17 R9 K33 ["isDeleted"]
      132 SETTABLEKS                       R17 R16 K33 ["isDeleted"]
      134 GETTABLEKS                       R18 R9 K47 ["lastActivityUtc"]
      136 ORK                              R17 R18 K42 [0]
      137 SETTABLEKS                       R17 R16 K34 ["lastActivityAt"]
      139 GETTABLEKS                       R17 R9 K20 ["title"]
      141 JUMPIF                           R17 ; [+6]
      142 LOADK                            R18 K48 ["IMPORTED_THREAD_%*"]
      143 MOVE                             R20 R12
      144 NAMECALL                         R18 R18 K21 ["format"]
      146 CALL                             R18 2 1
      147 MOVE                             R17 R18
      148 SETTABLEKS                       R17 R16 K20 ["title"]
      150 GETTABLEKS                       R18 R9 K35 ["isPinned"]
      152 ORK                              R17 R18 K31 [False]
      153 SETTABLEKS                       R17 R16 K35 ["isPinned"]
      155 GETTABLEKS                       R18 R10 K36 ["lastViewedAt"]
      157 ORK                              R17 R18 K49 [-1]
      158 SETTABLEKS                       R17 R16 K36 ["lastViewedAt"]
      160 NEWTABLE                         R17 0 0
      162 SETTABLEKS                       R17 R16 K37 ["messages"]
      164 SETTABLEKS                       R13 R16 K11 ["metadata"]
      166 FASTCALL2                        TABLE_INSERT R4 R16 ; [+4]
      168 MOVE                             R15 R4
      169 GETIMPORT                        R14 K51 [table.insert]
      171 CALL                             R14 2 0
      172 FORGLOOP                         R5 2 ; [-141]
      174 JUMP                             ; [+2]
      175 NEWTABLE                         R4 0 0
      177 LOADB                            R5 1
      178 DUPTABLE                         R6 K53 [{"threads", "cursor"}]
      179 SETTABLEKS                       R4 R6 K7 ["threads"]
      181 GETTABLEKS                       R7 R2 K52 ["cursor"]
      183 SETTABLEKS                       R7 R6 K52 ["cursor"]
      185 RETURN                           R5 2

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
       25 CALL                             R10 0 1
       26 JUMPIFNOT                        R10 ; [+8]
       27 GETTABLEKS                       R10 R7 K9 ["metadata"]
       29 JUMPIFNOT                        R10 ; [+5]
       30 GETTABLEKS                       R9 R7 K9 ["metadata"]
       32 GETTABLEKS                       R9 R9 K6 ["loadUntilMessageId"]
       34 JUMP                             ; [+1]
       35 LOADNIL                          R9
       36 SETTABLEKS                       R9 R8 K6 ["loadUntilMessageId"]
       38 GETIMPORT                        R9 K11 [pcall]
       40 NEWCLOSURE                       R10 P0
       41 CAPTURE                          UPVAL U1
       42 CAPTURE                          VAL R8
       43 CALL                             R9 1 2
       44 JUMPIF                           R9 ; [+16]
       45 GETUPVAL                         R11 2
       46 CALL                             R11 0 1
       47 JUMPIFNOT                        R11 ; [+13]
       48 GETIMPORT                        R11 K13 [warn]
       50 LOADK                            R13 K14 ["[CloudIO] Failed to serialize metadata for thread with threadId \"%*\" and title \"%*\". Error was \"%*\". Skipping this thread."]
       51 GETTABLEKS                       R15 R7 K15 ["threadId"]
       53 GETTABLEKS                       R16 R7 K16 ["title"]
       55 MOVE                             R17 R10
       56 NAMECALL                         R13 R13 K17 ["format"]
       58 CALL                             R13 4 1
       59 MOVE                             R12 R13
       60 CALL                             R11 1 0
       61 DUPTABLE                         R13 K23 [{"threadId", "createdUtc", "updatedUtc", "isDeleted", "lastActivityUtc", "isPinned", "title", "metadata"}]
       62 GETTABLEKS                       R14 R7 K15 ["threadId"]
       64 SETTABLEKS                       R14 R13 K15 ["threadId"]
       66 GETTABLEKS                       R14 R7 K24 ["createdAt"]
       68 SETTABLEKS                       R14 R13 K18 ["createdUtc"]
       70 GETTABLEKS                       R14 R7 K25 ["updatedAt"]
       72 SETTABLEKS                       R14 R13 K19 ["updatedUtc"]
       74 GETTABLEKS                       R14 R7 K20 ["isDeleted"]
       76 SETTABLEKS                       R14 R13 K20 ["isDeleted"]
       78 GETTABLEKS                       R14 R7 K26 ["lastActivityAt"]
       80 SETTABLEKS                       R14 R13 K21 ["lastActivityUtc"]
       82 GETTABLEKS                       R14 R7 K22 ["isPinned"]
       84 SETTABLEKS                       R14 R13 K22 ["isPinned"]
       86 GETTABLEKS                       R14 R7 K16 ["title"]
       88 SETTABLEKS                       R14 R13 K16 ["title"]
       90 JUMPIFNOT                        R9 ; [+2]
       91 MOVE                             R14 R10
       92 JUMP                             ; [+1]
       93 LOADNIL                          R14
       94 SETTABLEKS                       R14 R13 K9 ["metadata"]
       96 FASTCALL2                        TABLE_INSERT R2 R13 ; [+4]
       98 MOVE                             R12 R2
       99 GETIMPORT                        R11 K28 [table.insert]
      101 CALL                             R11 2 0
      102 FORGLOOP                         R3 2 ; [-95]
      104 GETUPVAL                         R3 3
      105 GETTABLEKS                       R3 R3 K29 ["callWithOptions"]
      107 NEWCLOSURE                       R4 P1
      108 CAPTURE                          UPVAL U4
      109 CAPTURE                          VAL R1
      110 CAPTURE                          VAL R2
      111 NEWTABLE                         R5 0 0
      113 CALL                             R3 2 1
      114 GETTABLEKS                       R4 R3 K30 ["success"]
      116 JUMPIF                           R4 ; [+6]
      117 GETUPVAL                         R4 3
      118 GETTABLEKS                       R4 R4 K31 ["throwError"]
      120 MOVE                             R5 R3
      121 CALL                             R4 1 -1
      122 RETURN                           R4 -1
      123 GETTABLEKS                       R4 R3 K30 ["success"]
      125 RETURN                           R4 1

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
       23 JUMPIFNOT                        R4 ; [+264]
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
       36 JUMPIFNOT                        R12 ; [+39]
       37 FASTCALL1                        TYPEOF R12 ; [+3]
       38 MOVE                             R14 R12
       39 GETIMPORT                        R13 K13 [typeof]
       41 CALL                             R13 1 1
       42 JUMPIFNOTEQKS                    R13 K14 ["string"] ; [+33]
       44 LENGTH                           R13 R12
       45 LOADN                            R14 0
       46 JUMPIFNOTLT                      R14 R13 ; [+29]
       48 GETIMPORT                        R13 K16 [pcall]
       50 NEWCLOSURE                       R14 P1
       51 CAPTURE                          UPVAL U2
       52 CAPTURE                          VAL R12
       53 CALL                             R13 1 2
       54 JUMPIF                           R13 ; [+17]
       55 GETUPVAL                         R15 3
       56 CALL                             R15 0 1
       57 JUMPIFNOT                        R15 ; [+14]
       58 GETIMPORT                        R15 K18 [warn]
       60 LOADK                            R17 K19 ["[CloudIO] Failed to decode metadata for message with messageId \"%*\" and role \"%*\" and metadata \"%*\". Error was \"%*\". Skipping this message."]
       61 GETTABLEKS                       R19 R10 K20 ["messageId"]
       63 GETTABLEKS                       R20 R10 K21 ["role"]
       65 MOVE                             R21 R12
       66 MOVE                             R22 R14
       67 NAMECALL                         R17 R17 K22 ["format"]
       69 CALL                             R17 5 1
       70 MOVE                             R16 R17
       71 CALL                             R15 1 0
       72 JUMPIFNOT                        R13 ; [+2]
       73 MOVE                             R11 R14
       74 JUMP                             ; [+1]
       75 LOADNIL                          R11
       76 MOVE                             R13 R11
       77 JUMPIF                           R13 ; [+2]
       78 NEWTABLE                         R13 0 0
       80 MOVE                             R11 R13
       81 GETTABLEKS                       R13 R10 K20 ["messageId"]
       83 JUMPIF                           R13 ; [+15]
       84 GETUPVAL                         R14 3
       85 CALL                             R14 0 1
       86 JUMPIFNOT                        R14 ; [+198]
       87 GETIMPORT                        R14 K18 [warn]
       89 LOADK                            R16 K23 ["[CloudIO] messageId missing for message with role \"%*\" and metadata \"%*\". Skipping this message."]
       90 GETTABLEKS                       R18 R10 K21 ["role"]
       92 MOVE                             R19 R12
       93 NAMECALL                         R16 R16 K22 ["format"]
       95 CALL                             R16 3 1
       96 MOVE                             R15 R16
       97 CALL                             R14 1 0
       98 JUMP                             ; [+186]
       99 GETTABLEKS                       R14 R10 K24 ["contents"]
      101 NEWTABLE                         R15 0 0
      103 LOADN                            R16 0
      104 JUMPIFNOT                        R14 ; [+101]
      105 GETIMPORT                        R17 K10 [table.create]
      107 LENGTH                           R18 R14
      108 CALL                             R17 1 1
      109 MOVE                             R18 R14
      110 LOADNIL                          R19
      111 LOADNIL                          R20
      112 FORGPREP                         R18
      113 GETTABLEKS                       R23 R22 K25 ["mcpContent"]
      115 JUMPIF                           R23 ; [+12]
      116 GETIMPORT                        R24 K18 [warn]
      118 LOADK                            R26 K26 ["[CloudIO] mcpContent missing for content with contentId \"%*\" in message \"%*\". Skipping this content."]
      119 GETTABLEKS                       R28 R22 K27 ["contentId"]
      121 MOVE                             R29 R13
      122 NAMECALL                         R26 R26 K22 ["format"]
      124 CALL                             R26 3 1
      125 MOVE                             R25 R26
      126 CALL                             R24 1 0
      127 JUMP                             ; [+44]
      128 GETTABLEKS                       R24 R22 K27 ["contentId"]
      130 JUMPIF                           R24 ; [+14]
      131 GETUPVAL                         R25 3
      132 CALL                             R25 0 1
      133 JUMPIFNOT                        R25 ; [+38]
      134 GETIMPORT                        R25 K18 [warn]
      136 LOADK                            R27 K28 ["[CloudIO] contentId missing for content with mcpContent \"%*\" in message \"%*\". Skipping this content."]
      137 MOVE                             R29 R23
      138 MOVE                             R30 R13
      139 NAMECALL                         R27 R27 K22 ["format"]
      141 CALL                             R27 3 1
      142 MOVE                             R26 R27
      143 CALL                             R25 1 0
      144 JUMP                             ; [+27]
      145 GETIMPORT                        R25 K16 [pcall]
      147 NEWCLOSURE                       R26 P2
      148 CAPTURE                          UPVAL U2
      149 CAPTURE                          VAL R23
      150 CAPTURE                          VAL R17
      151 CAPTURE                          VAL R0
      152 CAPTURE                          VAL R13
      153 CAPTURE                          VAL R24
      154 CAPTURE                          VAL R22
      155 CALL                             R25 1 2
      156 JUMPIF                           R25 ; [+15]
      157 GETUPVAL                         R27 3
      158 CALL                             R27 0 1
      159 JUMPIFNOT                        R27 ; [+12]
      160 GETIMPORT                        R27 K18 [warn]
      162 LOADK                            R29 K29 ["[CloudIO] Failed to deserialize content with contentId \"%*\" in message \"%*\". mcpContent was \"%*\". Error was \"%*\". Skipping this content."]
      163 MOVE                             R31 R24
      164 MOVE                             R32 R13
      165 MOVE                             R33 R23
      166 MOVE                             R34 R26
      167 NAMECALL                         R29 R29 K22 ["format"]
      169 CALL                             R29 5 1
      170 MOVE                             R28 R29
      171 CALL                             R27 1 0
      172 FORGLOOP                         R18 2 ; [-60]
      174 GETIMPORT                        R18 K16 [pcall]
      176 NEWCLOSURE                       R19 P3
      177 CAPTURE                          UPVAL U4
      178 CAPTURE                          VAL R17
      179 CALL                             R18 1 2
      180 JUMPIF                           R18 ; [+15]
      181 GETUPVAL                         R20 3
      182 CALL                             R20 0 1
      183 JUMPIFNOT                        R20 ; [+101]
      184 GETIMPORT                        R20 K18 [warn]
      186 LOADK                            R22 K30 ["[CloudIO] Failed to deserialize content in message \"%*\". deserializableContents was \"%*\". Error was \"%*\". Skipping this content."]
      187 MOVE                             R24 R13
      188 MOVE                             R25 R17
      189 MOVE                             R26 R19
      190 NAMECALL                         R22 R22 K22 ["format"]
      192 CALL                             R22 4 1
      193 MOVE                             R21 R22
      194 CALL                             R20 1 0
      195 JUMP                             ; [+89]
      196 MOVE                             R20 R19
      197 LOADNIL                          R21
      198 LOADNIL                          R22
      199 FORGPREP                         R20
      200 GETTABLEKS                       R25 R24 K27 ["contentId"]
      202 SETTABLE                         R24 R15 R25
      203 ADDK                             R16 R16 K31 [1]
      204 FORGLOOP                         R20 2 ; [-5]
      206 LOADK                            R17 K32 ["system"]
      207 GETTABLEKS                       R18 R10 K21 ["role"]
      209 JUMPIFNOT                        R18 ; [+30]
      210 FASTCALL1                        TYPEOF R18 ; [+3]
      211 MOVE                             R20 R18
      212 GETIMPORT                        R19 K13 [typeof]
      214 CALL                             R19 1 1
      215 JUMPIFNOTEQKS                    R19 K14 ["string"] ; [+24]
      217 GETUPVAL                         R20 5
      218 GETTABLEKS                       R20 R20 K33 ["Types"]
      220 GETTABLEKS                       R20 R20 K34 ["VALID_ROLES"]
      222 GETTABLE                         R19 R20 R18
      223 JUMPIFNOT                        R19 ; [+2]
      224 MOVE                             R17 R18
      225 JUMP                             ; [+14]
      226 GETUPVAL                         R19 3
      227 CALL                             R19 0 1
      228 JUMPIFNOT                        R19 ; [+11]
      229 GETIMPORT                        R19 K18 [warn]
      231 LOADK                            R21 K35 ["[CloudIO] Invalid role \"%*\" for message with messageId \"%*\". Defaulting to \"system\"."]
      232 GETTABLEKS                       R23 R10 K21 ["role"]
      234 MOVE                             R24 R13
      235 NAMECALL                         R21 R21 K22 ["format"]
      237 CALL                             R21 3 1
      238 MOVE                             R20 R21
      239 CALL                             R19 1 0
      240 DUPTABLE                         R21 K50 [{["messageId"], ["sourceId"], ["rootId"], ["createdAt"], ["updatedAt"], ["ephemeral"] = False, ["isDirty"] = False, ["isDeleted"], ["role"], ["thumbsState"], ["contents"], ["contentCountAdded"] = 0, ["contentCountLoaded"], ["LayoutOrder"] = 0, ["hidden"]}]
      241 SETTABLEKS                       R13 R21 K20 ["messageId"]
      243 GETTABLEKS                       R22 R11 K36 ["sourceId"]
      245 SETTABLEKS                       R22 R21 K36 ["sourceId"]
      247 GETTABLEKS                       R22 R11 K37 ["rootId"]
      249 SETTABLEKS                       R22 R21 K37 ["rootId"]
      251 GETTABLEKS                       R23 R10 K51 ["createdUtc"]
      253 ORK                              R22 R23 K46 [0]
      254 SETTABLEKS                       R22 R21 K38 ["createdAt"]
      256 GETTABLEKS                       R23 R10 K52 ["updatedUtc"]
      258 ORK                              R22 R23 K46 [0]
      259 SETTABLEKS                       R22 R21 K39 ["updatedAt"]
      261 GETTABLEKS                       R22 R10 K43 ["isDeleted"]
      263 SETTABLEKS                       R22 R21 K43 ["isDeleted"]
      265 SETTABLEKS                       R17 R21 K21 ["role"]
      267 GETTABLEKS                       R22 R11 K44 ["thumbsState"]
      269 SETTABLEKS                       R22 R21 K44 ["thumbsState"]
      271 SETTABLEKS                       R15 R21 K24 ["contents"]
      273 SETTABLEKS                       R16 R21 K47 ["contentCountLoaded"]
      275 GETTABLEKS                       R22 R11 K49 ["hidden"]
      277 SETTABLEKS                       R22 R21 K49 ["hidden"]
      279 FASTCALL2                        TABLE_INSERT R5 R21 ; [+4]
      281 MOVE                             R20 R5
      282 GETIMPORT                        R19 K54 [table.insert]
      284 CALL                             R19 2 0
      285 FORGLOOP                         R6 2 ; [-253]
      287 JUMP                             ; [+2]
      288 NEWTABLE                         R5 0 0
      290 LOADB                            R6 1
      291 DUPTABLE                         R7 K56 [{"messages", "cursor"}]
      292 SETTABLEKS                       R5 R7 K7 ["messages"]
      294 GETTABLEKS                       R8 R3 K55 ["cursor"]
      296 SETTABLEKS                       R8 R7 K55 ["cursor"]
      298 RETURN                           R6 2

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
       35 JUMPIF                           R9 ; [+16]
       36 GETUPVAL                         R11 1
       37 CALL                             R11 0 1
       38 JUMPIFNOT                        R11 ; [+13]
       39 GETIMPORT                        R11 K12 [warn]
       41 LOADK                            R13 K13 ["[CloudIO] Failed to serialize metadata for message with messageId \"%*\" and role \"%*\". Error was \"%*\". Skipping this message."]
       42 GETTABLEKS                       R15 R7 K14 ["messageId"]
       44 GETTABLEKS                       R16 R7 K15 ["role"]
       46 MOVE                             R17 R10
       47 NAMECALL                         R13 R13 K16 ["format"]
       49 CALL                             R13 4 1
       50 MOVE                             R12 R13
       51 CALL                             R11 1 0
       52 GETIMPORT                        R11 K2 [table.create]
       54 GETTABLEKS                       R13 R7 K17 ["contentCountAdded"]
       56 GETTABLEKS                       R14 R7 K18 ["contentCountLoaded"]
       58 ADD                              R12 R13 R14
       59 CALL                             R11 1 1
       60 GETTABLEKS                       R12 R7 K19 ["contents"]
       62 JUMPIFNOT                        R12 ; [+96]
       63 MOVE                             R13 R12
       64 LOADNIL                          R14
       65 LOADNIL                          R15
       66 FORGPREP                         R13
       67 GETTABLEKS                       R18 R17 K20 ["contentId"]
       69 GETIMPORT                        R19 K10 [pcall]
       71 NEWCLOSURE                       R20 P1
       72 CAPTURE                          UPVAL U2
       73 CAPTURE                          VAL R17
       74 CALL                             R19 1 2
       75 JUMPIF                           R19 ; [+16]
       76 GETUPVAL                         R21 1
       77 CALL                             R21 0 1
       78 JUMPIFNOT                        R21 ; [+78]
       79 GETIMPORT                        R21 K12 [warn]
       81 LOADK                            R23 K21 ["[CloudIO] Failed to serialize content with contentId \"%*\" in message \"%*\". Error was \"%*\". Skipping this content."]
       82 MOVE                             R25 R18
       83 GETTABLEKS                       R26 R7 K14 ["messageId"]
       85 MOVE                             R27 R20
       86 NAMECALL                         R23 R23 K16 ["format"]
       88 CALL                             R23 4 1
       89 MOVE                             R22 R23
       90 CALL                             R21 1 0
       91 JUMP                             ; [+65]
       92 MOVE                             R21 R20
       93 LOADNIL                          R22
       94 LOADNIL                          R23
       95 FORGPREP                         R21
       96 GETIMPORT                        R26 K10 [pcall]
       98 NEWCLOSURE                       R27 P2
       99 CAPTURE                          UPVAL U0
      100 CAPTURE                          VAL R25
      101 CALL                             R26 1 2
      102 JUMPIF                           R26 ; [+16]
      103 GETUPVAL                         R28 1
      104 CALL                             R28 0 1
      105 JUMPIFNOT                        R28 ; [+49]
      106 GETIMPORT                        R28 K12 [warn]
      108 LOADK                            R30 K22 ["[CloudIO] Failed to encode content with contentId \"%*\" in message \"%*\". Error was \"%*\". Skipping this content."]
      109 MOVE                             R32 R18
      110 GETTABLEKS                       R33 R7 K14 ["messageId"]
      112 MOVE                             R34 R27
      113 NAMECALL                         R30 R30 K16 ["format"]
      115 CALL                             R30 4 1
      116 MOVE                             R29 R30
      117 CALL                             R28 1 0
      118 JUMP                             ; [+36]
      119 DUPTABLE                         R30 K29 [{"contentId", "sequenceNumber", "createdUtc", "updatedUtc", "isDeleted", "mcpVersion", "mcpContent"}]
      120 SETTABLEKS                       R18 R30 K20 ["contentId"]
      122 SETTABLEKS                       R24 R30 K23 ["sequenceNumber"]
      124 GETTABLEKS                       R31 R17 K30 ["createdAt"]
      126 SETTABLEKS                       R31 R30 K24 ["createdUtc"]
      128 GETTABLEKS                       R31 R17 K31 ["updatedAt"]
      130 SETTABLEKS                       R31 R30 K25 ["updatedUtc"]
      132 GETTABLEKS                       R31 R17 K26 ["isDeleted"]
      134 SETTABLEKS                       R31 R30 K26 ["isDeleted"]
      136 GETUPVAL                         R31 3
      137 GETTABLEKS                       R31 R31 K32 ["Types"]
      139 GETTABLEKS                       R31 R31 K33 ["LATEST_PROTOCOL_VERSION"]
      141 SETTABLEKS                       R31 R30 K27 ["mcpVersion"]
      143 JUMPIFNOT                        R26 ; [+2]
      144 MOVE                             R31 R27
      145 JUMP                             ; [+1]
      146 LOADNIL                          R31
      147 SETTABLEKS                       R31 R30 K28 ["mcpContent"]
      149 FASTCALL2                        TABLE_INSERT R11 R30 ; [+4]
      151 MOVE                             R29 R11
      152 GETIMPORT                        R28 K35 [table.insert]
      154 CALL                             R28 2 0
      155 FORGLOOP                         R21 2 ; [-60]
      157 FORGLOOP                         R13 2 ; [-91]
      159 DUPTABLE                         R15 K38 [{"threadId", "messageId", "createdUtc", "updatedUtc", "isDeleted", "role", "metadata", "contents"}]
      160 SETTABLEKS                       R0 R15 K36 ["threadId"]
      162 GETTABLEKS                       R16 R7 K14 ["messageId"]
      164 SETTABLEKS                       R16 R15 K14 ["messageId"]
      166 GETTABLEKS                       R16 R7 K30 ["createdAt"]
      168 SETTABLEKS                       R16 R15 K24 ["createdUtc"]
      170 GETTABLEKS                       R16 R7 K31 ["updatedAt"]
      172 SETTABLEKS                       R16 R15 K25 ["updatedUtc"]
      174 GETTABLEKS                       R16 R7 K26 ["isDeleted"]
      176 SETTABLEKS                       R16 R15 K26 ["isDeleted"]
      178 GETTABLEKS                       R16 R7 K15 ["role"]
      180 SETTABLEKS                       R16 R15 K15 ["role"]
      182 JUMPIFNOT                        R9 ; [+2]
      183 MOVE                             R16 R10
      184 JUMP                             ; [+1]
      185 LOADNIL                          R16
      186 SETTABLEKS                       R16 R15 K37 ["metadata"]
      188 SETTABLEKS                       R11 R15 K19 ["contents"]
      190 FASTCALL2                        TABLE_INSERT R2 R15 ; [+4]
      192 MOVE                             R14 R2
      193 GETIMPORT                        R13 K35 [table.insert]
      195 CALL                             R13 2 0
      196 FORGLOOP                         R3 2 ; [-189]
      198 GETUPVAL                         R3 4
      199 GETTABLEKS                       R3 R3 K39 ["callWithOptions"]
      201 NEWCLOSURE                       R4 P3
      202 CAPTURE                          UPVAL U5
      203 CAPTURE                          VAL R0
      204 CAPTURE                          VAL R2
      205 NEWTABLE                         R5 0 0
      207 CALL                             R3 2 1
      208 GETTABLEKS                       R4 R3 K40 ["success"]
      210 JUMPIF                           R4 ; [+6]
      211 GETUPVAL                         R4 4
      212 GETTABLEKS                       R4 R4 K41 ["throwError"]
      214 MOVE                             R5 R3
      215 CALL                             R4 1 -1
      216 RETURN                           R4 -1
      217 GETTABLEKS                       R4 R3 K40 ["success"]
      219 RETURN                           R4 1

PROTO_18:
        0 DUPTABLE                         R0 K5 [{"getThreadsAsync", "uploadThreadsAsync", "deleteThreadAsync", "getMessagesAsync", "uploadMessagesAsync"}]
        1 DUPCLOSURE                       R1 K6 [PROTO_2]
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 SETTABLEKS                       R1 R0 K0 ["getThreadsAsync"]
        9 DUPCLOSURE                       R1 K7 [PROTO_5]
       10 CAPTURE                          UPVAL U4
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          UPVAL U3
       13 CAPTURE                          UPVAL U0
       14 CAPTURE                          UPVAL U1
       15 SETTABLEKS                       R1 R0 K1 ["uploadThreadsAsync"]
       17 DUPCLOSURE                       R1 K8 [PROTO_7]
       18 CAPTURE                          UPVAL U0
       19 CAPTURE                          UPVAL U1
       20 SETTABLEKS                       R1 R0 K2 ["deleteThreadAsync"]
       22 DUPCLOSURE                       R1 K9 [PROTO_12]
       23 CAPTURE                          UPVAL U0
       24 CAPTURE                          UPVAL U1
       25 CAPTURE                          UPVAL U2
       26 CAPTURE                          UPVAL U3
       27 CAPTURE                          UPVAL U5
       28 CAPTURE                          UPVAL U6
       29 SETTABLEKS                       R1 R0 K3 ["getMessagesAsync"]
       31 DUPCLOSURE                       R1 K10 [PROTO_17]
       32 CAPTURE                          UPVAL U2
       33 CAPTURE                          UPVAL U3
       34 CAPTURE                          UPVAL U5
       35 CAPTURE                          UPVAL U7
       36 CAPTURE                          UPVAL U0
       37 CAPTURE                          UPVAL U1
       38 SETTABLEKS                       R1 R0 K4 ["uploadMessagesAsync"]
       40 RETURN                           R0 1

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
       22 GETTABLEKS                       R4 R0 K12 ["Generated"]
       24 GETTABLEKS                       R4 R4 K13 ["OpenAPI"]
       26 GETTABLEKS                       R4 R4 K14 ["McpAssistantStorageApi"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K9 [require]
       31 GETTABLEKS                       R5 R0 K10 ["Packages"]
       33 GETTABLEKS                       R5 R5 K15 ["ModelContextProtocol"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K9 [require]
       38 GETTABLEKS                       R6 R0 K16 ["Src"]
       40 GETTABLEKS                       R6 R6 K17 ["Util"]
       42 GETTABLEKS                       R6 R6 K18 ["StudioEndpointUtil"]
       44 CALL                             R5 1 1
       45 GETIMPORT                        R6 K9 [require]
       47 GETTABLEKS                       R7 R0 K12 ["Generated"]
       49 GETTABLEKS                       R7 R7 K13 ["OpenAPI"]
       51 GETTABLEKS                       R7 R7 K14 ["McpAssistantStorageApi"]
       53 GETTABLEKS                       R7 R7 K19 ["Models"]
       55 GETTABLEKS                       R7 R7 K20 ["ContentBody"]
       57 CALL                             R6 1 1
       58 GETIMPORT                        R7 K9 [require]
       60 GETTABLEKS                       R8 R0 K12 ["Generated"]
       62 GETTABLEKS                       R8 R8 K13 ["OpenAPI"]
       64 GETTABLEKS                       R8 R8 K14 ["McpAssistantStorageApi"]
       66 GETTABLEKS                       R8 R8 K19 ["Models"]
       68 GETTABLEKS                       R8 R8 K21 ["MessageBody"]
       70 CALL                             R7 1 1
       71 GETIMPORT                        R8 K9 [require]
       73 GETTABLEKS                       R9 R0 K12 ["Generated"]
       75 GETTABLEKS                       R9 R9 K13 ["OpenAPI"]
       77 GETTABLEKS                       R9 R9 K14 ["McpAssistantStorageApi"]
       79 GETTABLEKS                       R9 R9 K19 ["Models"]
       81 GETTABLEKS                       R9 R9 K22 ["ThreadBody"]
       83 CALL                             R8 1 1
       84 GETTABLEKS                       R9 R2 K23 ["Serializer"]
       86 GETTABLEKS                       R10 R2 K24 ["Flags"]
       88 GETTABLEKS                       R10 R10 K25 ["Shared"]
       90 GETTABLEKS                       R10 R10 K26 ["FFlagAssistantMarkdownPlanMode"]
       92 GETTABLEKS                       R11 R2 K24 ["Flags"]
       94 GETTABLEKS                       R11 R11 K25 ["Shared"]
       96 GETTABLEKS                       R11 R11 K27 ["FFlagDebugLogAssistantUI"]
       98 DUPCLOSURE                       R12 K28 [PROTO_18]
       99 CAPTURE                          VAL R5
      100 CAPTURE                          VAL R3
      101 CAPTURE                          VAL R1
      102 CAPTURE                          VAL R11
      103 CAPTURE                          VAL R10
      104 CAPTURE                          VAL R9
      105 CAPTURE                          VAL R2
      106 CAPTURE                          VAL R4
      107 DUPTABLE                         R13 K30 [{"createCloudIO"}]
      108 SETTABLEKS                       R12 R13 K29 ["createCloudIO"]
      110 RETURN                           R13 1
