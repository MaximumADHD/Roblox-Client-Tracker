PROTO_0:
        0 DUPTABLE                         R2 K7 [{"id", "type", "toolUse", "toolResult", "createdAt", "updatedAt", "lastServerStreamId"}]
        1 SETTABLEKS                       R0 R2 K0 ["id"]
        3 GETTABLEKS                       R3 R1 K1 ["type"]
        5 SETTABLEKS                       R3 R2 K1 ["type"]
        7 GETTABLEKS                       R3 R1 K2 ["toolUse"]
        9 SETTABLEKS                       R3 R2 K2 ["toolUse"]
       11 GETTABLEKS                       R3 R1 K3 ["toolResult"]
       13 SETTABLEKS                       R3 R2 K3 ["toolResult"]
       15 GETTABLEKS                       R3 R1 K4 ["createdAt"]
       17 SETTABLEKS                       R3 R2 K4 ["createdAt"]
       19 GETTABLEKS                       R3 R1 K5 ["updatedAt"]
       21 SETTABLEKS                       R3 R2 K5 ["updatedAt"]
       23 GETTABLEKS                       R3 R1 K6 ["lastServerStreamId"]
       25 SETTABLEKS                       R3 R2 K6 ["lastServerStreamId"]
       27 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["serialize"]
        3 GETTABLEKS                       R3 R1 K1 ["type"]
        5 MOVE                             R4 R1
        6 CALL                             R2 2 1
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R3 R4 K2 ["assign"]
       10 DUPTABLE                         R4 K9 [{"id", "type", "toolUse", "toolResult", "createdAt", "updatedAt", "lastServerStreamId"}]
       11 SETTABLEKS                       R0 R4 K3 ["id"]
       13 GETTABLEKS                       R5 R1 K1 ["type"]
       15 SETTABLEKS                       R5 R4 K1 ["type"]
       17 GETTABLEKS                       R5 R1 K4 ["toolUse"]
       19 SETTABLEKS                       R5 R4 K4 ["toolUse"]
       21 GETTABLEKS                       R5 R1 K5 ["toolResult"]
       23 SETTABLEKS                       R5 R4 K5 ["toolResult"]
       25 GETTABLEKS                       R5 R1 K6 ["createdAt"]
       27 SETTABLEKS                       R5 R4 K6 ["createdAt"]
       29 GETTABLEKS                       R5 R1 K7 ["updatedAt"]
       31 SETTABLEKS                       R5 R4 K7 ["updatedAt"]
       33 GETTABLEKS                       R5 R1 K8 ["lastServerStreamId"]
       35 SETTABLEKS                       R5 R4 K8 ["lastServerStreamId"]
       37 MOVE                             R5 R2
       38 CALL                             R3 2 -1
       39 RETURN                           R3 -1

PROTO_2:
        0 DUPTABLE                         R2 K9 [{"type", "toolUse", "toolResult", "generating", "expanded", "createdAt", "updatedAt", "lastServerStreamId", "LayoutOrder"}]
        1 GETTABLEKS                       R3 R1 K0 ["type"]
        3 SETTABLEKS                       R3 R2 K0 ["type"]
        5 GETTABLEKS                       R3 R1 K1 ["toolUse"]
        7 SETTABLEKS                       R3 R2 K1 ["toolUse"]
        9 GETTABLEKS                       R3 R1 K2 ["toolResult"]
       11 SETTABLEKS                       R3 R2 K2 ["toolResult"]
       13 LOADNIL                          R3
       14 SETTABLEKS                       R3 R2 K3 ["generating"]
       16 LOADNIL                          R3
       17 SETTABLEKS                       R3 R2 K4 ["expanded"]
       19 GETTABLEKS                       R3 R1 K5 ["createdAt"]
       21 SETTABLEKS                       R3 R2 K5 ["createdAt"]
       23 GETTABLEKS                       R3 R1 K6 ["updatedAt"]
       25 SETTABLEKS                       R3 R2 K6 ["updatedAt"]
       27 GETTABLEKS                       R3 R1 K7 ["lastServerStreamId"]
       29 SETTABLEKS                       R3 R2 K7 ["lastServerStreamId"]
       31 SETTABLEKS                       R0 R2 K8 ["LayoutOrder"]
       33 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["deserialize"]
        3 GETTABLEKS                       R4 R2 K1 ["type"]
        5 MOVE                             R5 R2
        6 CALL                             R3 2 1
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R4 R5 K2 ["assign"]
       10 DUPTABLE                         R5 K11 [{"type", "toolUse", "toolResult", "generating", "expanded", "createdAt", "updatedAt", "lastServerStreamId", "LayoutOrder"}]
       11 GETTABLEKS                       R6 R2 K1 ["type"]
       13 SETTABLEKS                       R6 R5 K1 ["type"]
       15 GETTABLEKS                       R6 R2 K3 ["toolUse"]
       17 SETTABLEKS                       R6 R5 K3 ["toolUse"]
       19 GETTABLEKS                       R6 R2 K4 ["toolResult"]
       21 SETTABLEKS                       R6 R5 K4 ["toolResult"]
       23 LOADNIL                          R6
       24 SETTABLEKS                       R6 R5 K5 ["generating"]
       26 LOADNIL                          R6
       27 SETTABLEKS                       R6 R5 K6 ["expanded"]
       29 GETTABLEKS                       R6 R2 K7 ["createdAt"]
       31 SETTABLEKS                       R6 R5 K7 ["createdAt"]
       33 GETTABLEKS                       R6 R2 K8 ["updatedAt"]
       35 SETTABLEKS                       R6 R5 K8 ["updatedAt"]
       37 GETTABLEKS                       R6 R2 K9 ["lastServerStreamId"]
       39 SETTABLEKS                       R6 R5 K9 ["lastServerStreamId"]
       41 SETTABLEKS                       R0 R5 K10 ["LayoutOrder"]
       43 MOVE                             R6 R3
       44 CALL                             R4 2 -1
       45 RETURN                           R4 -1

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
       26 JUMPIF                           R8 ; [+26]
       27 DUPTABLE                         R8 K12 [{"id", "title", "isPinned", "createdAt", "updatedAt"}]
       28 SETTABLEKS                       R6 R8 K7 ["id"]
       30 GETTABLEKS                       R9 R7 K8 ["title"]
       32 SETTABLEKS                       R9 R8 K8 ["title"]
       34 GETTABLEKS                       R9 R7 K9 ["isPinned"]
       36 SETTABLEKS                       R9 R8 K9 ["isPinned"]
       38 GETTABLEKS                       R9 R7 K10 ["createdAt"]
       40 SETTABLEKS                       R9 R8 K10 ["createdAt"]
       42 GETTABLEKS                       R9 R7 K11 ["updatedAt"]
       44 SETTABLEKS                       R9 R8 K11 ["updatedAt"]
       46 FASTCALL2                        TABLE_INSERT R2 R8 ; [+5]
       48 MOVE                             R10 R2
       49 MOVE                             R11 R8
       50 GETIMPORT                        R9 K15 [table.insert]
       52 CALL                             R9 2 0
       53 FORGLOOP                         R3 2 ; [-30]
       55 RETURN                           R1 1

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
       29 DUPTABLE                         R8 K16 [{"threadId", "ephemeral", "isDirty", "title", "isPinned", "createdAt", "updatedAt", "messages", "messageCount"}]
       30 SETTABLEKS                       R7 R8 K9 ["threadId"]
       32 LOADB                            R9 0
       33 SETTABLEKS                       R9 R8 K4 ["ephemeral"]
       35 LOADB                            R9 0
       36 SETTABLEKS                       R9 R8 K5 ["isDirty"]
       38 GETTABLEKS                       R9 R6 K10 ["title"]
       40 SETTABLEKS                       R9 R8 K10 ["title"]
       42 GETTABLEKS                       R9 R6 K11 ["isPinned"]
       44 SETTABLEKS                       R9 R8 K11 ["isPinned"]
       46 GETTABLEKS                       R9 R6 K12 ["createdAt"]
       48 SETTABLEKS                       R9 R8 K12 ["createdAt"]
       50 GETTABLEKS                       R9 R6 K13 ["updatedAt"]
       52 SETTABLEKS                       R9 R8 K13 ["updatedAt"]
       54 LOADNIL                          R9
       55 SETTABLEKS                       R9 R8 K14 ["messages"]
       57 LOADN                            R9 0
       58 SETTABLEKS                       R9 R8 K15 ["messageCount"]
       60 GETTABLEKS                       R9 R1 K6 ["threads"]
       62 SETTABLE                         R8 R9 R7
       63 FORGLOOP                         R2 2 ; [-37]
       65 RETURN                           R1 1

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
       23 DUPTABLE                         R12 K14 [{"id", "type", "toolUse", "toolResult", "createdAt", "updatedAt", "lastServerStreamId"}]
       24 SETTABLEKS                       R4 R12 K8 ["id"]
       26 GETTABLEKS                       R13 R5 K6 ["type"]
       28 SETTABLEKS                       R13 R12 K6 ["type"]
       30 GETTABLEKS                       R13 R5 K9 ["toolUse"]
       32 SETTABLEKS                       R13 R12 K9 ["toolUse"]
       34 GETTABLEKS                       R13 R5 K10 ["toolResult"]
       36 SETTABLEKS                       R13 R12 K10 ["toolResult"]
       38 GETTABLEKS                       R13 R5 K11 ["createdAt"]
       40 SETTABLEKS                       R13 R12 K11 ["createdAt"]
       42 GETTABLEKS                       R13 R5 K12 ["updatedAt"]
       44 SETTABLEKS                       R13 R12 K12 ["updatedAt"]
       46 GETTABLEKS                       R13 R5 K13 ["lastServerStreamId"]
       48 SETTABLEKS                       R13 R12 K13 ["lastServerStreamId"]
       50 MOVE                             R13 R10
       51 CALL                             R11 2 1
       52 MOVE                             R9 R11
       53 SETTABLEKS                       R9 R8 K2 ["content"]
       55 FASTCALL2                        TABLE_INSERT R0 R8 ; [+4]
       57 MOVE                             R7 R0
       58 GETIMPORT                        R6 K17 [table.insert]
       60 CALL                             R6 2 0
       61 FORGLOOP                         R1 2 ; [-54]
       63 RETURN                           R0 1

PROTO_9:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 GETTABLEKS                       R6 R5 K0 ["ephemeral"]
        8 JUMPIF                           R6 ; [+39]
        9 NEWTABLE                         R6 0 0
       11 DUPTABLE                         R7 K6 [{"id", "createdAt", "role", "thumbsState", "contents"}]
       12 SETTABLEKS                       R4 R7 K1 ["id"]
       14 GETTABLEKS                       R8 R5 K2 ["createdAt"]
       16 SETTABLEKS                       R8 R7 K2 ["createdAt"]
       18 GETTABLEKS                       R8 R5 K3 ["role"]
       20 SETTABLEKS                       R8 R7 K3 ["role"]
       22 GETTABLEKS                       R8 R5 K4 ["thumbsState"]
       24 SETTABLEKS                       R8 R7 K4 ["thumbsState"]
       26 SETTABLEKS                       R6 R7 K5 ["contents"]
       28 GETUPVAL                         R8 1
       29 NEWCLOSURE                       R9 P0
       30 CAPTURE                          VAL R5
       31 CAPTURE                          UPVAL U2
       32 CAPTURE                          UPVAL U3
       33 MOVE                             R10 R6
       34 CALL                             R8 2 0
       35 DUPTABLE                         R10 K9 [{"index", "content"}]
       36 GETTABLEKS                       R11 R5 K10 ["LayoutOrder"]
       38 SETTABLEKS                       R11 R10 K7 ["index"]
       40 SETTABLEKS                       R7 R10 K8 ["content"]
       42 FASTCALL2                        TABLE_INSERT R0 R10 ; [+4]
       44 MOVE                             R9 R0
       45 GETIMPORT                        R8 K13 [table.insert]
       47 CALL                             R8 2 0
       48 FORGLOOP                         R1 2 ; [-43]
       50 RETURN                           R0 1

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
       10 DUPTABLE                         R10 K9 [{"messageId", "ephemeral", "createdAt", "role", "thumbsState", "contents", "contentCount", "LayoutOrder"}]
       11 SETTABLEKS                       R9 R10 K1 ["messageId"]
       13 LOADB                            R11 0
       14 SETTABLEKS                       R11 R10 K2 ["ephemeral"]
       16 GETTABLEKS                       R11 R7 K3 ["createdAt"]
       18 SETTABLEKS                       R11 R10 K3 ["createdAt"]
       20 GETTABLEKS                       R11 R7 K4 ["role"]
       22 SETTABLEKS                       R11 R10 K4 ["role"]
       24 GETTABLEKS                       R11 R7 K5 ["thumbsState"]
       26 SETTABLEKS                       R11 R10 K5 ["thumbsState"]
       28 SETTABLEKS                       R8 R10 K6 ["contents"]
       30 GETTABLEKS                       R12 R7 K6 ["contents"]
       32 LENGTH                           R11 R12
       33 SETTABLEKS                       R11 R10 K7 ["contentCount"]
       35 SETTABLEKS                       R6 R10 K8 ["LayoutOrder"]
       37 SETTABLE                         R10 R2 R9
       38 GETTABLEKS                       R11 R7 K6 ["contents"]
       40 LOADNIL                          R12
       41 LOADNIL                          R13
       42 FORGPREP                         R11
       43 GETTABLEKS                       R16 R15 K0 ["id"]
       45 GETUPVAL                         R18 0
       46 GETTABLEKS                       R17 R18 K10 ["setContentMetadata"]
       48 MOVE                             R18 R16
       49 DUPTABLE                         R19 K12 [{"threadId", "messageId"}]
       50 SETTABLEKS                       R0 R19 K11 ["threadId"]
       52 SETTABLEKS                       R9 R19 K1 ["messageId"]
       54 CALL                             R17 2 0
       55 GETUPVAL                         R19 1
       56 GETTABLEKS                       R18 R19 K13 ["deserialize"]
       58 GETTABLEKS                       R19 R15 K14 ["type"]
       60 MOVE                             R20 R15
       61 CALL                             R18 2 1
       62 GETUPVAL                         R20 2
       63 GETTABLEKS                       R19 R20 K15 ["assign"]
       65 DUPTABLE                         R20 K22 [{"type", "toolUse", "toolResult", "generating", "expanded", "createdAt", "updatedAt", "lastServerStreamId", "LayoutOrder"}]
       66 GETTABLEKS                       R21 R15 K14 ["type"]
       68 SETTABLEKS                       R21 R20 K14 ["type"]
       70 GETTABLEKS                       R21 R15 K16 ["toolUse"]
       72 SETTABLEKS                       R21 R20 K16 ["toolUse"]
       74 GETTABLEKS                       R21 R15 K17 ["toolResult"]
       76 SETTABLEKS                       R21 R20 K17 ["toolResult"]
       78 LOADNIL                          R21
       79 SETTABLEKS                       R21 R20 K18 ["generating"]
       81 LOADNIL                          R21
       82 SETTABLEKS                       R21 R20 K19 ["expanded"]
       84 GETTABLEKS                       R21 R15 K3 ["createdAt"]
       86 SETTABLEKS                       R21 R20 K3 ["createdAt"]
       88 GETTABLEKS                       R21 R15 K20 ["updatedAt"]
       90 SETTABLEKS                       R21 R20 K20 ["updatedAt"]
       92 GETTABLEKS                       R21 R15 K21 ["lastServerStreamId"]
       94 SETTABLEKS                       R21 R20 K21 ["lastServerStreamId"]
       96 SETTABLEKS                       R14 R20 K8 ["LayoutOrder"]
       98 MOVE                             R21 R18
       99 CALL                             R19 2 1
      100 MOVE                             R17 R19
      101 SETTABLE                         R17 R8 R16
      102 FORGLOOP                         R11 2 ; [-60]
      104 FORGLOOP                         R3 2 ; [-99]
      106 RETURN                           R2 1

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
       55 DUPCLOSURE                       R11 K20 [PROTO_5]
       56 DUPCLOSURE                       R12 K21 [PROTO_6]
       57 CAPTURE                          VAL R5
       58 CAPTURE                          VAL R6
       59 DUPCLOSURE                       R13 K22 [PROTO_7]
       60 CAPTURE                          VAL R5
       61 DUPCLOSURE                       R14 K23 [PROTO_10]
       62 CAPTURE                          VAL R11
       63 CAPTURE                          VAL R3
       64 CAPTURE                          VAL R2
       65 DUPCLOSURE                       R15 K24 [PROTO_11]
       66 CAPTURE                          VAL R1
       67 CAPTURE                          VAL R3
       68 CAPTURE                          VAL R2
       69 DUPCLOSURE                       R16 K25 [PROTO_12]
       70 CAPTURE                          VAL R5
       71 CAPTURE                          VAL R3
       72 DUPTABLE                         R17 K31 [{"serializeConversation", "deserializeConversation", "serializeMessages", "deserializeMessages", "hydrateMessages"}]
       73 SETTABLEKS                       R12 R17 K26 ["serializeConversation"]
       75 SETTABLEKS                       R13 R17 K27 ["deserializeConversation"]
       77 SETTABLEKS                       R14 R17 K28 ["serializeMessages"]
       79 SETTABLEKS                       R15 R17 K29 ["deserializeMessages"]
       81 SETTABLEKS                       R16 R17 K30 ["hydrateMessages"]
       83 RETURN                           R17 1
