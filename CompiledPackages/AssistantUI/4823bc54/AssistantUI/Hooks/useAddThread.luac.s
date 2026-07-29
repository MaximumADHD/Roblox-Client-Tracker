PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["threads"]
        2 GETUPVAL                         R3 0
        3 GETTABLE                         R1 R2 R3
        4 JUMPIFNOT                        R1 ; [+1]
        5 RETURN                           R0 1
        6 NEWTABLE                         R1 0 1
        8 LOADK                            R2 K0 ["threads"]
        9 SETLIST                          R1 R2 1 [1]
       11 GETUPVAL                         R2 1
       12 MOVE                             R3 R0
       13 MOVE                             R4 R1
       14 CALL                             R2 2 4
       15 JUMPIF                           R2 ; [+19]
       16 GETIMPORT                        R6 K2 [warn]
       18 LOADK                            R7 K3 ["Failed to clone path for adding thread:"]
       19 FASTCALL1                        TABLE_UNPACK R1 ; [+3]
       20 MOVE                             R9 R1
       21 GETIMPORT                        R8 K6 [table.unpack]
       23 CALL                             R8 1 -1
       24 CALL                             R6 -1 0
       25 GETIMPORT                        R6 K2 [warn]
       27 LOADK                            R8 K7 ["Failed at key: %*"]
       28 MOVE                             R10 R5
       29 NAMECALL                         R8 R8 K8 ["format"]
       31 CALL                             R8 2 1
       32 MOVE                             R7 R8
       33 CALL                             R6 1 0
       34 RETURN                           R0 1
       35 DUPTABLE                         R6 K30 [{["threadId"], ["createdAt"] = -1, ["updatedAt"] = -1, ["ephemeral"] = True, ["isDirty"] = False, ["isDeleted"] = , ["lastActivityAt"] = -1, ["lastViewedAt"] = -1, ["title"] = "", ["isPinned"] = False, ["messages"], ["messageLoadState"], ["messagePageState"] = , ["messageCountAdded"] = 0, ["messageCountLoaded"] = 0}]
       36 GETUPVAL                         R7 0
       37 SETTABLEKS                       R7 R6 K9 ["threadId"]
       39 NEWTABLE                         R7 0 0
       41 SETTABLEKS                       R7 R6 K24 ["messages"]
       43 GETUPVAL                         R7 2
       44 GETTABLEKS                       R7 R7 K31 ["PersistenceLoadStates"]
       46 GETTABLEKS                       R7 R7 K32 ["Disabled"]
       48 SETTABLEKS                       R7 R6 K25 ["messageLoadState"]
       50 GETUPVAL                         R7 3
       51 NEWTABLE                         R8 0 1
       53 MOVE                             R9 R6
       54 SETLIST                          R8 R9 1 [1]
       56 CALL                             R7 1 0
       57 GETUPVAL                         R7 4
       58 NEWTABLE                         R8 0 1
       60 MOVE                             R9 R6
       61 SETLIST                          R8 R9 1 [1]
       63 CALL                             R7 1 0
       64 GETUPVAL                         R7 5
       65 NEWTABLE                         R8 0 1
       67 MOVE                             R9 R6
       68 SETLIST                          R8 R9 1 [1]
       70 CALL                             R7 1 0
       71 GETUPVAL                         R7 0
       72 SETTABLE                         R6 R4 R7
       73 RETURN                           R3 1

PROTO_1:
        0 JUMPIFNOTEQKNIL                  R0 ; [+2]
        2 RETURN                           R0 0
        3 GETUPVAL                         R1 0
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 CAPTURE                          UPVAL U4
       10 CAPTURE                          UPVAL U5
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useContext"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["Context"]
        6 CALL                             R0 1 1
        7 GETTABLEKS                       R1 R0 K2 ["setConversation"]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K3 ["useCallback"]
       12 NEWCLOSURE                       R3 P0
       13 CAPTURE                          VAL R1
       14 CAPTURE                          UPVAL U2
       15 CAPTURE                          UPVAL U3
       16 CAPTURE                          UPVAL U4
       17 CAPTURE                          UPVAL U5
       18 CAPTURE                          UPVAL U6
       19 NEWTABLE                         R4 0 1
       21 MOVE                             R5 R1
       22 SETLIST                          R4 R5 1 [1]
       24 CALL                             R2 2 -1
       25 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["Contexts"]
       13 GETTABLEKS                       R2 R2 K8 ["ConversationContext"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Parent"]
       20 GETTABLEKS                       R3 R3 K10 ["React"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K11 ["Types"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K12 ["Util"]
       32 GETTABLEKS                       R5 R5 K13 ["clonePath"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K12 ["Util"]
       39 GETTABLEKS                       R6 R6 K14 ["setCreatedAt"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K12 ["Util"]
       46 GETTABLEKS                       R7 R7 K15 ["setLastActivityAt"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K12 ["Util"]
       53 GETTABLEKS                       R8 R8 K16 ["setUpdatedAt"]
       55 CALL                             R7 1 1
       56 DUPCLOSURE                       R8 K17 [PROTO_2]
       57 CAPTURE                          VAL R2
       58 CAPTURE                          VAL R1
       59 CAPTURE                          VAL R4
       60 CAPTURE                          VAL R3
       61 CAPTURE                          VAL R5
       62 CAPTURE                          VAL R7
       63 CAPTURE                          VAL R6
       64 RETURN                           R8 1
