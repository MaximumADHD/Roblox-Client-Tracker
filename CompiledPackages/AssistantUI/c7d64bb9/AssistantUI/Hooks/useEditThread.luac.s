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
       32 CALL                             R6 1 2
       33 GETTABLEKS                       R8 R3 K0 ["threads"]
       35 GETUPVAL                         R9 0
       36 SETTABLE                         R6 R8 R9
       37 JUMPIFNOT                        R7 ; [+3]
       38 GETTABLEKS                       R8 R7 K9 ["rawTransformValues"]
       40 JUMPIF                           R8 ; [+14]
       41 GETUPVAL                         R8 3
       42 NEWTABLE                         R9 0 1
       44 MOVE                             R10 R6
       45 SETLIST                          R9 R10 1 [1]
       47 CALL                             R8 1 0
       48 GETUPVAL                         R8 4
       49 NEWTABLE                         R9 0 1
       51 MOVE                             R10 R6
       52 SETLIST                          R9 R10 1 [1]
       54 CALL                             R8 1 0
       55 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          VAL R1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CALL                             R2 1 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 FASTCALL2K                       ASSERT R1 K0 ; [+4]
        4 LOADK                            R2 K0 ["useEditThread is only available when multiple chat support is enabled"]
        5 GETIMPORT                        R0 K2 [assert]
        7 CALL                             R0 2 0
        8 GETUPVAL                         R0 1
        9 GETTABLEKS                       R0 R0 K3 ["useContext"]
       11 GETUPVAL                         R1 2
       12 GETTABLEKS                       R1 R1 K4 ["Context"]
       14 CALL                             R0 1 1
       15 GETTABLEKS                       R1 R0 K5 ["setConversation"]
       17 GETUPVAL                         R2 1
       18 GETTABLEKS                       R2 R2 K6 ["useCallback"]
       20 NEWCLOSURE                       R3 P0
       21 CAPTURE                          VAL R1
       22 CAPTURE                          UPVAL U3
       23 CAPTURE                          UPVAL U4
       24 CAPTURE                          UPVAL U5
       25 NEWTABLE                         R4 0 1
       27 MOVE                             R5 R1
       28 SETLIST                          R4 R5 1 [1]
       30 CALL                             R2 2 -1
       31 RETURN                           R2 -1

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
       39 GETTABLEKS                       R6 R6 K14 ["markDirty"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K12 ["Util"]
       46 GETTABLEKS                       R7 R7 K15 ["setUpdatedAt"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K16 ["Flags"]
       53 GETTABLEKS                       R8 R8 K17 ["FFlagAssistantMultipleChatPersistence"]
       55 CALL                             R7 1 1
       56 DUPCLOSURE                       R8 K18 [PROTO_2]
       57 CAPTURE                          VAL R7
       58 CAPTURE                          VAL R2
       59 CAPTURE                          VAL R1
       60 CAPTURE                          VAL R4
       61 CAPTURE                          VAL R6
       62 CAPTURE                          VAL R5
       63 RETURN                           R8 1
