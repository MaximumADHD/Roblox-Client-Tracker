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
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R0 R1 K3 ["useContext"]
       11 GETUPVAL                         R2 2
       12 GETTABLEKS                       R1 R2 K4 ["Context"]
       14 CALL                             R0 1 1
       15 GETTABLEKS                       R1 R0 K5 ["conversation"]
       17 GETUPVAL                         R3 1
       18 GETTABLEKS                       R2 R3 K3 ["useContext"]
       20 GETUPVAL                         R4 3
       21 GETTABLEKS                       R3 R4 K4 ["Context"]
       23 CALL                             R2 1 1
       24 GETTABLEKS                       R3 R2 K6 ["threadId"]
       26 GETUPVAL                         R4 4
       27 CALL                             R4 0 1
       28 GETUPVAL                         R6 1
       29 GETTABLEKS                       R5 R6 K7 ["useState"]
       31 MOVE                             R6 R3
       32 CALL                             R5 1 2
       33 GETUPVAL                         R8 1
       34 GETTABLEKS                       R7 R8 K8 ["useEffect"]
       36 NEWCLOSURE                       R8 P0
       37 CAPTURE                          VAL R3
       38 CAPTURE                          VAL R5
       39 CAPTURE                          VAL R6
       40 CAPTURE                          VAL R1
       41 CAPTURE                          VAL R4
       42 NEWTABLE                         R9 0 4
       44 MOVE                             R10 R3
       45 MOVE                             R11 R5
       46 MOVE                             R12 R1
       47 MOVE                             R13 R4
       48 SETLIST                          R9 R10 4 [1]
       50 CALL                             R7 2 0
       51 RETURN                           R0 0

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
       25 GETTABLEKS                       R6 R0 K6 ["Components"]
       27 GETTABLEKS                       R5 R6 K7 ["Contexts"]
       29 GETTABLEKS                       R4 R5 K11 ["ThreadIdContext"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R6 R0 K12 ["Hooks"]
       36 GETTABLEKS                       R5 R6 K13 ["useRemoveThread"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R7 R0 K14 ["Flags"]
       43 GETTABLEKS                       R6 R7 K15 ["FFlagAssistantMultipleChatSupport"]
       45 CALL                             R5 1 1
       46 DUPCLOSURE                       R6 K16 [PROTO_1]
       47 CAPTURE                          VAL R5
       48 CAPTURE                          VAL R2
       49 CAPTURE                          VAL R1
       50 CAPTURE                          VAL R3
       51 CAPTURE                          VAL R4
       52 RETURN                           R6 1
