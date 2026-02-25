PROTO_0:
        0 LOADNIL                          R3
        1 GETUPVAL                         R4 0
        2 CALL                             R4 0 1
        3 JUMPIFNOT                        R4 ; [+4]
        4 GETTABLEKS                       R4 R0 K0 ["threads"]
        6 GETTABLE                         R3 R4 R1
        7 JUMP                             ; [+4]
        8 MOVE                             R4 R1
        9 JUMPIFNOT                        R4 ; [+1]
       10 GETTABLE                         R4 R0 R1
       11 MOVE                             R3 R4
       12 JUMPIFNOT                        R3 ; [+3]
       13 GETTABLEKS                       R4 R3 K1 ["messages"]
       15 JUMPIF                           R4 ; [+1]
       16 RETURN                           R0 0
       17 LOADNIL                          R4
       18 GETTABLEKS                       R5 R3 K1 ["messages"]
       20 LOADNIL                          R6
       21 LOADNIL                          R7
       22 FORGPREP                         R5
       23 JUMPIFNOT                        R4 ; [+6]
       24 GETTABLEKS                       R10 R9 K2 ["LayoutOrder"]
       26 GETTABLEKS                       R11 R4 K2 ["LayoutOrder"]
       28 JUMPIFNOTLT                      R11 R10 ; [+2]
       30 MOVE                             R4 R9
       31 FORGLOOP                         R5 2 ; [-9]
       33 JUMPIFNOT                        R4 ; [+6]
       34 GETTABLEKS                       R5 R4 K3 ["role"]
       36 GETTABLEKS                       R6 R2 K4 ["Role"]
       38 JUMPIFEQ                         R5 R6 ; [+2]
       40 RETURN                           R0 0
       41 GETTABLEKS                       R5 R4 K5 ["messageId"]
       43 RETURN                           R5 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 LENGTH                           R0 R1
        2 JUMPIFNOTEQKN                    R0 K0 [0] ; [+2]
        4 RETURN                           R0 0
        5 GETIMPORT                        R0 K3 [table.clone]
        7 GETUPVAL                         R1 0
        8 CALL                             R0 1 1
        9 GETIMPORT                        R1 K5 [table.remove]
       11 MOVE                             R2 R0
       12 LOADN                            R3 1
       13 CALL                             R1 2 1
       14 FASTCALL2K                       ASSERT R1 K6 ; [+5]
       16 MOVE                             R3 R1
       17 LOADK                            R4 K6 ["Callback should not be nil"]
       18 GETIMPORT                        R2 K8 [assert]
       20 CALL                             R2 2 0
       21 GETUPVAL                         R2 1
       22 GETUPVAL                         R3 2
       23 GETUPVAL                         R4 3
       24 MOVE                             R5 R1
       25 CALL                             R2 3 1
       26 JUMPIF                           R2 ; [+8]
       27 GETUPVAL                         R3 4
       28 DUPTABLE                         R4 K10 [{"role"}]
       29 GETTABLEKS                       R5 R1 K11 ["Role"]
       31 SETTABLEKS                       R5 R4 K9 ["role"]
       33 CALL                             R3 1 1
       34 MOVE                             R2 R3
       35 FASTCALL2K                       ASSERT R2 K12 ; [+5]
       37 MOVE                             R4 R2
       38 LOADK                            R5 K12 ["Message ID should not be nil"]
       39 GETIMPORT                        R3 K8 [assert]
       41 CALL                             R3 2 0
       42 GETUPVAL                         R3 5
       43 MOVE                             R4 R0
       44 CALL                             R3 1 0
       45 GETIMPORT                        R3 K15 [task.spawn]
       47 GETTABLEKS                       R4 R1 K16 ["Callback"]
       49 MOVE                             R5 R2
       50 CALL                             R3 2 0
       51 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 DUPTABLE                         R4 K5 [{"Role", "Callback"}]
        5 GETUPVAL                         R5 0
        6 SETTABLEKS                       R5 R4 K3 ["Role"]
        8 GETUPVAL                         R5 1
        9 SETTABLEKS                       R5 R4 K4 ["Callback"]
       11 FASTCALL2                        TABLE_INSERT R1 R4 ; [+4]
       13 MOVE                             R3 R1
       14 GETIMPORT                        R2 K7 [table.insert]
       16 CALL                             R2 2 0
       17 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 CALL                             R2 1 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["Context"]
        6 CALL                             R0 1 1
        7 GETTABLEKS                       R1 R0 K2 ["conversation"]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R2 R3 K0 ["useContext"]
       12 GETUPVAL                         R4 2
       13 GETTABLEKS                       R3 R4 K1 ["Context"]
       15 CALL                             R2 1 1
       16 GETTABLEKS                       R3 R2 K3 ["threadId"]
       18 GETUPVAL                         R4 3
       19 CALL                             R4 0 1
       20 GETUPVAL                         R6 0
       21 GETTABLEKS                       R5 R6 K4 ["useState"]
       23 NEWTABLE                         R6 0 0
       25 CALL                             R5 1 2
       26 GETUPVAL                         R8 0
       27 GETTABLEKS                       R7 R8 K5 ["useEffect"]
       29 NEWCLOSURE                       R8 P0
       30 CAPTURE                          VAL R5
       31 CAPTURE                          UPVAL U4
       32 CAPTURE                          VAL R1
       33 CAPTURE                          VAL R3
       34 CAPTURE                          VAL R4
       35 CAPTURE                          VAL R6
       36 NEWTABLE                         R9 0 4
       38 MOVE                             R10 R1
       39 MOVE                             R11 R3
       40 MOVE                             R12 R5
       41 MOVE                             R13 R4
       42 SETLIST                          R9 R10 4 [1]
       44 CALL                             R7 2 0
       45 GETUPVAL                         R8 0
       46 GETTABLEKS                       R7 R8 K6 ["useCallback"]
       48 NEWCLOSURE                       R8 P1
       49 CAPTURE                          VAL R6
       50 NEWTABLE                         R9 0 0
       52 CALL                             R7 2 -1
       53 RETURN                           R7 -1

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
       34 GETTABLEKS                       R5 R0 K12 ["Types"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R7 R0 K13 ["Hooks"]
       41 GETTABLEKS                       R6 R7 K14 ["useAddMessage"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R8 R0 K15 ["Flags"]
       48 GETTABLEKS                       R7 R8 K16 ["FFlagAssistantMultipleChatSupport"]
       50 CALL                             R6 1 1
       51 DUPCLOSURE                       R7 K17 [PROTO_0]
       52 CAPTURE                          VAL R6
       53 DUPCLOSURE                       R8 K18 [PROTO_4]
       54 CAPTURE                          VAL R2
       55 CAPTURE                          VAL R1
       56 CAPTURE                          VAL R3
       57 CAPTURE                          VAL R5
       58 CAPTURE                          VAL R7
       59 RETURN                           R8 1
