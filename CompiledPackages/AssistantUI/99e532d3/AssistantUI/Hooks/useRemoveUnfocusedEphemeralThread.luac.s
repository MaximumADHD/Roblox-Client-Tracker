PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 JUMPIFNOTEQ                      R0 R1 ; [+2]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 2
        6 GETUPVAL                         R1 0
        7 CALL                             R0 1 0
        8 GETUPVAL                         R2 3
        9 GETTABLEKS                       R1 R2 K0 ["threads"]
       11 GETUPVAL                         R2 1
       12 GETTABLE                         R0 R1 R2
       13 JUMPIFNOT                        R0 ; [+6]
       14 GETTABLEKS                       R1 R0 K1 ["ephemeral"]
       16 JUMPIFNOT                        R1 ; [+3]
       17 GETUPVAL                         R1 4
       18 GETUPVAL                         R2 1
       19 CALL                             R1 1 0
       20 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 FASTCALL2K                       ASSERT R1 K0 ; [+4]
        4 LOADK                            R2 K0 ["useRemoveUnfocusedEphemeralThread is only available when multiple chat support is enabled"]
        5 GETIMPORT                        R0 K2 [assert]
        7 CALL                             R0 2 0
        8 GETUPVAL                         R0 1
        9 CALL                             R0 0 1
       10 GETUPVAL                         R2 2
       11 GETTABLEKS                       R1 R2 K3 ["useContext"]
       13 GETUPVAL                         R3 3
       14 GETTABLEKS                       R2 R3 K4 ["Context"]
       16 CALL                             R1 1 1
       17 GETTABLEKS                       R2 R1 K5 ["threadId"]
       19 GETUPVAL                         R3 4
       20 CALL                             R3 0 1
       21 GETUPVAL                         R5 2
       22 GETTABLEKS                       R4 R5 K6 ["useState"]
       24 MOVE                             R5 R2
       25 CALL                             R4 1 2
       26 GETUPVAL                         R7 2
       27 GETTABLEKS                       R6 R7 K7 ["useEffect"]
       29 NEWCLOSURE                       R7 P0
       30 CAPTURE                          VAL R2
       31 CAPTURE                          VAL R4
       32 CAPTURE                          VAL R5
       33 CAPTURE                          VAL R0
       34 CAPTURE                          VAL R3
       35 NEWTABLE                         R8 0 4
       37 MOVE                             R9 R2
       38 MOVE                             R10 R4
       39 MOVE                             R11 R0
       40 MOVE                             R12 R3
       41 SETLIST                          R8 R9 4 [1]
       43 CALL                             R6 2 0
       44 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R5 K9 ["Contexts"]
       20 GETTABLEKS                       R3 R4 K10 ["ThreadIdContext"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R5 R0 K11 ["Hooks"]
       27 GETTABLEKS                       R4 R5 K12 ["useConversation"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R6 R0 K11 ["Hooks"]
       34 GETTABLEKS                       R5 R6 K13 ["useRemoveThread"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R7 R0 K14 ["Flags"]
       41 GETTABLEKS                       R6 R7 K15 ["FFlagAssistantMultipleChatSupport"]
       43 CALL                             R5 1 1
       44 DUPCLOSURE                       R6 K16 [PROTO_1]
       45 CAPTURE                          VAL R5
       46 CAPTURE                          VAL R3
       47 CAPTURE                          VAL R1
       48 CAPTURE                          VAL R2
       49 CAPTURE                          VAL R4
       50 RETURN                           R6 1
