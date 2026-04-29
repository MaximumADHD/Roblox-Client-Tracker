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
       70 GETTABLEKS                       R10 R6 K17 ["threadId"]
       72 GETTABLEKS                       R11 R6 K18 ["rootId"]
       74 JUMPIF                           R11 ; [+2]
       75 GETTABLEKS                       R11 R6 K17 ["threadId"]
       77 NEWTABLE                         R12 0 0
       79 DUPTABLE                         R13 K25 [{"threadId", "sourceId", "rootId", "ephemeral", "isDirty", "title", "isPinned", "createdAt", "updatedAt", "messages", "messageCount"}]
       80 GETUPVAL                         R14 3
       81 SETTABLEKS                       R14 R13 K17 ["threadId"]
       83 SETTABLEKS                       R10 R13 K19 ["sourceId"]
       85 SETTABLEKS                       R11 R13 K18 ["rootId"]
       87 LOADB                            R14 1
       88 SETTABLEKS                       R14 R13 K20 ["ephemeral"]
       90 LOADB                            R14 0
       91 SETTABLEKS                       R14 R13 K21 ["isDirty"]
       93 GETUPVAL                         R14 4
       94 MOVE                             R15 R4
       95 GETTABLEKS                       R16 R6 K22 ["title"]
       97 CALL                             R14 2 1
       98 SETTABLEKS                       R14 R13 K22 ["title"]
      100 LOADB                            R14 0
      101 SETTABLEKS                       R14 R13 K23 ["isPinned"]
      103 LOADN                            R14 0
      104 SETTABLEKS                       R14 R13 K11 ["createdAt"]
      106 LOADN                            R14 0
      107 SETTABLEKS                       R14 R13 K24 ["updatedAt"]
      109 SETTABLEKS                       R12 R13 K9 ["messages"]
      111 LENGTH                           R14 R9
      112 SETTABLEKS                       R14 R13 K14 ["messageCount"]
      114 MOVE                             R14 R9
      115 LOADNIL                          R15
      116 LOADNIL                          R16
      117 FORGPREP                         R14
      118 GETUPVAL                         R20 5
      119 GETTABLEKS                       R19 R20 K26 ["getNextContentId"]
      121 CALL                             R19 0 1
      122 NEWTABLE                         R20 0 0
      124 GETIMPORT                        R21 K28 [table.clone]
      126 MOVE                             R22 R18
      127 CALL                             R21 1 1
      128 SETTABLEKS                       R19 R21 K29 ["messageId"]
      130 GETTABLEKS                       R22 R18 K29 ["messageId"]
      132 SETTABLEKS                       R22 R21 K19 ["sourceId"]
      134 GETTABLEKS                       R22 R18 K18 ["rootId"]
      136 JUMPIF                           R22 ; [+2]
      137 GETTABLEKS                       R22 R18 K29 ["messageId"]
      139 SETTABLEKS                       R22 R21 K18 ["rootId"]
      141 SETTABLEKS                       R20 R21 K30 ["contents"]
      143 SETTABLE                         R21 R12 R19
      144 GETTABLEKS                       R22 R18 K30 ["contents"]
      146 LOADNIL                          R23
      147 LOADNIL                          R24
      148 FORGPREP                         R22
      149 GETUPVAL                         R28 5
      150 GETTABLEKS                       R27 R28 K26 ["getNextContentId"]
      152 DUPTABLE                         R28 K32 [{"type", "threadId", "messageId"}]
      153 GETUPVAL                         R31 5
      154 GETTABLEKS                       R30 R31 K33 ["METADATA_TYPES"]
      156 GETTABLEKS                       R29 R30 K34 ["Content"]
      158 SETTABLEKS                       R29 R28 K31 ["type"]
      160 GETUPVAL                         R29 3
      161 SETTABLEKS                       R29 R28 K17 ["threadId"]
      163 SETTABLEKS                       R19 R28 K29 ["messageId"]
      165 CALL                             R27 1 1
      166 GETIMPORT                        R28 K28 [table.clone]
      168 MOVE                             R29 R26
      169 CALL                             R28 1 1
      170 SETTABLEKS                       R27 R28 K35 ["contentId"]
      172 GETTABLEKS                       R29 R26 K35 ["contentId"]
      174 SETTABLEKS                       R29 R28 K19 ["sourceId"]
      176 GETTABLEKS                       R29 R26 K18 ["rootId"]
      178 JUMPIF                           R29 ; [+2]
      179 GETTABLEKS                       R29 R26 K35 ["contentId"]
      181 SETTABLEKS                       R29 R28 K18 ["rootId"]
      183 SETTABLE                         R28 R20 R27
      184 FORGLOOP                         R22 2 ; [-36]
      186 FORGLOOP                         R14 2 ; [-69]
      188 GETUPVAL                         R15 6
      189 GETTABLEKS                       R14 R15 K36 ["hydrateMessages"]
      191 MOVE                             R15 R12
      192 CALL                             R14 1 0
      193 GETUPVAL                         R14 3
      194 SETTABLE                         R13 R4 R14
      195 GETUPVAL                         R15 7
      196 GETTABLEKS                       R14 R15 K37 ["get"]
      198 CALL                             R14 0 1
      199 GETTABLEKS                       R16 R14 K38 ["EventLogger"]
      201 GETTABLEKS                       R15 R16 K39 ["logThreadDuplicated"]
      203 DUPTABLE                         R16 K45 [{"conversationId", "newThreadId", "sourceThreadId", "titleAtDuplicate", "upToMessageId"}]
      204 GETUPVAL                         R17 8
      205 SETTABLEKS                       R17 R16 K40 ["conversationId"]
      207 GETUPVAL                         R17 3
      208 SETTABLEKS                       R17 R16 K41 ["newThreadId"]
      210 SETTABLEKS                       R10 R16 K42 ["sourceThreadId"]
      212 GETTABLEKS                       R17 R13 K22 ["title"]
      214 SETTABLEKS                       R17 R16 K43 ["titleAtDuplicate"]
      216 GETUPVAL                         R17 2
      217 SETTABLEKS                       R17 R16 K44 ["upToMessageId"]
      219 CALL                             R15 1 0
      220 GETUPVAL                         R15 9
      221 MOVE                             R16 R3
      222 MOVE                             R17 R13
      223 DUPTABLE                         R18 K47 [{"setCreatedAt"}]
      224 LOADB                            R19 1
      225 SETTABLEKS                       R19 R18 K46 ["setCreatedAt"]
      227 CALL                             R15 3 0
      228 GETUPVAL                         R15 10
      229 MOVE                             R16 R3
      230 CALL                             R15 1 0
      231 RETURN                           R3 1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["getNextContentId"]
        3 DUPTABLE                         R3 K3 [{"type", "isNewThread"}]
        4 GETUPVAL                         R6 0
        5 GETTABLEKS                       R5 R6 K4 ["METADATA_TYPES"]
        7 GETTABLEKS                       R4 R5 K5 ["Thread"]
        9 SETTABLEKS                       R4 R3 K1 ["type"]
       11 LOADB                            R4 0
       12 SETTABLEKS                       R4 R3 K2 ["isNewThread"]
       14 CALL                             R2 1 1
       15 GETUPVAL                         R3 1
       16 NEWCLOSURE                       R4 P0
       17 CAPTURE                          UPVAL U2
       18 CAPTURE                          VAL R0
       19 CAPTURE                          VAL R1
       20 CAPTURE                          VAL R2
       21 CAPTURE                          UPVAL U3
       22 CAPTURE                          UPVAL U0
       23 CAPTURE                          UPVAL U4
       24 CAPTURE                          UPVAL U5
       25 CAPTURE                          UPVAL U6
       26 CAPTURE                          UPVAL U7
       27 CAPTURE                          UPVAL U8
       28 CALL                             R3 1 0
       29 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 FASTCALL2K                       ASSERT R1 K0 ; [+4]
        4 LOADK                            R2 K0 ["useDuplicateThread is only available when FFlagAssistantMultipleChatPersistence is enabled"]
        5 GETIMPORT                        R0 K2 [assert]
        7 CALL                             R0 2 0
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R0 R1 K3 ["useContext"]
       11 GETUPVAL                         R2 2
       12 GETTABLEKS                       R1 R2 K4 ["Context"]
       14 CALL                             R0 1 1
       15 GETTABLEKS                       R1 R0 K5 ["setConversation"]
       17 GETUPVAL                         R3 1
       18 GETTABLEKS                       R2 R3 K3 ["useContext"]
       20 GETUPVAL                         R4 3
       21 GETTABLEKS                       R3 R4 K4 ["Context"]
       23 CALL                             R2 1 1
       24 GETTABLEKS                       R3 R2 K6 ["sessionId"]
       26 GETUPVAL                         R5 1
       27 GETTABLEKS                       R4 R5 K7 ["useCallback"]
       29 NEWCLOSURE                       R5 P0
       30 CAPTURE                          UPVAL U4
       31 CAPTURE                          VAL R1
       32 CAPTURE                          UPVAL U5
       33 CAPTURE                          UPVAL U6
       34 CAPTURE                          UPVAL U7
       35 CAPTURE                          UPVAL U8
       36 CAPTURE                          VAL R3
       37 CAPTURE                          UPVAL U9
       38 CAPTURE                          UPVAL U10
       39 NEWTABLE                         R6 0 2
       41 MOVE                             R7 R1
       42 MOVE                             R8 R3
       43 SETLIST                          R6 R7 2 [1]
       45 CALL                             R4 2 -1
       46 RETURN                           R4 -1

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
       30 GETTABLEKS                       R6 R0 K12 ["Guest"]
       32 GETTABLEKS                       R5 R6 K13 ["Environment"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R7 R0 K14 ["Parent"]
       39 GETTABLEKS                       R6 R7 K15 ["React"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R8 R0 K7 ["Util"]
       46 GETTABLEKS                       R7 R8 K16 ["Serializer"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R10 R0 K9 ["Components"]
       53 GETTABLEKS                       R9 R10 K10 ["Contexts"]
       55 GETTABLEKS                       R8 R9 K17 ["SessionIdContext"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R9 R0 K18 ["Types"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R11 R0 K7 ["Util"]
       67 GETTABLEKS                       R10 R11 K19 ["clonePath"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K5 [require]
       72 GETTABLEKS                       R12 R0 K7 ["Util"]
       74 GETTABLEKS                       R11 R12 K20 ["markDirty"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K5 [require]
       79 GETTABLEKS                       R13 R0 K7 ["Util"]
       81 GETTABLEKS                       R12 R13 K21 ["updateThreadTimestamp"]
       83 CALL                             R11 1 1
       84 GETIMPORT                        R12 K5 [require]
       86 GETTABLEKS                       R14 R0 K22 ["Flags"]
       88 GETTABLEKS                       R13 R14 K23 ["FFlagAssistantMultipleChatPersistence"]
       90 CALL                             R12 1 1
       91 DUPCLOSURE                       R13 K24 [PROTO_0]
       92 CAPTURE                          VAL R1
       93 DUPCLOSURE                       R14 K25 [PROTO_3]
       94 CAPTURE                          VAL R12
       95 CAPTURE                          VAL R5
       96 CAPTURE                          VAL R3
       97 CAPTURE                          VAL R7
       98 CAPTURE                          VAL R2
       99 CAPTURE                          VAL R9
      100 CAPTURE                          VAL R13
      101 CAPTURE                          VAL R6
      102 CAPTURE                          VAL R4
      103 CAPTURE                          VAL R11
      104 CAPTURE                          VAL R10
      105 RETURN                           R14 1
