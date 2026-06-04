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
       24 LOADK                            R6 K5 ["(%*) %*"]
       25 MOVE                             R8 R4
       26 MOVE                             R9 R1
       27 NAMECALL                         R6 R6 K6 ["format"]
       29 CALL                             R6 3 1
       30 MOVE                             R5 R6
       31 GETUPVAL                         R6 0
       32 MOVE                             R7 R5
       33 GETUPVAL                         R9 1
       34 GETTABLEKS                       R9 R9 K8 ["MAX_THREAD_NAME_LENGTH"]
       36 SUBK                             R8 R9 K7 [3]
       37 CALL                             R6 2 2
       38 JUMPIFNOT                        R7 ; [+3]
       39 MOVE                             R8 R6
       40 LOADK                            R9 K9 ["..."]
       41 CONCAT                           R6 R8 R9
       42 GETTABLE                         R8 R2 R6
       43 JUMPIF                           R8 ; [+1]
       44 RETURN                           R6 1
       45 ADDK                             R4 R4 K3 [1]
       46 JUMPBACK                         ; [-23]
       47 RETURN                           R0 0

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
       49 GETTABLEKS                       R10 R6 K14 ["messageCountAdded"]
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
       70 GETTABLEKS                       R10 R6 K17 ["threadId"]
       72 GETTABLEKS                       R11 R6 K18 ["rootId"]
       74 JUMPIF                           R11 ; [+2]
       75 GETTABLEKS                       R11 R6 K17 ["threadId"]
       77 NEWTABLE                         R12 0 0
       79 DUPTABLE                         R13 K31 [{"threadId", "sourceId", "rootId", "createdAt", "updatedAt", "ephemeral", "isDirty", "isDeleted", "lastActivityAt", "lastViewedAt", "title", "isPinned", "messages", "messageLoadState", "messagePageState", "messageCountAdded", "messageCountLoaded"}]
       80 GETUPVAL                         R14 3
       81 SETTABLEKS                       R14 R13 K17 ["threadId"]
       83 SETTABLEKS                       R10 R13 K19 ["sourceId"]
       85 SETTABLEKS                       R11 R13 K18 ["rootId"]
       87 LOADN                            R14 255
       88 SETTABLEKS                       R14 R13 K11 ["createdAt"]
       90 LOADN                            R14 255
       91 SETTABLEKS                       R14 R13 K20 ["updatedAt"]
       93 LOADB                            R14 1
       94 SETTABLEKS                       R14 R13 K21 ["ephemeral"]
       96 LOADB                            R14 0
       97 SETTABLEKS                       R14 R13 K22 ["isDirty"]
       99 LOADNIL                          R14
      100 SETTABLEKS                       R14 R13 K23 ["isDeleted"]
      102 LOADN                            R14 255
      103 SETTABLEKS                       R14 R13 K24 ["lastActivityAt"]
      105 LOADN                            R14 255
      106 SETTABLEKS                       R14 R13 K25 ["lastViewedAt"]
      108 GETUPVAL                         R14 4
      109 MOVE                             R15 R4
      110 GETTABLEKS                       R16 R6 K26 ["title"]
      112 CALL                             R14 2 1
      113 SETTABLEKS                       R14 R13 K26 ["title"]
      115 LOADB                            R14 0
      116 SETTABLEKS                       R14 R13 K27 ["isPinned"]
      118 SETTABLEKS                       R12 R13 K9 ["messages"]
      120 GETUPVAL                         R14 5
      121 GETTABLEKS                       R14 R14 K32 ["PersistenceLoadStates"]
      123 GETTABLEKS                       R14 R14 K33 ["Loaded"]
      125 SETTABLEKS                       R14 R13 K28 ["messageLoadState"]
      127 LOADNIL                          R14
      128 SETTABLEKS                       R14 R13 K29 ["messagePageState"]
      130 LENGTH                           R14 R9
      131 SETTABLEKS                       R14 R13 K14 ["messageCountAdded"]
      133 GETTABLEKS                       R14 R6 K30 ["messageCountLoaded"]
      135 SETTABLEKS                       R14 R13 K30 ["messageCountLoaded"]
      137 MOVE                             R14 R9
      138 LOADNIL                          R15
      139 LOADNIL                          R16
      140 FORGPREP                         R14
      141 GETUPVAL                         R19 6
      142 GETTABLEKS                       R19 R19 K34 ["getNextContentId"]
      144 CALL                             R19 0 1
      145 NEWTABLE                         R20 0 0
      147 GETIMPORT                        R21 K36 [table.clone]
      149 MOVE                             R22 R18
      150 CALL                             R21 1 1
      151 SETTABLEKS                       R19 R21 K37 ["messageId"]
      153 GETTABLEKS                       R22 R18 K37 ["messageId"]
      155 SETTABLEKS                       R22 R21 K19 ["sourceId"]
      157 GETTABLEKS                       R22 R18 K18 ["rootId"]
      159 JUMPIF                           R22 ; [+2]
      160 GETTABLEKS                       R22 R18 K37 ["messageId"]
      162 SETTABLEKS                       R22 R21 K18 ["rootId"]
      164 SETTABLEKS                       R20 R21 K38 ["contents"]
      166 SETTABLE                         R21 R12 R19
      167 GETTABLEKS                       R22 R18 K38 ["contents"]
      169 LOADNIL                          R23
      170 LOADNIL                          R24
      171 FORGPREP                         R22
      172 GETUPVAL                         R27 6
      173 GETTABLEKS                       R27 R27 K34 ["getNextContentId"]
      175 DUPTABLE                         R28 K39 [{"threadId", "messageId"}]
      176 GETUPVAL                         R29 3
      177 SETTABLEKS                       R29 R28 K17 ["threadId"]
      179 SETTABLEKS                       R19 R28 K37 ["messageId"]
      181 CALL                             R27 1 1
      182 GETIMPORT                        R28 K36 [table.clone]
      184 MOVE                             R29 R26
      185 CALL                             R28 1 1
      186 SETTABLEKS                       R27 R28 K40 ["contentId"]
      188 GETTABLEKS                       R29 R26 K40 ["contentId"]
      190 SETTABLEKS                       R29 R28 K19 ["sourceId"]
      192 GETTABLEKS                       R29 R26 K18 ["rootId"]
      194 JUMPIF                           R29 ; [+2]
      195 GETTABLEKS                       R29 R26 K40 ["contentId"]
      197 SETTABLEKS                       R29 R28 K18 ["rootId"]
      199 GETUPVAL                         R29 7
      200 GETTABLEKS                       R29 R29 K41 ["hydrate"]
      202 MOVE                             R30 R28
      203 CALL                             R29 1 0
      204 SETTABLE                         R28 R20 R27
      205 FORGLOOP                         R22 2 ; [-34]
      207 FORGLOOP                         R14 2 ; [-67]
      209 GETUPVAL                         R14 3
      210 SETTABLE                         R13 R4 R14
      211 GETUPVAL                         R14 8
      212 GETTABLEKS                       R14 R14 K42 ["get"]
      214 CALL                             R14 0 1
      215 GETTABLEKS                       R15 R14 K43 ["EventLogger"]
      217 GETTABLEKS                       R15 R15 K44 ["logThreadDuplicated"]
      219 DUPTABLE                         R16 K50 [{"conversationId", "newThreadId", "sourceThreadId", "titleAtDuplicate", "upToMessageId"}]
      220 GETUPVAL                         R17 9
      221 SETTABLEKS                       R17 R16 K45 ["conversationId"]
      223 GETUPVAL                         R17 3
      224 SETTABLEKS                       R17 R16 K46 ["newThreadId"]
      226 SETTABLEKS                       R10 R16 K47 ["sourceThreadId"]
      228 GETTABLEKS                       R17 R13 K26 ["title"]
      230 SETTABLEKS                       R17 R16 K48 ["titleAtDuplicate"]
      232 GETUPVAL                         R17 2
      233 SETTABLEKS                       R17 R16 K49 ["upToMessageId"]
      235 CALL                             R15 1 0
      236 GETUPVAL                         R15 10
      237 NEWTABLE                         R16 0 1
      239 MOVE                             R17 R13
      240 SETLIST                          R16 R17 1 [1]
      242 CALL                             R15 1 0
      243 GETUPVAL                         R15 11
      244 NEWTABLE                         R16 0 1
      246 MOVE                             R17 R13
      247 SETLIST                          R16 R17 1 [1]
      249 CALL                             R15 1 0
      250 GETUPVAL                         R15 12
      251 NEWTABLE                         R16 0 1
      253 MOVE                             R17 R13
      254 SETLIST                          R16 R17 1 [1]
      256 CALL                             R15 1 0
      257 RETURN                           R3 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getNextThreadId"]
        3 DUPTABLE                         R3 K2 [{"isNewThread"}]
        4 LOADB                            R4 0
        5 SETTABLEKS                       R4 R3 K1 ["isNewThread"]
        7 CALL                             R2 1 1
        8 GETUPVAL                         R3 1
        9 NEWCLOSURE                       R4 P0
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          VAL R0
       12 CAPTURE                          VAL R1
       13 CAPTURE                          VAL R2
       14 CAPTURE                          UPVAL U3
       15 CAPTURE                          UPVAL U4
       16 CAPTURE                          UPVAL U0
       17 CAPTURE                          UPVAL U5
       18 CAPTURE                          UPVAL U6
       19 CAPTURE                          UPVAL U7
       20 CAPTURE                          UPVAL U8
       21 CAPTURE                          UPVAL U9
       22 CAPTURE                          UPVAL U10
       23 CALL                             R3 1 0
       24 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 FASTCALL2K                       ASSERT R1 K0 ; [+4]
        4 LOADK                            R2 K0 ["useDuplicateThread is only available when FFlagAssistantMultipleChatPersistence is enabled"]
        5 GETIMPORT                        R0 K2 [assert]
        7 CALL                             R0 2 0
        8 GETUPVAL                         R0 1
        9 GETTABLEKS                       R0 R0 K3 ["useContext"]
       11 GETUPVAL                         R1 2
       12 GETTABLEKS                       R1 R1 K4 ["Context"]
       14 CALL                             R0 1 1
       15 GETTABLEKS                       R1 R0 K5 ["setConversation"]
       17 GETUPVAL                         R2 1
       18 GETTABLEKS                       R2 R2 K3 ["useContext"]
       20 GETUPVAL                         R3 3
       21 GETTABLEKS                       R3 R3 K4 ["Context"]
       23 CALL                             R2 1 1
       24 GETTABLEKS                       R3 R2 K6 ["sessionId"]
       26 GETUPVAL                         R4 1
       27 GETTABLEKS                       R4 R4 K7 ["useCallback"]
       29 NEWCLOSURE                       R5 P0
       30 CAPTURE                          UPVAL U4
       31 CAPTURE                          VAL R1
       32 CAPTURE                          UPVAL U5
       33 CAPTURE                          UPVAL U6
       34 CAPTURE                          UPVAL U7
       35 CAPTURE                          UPVAL U8
       36 CAPTURE                          UPVAL U9
       37 CAPTURE                          VAL R3
       38 CAPTURE                          UPVAL U10
       39 CAPTURE                          UPVAL U11
       40 CAPTURE                          UPVAL U12
       41 NEWTABLE                         R6 0 2
       43 MOVE                             R7 R1
       44 MOVE                             R8 R3
       45 SETLIST                          R6 R7 2 [1]
       47 CALL                             R4 2 -1
       48 RETURN                           R4 -1

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
       21 GETTABLEKS                       R4 R0 K9 ["Components"]
       23 GETTABLEKS                       R4 R4 K10 ["Contexts"]
       25 GETTABLEKS                       R4 R4 K11 ["ConversationContext"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K12 ["Guest"]
       32 GETTABLEKS                       R5 R5 K13 ["Environment"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K14 ["Parent"]
       39 GETTABLEKS                       R6 R6 K15 ["React"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K7 ["Util"]
       46 GETTABLEKS                       R7 R7 K16 ["Serializer"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K9 ["Components"]
       53 GETTABLEKS                       R8 R8 K10 ["Contexts"]
       55 GETTABLEKS                       R8 R8 K17 ["SessionIdContext"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R9 R0 K18 ["Types"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R10 R0 K7 ["Util"]
       67 GETTABLEKS                       R10 R10 K19 ["clonePath"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K5 [require]
       72 GETTABLEKS                       R11 R0 K7 ["Util"]
       74 GETTABLEKS                       R11 R11 K20 ["setCreatedAt"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K5 [require]
       79 GETTABLEKS                       R12 R0 K7 ["Util"]
       81 GETTABLEKS                       R12 R12 K21 ["setLastActivityAt"]
       83 CALL                             R11 1 1
       84 GETIMPORT                        R12 K5 [require]
       86 GETTABLEKS                       R13 R0 K7 ["Util"]
       88 GETTABLEKS                       R13 R13 K22 ["setUpdatedAt"]
       90 CALL                             R12 1 1
       91 GETIMPORT                        R13 K5 [require]
       93 GETTABLEKS                       R14 R0 K7 ["Util"]
       95 GETTABLEKS                       R14 R14 K23 ["truncateUtf8Safe"]
       97 CALL                             R13 1 1
       98 GETIMPORT                        R14 K5 [require]
      100 GETTABLEKS                       R15 R0 K24 ["Flags"]
      102 GETTABLEKS                       R15 R15 K25 ["FFlagAssistantMultipleChatPersistence"]
      104 CALL                             R14 1 1
      105 DUPCLOSURE                       R15 K26 [PROTO_0]
      106 CAPTURE                          VAL R13
      107 CAPTURE                          VAL R1
      108 DUPCLOSURE                       R16 K27 [PROTO_3]
      109 CAPTURE                          VAL R14
      110 CAPTURE                          VAL R5
      111 CAPTURE                          VAL R3
      112 CAPTURE                          VAL R7
      113 CAPTURE                          VAL R2
      114 CAPTURE                          VAL R9
      115 CAPTURE                          VAL R15
      116 CAPTURE                          VAL R8
      117 CAPTURE                          VAL R6
      118 CAPTURE                          VAL R4
      119 CAPTURE                          VAL R10
      120 CAPTURE                          VAL R12
      121 CAPTURE                          VAL R11
      122 RETURN                           R16 1
