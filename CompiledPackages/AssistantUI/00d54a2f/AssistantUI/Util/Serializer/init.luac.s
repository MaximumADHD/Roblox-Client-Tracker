PROTO_0:
        0 DUPTABLE                         R2 K9 [{"id", "sourceId", "rootId", "type", "toolUse", "toolResult", "createdAt", "updatedAt", "lastServerStreamId"}]
        1 SETTABLEKS                       R0 R2 K0 ["id"]
        3 GETTABLEKS                       R3 R1 K1 ["sourceId"]
        5 SETTABLEKS                       R3 R2 K1 ["sourceId"]
        7 GETTABLEKS                       R3 R1 K2 ["rootId"]
        9 SETTABLEKS                       R3 R2 K2 ["rootId"]
       11 GETTABLEKS                       R3 R1 K3 ["type"]
       13 SETTABLEKS                       R3 R2 K3 ["type"]
       15 GETTABLEKS                       R3 R1 K4 ["toolUse"]
       17 SETTABLEKS                       R3 R2 K4 ["toolUse"]
       19 GETTABLEKS                       R3 R1 K5 ["toolResult"]
       21 SETTABLEKS                       R3 R2 K5 ["toolResult"]
       23 GETTABLEKS                       R3 R1 K6 ["createdAt"]
       25 SETTABLEKS                       R3 R2 K6 ["createdAt"]
       27 GETTABLEKS                       R3 R1 K7 ["updatedAt"]
       29 SETTABLEKS                       R3 R2 K7 ["updatedAt"]
       31 GETTABLEKS                       R3 R1 K8 ["lastServerStreamId"]
       33 SETTABLEKS                       R3 R2 K8 ["lastServerStreamId"]
       35 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["serialize"]
        3 GETTABLEKS                       R3 R1 K1 ["type"]
        5 MOVE                             R4 R1
        6 CALL                             R2 2 1
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R3 R4 K2 ["assign"]
       10 DUPTABLE                         R4 K11 [{"id", "sourceId", "rootId", "type", "toolUse", "toolResult", "createdAt", "updatedAt", "lastServerStreamId"}]
       11 SETTABLEKS                       R0 R4 K3 ["id"]
       13 GETTABLEKS                       R5 R1 K4 ["sourceId"]
       15 SETTABLEKS                       R5 R4 K4 ["sourceId"]
       17 GETTABLEKS                       R5 R1 K5 ["rootId"]
       19 SETTABLEKS                       R5 R4 K5 ["rootId"]
       21 GETTABLEKS                       R5 R1 K1 ["type"]
       23 SETTABLEKS                       R5 R4 K1 ["type"]
       25 GETTABLEKS                       R5 R1 K6 ["toolUse"]
       27 SETTABLEKS                       R5 R4 K6 ["toolUse"]
       29 GETTABLEKS                       R5 R1 K7 ["toolResult"]
       31 SETTABLEKS                       R5 R4 K7 ["toolResult"]
       33 GETTABLEKS                       R5 R1 K8 ["createdAt"]
       35 SETTABLEKS                       R5 R4 K8 ["createdAt"]
       37 GETTABLEKS                       R5 R1 K9 ["updatedAt"]
       39 SETTABLEKS                       R5 R4 K9 ["updatedAt"]
       41 GETTABLEKS                       R5 R1 K10 ["lastServerStreamId"]
       43 SETTABLEKS                       R5 R4 K10 ["lastServerStreamId"]
       45 MOVE                             R5 R2
       46 CALL                             R3 2 -1
       47 RETURN                           R3 -1

PROTO_2:
        0 DUPTABLE                         R2 K12 [{"contentId", "sourceId", "rootId", "type", "toolUse", "toolResult", "generating", "expanded", "createdAt", "updatedAt", "lastServerStreamId", "LayoutOrder"}]
        1 GETTABLEKS                       R3 R1 K13 ["id"]
        3 SETTABLEKS                       R3 R2 K0 ["contentId"]
        5 GETTABLEKS                       R3 R1 K1 ["sourceId"]
        7 SETTABLEKS                       R3 R2 K1 ["sourceId"]
        9 GETTABLEKS                       R3 R1 K2 ["rootId"]
       11 SETTABLEKS                       R3 R2 K2 ["rootId"]
       13 GETTABLEKS                       R3 R1 K3 ["type"]
       15 SETTABLEKS                       R3 R2 K3 ["type"]
       17 GETTABLEKS                       R3 R1 K4 ["toolUse"]
       19 SETTABLEKS                       R3 R2 K4 ["toolUse"]
       21 GETTABLEKS                       R3 R1 K5 ["toolResult"]
       23 SETTABLEKS                       R3 R2 K5 ["toolResult"]
       25 LOADNIL                          R3
       26 SETTABLEKS                       R3 R2 K6 ["generating"]
       28 LOADNIL                          R3
       29 SETTABLEKS                       R3 R2 K7 ["expanded"]
       31 GETTABLEKS                       R3 R1 K8 ["createdAt"]
       33 SETTABLEKS                       R3 R2 K8 ["createdAt"]
       35 GETTABLEKS                       R3 R1 K9 ["updatedAt"]
       37 SETTABLEKS                       R3 R2 K9 ["updatedAt"]
       39 GETTABLEKS                       R3 R1 K10 ["lastServerStreamId"]
       41 SETTABLEKS                       R3 R2 K10 ["lastServerStreamId"]
       43 SETTABLEKS                       R0 R2 K11 ["LayoutOrder"]
       45 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["deserialize"]
        3 GETTABLEKS                       R4 R2 K1 ["type"]
        5 MOVE                             R5 R2
        6 CALL                             R3 2 1
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R4 R5 K2 ["assign"]
       10 GETUPVAL                         R5 2
       11 MOVE                             R6 R0
       12 MOVE                             R7 R2
       13 CALL                             R5 2 1
       14 MOVE                             R6 R3
       15 CALL                             R4 2 -1
       16 RETURN                           R4 -1

PROTO_4:
        0 GETTABLEKS                       R3 R0 K0 ["index"]
        2 GETTABLEKS                       R4 R1 K0 ["index"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_5:
        0 MOVE                             R2 R0
        1 CALL                             R2 0 1
        2 GETIMPORT                        R3 K2 [table.sort]
        4 MOVE                             R4 R2
        5 DUPCLOSURE                       R5 K3 [PROTO_4]
        6 CALL                             R3 2 0
        7 MOVE                             R3 R1
        8 JUMPIF                           R3 ; [+2]
        9 NEWTABLE                         R3 0 0
       11 MOVE                             R4 R2
       12 LOADNIL                          R5
       13 LOADNIL                          R6
       14 FORGPREP                         R4
       15 GETTABLEKS                       R11 R8 K4 ["content"]
       17 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
       19 MOVE                             R10 R3
       20 GETIMPORT                        R9 K6 [table.insert]
       22 CALL                             R9 2 0
       23 FORGLOOP                         R4 2 ; [-9]
       25 RETURN                           R3 1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["FFlagAssistantPersistConversations must be enabled"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 DUPTABLE                         R1 K5 [{"version", "threads"}]
        9 GETUPVAL                         R3 1
       10 GETTABLEN                        R2 R3 1
       11 SETTABLEKS                       R2 R1 K3 ["version"]
       13 NEWTABLE                         R2 0 0
       15 SETTABLEKS                       R2 R1 K4 ["threads"]
       17 GETTABLEKS                       R2 R1 K4 ["threads"]
       19 GETTABLEKS                       R3 R0 K4 ["threads"]
       21 LOADNIL                          R4
       22 LOADNIL                          R5
       23 FORGPREP                         R3
       24 GETTABLEKS                       R8 R7 K6 ["ephemeral"]
       26 JUMPIF                           R8 ; [+34]
       27 DUPTABLE                         R8 K14 [{"id", "sourceId", "rootId", "title", "isPinned", "createdAt", "updatedAt"}]
       28 SETTABLEKS                       R6 R8 K7 ["id"]
       30 GETTABLEKS                       R9 R7 K8 ["sourceId"]
       32 SETTABLEKS                       R9 R8 K8 ["sourceId"]
       34 GETTABLEKS                       R9 R7 K9 ["rootId"]
       36 SETTABLEKS                       R9 R8 K9 ["rootId"]
       38 GETTABLEKS                       R9 R7 K10 ["title"]
       40 SETTABLEKS                       R9 R8 K10 ["title"]
       42 GETTABLEKS                       R9 R7 K11 ["isPinned"]
       44 SETTABLEKS                       R9 R8 K11 ["isPinned"]
       46 GETTABLEKS                       R9 R7 K12 ["createdAt"]
       48 SETTABLEKS                       R9 R8 K12 ["createdAt"]
       50 GETTABLEKS                       R9 R7 K13 ["updatedAt"]
       52 SETTABLEKS                       R9 R8 K13 ["updatedAt"]
       54 FASTCALL2                        TABLE_INSERT R2 R8 ; [+5]
       56 MOVE                             R10 R2
       57 MOVE                             R11 R8
       58 GETIMPORT                        R9 K17 [table.insert]
       60 CALL                             R9 2 0
       61 FORGLOOP                         R3 2 ; [-38]
       63 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["FFlagAssistantPersistConversations must be enabled"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 DUPTABLE                         R1 K7 [{"wasLoadedFromPersistence", "ephemeral", "isDirty", "threads"}]
        9 LOADB                            R2 1
       10 SETTABLEKS                       R2 R1 K3 ["wasLoadedFromPersistence"]
       12 LOADB                            R2 0
       13 SETTABLEKS                       R2 R1 K4 ["ephemeral"]
       15 LOADB                            R2 0
       16 SETTABLEKS                       R2 R1 K5 ["isDirty"]
       18 NEWTABLE                         R2 0 0
       20 SETTABLEKS                       R2 R1 K6 ["threads"]
       22 GETTABLEKS                       R2 R0 K6 ["threads"]
       24 LOADNIL                          R3
       25 LOADNIL                          R4
       26 FORGPREP                         R2
       27 GETTABLEKS                       R7 R6 K8 ["id"]
       29 DUPTABLE                         R8 K18 [{"threadId", "sourceId", "rootId", "ephemeral", "isDirty", "title", "isPinned", "createdAt", "updatedAt", "messages", "messageCount"}]
       30 SETTABLEKS                       R7 R8 K9 ["threadId"]
       32 GETTABLEKS                       R9 R6 K10 ["sourceId"]
       34 SETTABLEKS                       R9 R8 K10 ["sourceId"]
       36 GETTABLEKS                       R9 R6 K11 ["rootId"]
       38 SETTABLEKS                       R9 R8 K11 ["rootId"]
       40 LOADB                            R9 0
       41 SETTABLEKS                       R9 R8 K4 ["ephemeral"]
       43 LOADB                            R9 0
       44 SETTABLEKS                       R9 R8 K5 ["isDirty"]
       46 GETTABLEKS                       R9 R6 K12 ["title"]
       48 SETTABLEKS                       R9 R8 K12 ["title"]
       50 GETTABLEKS                       R9 R6 K13 ["isPinned"]
       52 SETTABLEKS                       R9 R8 K13 ["isPinned"]
       54 GETTABLEKS                       R9 R6 K14 ["createdAt"]
       56 SETTABLEKS                       R9 R8 K14 ["createdAt"]
       58 GETTABLEKS                       R9 R6 K15 ["updatedAt"]
       60 SETTABLEKS                       R9 R8 K15 ["updatedAt"]
       62 LOADNIL                          R9
       63 SETTABLEKS                       R9 R8 K16 ["messages"]
       65 LOADN                            R9 0
       66 SETTABLEKS                       R9 R8 K17 ["messageCount"]
       68 GETTABLEKS                       R9 R1 K6 ["threads"]
       70 SETTABLE                         R8 R9 R7
       71 FORGLOOP                         R2 2 ; [-45]
       73 RETURN                           R1 1

PROTO_8:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R1 R4 K0 ["contents"]
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 FORGPREP                         R1
        8 DUPTABLE                         R8 K3 [{"index", "content"}]
        9 GETTABLEKS                       R9 R5 K4 ["LayoutOrder"]
       11 SETTABLEKS                       R9 R8 K1 ["index"]
       13 GETUPVAL                         R11 1
       14 GETTABLEKS                       R10 R11 K5 ["serialize"]
       16 GETTABLEKS                       R11 R5 K6 ["type"]
       18 MOVE                             R12 R5
       19 CALL                             R10 2 1
       20 GETUPVAL                         R12 2
       21 GETTABLEKS                       R11 R12 K7 ["assign"]
       23 DUPTABLE                         R12 K16 [{"id", "sourceId", "rootId", "type", "toolUse", "toolResult", "createdAt", "updatedAt", "lastServerStreamId"}]
       24 SETTABLEKS                       R4 R12 K8 ["id"]
       26 GETTABLEKS                       R13 R5 K9 ["sourceId"]
       28 SETTABLEKS                       R13 R12 K9 ["sourceId"]
       30 GETTABLEKS                       R13 R5 K10 ["rootId"]
       32 SETTABLEKS                       R13 R12 K10 ["rootId"]
       34 GETTABLEKS                       R13 R5 K6 ["type"]
       36 SETTABLEKS                       R13 R12 K6 ["type"]
       38 GETTABLEKS                       R13 R5 K11 ["toolUse"]
       40 SETTABLEKS                       R13 R12 K11 ["toolUse"]
       42 GETTABLEKS                       R13 R5 K12 ["toolResult"]
       44 SETTABLEKS                       R13 R12 K12 ["toolResult"]
       46 GETTABLEKS                       R13 R5 K13 ["createdAt"]
       48 SETTABLEKS                       R13 R12 K13 ["createdAt"]
       50 GETTABLEKS                       R13 R5 K14 ["updatedAt"]
       52 SETTABLEKS                       R13 R12 K14 ["updatedAt"]
       54 GETTABLEKS                       R13 R5 K15 ["lastServerStreamId"]
       56 SETTABLEKS                       R13 R12 K15 ["lastServerStreamId"]
       58 MOVE                             R13 R10
       59 CALL                             R11 2 1
       60 MOVE                             R9 R11
       61 SETTABLEKS                       R9 R8 K2 ["content"]
       63 FASTCALL2                        TABLE_INSERT R0 R8 ; [+4]
       65 MOVE                             R7 R0
       66 GETIMPORT                        R6 K19 [table.insert]
       68 CALL                             R6 2 0
       69 FORGLOOP                         R1 2 ; [-62]
       71 RETURN                           R0 1

PROTO_9:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 GETTABLEKS                       R6 R5 K0 ["ephemeral"]
        8 JUMPIF                           R6 ; [+47]
        9 NEWTABLE                         R6 0 0
       11 DUPTABLE                         R7 K8 [{"id", "sourceId", "rootId", "createdAt", "role", "thumbsState", "contents"}]
       12 SETTABLEKS                       R4 R7 K1 ["id"]
       14 GETTABLEKS                       R8 R5 K2 ["sourceId"]
       16 SETTABLEKS                       R8 R7 K2 ["sourceId"]
       18 GETTABLEKS                       R8 R5 K3 ["rootId"]
       20 SETTABLEKS                       R8 R7 K3 ["rootId"]
       22 GETTABLEKS                       R8 R5 K4 ["createdAt"]
       24 SETTABLEKS                       R8 R7 K4 ["createdAt"]
       26 GETTABLEKS                       R8 R5 K5 ["role"]
       28 SETTABLEKS                       R8 R7 K5 ["role"]
       30 GETTABLEKS                       R8 R5 K6 ["thumbsState"]
       32 SETTABLEKS                       R8 R7 K6 ["thumbsState"]
       34 SETTABLEKS                       R6 R7 K7 ["contents"]
       36 GETUPVAL                         R8 1
       37 NEWCLOSURE                       R9 P0
       38 CAPTURE                          VAL R5
       39 CAPTURE                          UPVAL U2
       40 CAPTURE                          UPVAL U3
       41 MOVE                             R10 R6
       42 CALL                             R8 2 0
       43 DUPTABLE                         R10 K11 [{"index", "content"}]
       44 GETTABLEKS                       R11 R5 K12 ["LayoutOrder"]
       46 SETTABLEKS                       R11 R10 K9 ["index"]
       48 SETTABLEKS                       R7 R10 K10 ["content"]
       50 FASTCALL2                        TABLE_INSERT R0 R10 ; [+4]
       52 MOVE                             R9 R0
       53 GETIMPORT                        R8 K15 [table.insert]
       55 CALL                             R8 2 0
       56 FORGLOOP                         R1 2 ; [-51]
       58 RETURN                           R0 1

PROTO_10:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R2 0
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 MOVE                             R4 R1
        9 CALL                             R2 2 0
       10 RETURN                           R1 1

PROTO_11:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R1
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 NEWTABLE                         R8 0 0
        8 GETTABLEKS                       R9 R7 K0 ["id"]
       10 DUPTABLE                         R10 K11 [{"messageId", "sourceId", "rootId", "ephemeral", "createdAt", "role", "thumbsState", "contents", "contentCount", "LayoutOrder"}]
       11 SETTABLEKS                       R9 R10 K1 ["messageId"]
       13 GETTABLEKS                       R11 R7 K2 ["sourceId"]
       15 SETTABLEKS                       R11 R10 K2 ["sourceId"]
       17 GETTABLEKS                       R11 R7 K3 ["rootId"]
       19 SETTABLEKS                       R11 R10 K3 ["rootId"]
       21 LOADB                            R11 0
       22 SETTABLEKS                       R11 R10 K4 ["ephemeral"]
       24 GETTABLEKS                       R11 R7 K5 ["createdAt"]
       26 SETTABLEKS                       R11 R10 K5 ["createdAt"]
       28 GETTABLEKS                       R11 R7 K6 ["role"]
       30 SETTABLEKS                       R11 R10 K6 ["role"]
       32 GETTABLEKS                       R11 R7 K7 ["thumbsState"]
       34 SETTABLEKS                       R11 R10 K7 ["thumbsState"]
       36 SETTABLEKS                       R8 R10 K8 ["contents"]
       38 GETTABLEKS                       R12 R7 K8 ["contents"]
       40 LENGTH                           R11 R12
       41 SETTABLEKS                       R11 R10 K9 ["contentCount"]
       43 SETTABLEKS                       R6 R10 K10 ["LayoutOrder"]
       45 SETTABLE                         R10 R2 R9
       46 GETTABLEKS                       R11 R7 K8 ["contents"]
       48 LOADNIL                          R12
       49 LOADNIL                          R13
       50 FORGPREP                         R11
       51 GETTABLEKS                       R16 R15 K0 ["id"]
       53 GETUPVAL                         R18 0
       54 GETTABLEKS                       R17 R18 K12 ["setContentMetadata"]
       56 MOVE                             R18 R16
       57 DUPTABLE                         R19 K15 [{"type", "threadId", "messageId"}]
       58 GETUPVAL                         R22 0
       59 GETTABLEKS                       R21 R22 K16 ["METADATA_TYPES"]
       61 GETTABLEKS                       R20 R21 K17 ["Content"]
       63 SETTABLEKS                       R20 R19 K13 ["type"]
       65 SETTABLEKS                       R0 R19 K14 ["threadId"]
       67 SETTABLEKS                       R9 R19 K1 ["messageId"]
       69 CALL                             R17 2 0
       70 GETUPVAL                         R19 1
       71 GETTABLEKS                       R18 R19 K18 ["deserialize"]
       73 GETTABLEKS                       R19 R15 K13 ["type"]
       75 MOVE                             R20 R15
       76 CALL                             R18 2 1
       77 GETUPVAL                         R20 2
       78 GETTABLEKS                       R19 R20 K19 ["assign"]
       80 GETUPVAL                         R20 3
       81 MOVE                             R21 R14
       82 MOVE                             R22 R15
       83 CALL                             R20 2 1
       84 MOVE                             R21 R18
       85 CALL                             R19 2 1
       86 MOVE                             R17 R19
       87 SETTABLE                         R17 R8 R16
       88 FORGLOOP                         R11 2 ; [-38]
       90 FORGLOOP                         R3 2 ; [-85]
       92 RETURN                           R2 1

PROTO_12:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["FFlagAssistantPersistConversations must be enabled"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 MOVE                             R1 R0
        9 LOADNIL                          R2
       10 LOADNIL                          R3
       11 FORGPREP                         R1
       12 GETTABLEKS                       R6 R5 K3 ["contents"]
       14 LOADNIL                          R7
       15 LOADNIL                          R8
       16 FORGPREP                         R6
       17 GETUPVAL                         R12 1
       18 GETTABLEKS                       R11 R12 K4 ["hydrate"]
       20 GETTABLEKS                       R12 R10 K5 ["type"]
       22 MOVE                             R13 R9
       23 MOVE                             R14 R10
       24 CALL                             R11 3 0
       25 FORGLOOP                         R6 2 ; [-9]
       27 FORGLOOP                         R1 2 ; [-16]
       29 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R3 K7 ["ContentIdGenerator"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R4 K9 ["Dash"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R6 R0 K6 ["Util"]
       25 GETTABLEKS                       R5 R6 K10 ["Serializer"]
       27 GETTABLEKS                       R4 R5 K11 ["SerializerRegistry"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K12 ["Types"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R7 R0 K13 ["Flags"]
       39 GETTABLEKS                       R6 R7 K14 ["FFlagAssistantPersistConversations"]
       41 CALL                             R5 1 1
       42 NEWTABLE                         R6 0 1
       44 LOADK                            R7 K15 ["0.1.0"]
       45 SETLIST                          R6 R7 1 [1]
       47 DUPCLOSURE                       R7 K16 [PROTO_0]
       48 DUPCLOSURE                       R8 K17 [PROTO_1]
       49 CAPTURE                          VAL R3
       50 CAPTURE                          VAL R2
       51 DUPCLOSURE                       R9 K18 [PROTO_2]
       52 DUPCLOSURE                       R10 K19 [PROTO_3]
       53 CAPTURE                          VAL R3
       54 CAPTURE                          VAL R2
       55 CAPTURE                          VAL R9
       56 DUPCLOSURE                       R11 K20 [PROTO_5]
       57 DUPCLOSURE                       R12 K21 [PROTO_6]
       58 CAPTURE                          VAL R5
       59 CAPTURE                          VAL R6
       60 DUPCLOSURE                       R13 K22 [PROTO_7]
       61 CAPTURE                          VAL R5
       62 DUPCLOSURE                       R14 K23 [PROTO_10]
       63 CAPTURE                          VAL R11
       64 CAPTURE                          VAL R3
       65 CAPTURE                          VAL R2
       66 DUPCLOSURE                       R15 K24 [PROTO_11]
       67 CAPTURE                          VAL R1
       68 CAPTURE                          VAL R3
       69 CAPTURE                          VAL R2
       70 CAPTURE                          VAL R9
       71 DUPCLOSURE                       R16 K25 [PROTO_12]
       72 CAPTURE                          VAL R5
       73 CAPTURE                          VAL R3
       74 DUPTABLE                         R17 K31 [{"serializeConversation", "deserializeConversation", "serializeMessages", "deserializeMessages", "hydrateMessages"}]
       75 SETTABLEKS                       R12 R17 K26 ["serializeConversation"]
       77 SETTABLEKS                       R13 R17 K27 ["deserializeConversation"]
       79 SETTABLEKS                       R14 R17 K28 ["serializeMessages"]
       81 SETTABLEKS                       R15 R17 K29 ["deserializeMessages"]
       83 SETTABLEKS                       R16 R17 K30 ["hydrateMessages"]
       85 RETURN                           R17 1
