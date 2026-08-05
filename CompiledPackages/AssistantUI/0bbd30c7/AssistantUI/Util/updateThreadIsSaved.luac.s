PROTO_0:
        0 GETTABLEKS                       R3 R0 K1 ["LayoutOrder"]
        2 ORK                              R2 R3 K0 [0]
        3 GETTABLEKS                       R4 R1 K1 ["LayoutOrder"]
        5 ORK                              R3 R4 K0 [0]
        6 JUMPIFNOTEQ                      R2 R3 ; [+10]
        8 GETTABLEKS                       R5 R0 K2 ["messageId"]
       10 GETTABLEKS                       R6 R1 K2 ["messageId"]
       12 JUMPIFLT                         R5 R6 ; [+2]
       14 LOADB                            R4 0 +1
       15 LOADB                            R4 1
       16 RETURN                           R4 1
       17 JUMPIFLT                         R2 R3 ; [+2]
       19 LOADB                            R4 0 +1
       20 LOADB                            R4 1
       21 RETURN                           R4 1

PROTO_1:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R3 R0 K0 ["messages"]
        4 FASTCALL2K                       ASSERT R3 K1 ; [+4]
        6 LOADK                            R4 K1 ["Thread messages should not be nil"]
        7 GETIMPORT                        R2 K3 [assert]
        9 CALL                             R2 2 0
       10 GETTABLEKS                       R2 R0 K0 ["messages"]
       12 LOADNIL                          R3
       13 LOADNIL                          R4
       14 FORGPREP                         R2
       15 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
       17 MOVE                             R8 R1
       18 MOVE                             R9 R6
       19 GETIMPORT                        R7 K6 [table.insert]
       21 CALL                             R7 2 0
       22 FORGLOOP                         R2 2 ; [-8]
       24 GETIMPORT                        R2 K8 [table.sort]
       26 MOVE                             R3 R1
       27 DUPCLOSURE                       R4 K9 [PROTO_0]
       28 CALL                             R2 2 0
       29 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 MOVE                             R2 R1
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 FORGPREP                         R2
        7 GETTABLEKS                       R7 R6 K0 ["role"]
        9 JUMPIFNOTEQKS                    R7 K1 ["user"] ; [+2]
       11 RETURN                           R6 1
       12 FORGLOOP                         R2 2 ; [-6]
       14 LOADNIL                          R2
       15 RETURN                           R2 1

PROTO_3:
        0 GETTABLEKS                       R3 R0 K1 ["LayoutOrder"]
        2 ORK                              R2 R3 K0 [0]
        3 GETTABLEKS                       R4 R1 K1 ["LayoutOrder"]
        5 ORK                              R3 R4 K0 [0]
        6 JUMPIFNOTEQ                      R2 R3 ; [+10]
        8 GETTABLEKS                       R5 R0 K2 ["contentId"]
       10 GETTABLEKS                       R6 R1 K2 ["contentId"]
       12 JUMPIFLT                         R5 R6 ; [+2]
       14 LOADB                            R4 0 +1
       15 LOADB                            R4 1
       16 RETURN                           R4 1
       17 JUMPIFLT                         R2 R3 ; [+2]
       19 LOADB                            R4 0 +1
       20 LOADB                            R4 1
       21 RETURN                           R4 1

PROTO_4:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["contents"]
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 FORGPREP                         R2
        7 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
        9 MOVE                             R8 R1
       10 MOVE                             R9 R6
       11 GETIMPORT                        R7 K3 [table.insert]
       13 CALL                             R7 2 0
       14 FORGLOOP                         R2 2 ; [-8]
       16 GETIMPORT                        R2 K5 [table.sort]
       18 MOVE                             R3 R1
       19 DUPCLOSURE                       R4 K6 [PROTO_3]
       20 CALL                             R2 2 0
       21 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 MOVE                             R2 R1
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 FORGPREP                         R2
        7 GETTABLEKS                       R7 R6 K0 ["type"]
        9 GETUPVAL                         R8 1
       10 GETTABLEKS                       R8 R8 K1 ["Type"]
       12 JUMPIFNOTEQ                      R7 R8 ; [+4]
       14 GETTABLEKS                       R7 R6 K2 ["text"]
       16 RETURN                           R7 1
       17 FORGLOOP                         R2 2 ; [-11]
       19 LOADNIL                          R2
       20 RETURN                           R2 1

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["thread"]
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 0
        4 GETTABLEKS                       R2 R1 K1 ["ephemeral"]
        6 JUMPIF                           R2 ; [+1]
        7 RETURN                           R0 0
        8 GETUPVAL                         R3 0
        9 MOVE                             R4 R1
       10 CALL                             R3 1 1
       11 MOVE                             R4 R3
       12 LOADNIL                          R5
       13 LOADNIL                          R6
       14 FORGPREP                         R4
       15 GETTABLEKS                       R9 R8 K2 ["role"]
       17 JUMPIFNOTEQKS                    R9 K3 ["user"] ; [+3]
       19 MOVE                             R2 R8
       20 JUMP                             ; [+3]
       21 FORGLOOP                         R4 2 ; [-7]
       23 LOADNIL                          R2
       24 JUMPIF                           R2 ; [+1]
       25 RETURN                           R0 0
       26 GETUPVAL                         R4 1
       27 MOVE                             R5 R2
       28 CALL                             R4 1 1
       29 MOVE                             R5 R4
       30 LOADNIL                          R6
       31 LOADNIL                          R7
       32 FORGPREP                         R5
       33 GETTABLEKS                       R10 R9 K4 ["type"]
       35 GETUPVAL                         R11 2
       36 GETTABLEKS                       R11 R11 K5 ["Type"]
       38 JUMPIFNOTEQ                      R10 R11 ; [+4]
       40 GETTABLEKS                       R3 R9 K6 ["text"]
       42 JUMP                             ; [+3]
       43 FORGLOOP                         R5 2 ; [-11]
       45 LOADNIL                          R3
       46 JUMPIF                           R3 ; [+1]
       47 RETURN                           R0 0
       48 GETUPVAL                         R4 3
       49 GETTABLEKS                       R4 R4 K7 ["get"]
       51 CALL                             R4 0 1
       52 LOADB                            R5 0
       53 SETTABLEKS                       R5 R1 K1 ["ephemeral"]
       55 GETUPVAL                         R5 4
       56 GETTABLEKS                       R5 R5 K8 ["getThreadMetadata"]
       58 GETTABLEKS                       R6 R1 K9 ["threadId"]
       60 CALL                             R5 1 1
       61 GETTABLEKS                       R6 R5 K10 ["isNewThread"]
       63 JUMPIFNOT                        R6 ; [+25]
       64 LOADK                            R9 K11 ["\n"]
       65 LOADK                            R10 K12 [" "]
       66 NAMECALL                         R7 R3 K13 ["gsub"]
       68 CALL                             R7 3 1
       69 GETUPVAL                         R8 5
       70 MOVE                             R9 R7
       71 GETUPVAL                         R11 6
       72 GETTABLEKS                       R11 R11 K15 ["MAX_THREAD_NAME_LENGTH"]
       74 SUBK                             R10 R11 K14 [3]
       75 CALL                             R8 2 2
       76 JUMPIFNOT                        R9 ; [+3]
       77 MOVE                             R10 R8
       78 LOADK                            R11 K16 ["..."]
       79 CONCAT                           R8 R10 R11
       80 SETTABLEKS                       R8 R1 K17 ["title"]
       82 GETUPVAL                         R10 4
       83 GETTABLEKS                       R10 R10 K18 ["setThreadMetadata"]
       85 GETTABLEKS                       R11 R1 K9 ["threadId"]
       87 LOADNIL                          R12
       88 CALL                             R10 2 0
       89 GETTABLEKS                       R7 R4 K19 ["EventLogger"]
       91 GETTABLEKS                       R7 R7 K20 ["logThreadCreated"]
       93 DUPTABLE                         R8 K27 [{"conversationId", "threadId", "creationReason", "sourceThreadId", "rootThreadId", "titleAtCreate", "namingSource"}]
       94 GETTABLEKS                       R9 R0 K28 ["sessionId"]
       96 SETTABLEKS                       R9 R8 K21 ["conversationId"]
       98 GETTABLEKS                       R9 R1 K9 ["threadId"]
      100 SETTABLEKS                       R9 R8 K9 ["threadId"]
      102 JUMPIFNOT                        R6 ; [+6]
      103 GETUPVAL                         R9 7
      104 GETTABLEKS                       R9 R9 K29 ["ThreadCreationReason"]
      106 GETTABLEKS                       R9 R9 K30 ["New"]
      108 JUMP                             ; [+5]
      109 GETUPVAL                         R9 7
      110 GETTABLEKS                       R9 R9 K29 ["ThreadCreationReason"]
      112 GETTABLEKS                       R9 R9 K31 ["Duplicate"]
      114 SETTABLEKS                       R9 R8 K22 ["creationReason"]
      116 GETTABLEKS                       R9 R1 K32 ["sourceId"]
      118 SETTABLEKS                       R9 R8 K23 ["sourceThreadId"]
      120 GETTABLEKS                       R9 R1 K33 ["rootId"]
      122 SETTABLEKS                       R9 R8 K24 ["rootThreadId"]
      124 GETTABLEKS                       R9 R1 K17 ["title"]
      126 SETTABLEKS                       R9 R8 K25 ["titleAtCreate"]
      128 JUMPIFNOT                        R6 ; [+6]
      129 GETUPVAL                         R9 7
      130 GETTABLEKS                       R9 R9 K34 ["ThreadNamingSource"]
      132 GETTABLEKS                       R9 R9 K35 ["FirstUserMessage"]
      134 JUMP                             ; [+5]
      135 GETUPVAL                         R9 7
      136 GETTABLEKS                       R9 R9 K34 ["ThreadNamingSource"]
      138 GETTABLEKS                       R9 R9 K36 ["DuplicateOrigin"]
      140 SETTABLEKS                       R9 R8 K26 ["namingSource"]
      142 CALL                             R7 1 0
      143 GETUPVAL                         R7 8
      144 NEWTABLE                         R8 0 1
      146 MOVE                             R9 R1
      147 SETLIST                          R8 R9 1 [1]
      149 CALL                             R7 1 0
      150 GETUPVAL                         R7 9
      151 NEWTABLE                         R8 0 1
      153 MOVE                             R9 R1
      154 SETLIST                          R8 R9 1 [1]
      156 CALL                             R7 1 0
      157 RETURN                           R0 0

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
       16 GETTABLEKS                       R3 R0 K8 ["Constants"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K9 ["Util"]
       23 GETTABLEKS                       R4 R4 K10 ["ContentIdGenerator"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K11 ["Guest"]
       30 GETTABLEKS                       R5 R5 K12 ["Environment"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K13 ["Components"]
       37 GETTABLEKS                       R6 R6 K14 ["ContentWidgets"]
       39 GETTABLEKS                       R6 R6 K15 ["TextContentWidget"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K16 ["Types"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K5 [require]
       49 GETTABLEKS                       R8 R0 K9 ["Util"]
       51 GETTABLEKS                       R8 R8 K17 ["markDirty"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K5 [require]
       56 GETTABLEKS                       R9 R0 K9 ["Util"]
       58 GETTABLEKS                       R9 R9 K18 ["setUpdatedAt"]
       60 CALL                             R8 1 1
       61 GETTABLEKS                       R9 R1 K19 ["Engine"]
       63 GETTABLEKS                       R9 R9 K20 ["truncateUtf8Safe"]
       65 DUPCLOSURE                       R10 K21 [PROTO_1]
       66 DUPCLOSURE                       R11 K22 [PROTO_2]
       67 CAPTURE                          VAL R10
       68 DUPCLOSURE                       R12 K23 [PROTO_4]
       69 DUPCLOSURE                       R13 K24 [PROTO_5]
       70 CAPTURE                          VAL R12
       71 CAPTURE                          VAL R5
       72 DUPCLOSURE                       R14 K25 [PROTO_6]
       73 CAPTURE                          VAL R10
       74 CAPTURE                          VAL R12
       75 CAPTURE                          VAL R5
       76 CAPTURE                          VAL R4
       77 CAPTURE                          VAL R3
       78 CAPTURE                          VAL R9
       79 CAPTURE                          VAL R2
       80 CAPTURE                          VAL R6
       81 CAPTURE                          VAL R8
       82 CAPTURE                          VAL R7
       83 RETURN                           R14 1
