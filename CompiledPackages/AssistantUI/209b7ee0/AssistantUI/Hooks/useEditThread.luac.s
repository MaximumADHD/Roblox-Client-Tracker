PROTO_0:
        0 NEWTABLE                         R1 0 2
        2 LOADK                            R2 K0 ["threads"]
        3 GETUPVAL                         R3 0
        4 SETLIST                          R1 R2 2 [1]
        6 GETUPVAL                         R2 1
        7 MOVE                             R3 R0
        8 MOVE                             R4 R1
        9 CALL                             R2 2 4
       10 JUMPIF                           R2 ; [+19]
       11 GETIMPORT                        R6 K2 [warn]
       13 LOADK                            R7 K3 ["Failed to clone path for editing thread:"]
       14 FASTCALL1                        TABLE_UNPACK R1 ; [+3]
       15 MOVE                             R9 R1
       16 GETIMPORT                        R8 K6 [table.unpack]
       18 CALL                             R8 1 -1
       19 CALL                             R6 -1 0
       20 GETIMPORT                        R6 K2 [warn]
       22 LOADK                            R8 K7 ["Failed at key: %*"]
       23 MOVE                             R10 R5
       24 NAMECALL                         R8 R8 K8 ["format"]
       26 CALL                             R8 2 1
       27 MOVE                             R7 R8
       28 CALL                             R6 1 0
       29 RETURN                           R0 1
       30 GETUPVAL                         R6 2
       31 MOVE                             R7 R4
       32 CALL                             R6 1 1
       33 GETTABLEKS                       R7 R3 K0 ["threads"]
       35 GETUPVAL                         R8 0
       36 SETTABLE                         R6 R7 R8
       37 GETTABLEKS                       R7 R6 K9 ["ephemeral"]
       39 JUMPIF                           R7 ; [+6]
       40 GETUPVAL                         R7 3
       41 MOVE                             R8 R3
       42 CALL                             R7 1 0
       43 GETUPVAL                         R7 3
       44 MOVE                             R8 R6
       45 CALL                             R7 1 0
       46 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          VAL R1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R2 1 0
        7 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 FASTCALL2K                       ASSERT R1 K0 ; [+4]
        4 LOADK                            R2 K0 ["useEditThread is only available when multiple chat support is enabled"]
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
       21 CAPTURE                          VAL R1
       22 CAPTURE                          UPVAL U3
       23 CAPTURE                          UPVAL U4
       24 NEWTABLE                         R4 0 1
       26 MOVE                             R5 R1
       27 SETLIST                          R4 R5 1 [1]
       29 CALL                             R2 2 -1
       30 RETURN                           R2 -1

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
       44 GETTABLEKS                       R8 R0 K15 ["Flags"]
       46 GETTABLEKS                       R7 R8 K16 ["FFlagAssistantMultipleChatPersistence"]
       48 CALL                             R6 1 1
       49 DUPCLOSURE                       R7 K17 [PROTO_2]
       50 CAPTURE                          VAL R6
       51 CAPTURE                          VAL R2
       52 CAPTURE                          VAL R1
       53 CAPTURE                          VAL R4
       54 CAPTURE                          VAL R5
       55 RETURN                           R7 1
