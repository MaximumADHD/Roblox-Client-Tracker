PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+78]
        3 GETTABLEKS                       R2 R0 K0 ["threads"]
        5 GETUPVAL                         R3 1
        6 GETTABLE                         R1 R2 R3
        7 JUMPIFNOT                        R1 ; [+1]
        8 RETURN                           R0 1
        9 NEWTABLE                         R1 0 1
       11 LOADK                            R2 K0 ["threads"]
       12 SETLIST                          R1 R2 1 [1]
       14 GETUPVAL                         R2 2
       15 MOVE                             R3 R0
       16 MOVE                             R4 R1
       17 CALL                             R2 2 4
       18 JUMPIF                           R2 ; [+19]
       19 GETIMPORT                        R6 K2 [warn]
       21 LOADK                            R7 K3 ["Failed to clone path for adding thread:"]
       22 FASTCALL1                        TABLE_UNPACK R1 ; [+3]
       23 MOVE                             R9 R1
       24 GETIMPORT                        R8 K6 [table.unpack]
       26 CALL                             R8 1 -1
       27 CALL                             R6 -1 0
       28 GETIMPORT                        R6 K2 [warn]
       30 LOADK                            R8 K7 ["Failed at key: %*"]
       31 MOVE                             R10 R5
       32 NAMECALL                         R8 R8 K8 ["format"]
       34 CALL                             R8 2 1
       35 MOVE                             R7 R8
       36 CALL                             R6 1 0
       37 RETURN                           R0 1
       38 DUPTABLE                         R6 K18 [{"threadId", "ephemeral", "isDirty", "title", "createdAt", "updatedAt", "isPinned", "messages", "messageCount"}]
       39 GETUPVAL                         R7 1
       40 SETTABLEKS                       R7 R6 K9 ["threadId"]
       42 LOADB                            R7 1
       43 SETTABLEKS                       R7 R6 K10 ["ephemeral"]
       45 LOADB                            R7 0
       46 SETTABLEKS                       R7 R6 K11 ["isDirty"]
       48 LOADK                            R7 K19 [""]
       49 SETTABLEKS                       R7 R6 K12 ["title"]
       51 LOADN                            R7 0
       52 SETTABLEKS                       R7 R6 K13 ["createdAt"]
       54 LOADN                            R7 0
       55 SETTABLEKS                       R7 R6 K14 ["updatedAt"]
       57 LOADB                            R7 0
       58 SETTABLEKS                       R7 R6 K15 ["isPinned"]
       60 NEWTABLE                         R7 0 0
       62 SETTABLEKS                       R7 R6 K16 ["messages"]
       64 LOADN                            R7 0
       65 SETTABLEKS                       R7 R6 K17 ["messageCount"]
       67 GETUPVAL                         R7 3
       68 MOVE                             R8 R3
       69 MOVE                             R9 R6
       70 DUPTABLE                         R10 K21 [{"setCreatedAt"}]
       71 LOADB                            R11 1
       72 SETTABLEKS                       R11 R10 K20 ["setCreatedAt"]
       74 CALL                             R7 3 0
       75 GETUPVAL                         R7 4
       76 MOVE                             R8 R3
       77 CALL                             R7 1 0
       78 GETUPVAL                         R7 1
       79 SETTABLE                         R6 R4 R7
       80 RETURN                           R3 1
       81 GETUPVAL                         R2 1
       82 GETTABLE                         R1 R0 R2
       83 JUMPIFNOT                        R1 ; [+1]
       84 RETURN                           R0 1
       85 GETIMPORT                        R1 K23 [table.clone]
       87 MOVE                             R2 R0
       88 CALL                             R1 1 1
       89 GETUPVAL                         R2 1
       90 DUPTABLE                         R3 K24 [{"messages"}]
       91 NEWTABLE                         R4 0 0
       93 SETTABLEKS                       R4 R3 K16 ["messages"]
       95 SETTABLE                         R3 R1 R2
       96 RETURN                           R1 1

PROTO_1:
        0 JUMPIFNOTEQKNIL                  R0 ; [+2]
        2 RETURN                           R0 0
        3 GETUPVAL                         R1 0
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 CAPTURE                          UPVAL U4
       10 CALL                             R1 1 0
       11 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["Context"]
        6 CALL                             R0 1 1
        7 GETTABLEKS                       R1 R0 K2 ["setConversation"]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R2 R3 K3 ["useCallback"]
       12 NEWCLOSURE                       R3 P0
       13 CAPTURE                          VAL R1
       14 CAPTURE                          UPVAL U2
       15 CAPTURE                          UPVAL U3
       16 CAPTURE                          UPVAL U4
       17 CAPTURE                          UPVAL U5
       18 NEWTABLE                         R4 0 1
       20 MOVE                             R5 R1
       21 SETLIST                          R4 R5 1 [1]
       23 CALL                             R2 2 -1
       24 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Components"]
       11 GETTABLEKS                       R3 R4 K7 ["Contexts"]
       13 GETTABLEKS                       R2 R3 K8 ["ConversationContext"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R4 R0 K9 ["Parent"]
       20 GETTABLEKS                       R3 R4 K10 ["React"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K11 ["Types"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K12 ["Util"]
       32 GETTABLEKS                       R5 R6 K13 ["clonePath"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R7 R0 K12 ["Util"]
       39 GETTABLEKS                       R6 R7 K14 ["markDirty"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R8 R0 K12 ["Util"]
       46 GETTABLEKS                       R7 R8 K15 ["updateThreadTimestamp"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R9 R0 K16 ["Flags"]
       53 GETTABLEKS                       R8 R9 K17 ["FFlagAssistantMultipleChatPersistence"]
       55 CALL                             R7 1 1
       56 DUPCLOSURE                       R8 K18 [PROTO_2]
       57 CAPTURE                          VAL R2
       58 CAPTURE                          VAL R1
       59 CAPTURE                          VAL R7
       60 CAPTURE                          VAL R4
       61 CAPTURE                          VAL R6
       62 CAPTURE                          VAL R5
       63 RETURN                           R8 1
