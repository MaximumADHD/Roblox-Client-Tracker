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
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["updateThreadIsSaved should only be called when multiple chat support is enabled"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 GETTABLEKS                       R1 R0 K3 ["thread"]
       10 JUMPIF                           R1 ; [+1]
       11 RETURN                           R0 0
       12 GETTABLEKS                       R2 R1 K4 ["ephemeral"]
       14 JUMPIF                           R2 ; [+1]
       15 RETURN                           R0 0
       16 GETUPVAL                         R3 1
       17 MOVE                             R4 R1
       18 CALL                             R3 1 1
       19 MOVE                             R4 R3
       20 LOADNIL                          R5
       21 LOADNIL                          R6
       22 FORGPREP                         R4
       23 GETTABLEKS                       R9 R8 K5 ["role"]
       25 JUMPIFNOTEQKS                    R9 K6 ["user"] ; [+3]
       27 MOVE                             R2 R8
       28 JUMP                             ; [+3]
       29 FORGLOOP                         R4 2 ; [-7]
       31 LOADNIL                          R2
       32 JUMPIF                           R2 ; [+1]
       33 RETURN                           R0 0
       34 GETUPVAL                         R4 2
       35 MOVE                             R5 R2
       36 CALL                             R4 1 1
       37 MOVE                             R5 R4
       38 LOADNIL                          R6
       39 LOADNIL                          R7
       40 FORGPREP                         R5
       41 GETTABLEKS                       R10 R9 K7 ["type"]
       43 GETUPVAL                         R11 3
       44 GETTABLEKS                       R11 R11 K8 ["Type"]
       46 JUMPIFNOTEQ                      R10 R11 ; [+4]
       48 GETTABLEKS                       R3 R9 K9 ["text"]
       50 JUMP                             ; [+3]
       51 FORGLOOP                         R5 2 ; [-11]
       53 LOADNIL                          R3
       54 JUMPIF                           R3 ; [+1]
       55 RETURN                           R0 0
       56 GETUPVAL                         R4 4
       57 GETTABLEKS                       R4 R4 K10 ["get"]
       59 CALL                             R4 0 1
       60 LOADB                            R5 0
       61 SETTABLEKS                       R5 R1 K4 ["ephemeral"]
       63 GETUPVAL                         R5 5
       64 GETTABLEKS                       R5 R5 K11 ["getContentMetadata"]
       66 GETTABLEKS                       R6 R1 K12 ["threadId"]
       68 CALL                             R5 1 1
       69 LOADB                            R6 0
       70 GETTABLEKS                       R7 R5 K7 ["type"]
       72 GETUPVAL                         R8 5
       73 GETTABLEKS                       R8 R8 K13 ["METADATA_TYPES"]
       75 GETTABLEKS                       R8 R8 K14 ["Thread"]
       77 JUMPIFNOTEQ                      R7 R8 ; [+3]
       79 GETTABLEKS                       R6 R5 K15 ["isNewThread"]
       81 JUMPIFNOT                        R6 ; [+25]
       82 LOADK                            R9 K16 ["\n"]
       83 LOADK                            R10 K17 [" "]
       84 NAMECALL                         R7 R3 K18 ["gsub"]
       86 CALL                             R7 3 1
       87 GETUPVAL                         R8 6
       88 MOVE                             R9 R7
       89 GETUPVAL                         R11 7
       90 GETTABLEKS                       R11 R11 K20 ["MAX_THREAD_NAME_LENGTH"]
       92 SUBK                             R10 R11 K19 [3]
       93 CALL                             R8 2 2
       94 JUMPIFNOT                        R9 ; [+3]
       95 MOVE                             R10 R8
       96 LOADK                            R11 K21 ["..."]
       97 CONCAT                           R8 R10 R11
       98 SETTABLEKS                       R8 R1 K22 ["title"]
      100 GETUPVAL                         R10 5
      101 GETTABLEKS                       R10 R10 K23 ["setContentMetadata"]
      103 GETTABLEKS                       R11 R1 K12 ["threadId"]
      105 LOADNIL                          R12
      106 CALL                             R10 2 0
      107 GETTABLEKS                       R7 R5 K7 ["type"]
      109 GETUPVAL                         R8 5
      110 GETTABLEKS                       R8 R8 K13 ["METADATA_TYPES"]
      112 GETTABLEKS                       R8 R8 K14 ["Thread"]
      114 JUMPIFNOTEQ                      R7 R8 ; [+55]
      116 GETTABLEKS                       R7 R4 K24 ["EventLogger"]
      118 GETTABLEKS                       R7 R7 K25 ["logThreadCreated"]
      120 DUPTABLE                         R8 K32 [{"conversationId", "threadId", "creationReason", "sourceThreadId", "rootThreadId", "titleAtCreate", "namingSource"}]
      121 GETTABLEKS                       R9 R0 K33 ["sessionId"]
      123 SETTABLEKS                       R9 R8 K26 ["conversationId"]
      125 GETTABLEKS                       R9 R1 K12 ["threadId"]
      127 SETTABLEKS                       R9 R8 K12 ["threadId"]
      129 JUMPIFNOT                        R6 ; [+6]
      130 GETUPVAL                         R9 8
      131 GETTABLEKS                       R9 R9 K34 ["ThreadCreationReason"]
      133 GETTABLEKS                       R9 R9 K35 ["New"]
      135 JUMP                             ; [+5]
      136 GETUPVAL                         R9 8
      137 GETTABLEKS                       R9 R9 K34 ["ThreadCreationReason"]
      139 GETTABLEKS                       R9 R9 K36 ["Duplicate"]
      141 SETTABLEKS                       R9 R8 K27 ["creationReason"]
      143 GETTABLEKS                       R9 R1 K37 ["sourceId"]
      145 SETTABLEKS                       R9 R8 K28 ["sourceThreadId"]
      147 GETTABLEKS                       R9 R1 K38 ["rootId"]
      149 SETTABLEKS                       R9 R8 K29 ["rootThreadId"]
      151 GETTABLEKS                       R9 R1 K22 ["title"]
      153 SETTABLEKS                       R9 R8 K30 ["titleAtCreate"]
      155 JUMPIFNOT                        R6 ; [+6]
      156 GETUPVAL                         R9 8
      157 GETTABLEKS                       R9 R9 K39 ["ThreadNamingSource"]
      159 GETTABLEKS                       R9 R9 K40 ["FirstUserMessage"]
      161 JUMP                             ; [+5]
      162 GETUPVAL                         R9 8
      163 GETTABLEKS                       R9 R9 K39 ["ThreadNamingSource"]
      165 GETTABLEKS                       R9 R9 K41 ["DuplicateOrigin"]
      167 SETTABLEKS                       R9 R8 K31 ["namingSource"]
      169 CALL                             R7 1 0
      170 GETUPVAL                         R7 9
      171 NEWTABLE                         R8 0 1
      173 MOVE                             R9 R1
      174 SETLIST                          R8 R9 1 [1]
      176 CALL                             R7 1 0
      177 GETUPVAL                         R7 10
      178 NEWTABLE                         R8 0 1
      180 MOVE                             R9 R1
      181 SETLIST                          R8 R9 1 [1]
      183 CALL                             R7 1 0
      184 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Constants"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["Util"]
       16 GETTABLEKS                       R3 R3 K8 ["ContentIdGenerator"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K9 ["Guest"]
       23 GETTABLEKS                       R4 R4 K10 ["Environment"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K11 ["Components"]
       30 GETTABLEKS                       R5 R5 K12 ["ContentWidgets"]
       32 GETTABLEKS                       R5 R5 K13 ["TextContentWidget"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K14 ["Types"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R7 R0 K7 ["Util"]
       44 GETTABLEKS                       R7 R7 K15 ["markDirty"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K5 [require]
       49 GETTABLEKS                       R8 R0 K7 ["Util"]
       51 GETTABLEKS                       R8 R8 K16 ["setUpdatedAt"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K5 [require]
       56 GETTABLEKS                       R9 R0 K7 ["Util"]
       58 GETTABLEKS                       R9 R9 K17 ["truncateUtf8Safe"]
       60 CALL                             R8 1 1
       61 GETIMPORT                        R9 K5 [require]
       63 GETTABLEKS                       R10 R0 K18 ["Flags"]
       65 GETTABLEKS                       R10 R10 K19 ["FFlagAssistantMultipleChatPersistence"]
       67 CALL                             R9 1 1
       68 DUPCLOSURE                       R10 K20 [PROTO_1]
       69 DUPCLOSURE                       R11 K21 [PROTO_2]
       70 CAPTURE                          VAL R10
       71 DUPCLOSURE                       R12 K22 [PROTO_4]
       72 DUPCLOSURE                       R13 K23 [PROTO_5]
       73 CAPTURE                          VAL R12
       74 CAPTURE                          VAL R4
       75 DUPCLOSURE                       R14 K24 [PROTO_6]
       76 CAPTURE                          VAL R9
       77 CAPTURE                          VAL R10
       78 CAPTURE                          VAL R12
       79 CAPTURE                          VAL R4
       80 CAPTURE                          VAL R3
       81 CAPTURE                          VAL R2
       82 CAPTURE                          VAL R8
       83 CAPTURE                          VAL R1
       84 CAPTURE                          VAL R5
       85 CAPTURE                          VAL R7
       86 CAPTURE                          VAL R6
       87 RETURN                           R14 1
