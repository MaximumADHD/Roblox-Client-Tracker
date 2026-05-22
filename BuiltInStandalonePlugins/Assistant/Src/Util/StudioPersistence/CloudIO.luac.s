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
        6 DUPTABLE                         R3 K2 [{"retryCount"}]
        7 LOADN                            R4 2
        8 SETTABLEKS                       R4 R3 K1 ["retryCount"]
       10 CALL                             R1 2 1
       11 GETTABLEKS                       R2 R1 K3 ["success"]
       13 JUMPIF                           R2 ; [+6]
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R2 R2 K4 ["throwError"]
       17 MOVE                             R3 R1
       18 CALL                             R2 1 -1
       19 RETURN                           R2 -1
       20 GETTABLEKS                       R2 R1 K5 ["data"]
       22 GETTABLEKS                       R3 R2 K6 ["threads"]
       24 LOADNIL                          R4
       25 JUMPIFNOT                        R3 ; [+155]
       26 GETIMPORT                        R5 K9 [table.create]
       28 LENGTH                           R6 R3
       29 CALL                             R5 1 1
       30 MOVE                             R4 R5
       31 MOVE                             R5 R3
       32 LOADNIL                          R6
       33 LOADNIL                          R7
       34 FORGPREP                         R5
       35 LOADNIL                          R10
       36 GETTABLEKS                       R11 R9 K10 ["metadata"]
       38 JUMPIFNOT                        R11 ; [+37]
       39 FASTCALL1                        TYPEOF R11 ; [+3]
       40 MOVE                             R13 R11
       41 GETIMPORT                        R12 K12 [typeof]
       43 CALL                             R12 1 1
       44 JUMPIFNOTEQKS                    R12 K13 ["string"] ; [+31]
       46 LENGTH                           R12 R11
       47 LOADN                            R13 0
       48 JUMPIFNOTLT                      R13 R12 ; [+27]
       50 GETIMPORT                        R12 K15 [pcall]
       52 NEWCLOSURE                       R13 P1
       53 CAPTURE                          UPVAL U2
       54 CAPTURE                          VAL R11
       55 CALL                             R12 1 2
       56 JUMPIF                           R12 ; [+15]
       57 GETUPVAL                         R14 3
       58 CALL                             R14 0 1
       59 JUMPIFNOT                        R14 ; [+12]
       60 GETIMPORT                        R14 K17 [warn]
       62 LOADK                            R16 K18 ["[CloudIO] Failed to decode metadata for thread with title \"%*\" and metadata \"%*\". Error was \"%*\". Skipping this thread."]
       63 GETTABLEKS                       R18 R9 K19 ["title"]
       65 MOVE                             R19 R11
       66 MOVE                             R20 R13
       67 NAMECALL                         R16 R16 K20 ["format"]
       69 CALL                             R16 4 1
       70 MOVE                             R15 R16
       71 CALL                             R14 1 0
       72 JUMPIFNOT                        R12 ; [+2]
       73 MOVE                             R10 R13
       74 JUMP                             ; [+1]
       75 LOADNIL                          R10
       76 MOVE                             R12 R10
       77 JUMPIF                           R12 ; [+2]
       78 NEWTABLE                         R12 0 0
       80 MOVE                             R10 R12
       81 GETTABLEKS                       R12 R9 K21 ["threadId"]
       83 JUMPIF                           R12 ; [+15]
       84 GETUPVAL                         R13 3
       85 CALL                             R13 0 1
       86 JUMPIFNOT                        R13 ; [+91]
       87 GETIMPORT                        R13 K17 [warn]
       89 LOADK                            R15 K22 ["[CloudIO] threadId missing for thread with title \"%*\" and metadata \"%*\". Skipping this thread."]
       90 GETTABLEKS                       R17 R9 K19 ["title"]
       92 MOVE                             R18 R11
       93 NAMECALL                         R15 R15 K20 ["format"]
       95 CALL                             R15 3 1
       96 MOVE                             R14 R15
       97 CALL                             R13 1 0
       98 JUMP                             ; [+79]
       99 DUPTABLE                         R15 K38 [{"threadId", "sourceId", "rootId", "createdAt", "updatedAt", "ephemeral", "isDirty", "isDeleted", "lastActivityAt", "title", "isPinned", "lastViewedAt", "messages", "messageLoadState", "messagePageState", "messageCountAdded", "messageCountLoaded"}]
      100 SETTABLEKS                       R12 R15 K21 ["threadId"]
      102 GETTABLEKS                       R16 R10 K23 ["sourceId"]
      104 SETTABLEKS                       R16 R15 K23 ["sourceId"]
      106 GETTABLEKS                       R16 R10 K24 ["rootId"]
      108 SETTABLEKS                       R16 R15 K24 ["rootId"]
      110 GETTABLEKS                       R17 R9 K40 ["createdUtc"]
      112 ORK                              R16 R17 K39 [0]
      113 SETTABLEKS                       R16 R15 K25 ["createdAt"]
      115 GETTABLEKS                       R17 R9 K41 ["updatedUtc"]
      117 ORK                              R16 R17 K39 [0]
      118 SETTABLEKS                       R16 R15 K26 ["updatedAt"]
      120 LOADB                            R16 0
      121 SETTABLEKS                       R16 R15 K27 ["ephemeral"]
      123 LOADB                            R16 0
      124 SETTABLEKS                       R16 R15 K28 ["isDirty"]
      126 GETTABLEKS                       R16 R9 K29 ["isDeleted"]
      128 SETTABLEKS                       R16 R15 K29 ["isDeleted"]
      130 GETTABLEKS                       R17 R9 K42 ["lastActivityUtc"]
      132 ORK                              R16 R17 K39 [0]
      133 SETTABLEKS                       R16 R15 K30 ["lastActivityAt"]
      135 GETTABLEKS                       R16 R9 K19 ["title"]
      137 JUMPIF                           R16 ; [+6]
      138 LOADK                            R17 K43 ["IMPORTED_THREAD_%*"]
      139 MOVE                             R19 R12
      140 NAMECALL                         R17 R17 K20 ["format"]
      142 CALL                             R17 2 1
      143 MOVE                             R16 R17
      144 SETTABLEKS                       R16 R15 K19 ["title"]
      146 GETTABLEKS                       R17 R9 K31 ["isPinned"]
      148 ORK                              R16 R17 K44 [False]
      149 SETTABLEKS                       R16 R15 K31 ["isPinned"]
      151 GETTABLEKS                       R17 R10 K32 ["lastViewedAt"]
      153 ORK                              R16 R17 K45 [-1]
      154 SETTABLEKS                       R16 R15 K32 ["lastViewedAt"]
      156 NEWTABLE                         R16 0 0
      158 SETTABLEKS                       R16 R15 K33 ["messages"]
      160 LOADNIL                          R16
      161 SETTABLEKS                       R16 R15 K34 ["messageLoadState"]
      163 LOADNIL                          R16
      164 SETTABLEKS                       R16 R15 K35 ["messagePageState"]
      166 LOADN                            R16 0
      167 SETTABLEKS                       R16 R15 K36 ["messageCountAdded"]
      169 LOADN                            R16 0
      170 SETTABLEKS                       R16 R15 K37 ["messageCountLoaded"]
      172 FASTCALL2                        TABLE_INSERT R4 R15 ; [+4]
      174 MOVE                             R14 R4
      175 GETIMPORT                        R13 K47 [table.insert]
      177 CALL                             R13 2 0
      178 FORGLOOP                         R5 2 ; [-144]
      180 JUMP                             ; [+2]
      181 NEWTABLE                         R4 0 0
      183 LOADB                            R5 1
      184 DUPTABLE                         R6 K49 [{"threads", "cursor"}]
      185 SETTABLEKS                       R4 R6 K6 ["threads"]
      187 GETTABLEKS                       R7 R2 K48 ["cursor"]
      189 SETTABLEKS                       R7 R6 K48 ["cursor"]
      191 RETURN                           R5 2

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
        8 DUPTABLE                         R8 K6 [{"sourceId", "rootId", "lastViewedAt"}]
        9 GETTABLEKS                       R10 R7 K3 ["sourceId"]
       11 ORK                              R9 R10 K7 []
       12 SETTABLEKS                       R9 R8 K3 ["sourceId"]
       14 GETTABLEKS                       R10 R7 K4 ["rootId"]
       16 ORK                              R9 R10 K7 []
       17 SETTABLEKS                       R9 R8 K4 ["rootId"]
       19 GETTABLEKS                       R10 R7 K5 ["lastViewedAt"]
       21 ORK                              R9 R10 K7 []
       22 SETTABLEKS                       R9 R8 K5 ["lastViewedAt"]
       24 GETIMPORT                        R9 K9 [pcall]
       26 NEWCLOSURE                       R10 P0
       27 CAPTURE                          UPVAL U0
       28 CAPTURE                          VAL R8
       29 CALL                             R9 1 2
       30 JUMPIF                           R9 ; [+16]
       31 GETUPVAL                         R11 1
       32 CALL                             R11 0 1
       33 JUMPIFNOT                        R11 ; [+13]
       34 GETIMPORT                        R11 K11 [warn]
       36 LOADK                            R13 K12 ["[CloudIO] Failed to serialize metadata for thread with threadId \"%*\" and title \"%*\". Error was \"%*\". Skipping this thread."]
       37 GETTABLEKS                       R15 R7 K13 ["threadId"]
       39 GETTABLEKS                       R16 R7 K14 ["title"]
       41 MOVE                             R17 R10
       42 NAMECALL                         R13 R13 K15 ["format"]
       44 CALL                             R13 4 1
       45 MOVE                             R12 R13
       46 CALL                             R11 1 0
       47 DUPTABLE                         R13 K22 [{"threadId", "createdUtc", "updatedUtc", "isDeleted", "lastActivityUtc", "isPinned", "title", "metadata"}]
       48 GETTABLEKS                       R14 R7 K13 ["threadId"]
       50 SETTABLEKS                       R14 R13 K13 ["threadId"]
       52 GETTABLEKS                       R14 R7 K23 ["createdAt"]
       54 SETTABLEKS                       R14 R13 K16 ["createdUtc"]
       56 GETTABLEKS                       R14 R7 K24 ["updatedAt"]
       58 SETTABLEKS                       R14 R13 K17 ["updatedUtc"]
       60 GETTABLEKS                       R14 R7 K18 ["isDeleted"]
       62 SETTABLEKS                       R14 R13 K18 ["isDeleted"]
       64 GETTABLEKS                       R14 R7 K25 ["lastActivityAt"]
       66 SETTABLEKS                       R14 R13 K19 ["lastActivityUtc"]
       68 GETTABLEKS                       R14 R7 K20 ["isPinned"]
       70 SETTABLEKS                       R14 R13 K20 ["isPinned"]
       72 GETTABLEKS                       R14 R7 K14 ["title"]
       74 SETTABLEKS                       R14 R13 K14 ["title"]
       76 JUMPIFNOT                        R9 ; [+2]
       77 MOVE                             R14 R10
       78 JUMP                             ; [+1]
       79 LOADNIL                          R14
       80 SETTABLEKS                       R14 R13 K21 ["metadata"]
       82 FASTCALL2                        TABLE_INSERT R2 R13 ; [+4]
       84 MOVE                             R12 R2
       85 GETIMPORT                        R11 K27 [table.insert]
       87 CALL                             R11 2 0
       88 FORGLOOP                         R3 2 ; [-81]
       90 GETUPVAL                         R3 2
       91 GETTABLEKS                       R3 R3 K28 ["callWithOptions"]
       93 NEWCLOSURE                       R4 P1
       94 CAPTURE                          UPVAL U3
       95 CAPTURE                          VAL R1
       96 CAPTURE                          VAL R2
       97 NEWTABLE                         R5 0 0
       99 CALL                             R3 2 1
      100 GETTABLEKS                       R4 R3 K29 ["success"]
      102 JUMPIF                           R4 ; [+6]
      103 GETUPVAL                         R4 2
      104 GETTABLEKS                       R4 R4 K30 ["throwError"]
      106 MOVE                             R5 R3
      107 CALL                             R4 1 -1
      108 RETURN                           R4 -1
      109 GETTABLEKS                       R4 R3 K29 ["success"]
      111 RETURN                           R4 1

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
        7 DUPTABLE                         R4 K2 [{"retryCount"}]
        8 LOADN                            R5 2
        9 SETTABLEKS                       R5 R4 K1 ["retryCount"]
       11 CALL                             R2 2 1
       12 GETTABLEKS                       R3 R2 K3 ["success"]
       14 JUMPIF                           R3 ; [+6]
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R3 R3 K4 ["throwError"]
       18 MOVE                             R4 R2
       19 CALL                             R3 1 -1
       20 RETURN                           R3 -1
       21 GETTABLEKS                       R3 R2 K5 ["data"]
       23 GETTABLEKS                       R4 R3 K6 ["messages"]
       25 LOADNIL                          R5
       26 JUMPIFNOT                        R4 ; [+276]
       27 GETIMPORT                        R6 K9 [table.create]
       29 LENGTH                           R7 R4
       30 CALL                             R6 1 1
       31 MOVE                             R5 R6
       32 MOVE                             R6 R4
       33 LOADNIL                          R7
       34 LOADNIL                          R8
       35 FORGPREP                         R6
       36 LOADNIL                          R11
       37 GETTABLEKS                       R12 R10 K10 ["metadata"]
       39 JUMPIFNOT                        R12 ; [+39]
       40 FASTCALL1                        TYPEOF R12 ; [+3]
       41 MOVE                             R14 R12
       42 GETIMPORT                        R13 K12 [typeof]
       44 CALL                             R13 1 1
       45 JUMPIFNOTEQKS                    R13 K13 ["string"] ; [+33]
       47 LENGTH                           R13 R12
       48 LOADN                            R14 0
       49 JUMPIFNOTLT                      R14 R13 ; [+29]
       51 GETIMPORT                        R13 K15 [pcall]
       53 NEWCLOSURE                       R14 P1
       54 CAPTURE                          UPVAL U2
       55 CAPTURE                          VAL R12
       56 CALL                             R13 1 2
       57 JUMPIF                           R13 ; [+17]
       58 GETUPVAL                         R15 3
       59 CALL                             R15 0 1
       60 JUMPIFNOT                        R15 ; [+14]
       61 GETIMPORT                        R15 K17 [warn]
       63 LOADK                            R17 K18 ["[CloudIO] Failed to decode metadata for message with messageId \"%*\" and role \"%*\" and metadata \"%*\". Error was \"%*\". Skipping this message."]
       64 GETTABLEKS                       R19 R10 K19 ["messageId"]
       66 GETTABLEKS                       R20 R10 K20 ["role"]
       68 MOVE                             R21 R12
       69 MOVE                             R22 R14
       70 NAMECALL                         R17 R17 K21 ["format"]
       72 CALL                             R17 5 1
       73 MOVE                             R16 R17
       74 CALL                             R15 1 0
       75 JUMPIFNOT                        R13 ; [+2]
       76 MOVE                             R11 R14
       77 JUMP                             ; [+1]
       78 LOADNIL                          R11
       79 MOVE                             R13 R11
       80 JUMPIF                           R13 ; [+2]
       81 NEWTABLE                         R13 0 0
       83 MOVE                             R11 R13
       84 GETTABLEKS                       R13 R10 K19 ["messageId"]
       86 JUMPIF                           R13 ; [+15]
       87 GETUPVAL                         R14 3
       88 CALL                             R14 0 1
       89 JUMPIFNOT                        R14 ; [+210]
       90 GETIMPORT                        R14 K17 [warn]
       92 LOADK                            R16 K22 ["[CloudIO] messageId missing for message with role \"%*\" and metadata \"%*\". Skipping this message."]
       93 GETTABLEKS                       R18 R10 K20 ["role"]
       95 MOVE                             R19 R12
       96 NAMECALL                         R16 R16 K21 ["format"]
       98 CALL                             R16 3 1
       99 MOVE                             R15 R16
      100 CALL                             R14 1 0
      101 JUMP                             ; [+198]
      102 GETTABLEKS                       R14 R10 K23 ["contents"]
      104 NEWTABLE                         R15 0 0
      106 LOADN                            R16 0
      107 JUMPIFNOT                        R14 ; [+101]
      108 GETIMPORT                        R17 K9 [table.create]
      110 LENGTH                           R18 R14
      111 CALL                             R17 1 1
      112 MOVE                             R18 R14
      113 LOADNIL                          R19
      114 LOADNIL                          R20
      115 FORGPREP                         R18
      116 GETTABLEKS                       R23 R22 K24 ["mcpContent"]
      118 JUMPIF                           R23 ; [+12]
      119 GETIMPORT                        R24 K17 [warn]
      121 LOADK                            R26 K25 ["[CloudIO] mcpContent missing for content with contentId \"%*\" in message \"%*\". Skipping this content."]
      122 GETTABLEKS                       R28 R22 K26 ["contentId"]
      124 MOVE                             R29 R13
      125 NAMECALL                         R26 R26 K21 ["format"]
      127 CALL                             R26 3 1
      128 MOVE                             R25 R26
      129 CALL                             R24 1 0
      130 JUMP                             ; [+44]
      131 GETTABLEKS                       R24 R22 K26 ["contentId"]
      133 JUMPIF                           R24 ; [+14]
      134 GETUPVAL                         R25 3
      135 CALL                             R25 0 1
      136 JUMPIFNOT                        R25 ; [+38]
      137 GETIMPORT                        R25 K17 [warn]
      139 LOADK                            R27 K27 ["[CloudIO] contentId missing for content with mcpContent \"%*\" in message \"%*\". Skipping this content."]
      140 MOVE                             R29 R23
      141 MOVE                             R30 R13
      142 NAMECALL                         R27 R27 K21 ["format"]
      144 CALL                             R27 3 1
      145 MOVE                             R26 R27
      146 CALL                             R25 1 0
      147 JUMP                             ; [+27]
      148 GETIMPORT                        R25 K15 [pcall]
      150 NEWCLOSURE                       R26 P2
      151 CAPTURE                          UPVAL U2
      152 CAPTURE                          VAL R23
      153 CAPTURE                          VAL R17
      154 CAPTURE                          VAL R0
      155 CAPTURE                          VAL R13
      156 CAPTURE                          VAL R24
      157 CAPTURE                          VAL R22
      158 CALL                             R25 1 2
      159 JUMPIF                           R25 ; [+15]
      160 GETUPVAL                         R27 3
      161 CALL                             R27 0 1
      162 JUMPIFNOT                        R27 ; [+12]
      163 GETIMPORT                        R27 K17 [warn]
      165 LOADK                            R29 K28 ["[CloudIO] Failed to deserialize content with contentId \"%*\" in message \"%*\". mcpContent was \"%*\". Error was \"%*\". Skipping this content."]
      166 MOVE                             R31 R24
      167 MOVE                             R32 R13
      168 MOVE                             R33 R23
      169 MOVE                             R34 R26
      170 NAMECALL                         R29 R29 K21 ["format"]
      172 CALL                             R29 5 1
      173 MOVE                             R28 R29
      174 CALL                             R27 1 0
      175 FORGLOOP                         R18 2 ; [-60]
      177 GETIMPORT                        R18 K15 [pcall]
      179 NEWCLOSURE                       R19 P3
      180 CAPTURE                          UPVAL U4
      181 CAPTURE                          VAL R17
      182 CALL                             R18 1 2
      183 JUMPIF                           R18 ; [+15]
      184 GETUPVAL                         R20 3
      185 CALL                             R20 0 1
      186 JUMPIFNOT                        R20 ; [+113]
      187 GETIMPORT                        R20 K17 [warn]
      189 LOADK                            R22 K29 ["[CloudIO] Failed to deserialize content in message \"%*\". deserializableContents was \"%*\". Error was \"%*\". Skipping this content."]
      190 MOVE                             R24 R13
      191 MOVE                             R25 R17
      192 MOVE                             R26 R19
      193 NAMECALL                         R22 R22 K21 ["format"]
      195 CALL                             R22 4 1
      196 MOVE                             R21 R22
      197 CALL                             R20 1 0
      198 JUMP                             ; [+101]
      199 MOVE                             R20 R19
      200 LOADNIL                          R21
      201 LOADNIL                          R22
      202 FORGPREP                         R20
      203 GETTABLEKS                       R25 R24 K26 ["contentId"]
      205 SETTABLE                         R24 R15 R25
      206 ADDK                             R16 R16 K30 [1]
      207 FORGLOOP                         R20 2 ; [-5]
      209 LOADK                            R17 K31 ["system"]
      210 GETTABLEKS                       R18 R10 K20 ["role"]
      212 JUMPIFNOT                        R18 ; [+30]
      213 FASTCALL1                        TYPEOF R18 ; [+3]
      214 MOVE                             R20 R18
      215 GETIMPORT                        R19 K12 [typeof]
      217 CALL                             R19 1 1
      218 JUMPIFNOTEQKS                    R19 K13 ["string"] ; [+24]
      220 GETUPVAL                         R20 5
      221 GETTABLEKS                       R20 R20 K32 ["Types"]
      223 GETTABLEKS                       R20 R20 K33 ["VALID_ROLES"]
      225 GETTABLE                         R19 R20 R18
      226 JUMPIFNOT                        R19 ; [+2]
      227 MOVE                             R17 R18
      228 JUMP                             ; [+14]
      229 GETUPVAL                         R19 3
      230 CALL                             R19 0 1
      231 JUMPIFNOT                        R19 ; [+11]
      232 GETIMPORT                        R19 K17 [warn]
      234 LOADK                            R21 K34 ["[CloudIO] Invalid role \"%*\" for message with messageId \"%*\". Defaulting to \"system\"."]
      235 GETTABLEKS                       R23 R10 K20 ["role"]
      237 MOVE                             R24 R13
      238 NAMECALL                         R21 R21 K21 ["format"]
      240 CALL                             R21 3 1
      241 MOVE                             R20 R21
      242 CALL                             R19 1 0
      243 DUPTABLE                         R21 K47 [{"messageId", "sourceId", "rootId", "createdAt", "updatedAt", "ephemeral", "isDirty", "isDeleted", "role", "thumbsState", "contents", "contentCountAdded", "contentCountLoaded", "LayoutOrder", "hidden"}]
      244 SETTABLEKS                       R13 R21 K19 ["messageId"]
      246 GETTABLEKS                       R22 R11 K35 ["sourceId"]
      248 SETTABLEKS                       R22 R21 K35 ["sourceId"]
      250 GETTABLEKS                       R22 R11 K36 ["rootId"]
      252 SETTABLEKS                       R22 R21 K36 ["rootId"]
      254 GETTABLEKS                       R23 R10 K49 ["createdUtc"]
      256 ORK                              R22 R23 K48 [0]
      257 SETTABLEKS                       R22 R21 K37 ["createdAt"]
      259 GETTABLEKS                       R23 R10 K50 ["updatedUtc"]
      261 ORK                              R22 R23 K48 [0]
      262 SETTABLEKS                       R22 R21 K38 ["updatedAt"]
      264 LOADB                            R22 0
      265 SETTABLEKS                       R22 R21 K39 ["ephemeral"]
      267 LOADB                            R22 0
      268 SETTABLEKS                       R22 R21 K40 ["isDirty"]
      270 GETTABLEKS                       R22 R10 K41 ["isDeleted"]
      272 SETTABLEKS                       R22 R21 K41 ["isDeleted"]
      274 SETTABLEKS                       R17 R21 K20 ["role"]
      276 GETTABLEKS                       R22 R11 K42 ["thumbsState"]
      278 SETTABLEKS                       R22 R21 K42 ["thumbsState"]
      280 SETTABLEKS                       R15 R21 K23 ["contents"]
      282 LOADN                            R22 0
      283 SETTABLEKS                       R22 R21 K43 ["contentCountAdded"]
      285 SETTABLEKS                       R16 R21 K44 ["contentCountLoaded"]
      287 LOADN                            R22 0
      288 SETTABLEKS                       R22 R21 K45 ["LayoutOrder"]
      290 GETTABLEKS                       R22 R11 K46 ["hidden"]
      292 SETTABLEKS                       R22 R21 K46 ["hidden"]
      294 FASTCALL2                        TABLE_INSERT R5 R21 ; [+4]
      296 MOVE                             R20 R5
      297 GETIMPORT                        R19 K52 [table.insert]
      299 CALL                             R19 2 0
      300 FORGLOOP                         R6 2 ; [-265]
      302 JUMP                             ; [+2]
      303 NEWTABLE                         R5 0 0
      305 LOADB                            R6 1
      306 DUPTABLE                         R7 K54 [{"messages", "cursor"}]
      307 SETTABLEKS                       R5 R7 K6 ["messages"]
      309 GETTABLEKS                       R8 R3 K53 ["cursor"]
      311 SETTABLEKS                       R8 R7 K53 ["cursor"]
      313 RETURN                           R6 2

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
        6 SETTABLEKS                       R1 R0 K0 ["getThreadsAsync"]
        8 DUPCLOSURE                       R1 K7 [PROTO_5]
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          UPVAL U3
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
       90 GETTABLEKS                       R10 R10 K26 ["FFlagDebugLogAssistantUI"]
       92 DUPCLOSURE                       R11 K27 [PROTO_18]
       93 CAPTURE                          VAL R5
       94 CAPTURE                          VAL R3
       95 CAPTURE                          VAL R1
       96 CAPTURE                          VAL R10
       97 CAPTURE                          VAL R9
       98 CAPTURE                          VAL R2
       99 CAPTURE                          VAL R4
      100 DUPTABLE                         R12 K29 [{"createCloudIO"}]
      101 SETTABLEKS                       R11 R12 K28 ["createCloudIO"]
      103 RETURN                           R12 1
