PROTO_0:
        0 NEWTABLE                         R1 0 4
        2 LOADK                            R2 K0 ["threads"]
        3 GETUPVAL                         R3 0
        4 LOADK                            R4 K1 ["messages"]
        5 GETUPVAL                         R5 1
        6 GETTABLEKS                       R5 R5 K2 ["messageId"]
        8 SETLIST                          R1 R2 4 [1]
       10 GETUPVAL                         R2 2
       11 MOVE                             R3 R0
       12 MOVE                             R4 R1
       13 CALL                             R2 2 4
       14 JUMPIF                           R2 ; [+19]
       15 GETIMPORT                        R6 K4 [warn]
       17 LOADK                            R7 K5 ["Failed to clone path for editing message:"]
       18 FASTCALL1                        TABLE_UNPACK R1 ; [+3]
       19 MOVE                             R9 R1
       20 GETIMPORT                        R8 K8 [table.unpack]
       22 CALL                             R8 1 -1
       23 CALL                             R6 -1 0
       24 GETIMPORT                        R6 K4 [warn]
       26 LOADK                            R8 K9 ["Failed at key: %*"]
       27 MOVE                             R10 R5
       28 NAMECALL                         R8 R8 K10 ["format"]
       30 CALL                             R8 2 1
       31 MOVE                             R7 R8
       32 CALL                             R6 1 0
       33 RETURN                           R0 1
       34 GETUPVAL                         R6 1
       35 GETTABLEKS                       R6 R6 K11 ["transformFn"]
       37 MOVE                             R7 R4
       38 CALL                             R6 1 1
       39 JUMPIF                           R6 ; [+2]
       40 NEWTABLE                         R6 0 0
       42 GETTABLEKS                       R7 R6 K12 ["cancelTransform"]
       44 JUMPIFNOT                        R7 ; [+1]
       45 RETURN                           R0 1
       46 GETTABLEKS                       R7 R6 K13 ["rawTransformValues"]
       48 JUMPIF                           R7 ; [+20]
       49 GETTABLEKS                       R8 R3 K0 ["threads"]
       51 GETUPVAL                         R9 0
       52 GETTABLE                         R7 R8 R9
       53 GETUPVAL                         R8 3
       54 NEWTABLE                         R9 0 2
       56 MOVE                             R10 R7
       57 MOVE                             R11 R4
       58 SETLIST                          R9 R10 2 [1]
       60 CALL                             R8 1 0
       61 GETUPVAL                         R8 4
       62 NEWTABLE                         R9 0 2
       64 MOVE                             R10 R7
       65 MOVE                             R11 R4
       66 SETLIST                          R9 R10 2 [1]
       68 CALL                             R8 1 0
       69 RETURN                           R3 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["threadId"]
        2 JUMPIF                           R1 ; [+1]
        3 GETUPVAL                         R1 0
        4 GETUPVAL                         R2 1
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          VAL R1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          UPVAL U3
       10 CAPTURE                          UPVAL U4
       11 CALL                             R2 1 0
       12 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 FASTCALL2K                       ASSERT R1 K0 ; [+4]
        4 LOADK                            R2 K0 ["useEditMessage should only be used when FFlagAssistantMultipleChatPersistence is enabled"]
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
       24 GETTABLEKS                       R3 R2 K6 ["threadId"]
       26 GETUPVAL                         R4 1
       27 GETTABLEKS                       R4 R4 K7 ["useCallback"]
       29 NEWCLOSURE                       R5 P0
       30 CAPTURE                          VAL R3
       31 CAPTURE                          VAL R1
       32 CAPTURE                          UPVAL U4
       33 CAPTURE                          UPVAL U5
       34 CAPTURE                          UPVAL U6
       35 NEWTABLE                         R6 0 2
       37 MOVE                             R7 R1
       38 MOVE                             R8 R3
       39 SETLIST                          R6 R7 2 [1]
       41 CALL                             R4 2 -1
       42 RETURN                           R4 -1

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
       25 GETTABLEKS                       R4 R0 K6 ["Components"]
       27 GETTABLEKS                       R4 R4 K7 ["Contexts"]
       29 GETTABLEKS                       R4 R4 K11 ["ThreadIdContext"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K12 ["Types"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K13 ["Util"]
       41 GETTABLEKS                       R6 R6 K14 ["clonePath"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K13 ["Util"]
       48 GETTABLEKS                       R7 R7 K15 ["markDirty"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K13 ["Util"]
       55 GETTABLEKS                       R8 R8 K16 ["setUpdatedAt"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R9 R0 K17 ["Flags"]
       62 GETTABLEKS                       R9 R9 K18 ["FFlagAssistantMultipleChatPersistence"]
       64 CALL                             R8 1 1
       65 DUPCLOSURE                       R9 K19 [PROTO_2]
       66 CAPTURE                          VAL R8
       67 CAPTURE                          VAL R2
       68 CAPTURE                          VAL R1
       69 CAPTURE                          VAL R3
       70 CAPTURE                          VAL R5
       71 CAPTURE                          VAL R7
       72 CAPTURE                          VAL R6
       73 RETURN                           R9 1
