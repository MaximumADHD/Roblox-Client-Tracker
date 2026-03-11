PROTO_0:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R0
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 GETTABLEKS                       R8 R7 K0 ["title"]
        8 LOADB                            R9 1
        9 SETTABLE                         R9 R2 R8
       10 FORGLOOP                         R3 2 ; [-5]
       12 LOADK                            R5 K1 ["^%(%d+%) "]
       13 NAMECALL                         R3 R1 K2 ["match"]
       15 CALL                             R3 2 1
       16 JUMPIFNOT                        R3 ; [+6]
       17 LENGTH                           R7 R3
       18 ADDK                             R6 R7 K3 [1]
       19 NAMECALL                         R4 R1 K4 ["sub"]
       21 CALL                             R4 2 1
       22 MOVE                             R1 R4
       23 LOADN                            R4 1
       24 LOADK                            R9 K5 ["(%*) "]
       25 MOVE                             R11 R4
       26 NAMECALL                         R9 R9 K6 ["format"]
       28 CALL                             R9 2 1
       29 MOVE                             R7 R9
       30 MOVE                             R8 R1
       31 CONCAT                           R6 R7 R8
       32 LOADN                            R7 1
       33 GETUPVAL                         R9 0
       34 GETTABLEKS                       R8 R9 K7 ["MAX_THREAD_NAME_LENGTH"]
       36 FASTCALL                         STRING_SUB ; [+2]
       37 GETIMPORT                        R5 K9 [string.sub]
       39 CALL                             R5 3 1
       40 GETTABLE                         R6 R2 R5
       41 JUMPIF                           R6 ; [+1]
       42 RETURN                           R5 1
       43 ADDK                             R4 R4 K3 [1]
       44 JUMPBACK                         ; [-21]
       45 RETURN                           R0 0

PROTO_1:
        0 NEWTABLE                         R1 0 1
        2 LOADK                            R2 K0 ["threads"]
        3 SETLIST                          R1 R2 1 [1]
        5 GETUPVAL                         R2 0
        6 MOVE                             R3 R0
        7 MOVE                             R4 R1
        8 CALL                             R2 2 4
        9 JUMPIF                           R2 ; [+19]
       10 GETIMPORT                        R6 K2 [warn]
       12 LOADK                            R7 K3 ["Failed to clone path for duplicating thread:"]
       13 FASTCALL1                        TABLE_UNPACK R1 ; [+3]
       14 MOVE                             R9 R1
       15 GETIMPORT                        R8 K6 [table.unpack]
       17 CALL                             R8 1 -1
       18 CALL                             R6 -1 0
       19 GETIMPORT                        R6 K2 [warn]
       21 LOADK                            R8 K7 ["Failed at key: %*"]
       22 MOVE                             R10 R5
       23 NAMECALL                         R8 R8 K8 ["format"]
       25 CALL                             R8 2 1
       26 MOVE                             R7 R8
       27 CALL                             R6 1 0
       28 RETURN                           R0 1
       29 GETUPVAL                         R7 1
       30 GETTABLE                         R6 R4 R7
       31 GETTABLEKS                       R7 R6 K9 ["messages"]
       33 JUMPIF                           R7 ; [+5]
       34 GETIMPORT                        R8 K2 [warn]
       36 LOADK                            R9 K10 ["Tried to duplicate unloaded thread"]
       37 CALL                             R8 1 0
       38 RETURN                           R0 1
       39 LOADNIL                          R8
       40 GETUPVAL                         R9 2
       41 JUMPIFNOT                        R9 ; [+5]
       42 GETUPVAL                         R10 2
       43 GETTABLE                         R9 R7 R10
       44 JUMPIFNOT                        R9 ; [+2]
       45 GETTABLEKS                       R8 R9 K11 ["createdAt"]
       47 GETIMPORT                        R9 K13 [table.create]
       49 GETTABLEKS                       R10 R6 K14 ["messageCount"]
       51 CALL                             R9 1 1
       52 MOVE                             R10 R7
       53 LOADNIL                          R11
       54 LOADNIL                          R12
       55 FORGPREP                         R10
       56 JUMPIFNOT                        R8 ; [+4]
       57 GETTABLEKS                       R15 R14 K11 ["createdAt"]
       59 JUMPIFNOTLE                      R15 R8 ; [+8]
       61 FASTCALL2                        TABLE_INSERT R9 R14 ; [+5]
       63 MOVE                             R16 R9
       64 MOVE                             R17 R14
       65 GETIMPORT                        R15 K16 [table.insert]
       67 CALL                             R15 2 0
       68 FORGLOOP                         R10 2 ; [-13]
       70 NEWTABLE                         R10 0 0
       72 DUPTABLE                         R11 K25 [{"threadId", "sourceId", "rootId", "ephemeral", "isDirty", "title", "isPinned", "createdAt", "updatedAt", "messages", "messageCount"}]
       73 GETUPVAL                         R12 3
       74 SETTABLEKS                       R12 R11 K17 ["threadId"]
       76 GETTABLEKS                       R12 R6 K17 ["threadId"]
       78 SETTABLEKS                       R12 R11 K18 ["sourceId"]
       80 GETTABLEKS                       R12 R6 K19 ["rootId"]
       82 JUMPIF                           R12 ; [+2]
       83 GETTABLEKS                       R12 R6 K17 ["threadId"]
       85 SETTABLEKS                       R12 R11 K19 ["rootId"]
       87 LOADB                            R12 1
       88 SETTABLEKS                       R12 R11 K20 ["ephemeral"]
       90 LOADB                            R12 0
       91 SETTABLEKS                       R12 R11 K21 ["isDirty"]
       93 GETUPVAL                         R12 4
       94 MOVE                             R13 R4
       95 GETTABLEKS                       R14 R6 K22 ["title"]
       97 CALL                             R12 2 1
       98 SETTABLEKS                       R12 R11 K22 ["title"]
      100 LOADB                            R12 0
      101 SETTABLEKS                       R12 R11 K23 ["isPinned"]
      103 LOADN                            R12 0
      104 SETTABLEKS                       R12 R11 K11 ["createdAt"]
      106 LOADN                            R12 0
      107 SETTABLEKS                       R12 R11 K24 ["updatedAt"]
      109 SETTABLEKS                       R10 R11 K9 ["messages"]
      111 LENGTH                           R12 R9
      112 SETTABLEKS                       R12 R11 K14 ["messageCount"]
      114 MOVE                             R12 R9
      115 LOADNIL                          R13
      116 LOADNIL                          R14
      117 FORGPREP                         R12
      118 GETUPVAL                         R18 5
      119 GETTABLEKS                       R17 R18 K26 ["getNextContentId"]
      121 CALL                             R17 0 1
      122 NEWTABLE                         R18 0 0
      124 GETIMPORT                        R19 K28 [table.clone]
      126 MOVE                             R20 R16
      127 CALL                             R19 1 1
      128 SETTABLEKS                       R17 R19 K29 ["messageId"]
      130 GETTABLEKS                       R20 R16 K29 ["messageId"]
      132 SETTABLEKS                       R20 R19 K18 ["sourceId"]
      134 GETTABLEKS                       R20 R16 K19 ["rootId"]
      136 JUMPIF                           R20 ; [+2]
      137 GETTABLEKS                       R20 R16 K29 ["messageId"]
      139 SETTABLEKS                       R20 R19 K19 ["rootId"]
      141 SETTABLEKS                       R18 R19 K30 ["contents"]
      143 SETTABLE                         R19 R10 R17
      144 GETTABLEKS                       R20 R16 K30 ["contents"]
      146 LOADNIL                          R21
      147 LOADNIL                          R22
      148 FORGPREP                         R20
      149 GETUPVAL                         R26 5
      150 GETTABLEKS                       R25 R26 K26 ["getNextContentId"]
      152 DUPTABLE                         R26 K32 [{"type", "threadId", "messageId"}]
      153 GETUPVAL                         R29 5
      154 GETTABLEKS                       R28 R29 K33 ["METADATA_TYPES"]
      156 GETTABLEKS                       R27 R28 K34 ["Content"]
      158 SETTABLEKS                       R27 R26 K31 ["type"]
      160 GETUPVAL                         R27 3
      161 SETTABLEKS                       R27 R26 K17 ["threadId"]
      163 SETTABLEKS                       R17 R26 K29 ["messageId"]
      165 CALL                             R25 1 1
      166 GETIMPORT                        R26 K28 [table.clone]
      168 MOVE                             R27 R24
      169 CALL                             R26 1 1
      170 SETTABLEKS                       R25 R26 K35 ["contentId"]
      172 GETTABLEKS                       R27 R24 K35 ["contentId"]
      174 SETTABLEKS                       R27 R26 K18 ["sourceId"]
      176 GETTABLEKS                       R27 R24 K19 ["rootId"]
      178 JUMPIF                           R27 ; [+2]
      179 GETTABLEKS                       R27 R24 K35 ["contentId"]
      181 SETTABLEKS                       R27 R26 K19 ["rootId"]
      183 SETTABLE                         R26 R18 R25
      184 FORGLOOP                         R20 2 ; [-36]
      186 FORGLOOP                         R12 2 ; [-69]
      188 GETUPVAL                         R13 6
      189 GETTABLEKS                       R12 R13 K36 ["hydrateMessages"]
      191 MOVE                             R13 R10
      192 CALL                             R12 1 0
      193 GETUPVAL                         R12 3
      194 SETTABLE                         R11 R4 R12
      195 GETUPVAL                         R12 7
      196 MOVE                             R13 R3
      197 MOVE                             R14 R11
      198 DUPTABLE                         R15 K38 [{"setCreatedAt"}]
      199 LOADB                            R16 1
      200 SETTABLEKS                       R16 R15 K37 ["setCreatedAt"]
      202 CALL                             R12 3 0
      203 GETUPVAL                         R12 8
      204 MOVE                             R13 R3
      205 CALL                             R12 1 0
      206 RETURN                           R3 1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["getNextContentId"]
        3 CALL                             R2 0 1
        4 GETUPVAL                         R3 1
        5 NEWCLOSURE                       R4 P0
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          VAL R0
        8 CAPTURE                          VAL R1
        9 CAPTURE                          VAL R2
       10 CAPTURE                          UPVAL U3
       11 CAPTURE                          UPVAL U0
       12 CAPTURE                          UPVAL U4
       13 CAPTURE                          UPVAL U5
       14 CAPTURE                          UPVAL U6
       15 CALL                             R3 1 0
       16 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 FASTCALL2K                       ASSERT R1 K0 ; [+4]
        4 LOADK                            R2 K0 ["useDuplicateThread is only available when FFlagAssistantPersistConversations is enabled"]
        5 GETIMPORT                        R0 K2 [assert]
        7 CALL                             R0 2 0
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R0 R1 K3 ["useContext"]
       11 GETUPVAL                         R2 2
       12 GETTABLEKS                       R1 R2 K4 ["Context"]
       14 CALL                             R0 1 1
       15 GETTABLEKS                       R1 R0 K5 ["setConversation"]
       17 GETUPVAL                         R3 1
       18 GETTABLEKS                       R2 R3 K6 ["useCallback"]
       20 NEWCLOSURE                       R3 P0
       21 CAPTURE                          UPVAL U3
       22 CAPTURE                          VAL R1
       23 CAPTURE                          UPVAL U4
       24 CAPTURE                          UPVAL U5
       25 CAPTURE                          UPVAL U6
       26 CAPTURE                          UPVAL U7
       27 CAPTURE                          UPVAL U8
       28 NEWTABLE                         R4 0 1
       30 MOVE                             R5 R1
       31 SETLIST                          R4 R5 1 [1]
       33 CALL                             R2 2 -1
       34 RETURN                           R2 -1

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
       21 GETTABLEKS                       R6 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R6 K10 ["Contexts"]
       25 GETTABLEKS                       R4 R5 K11 ["ConversationContext"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K12 ["Parent"]
       32 GETTABLEKS                       R5 R6 K13 ["React"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R7 R0 K7 ["Util"]
       39 GETTABLEKS                       R6 R7 K14 ["Serializer"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K15 ["Types"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K5 [require]
       49 GETTABLEKS                       R9 R0 K7 ["Util"]
       51 GETTABLEKS                       R8 R9 K16 ["clonePath"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K5 [require]
       56 GETTABLEKS                       R10 R0 K7 ["Util"]
       58 GETTABLEKS                       R9 R10 K17 ["markDirty"]
       60 CALL                             R8 1 1
       61 GETIMPORT                        R9 K5 [require]
       63 GETTABLEKS                       R11 R0 K7 ["Util"]
       65 GETTABLEKS                       R10 R11 K18 ["updateThreadTimestamp"]
       67 CALL                             R9 1 1
       68 GETIMPORT                        R10 K5 [require]
       70 GETTABLEKS                       R12 R0 K19 ["Flags"]
       72 GETTABLEKS                       R11 R12 K20 ["FFlagAssistantPersistConversations"]
       74 CALL                             R10 1 1
       75 DUPCLOSURE                       R11 K21 [PROTO_0]
       76 CAPTURE                          VAL R1
       77 DUPCLOSURE                       R12 K22 [PROTO_3]
       78 CAPTURE                          VAL R10
       79 CAPTURE                          VAL R4
       80 CAPTURE                          VAL R3
       81 CAPTURE                          VAL R2
       82 CAPTURE                          VAL R7
       83 CAPTURE                          VAL R11
       84 CAPTURE                          VAL R5
       85 CAPTURE                          VAL R9
       86 CAPTURE                          VAL R8
       87 RETURN                           R12 1
