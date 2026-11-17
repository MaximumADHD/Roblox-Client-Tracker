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
       24 LOADK                            R5 K5 ["(%*) %*"]
       25 MOVE                             R7 R4
       26 MOVE                             R8 R1
       27 NAMECALL                         R5 R5 K6 ["format"]
       29 CALL                             R5 3 1
       30 GETUPVAL                         R6 0
       31 MOVE                             R7 R5
       32 GETUPVAL                         R9 1
       33 GETTABLEKS                       R9 R9 K8 ["MAX_THREAD_NAME_LENGTH"]
       35 SUBK                             R8 R9 K7 [3]
       36 CALL                             R6 2 2
       37 JUMPIFNOT                        R7 ; [+3]
       38 MOVE                             R8 R6
       39 LOADK                            R9 K9 ["..."]
       40 CONCAT                           R6 R8 R9
       41 GETTABLE                         R8 R2 R6
       42 JUMPIF                           R8 ; [+1]
       43 RETURN                           R6 1
       44 ADDK                             R4 R4 K3 [1]
       45 JUMPBACK                         ; [-22]
       46 RETURN                           R0 0

PROTO_1:
        0 NEWTABLE                         R1 0 1
        2 LOADK                            R2 K0 ["threads"]
        3 SETLIST                          R1 R2 1 [1]
        5 GETUPVAL                         R2 0
        6 MOVE                             R3 R0
        7 MOVE                             R4 R1
        8 CALL                             R2 2 4
        9 JUMPIF                           R2 ; [+18]
       10 GETIMPORT                        R6 K2 [warn]
       12 LOADK                            R7 K3 ["Failed to clone path for duplicating thread:"]
       13 FASTCALL1                        TABLE_UNPACK R1 ; [+3]
       14 MOVE                             R9 R1
       15 GETIMPORT                        R8 K6 [table.unpack]
       17 CALL                             R8 1 -1
       18 CALL                             R6 -1 0
       19 GETIMPORT                        R6 K2 [warn]
       21 LOADK                            R7 K7 ["Failed at key: %*"]
       22 MOVE                             R9 R5
       23 NAMECALL                         R7 R7 K8 ["format"]
       25 CALL                             R7 2 1
       26 CALL                             R6 1 0
       27 RETURN                           R0 1
       28 GETUPVAL                         R7 1
       29 GETTABLE                         R6 R4 R7
       30 GETTABLEKS                       R7 R6 K9 ["messages"]
       32 JUMPIF                           R7 ; [+5]
       33 GETIMPORT                        R8 K2 [warn]
       35 LOADK                            R9 K10 ["Tried to duplicate unloaded thread"]
       36 CALL                             R8 1 0
       37 RETURN                           R0 1
       38 LOADNIL                          R8
       39 GETUPVAL                         R9 2
       40 JUMPIFNOT                        R9 ; [+5]
       41 GETUPVAL                         R10 2
       42 GETTABLE                         R9 R7 R10
       43 JUMPIFNOT                        R9 ; [+2]
       44 GETTABLEKS                       R8 R9 K11 ["createdAt"]
       46 GETIMPORT                        R9 K13 [table.create]
       48 GETTABLEKS                       R10 R6 K14 ["messageCountAdded"]
       50 CALL                             R9 1 1
       51 MOVE                             R10 R7
       52 LOADNIL                          R11
       53 LOADNIL                          R12
       54 FORGPREP                         R10
       55 JUMPIFNOT                        R8 ; [+4]
       56 GETTABLEKS                       R15 R14 K11 ["createdAt"]
       58 JUMPIFNOTLE                      R15 R8 ; [+8]
       60 FASTCALL2                        TABLE_INSERT R9 R14 ; [+5]
       62 MOVE                             R16 R9
       63 MOVE                             R17 R14
       64 GETIMPORT                        R15 K16 [table.insert]
       66 CALL                             R15 2 0
       67 FORGLOOP                         R10 2 ; [-13]
       69 GETTABLEKS                       R10 R6 K17 ["threadId"]
       71 GETTABLEKS                       R11 R6 K18 ["rootId"]
       73 JUMPIF                           R11 ; [+2]
       74 GETTABLEKS                       R11 R6 K17 ["threadId"]
       76 NEWTABLE                         R12 0 0
       78 DUPTABLE                         R13 K35 [{["threadId"], ["sourceId"], ["rootId"], ["createdAt"] = -1, ["updatedAt"] = -1, ["ephemeral"] = True, ["isDirty"] = False, ["isDeleted"] = , ["lastActivityAt"] = -1, ["lastViewedAt"] = -1, ["title"], ["isPinned"] = False, ["messages"], ["messageLoadState"], ["messagePageState"] = , ["messageCountAdded"], ["messageCountLoaded"]}]
       79 GETUPVAL                         R14 3
       80 SETTABLEKS                       R14 R13 K17 ["threadId"]
       82 SETTABLEKS                       R10 R13 K19 ["sourceId"]
       84 SETTABLEKS                       R11 R13 K18 ["rootId"]
       86 GETUPVAL                         R14 4
       87 MOVE                             R15 R4
       88 GETTABLEKS                       R16 R6 K30 ["title"]
       90 CALL                             R14 2 1
       91 SETTABLEKS                       R14 R13 K30 ["title"]
       93 SETTABLEKS                       R12 R13 K9 ["messages"]
       95 GETUPVAL                         R14 5
       96 GETTABLEKS                       R14 R14 K36 ["PersistenceLoadStates"]
       98 GETTABLEKS                       R14 R14 K37 ["Loaded"]
      100 SETTABLEKS                       R14 R13 K32 ["messageLoadState"]
      102 LENGTH                           R14 R9
      103 SETTABLEKS                       R14 R13 K14 ["messageCountAdded"]
      105 GETTABLEKS                       R14 R6 K34 ["messageCountLoaded"]
      107 SETTABLEKS                       R14 R13 K34 ["messageCountLoaded"]
      109 MOVE                             R14 R9
      110 LOADNIL                          R15
      111 LOADNIL                          R16
      112 FORGPREP                         R14
      113 GETUPVAL                         R19 6
      114 GETTABLEKS                       R19 R19 K38 ["getNextContentId"]
      116 CALL                             R19 0 1
      117 NEWTABLE                         R20 0 0
      119 GETIMPORT                        R21 K40 [table.clone]
      121 MOVE                             R22 R18
      122 CALL                             R21 1 1
      123 SETTABLEKS                       R19 R21 K41 ["messageId"]
      125 GETTABLEKS                       R22 R18 K41 ["messageId"]
      127 SETTABLEKS                       R22 R21 K19 ["sourceId"]
      129 GETTABLEKS                       R22 R18 K18 ["rootId"]
      131 JUMPIF                           R22 ; [+2]
      132 GETTABLEKS                       R22 R18 K41 ["messageId"]
      134 SETTABLEKS                       R22 R21 K18 ["rootId"]
      136 SETTABLEKS                       R20 R21 K42 ["contents"]
      138 SETTABLE                         R21 R12 R19
      139 GETTABLEKS                       R22 R18 K42 ["contents"]
      141 LOADNIL                          R23
      142 LOADNIL                          R24
      143 FORGPREP                         R22
      144 GETUPVAL                         R27 6
      145 GETTABLEKS                       R27 R27 K38 ["getNextContentId"]
      147 DUPTABLE                         R28 K43 [{"threadId", "messageId"}]
      148 GETUPVAL                         R29 3
      149 SETTABLEKS                       R29 R28 K17 ["threadId"]
      151 SETTABLEKS                       R19 R28 K41 ["messageId"]
      153 CALL                             R27 1 1
      154 GETIMPORT                        R28 K40 [table.clone]
      156 MOVE                             R29 R26
      157 CALL                             R28 1 1
      158 SETTABLEKS                       R27 R28 K44 ["contentId"]
      160 GETTABLEKS                       R29 R26 K44 ["contentId"]
      162 SETTABLEKS                       R29 R28 K19 ["sourceId"]
      164 GETTABLEKS                       R29 R26 K18 ["rootId"]
      166 JUMPIF                           R29 ; [+2]
      167 GETTABLEKS                       R29 R26 K44 ["contentId"]
      169 SETTABLEKS                       R29 R28 K18 ["rootId"]
      171 GETUPVAL                         R29 7
      172 GETTABLEKS                       R29 R29 K45 ["hydrate"]
      174 MOVE                             R30 R28
      175 CALL                             R29 1 0
      176 SETTABLE                         R28 R20 R27
      177 FORGLOOP                         R22 2 ; [-34]
      179 FORGLOOP                         R14 2 ; [-67]
      181 GETUPVAL                         R14 3
      182 SETTABLE                         R13 R4 R14
      183 GETUPVAL                         R14 8
      184 GETTABLEKS                       R14 R14 K46 ["get"]
      186 CALL                             R14 0 1
      187 GETTABLEKS                       R15 R14 K47 ["EventLogger"]
      189 GETTABLEKS                       R15 R15 K48 ["logThreadDuplicated"]
      191 DUPTABLE                         R16 K54 [{"conversationId", "newThreadId", "sourceThreadId", "titleAtDuplicate", "upToMessageId"}]
      192 GETUPVAL                         R17 9
      193 SETTABLEKS                       R17 R16 K49 ["conversationId"]
      195 GETUPVAL                         R17 3
      196 SETTABLEKS                       R17 R16 K50 ["newThreadId"]
      198 SETTABLEKS                       R10 R16 K51 ["sourceThreadId"]
      200 GETTABLEKS                       R17 R13 K30 ["title"]
      202 SETTABLEKS                       R17 R16 K52 ["titleAtDuplicate"]
      204 GETUPVAL                         R17 2
      205 SETTABLEKS                       R17 R16 K53 ["upToMessageId"]
      207 CALL                             R15 1 0
      208 GETUPVAL                         R15 10
      209 NEWTABLE                         R16 0 1
      211 MOVE                             R17 R13
      212 SETLIST                          R16 R17 1 [1]
      214 CALL                             R15 1 0
      215 GETUPVAL                         R15 11
      216 NEWTABLE                         R16 0 1
      218 MOVE                             R17 R13
      219 SETLIST                          R16 R17 1 [1]
      221 CALL                             R15 1 0
      222 GETUPVAL                         R15 12
      223 NEWTABLE                         R16 0 1
      225 MOVE                             R17 R13
      226 SETLIST                          R16 R17 1 [1]
      228 CALL                             R15 1 0
      229 RETURN                           R3 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getNextThreadId"]
        3 DUPTABLE                         R3 K3 [{["isNewThread"] = False}]
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 1
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          VAL R0
        9 CAPTURE                          VAL R1
       10 CAPTURE                          VAL R2
       11 CAPTURE                          UPVAL U3
       12 CAPTURE                          UPVAL U4
       13 CAPTURE                          UPVAL U0
       14 CAPTURE                          UPVAL U5
       15 CAPTURE                          UPVAL U6
       16 CAPTURE                          UPVAL U7
       17 CAPTURE                          UPVAL U8
       18 CAPTURE                          UPVAL U9
       19 CAPTURE                          UPVAL U10
       20 CALL                             R3 1 0
       21 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useContext"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["Context"]
        6 CALL                             R0 1 1
        7 GETTABLEKS                       R1 R0 K2 ["setConversation"]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K0 ["useContext"]
       12 GETUPVAL                         R3 2
       13 GETTABLEKS                       R3 R3 K1 ["Context"]
       15 CALL                             R2 1 1
       16 GETTABLEKS                       R3 R2 K3 ["sessionId"]
       18 GETUPVAL                         R4 0
       19 GETTABLEKS                       R4 R4 K4 ["useCallback"]
       21 NEWCLOSURE                       R5 P0
       22 CAPTURE                          UPVAL U3
       23 CAPTURE                          VAL R1
       24 CAPTURE                          UPVAL U4
       25 CAPTURE                          UPVAL U5
       26 CAPTURE                          UPVAL U6
       27 CAPTURE                          UPVAL U7
       28 CAPTURE                          UPVAL U8
       29 CAPTURE                          VAL R3
       30 CAPTURE                          UPVAL U9
       31 CAPTURE                          UPVAL U10
       32 CAPTURE                          UPVAL U11
       33 NEWTABLE                         R6 0 2
       35 MOVE                             R7 R1
       36 MOVE                             R8 R3
       37 SETLIST                          R6 R7 2 [1]
       39 CALL                             R4 2 -1
       40 RETURN                           R4 -1

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
       28 GETTABLEKS                       R5 R0 K11 ["Components"]
       30 GETTABLEKS                       R5 R5 K12 ["Contexts"]
       32 GETTABLEKS                       R5 R5 K13 ["ConversationContext"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K14 ["Guest"]
       39 GETTABLEKS                       R6 R6 K15 ["Environment"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K6 ["Parent"]
       46 GETTABLEKS                       R7 R7 K16 ["React"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K9 ["Util"]
       53 GETTABLEKS                       R8 R8 K17 ["Serializer"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R9 R0 K11 ["Components"]
       60 GETTABLEKS                       R9 R9 K12 ["Contexts"]
       62 GETTABLEKS                       R9 R9 K18 ["SessionIdContext"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R10 R0 K19 ["Types"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K5 [require]
       72 GETTABLEKS                       R11 R0 K9 ["Util"]
       74 GETTABLEKS                       R11 R11 K20 ["clonePath"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K5 [require]
       79 GETTABLEKS                       R12 R0 K9 ["Util"]
       81 GETTABLEKS                       R12 R12 K21 ["setCreatedAt"]
       83 CALL                             R11 1 1
       84 GETIMPORT                        R12 K5 [require]
       86 GETTABLEKS                       R13 R0 K9 ["Util"]
       88 GETTABLEKS                       R13 R13 K22 ["setLastActivityAt"]
       90 CALL                             R12 1 1
       91 GETIMPORT                        R13 K5 [require]
       93 GETTABLEKS                       R14 R0 K9 ["Util"]
       95 GETTABLEKS                       R14 R14 K23 ["setUpdatedAt"]
       97 CALL                             R13 1 1
       98 GETTABLEKS                       R14 R1 K24 ["Engine"]
      100 GETTABLEKS                       R14 R14 K25 ["truncateUtf8Safe"]
      102 DUPCLOSURE                       R15 K26 [PROTO_0]
      103 CAPTURE                          VAL R14
      104 CAPTURE                          VAL R2
      105 DUPCLOSURE                       R16 K27 [PROTO_3]
      106 CAPTURE                          VAL R6
      107 CAPTURE                          VAL R4
      108 CAPTURE                          VAL R8
      109 CAPTURE                          VAL R3
      110 CAPTURE                          VAL R10
      111 CAPTURE                          VAL R15
      112 CAPTURE                          VAL R9
      113 CAPTURE                          VAL R7
      114 CAPTURE                          VAL R5
      115 CAPTURE                          VAL R11
      116 CAPTURE                          VAL R13
      117 CAPTURE                          VAL R12
      118 RETURN                           R16 1
