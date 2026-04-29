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
        9 GETUPVAL                         R9 1
       10 GETTABLEKS                       R8 R9 K1 ["Type"]
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
        8 GETTABLEKS                       R1 R0 K3 ["conversation"]
       10 GETTABLEKS                       R2 R0 K4 ["thread"]
       12 GETTABLEKS                       R3 R2 K5 ["ephemeral"]
       14 JUMPIF                           R3 ; [+1]
       15 RETURN                           R0 0
       16 GETTABLEKS                       R3 R2 K6 ["messages"]
       18 JUMPIF                           R3 ; [+1]
       19 RETURN                           R0 0
       20 GETUPVAL                         R4 1
       21 MOVE                             R5 R2
       22 CALL                             R4 1 1
       23 MOVE                             R5 R4
       24 LOADNIL                          R6
       25 LOADNIL                          R7
       26 FORGPREP                         R5
       27 GETTABLEKS                       R10 R9 K7 ["role"]
       29 JUMPIFNOTEQKS                    R10 K8 ["user"] ; [+3]
       31 MOVE                             R3 R9
       32 JUMP                             ; [+3]
       33 FORGLOOP                         R5 2 ; [-7]
       35 LOADNIL                          R3
       36 JUMPIF                           R3 ; [+1]
       37 RETURN                           R0 0
       38 GETUPVAL                         R5 2
       39 MOVE                             R6 R3
       40 CALL                             R5 1 1
       41 MOVE                             R6 R5
       42 LOADNIL                          R7
       43 LOADNIL                          R8
       44 FORGPREP                         R6
       45 GETTABLEKS                       R11 R10 K9 ["type"]
       47 GETUPVAL                         R13 3
       48 GETTABLEKS                       R12 R13 K10 ["Type"]
       50 JUMPIFNOTEQ                      R11 R12 ; [+4]
       52 GETTABLEKS                       R4 R10 K11 ["text"]
       54 JUMP                             ; [+3]
       55 FORGLOOP                         R6 2 ; [-11]
       57 LOADNIL                          R4
       58 JUMPIF                           R4 ; [+1]
       59 RETURN                           R0 0
       60 GETUPVAL                         R6 4
       61 GETTABLEKS                       R5 R6 K12 ["get"]
       63 CALL                             R5 0 1
       64 LOADB                            R6 0
       65 SETTABLEKS                       R6 R2 K5 ["ephemeral"]
       67 GETUPVAL                         R7 5
       68 GETTABLEKS                       R6 R7 K13 ["getContentMetadata"]
       70 GETTABLEKS                       R7 R2 K14 ["threadId"]
       72 CALL                             R6 1 1
       73 LOADB                            R7 0
       74 GETTABLEKS                       R8 R6 K9 ["type"]
       76 GETUPVAL                         R11 5
       77 GETTABLEKS                       R10 R11 K15 ["METADATA_TYPES"]
       79 GETTABLEKS                       R9 R10 K16 ["Thread"]
       81 JUMPIFNOTEQ                      R8 R9 ; [+3]
       83 GETTABLEKS                       R7 R6 K17 ["isNewThread"]
       85 JUMPIFNOT                        R7 ; [+21]
       86 LOADN                            R10 1
       87 GETUPVAL                         R12 6
       88 GETTABLEKS                       R11 R12 K18 ["MAX_THREAD_NAME_LENGTH"]
       90 NAMECALL                         R8 R4 K19 ["sub"]
       92 CALL                             R8 3 1
       93 LOADK                            R10 K20 ["\n"]
       94 LOADK                            R11 K21 [" "]
       95 NAMECALL                         R8 R8 K22 ["gsub"]
       97 CALL                             R8 3 1
       98 SETTABLEKS                       R8 R2 K23 ["title"]
      100 GETUPVAL                         R9 5
      101 GETTABLEKS                       R8 R9 K24 ["setContentMetadata"]
      103 GETTABLEKS                       R9 R2 K14 ["threadId"]
      105 LOADNIL                          R10
      106 CALL                             R8 2 0
      107 GETTABLEKS                       R8 R6 K9 ["type"]
      109 GETUPVAL                         R11 5
      110 GETTABLEKS                       R10 R11 K15 ["METADATA_TYPES"]
      112 GETTABLEKS                       R9 R10 K16 ["Thread"]
      114 JUMPIFNOTEQ                      R8 R9 ; [+55]
      116 GETTABLEKS                       R9 R5 K25 ["EventLogger"]
      118 GETTABLEKS                       R8 R9 K26 ["logThreadCreated"]
      120 DUPTABLE                         R9 K33 [{"conversationId", "threadId", "creationReason", "sourceThreadId", "rootThreadId", "titleAtCreate", "namingSource"}]
      121 GETTABLEKS                       R10 R0 K34 ["sessionId"]
      123 SETTABLEKS                       R10 R9 K27 ["conversationId"]
      125 GETTABLEKS                       R10 R2 K14 ["threadId"]
      127 SETTABLEKS                       R10 R9 K14 ["threadId"]
      129 JUMPIFNOT                        R7 ; [+6]
      130 GETUPVAL                         R12 7
      131 GETTABLEKS                       R11 R12 K35 ["ThreadCreationReason"]
      133 GETTABLEKS                       R10 R11 K36 ["New"]
      135 JUMP                             ; [+5]
      136 GETUPVAL                         R12 7
      137 GETTABLEKS                       R11 R12 K35 ["ThreadCreationReason"]
      139 GETTABLEKS                       R10 R11 K37 ["Duplicate"]
      141 SETTABLEKS                       R10 R9 K28 ["creationReason"]
      143 GETTABLEKS                       R10 R2 K38 ["sourceId"]
      145 SETTABLEKS                       R10 R9 K29 ["sourceThreadId"]
      147 GETTABLEKS                       R10 R2 K39 ["rootId"]
      149 SETTABLEKS                       R10 R9 K30 ["rootThreadId"]
      151 GETTABLEKS                       R10 R2 K23 ["title"]
      153 SETTABLEKS                       R10 R9 K31 ["titleAtCreate"]
      155 JUMPIFNOT                        R7 ; [+6]
      156 GETUPVAL                         R12 7
      157 GETTABLEKS                       R11 R12 K40 ["ThreadNamingSource"]
      159 GETTABLEKS                       R10 R11 K41 ["FirstUserMessage"]
      161 JUMP                             ; [+5]
      162 GETUPVAL                         R12 7
      163 GETTABLEKS                       R11 R12 K40 ["ThreadNamingSource"]
      165 GETTABLEKS                       R10 R11 K42 ["DuplicateOrigin"]
      167 SETTABLEKS                       R10 R9 K32 ["namingSource"]
      169 CALL                             R8 1 0
      170 LOADB                            R8 0
      171 SETTABLEKS                       R8 R1 K5 ["ephemeral"]
      173 GETTABLEKS                       R8 R5 K43 ["conversationPersistence"]
      175 JUMPIFNOT                        R8 ; [+11]
      176 GETTABLEKS                       R9 R8 K44 ["requestLoad"]
      178 DUPTABLE                         R10 K46 [{"scope"}]
      179 GETUPVAL                         R13 7
      180 GETTABLEKS                       R12 R13 K47 ["SCOPE_TYPES"]
      182 GETTABLEKS                       R11 R12 K48 ["Conversation"]
      184 SETTABLEKS                       R11 R10 K45 ["scope"]
      186 CALL                             R9 1 0
      187 GETUPVAL                         R9 8
      188 MOVE                             R10 R1
      189 CALL                             R9 1 0
      190 GETUPVAL                         R9 8
      191 MOVE                             R10 R2
      192 CALL                             R9 1 0
      193 RETURN                           R0 0

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
       14 GETTABLEKS                       R4 R0 K7 ["Util"]
       16 GETTABLEKS                       R3 R4 K8 ["ContentIdGenerator"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Guest"]
       23 GETTABLEKS                       R4 R5 K10 ["Environment"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R7 R0 K11 ["Components"]
       30 GETTABLEKS                       R6 R7 K12 ["ContentWidgets"]
       32 GETTABLEKS                       R5 R6 K13 ["TextContentWidget"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K14 ["Types"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R8 R0 K7 ["Util"]
       44 GETTABLEKS                       R7 R8 K15 ["markDirty"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K5 [require]
       49 GETTABLEKS                       R9 R0 K16 ["Flags"]
       51 GETTABLEKS                       R8 R9 K17 ["FFlagAssistantMultipleChatPersistence"]
       53 CALL                             R7 1 1
       54 DUPCLOSURE                       R8 K18 [PROTO_1]
       55 DUPCLOSURE                       R9 K19 [PROTO_2]
       56 CAPTURE                          VAL R8
       57 DUPCLOSURE                       R10 K20 [PROTO_4]
       58 DUPCLOSURE                       R11 K21 [PROTO_5]
       59 CAPTURE                          VAL R10
       60 CAPTURE                          VAL R4
       61 DUPCLOSURE                       R12 K22 [PROTO_6]
       62 CAPTURE                          VAL R7
       63 CAPTURE                          VAL R8
       64 CAPTURE                          VAL R10
       65 CAPTURE                          VAL R4
       66 CAPTURE                          VAL R3
       67 CAPTURE                          VAL R2
       68 CAPTURE                          VAL R1
       69 CAPTURE                          VAL R5
       70 CAPTURE                          VAL R6
       71 RETURN                           R12 1
