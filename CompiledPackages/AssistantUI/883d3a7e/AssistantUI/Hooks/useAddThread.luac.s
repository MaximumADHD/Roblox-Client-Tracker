PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+68]
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
       38 DUPTABLE                         R6 K16 [{"threadId", "ephemeral", "title", "createdAt", "updatedAt", "isPinned", "messages"}]
       39 GETUPVAL                         R7 1
       40 SETTABLEKS                       R7 R6 K9 ["threadId"]
       42 LOADB                            R7 1
       43 SETTABLEKS                       R7 R6 K10 ["ephemeral"]
       45 LOADK                            R7 K17 [""]
       46 SETTABLEKS                       R7 R6 K11 ["title"]
       48 LOADN                            R7 0
       49 SETTABLEKS                       R7 R6 K12 ["createdAt"]
       51 LOADN                            R7 0
       52 SETTABLEKS                       R7 R6 K13 ["updatedAt"]
       54 LOADB                            R7 0
       55 SETTABLEKS                       R7 R6 K14 ["isPinned"]
       57 NEWTABLE                         R7 0 0
       59 SETTABLEKS                       R7 R6 K15 ["messages"]
       61 GETUPVAL                         R7 3
       62 MOVE                             R8 R6
       63 DUPTABLE                         R9 K19 [{"setCreatedAt"}]
       64 LOADB                            R10 1
       65 SETTABLEKS                       R10 R9 K18 ["setCreatedAt"]
       67 CALL                             R7 2 0
       68 GETUPVAL                         R7 1
       69 SETTABLE                         R6 R4 R7
       70 RETURN                           R3 1
       71 GETUPVAL                         R2 1
       72 GETTABLE                         R1 R0 R2
       73 JUMPIFNOT                        R1 ; [+1]
       74 RETURN                           R0 1
       75 GETIMPORT                        R1 K21 [table.clone]
       77 MOVE                             R2 R0
       78 CALL                             R1 1 1
       79 GETUPVAL                         R2 1
       80 DUPTABLE                         R3 K22 [{"messages"}]
       81 NEWTABLE                         R4 0 0
       83 SETTABLEKS                       R4 R3 K15 ["messages"]
       85 SETTABLE                         R3 R1 R2
       86 RETURN                           R1 1

PROTO_1:
        0 JUMPIFNOTEQKNIL                  R0 ; [+2]
        2 RETURN                           R0 0
        3 GETUPVAL                         R1 0
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

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
       17 NEWTABLE                         R4 0 1
       19 MOVE                             R5 R1
       20 SETLIST                          R4 R5 1 [1]
       22 CALL                             R2 2 -1
       23 RETURN                           R2 -1

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
       39 GETTABLEKS                       R6 R7 K14 ["updateThreadTimestamp"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R8 R0 K15 ["Flags"]
       46 GETTABLEKS                       R7 R8 K16 ["FFlagAssistantMultipleChatSupport"]
       48 CALL                             R6 1 1
       49 DUPCLOSURE                       R7 K17 [PROTO_2]
       50 CAPTURE                          VAL R2
       51 CAPTURE                          VAL R1
       52 CAPTURE                          VAL R6
       53 CAPTURE                          VAL R4
       54 CAPTURE                          VAL R5
       55 RETURN                           R7 1
