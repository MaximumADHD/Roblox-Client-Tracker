PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 JUMPIFNOTEQ                      R0 R1 ; [+2]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 2
        6 GETUPVAL                         R1 0
        7 CALL                             R0 1 0
        8 GETUPVAL                         R1 3
        9 GETTABLEKS                       R1 R1 K0 ["threads"]
       11 GETUPVAL                         R2 1
       12 GETTABLE                         R0 R1 R2
       13 JUMPIF                           R0 ; [+1]
       14 RETURN                           R0 0
       15 GETUPVAL                         R1 4
       16 GETTABLEKS                       R1 R1 K1 ["getThreadMetadata"]
       18 GETUPVAL                         R2 1
       19 CALL                             R1 1 1
       20 GETTABLEKS                       R2 R1 K2 ["isNewThread"]
       22 JUMPIFNOT                        R2 ; [+3]
       23 GETUPVAL                         R2 5
       24 GETUPVAL                         R3 1
       25 CALL                             R2 1 0
       26 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 FASTCALL2K                       ASSERT R1 K0 ; [+4]
        4 LOADK                            R2 K0 ["useRemoveUnfocusedNewThread is only available when multiple chat support is enabled"]
        5 GETIMPORT                        R0 K2 [assert]
        7 CALL                             R0 2 0
        8 GETUPVAL                         R0 1
        9 CALL                             R0 0 1
       10 GETUPVAL                         R1 2
       11 GETTABLEKS                       R1 R1 K3 ["useContext"]
       13 GETUPVAL                         R2 3
       14 GETTABLEKS                       R2 R2 K4 ["Context"]
       16 CALL                             R1 1 1
       17 GETTABLEKS                       R2 R1 K5 ["threadId"]
       19 GETUPVAL                         R3 4
       20 CALL                             R3 0 1
       21 GETUPVAL                         R4 2
       22 GETTABLEKS                       R4 R4 K6 ["useState"]
       24 MOVE                             R5 R2
       25 CALL                             R4 1 2
       26 GETUPVAL                         R6 2
       27 GETTABLEKS                       R6 R6 K7 ["useEffect"]
       29 NEWCLOSURE                       R7 P0
       30 CAPTURE                          VAL R2
       31 CAPTURE                          VAL R4
       32 CAPTURE                          VAL R5
       33 CAPTURE                          VAL R0
       34 CAPTURE                          UPVAL U5
       35 CAPTURE                          VAL R3
       36 NEWTABLE                         R8 0 4
       38 MOVE                             R9 R2
       39 MOVE                             R10 R4
       40 MOVE                             R11 R0
       41 MOVE                             R12 R3
       42 SETLIST                          R8 R9 4 [1]
       44 CALL                             R6 2 0
       45 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["ContentIdGenerator"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R3 K9 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Components"]
       25 GETTABLEKS                       R4 R4 K11 ["Contexts"]
       27 GETTABLEKS                       R4 R4 K12 ["ThreadIdContext"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K13 ["Hooks"]
       34 GETTABLEKS                       R5 R5 K14 ["useConversation"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K13 ["Hooks"]
       41 GETTABLEKS                       R6 R6 K15 ["useRemoveThread"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K16 ["Flags"]
       48 GETTABLEKS                       R7 R7 K17 ["FFlagAssistantMultipleChatPersistence"]
       50 CALL                             R6 1 1
       51 DUPCLOSURE                       R7 K18 [PROTO_1]
       52 CAPTURE                          VAL R6
       53 CAPTURE                          VAL R4
       54 CAPTURE                          VAL R2
       55 CAPTURE                          VAL R3
       56 CAPTURE                          VAL R5
       57 CAPTURE                          VAL R1
       58 RETURN                           R7 1
