PROTO_0:
        0 GETTABLEKS                       R4 R0 K0 ["threads"]
        2 GETTABLE                         R3 R4 R1
        3 JUMPIF                           R3 ; [+1]
        4 RETURN                           R0 0
        5 LOADNIL                          R4
        6 GETTABLEKS                       R5 R3 K1 ["messages"]
        8 LOADNIL                          R6
        9 LOADNIL                          R7
       10 FORGPREP                         R5
       11 JUMPIFNOT                        R4 ; [+6]
       12 GETTABLEKS                       R10 R9 K2 ["LayoutOrder"]
       14 GETTABLEKS                       R11 R4 K2 ["LayoutOrder"]
       16 JUMPIFNOTLT                      R11 R10 ; [+2]
       18 MOVE                             R4 R9
       19 FORGLOOP                         R5 2 ; [-9]
       21 JUMPIFNOT                        R4 ; [+6]
       22 GETTABLEKS                       R5 R4 K3 ["role"]
       24 GETTABLEKS                       R6 R2 K4 ["Role"]
       26 JUMPIFEQ                         R5 R6 ; [+2]
       28 RETURN                           R0 0
       29 GETTABLEKS                       R5 R4 K5 ["messageId"]
       31 RETURN                           R5 1

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
       21 GETTABLEKS                       R2 R1 K9 ["ThreadId"]
       23 JUMPIF                           R2 ; [+1]
       24 GETUPVAL                         R2 1
       25 GETUPVAL                         R3 2
       26 GETUPVAL                         R4 3
       27 MOVE                             R5 R2
       28 MOVE                             R6 R1
       29 CALL                             R3 3 1
       30 JUMPIF                           R3 ; [+10]
       31 GETUPVAL                         R4 4
       32 DUPTABLE                         R5 K12 [{"role", "threadId"}]
       33 GETTABLEKS                       R6 R1 K13 ["Role"]
       35 SETTABLEKS                       R6 R5 K10 ["role"]
       37 SETTABLEKS                       R2 R5 K11 ["threadId"]
       39 CALL                             R4 1 1
       40 MOVE                             R3 R4
       41 FASTCALL2K                       ASSERT R3 K14 ; [+5]
       43 MOVE                             R5 R3
       44 LOADK                            R6 K14 ["Message ID should not be nil"]
       45 GETIMPORT                        R4 K8 [assert]
       47 CALL                             R4 2 0
       48 GETUPVAL                         R4 5
       49 MOVE                             R5 R0
       50 CALL                             R4 1 0
       51 GETIMPORT                        R4 K17 [task.spawn]
       53 GETTABLEKS                       R5 R1 K18 ["Callback"]
       55 MOVE                             R6 R3
       56 CALL                             R4 2 0
       57 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 DUPTABLE                         R4 K6 [{"Role", "Callback", "ThreadId"}]
        5 GETUPVAL                         R5 0
        6 SETTABLEKS                       R5 R4 K3 ["Role"]
        8 GETUPVAL                         R5 1
        9 SETTABLEKS                       R5 R4 K4 ["Callback"]
       11 GETUPVAL                         R5 2
       12 SETTABLEKS                       R5 R4 K5 ["ThreadId"]
       14 FASTCALL2                        TABLE_INSERT R1 R4 ; [+4]
       16 MOVE                             R3 R1
       17 GETIMPORT                        R2 K8 [table.insert]
       19 CALL                             R2 2 0
       20 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 NEWCLOSURE                       R4 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          VAL R2
        5 CALL                             R3 1 0
        6 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K0 ["useContext"]
        5 GETUPVAL                         R2 2
        6 GETTABLEKS                       R2 R2 K1 ["Context"]
        8 CALL                             R1 1 1
        9 GETTABLEKS                       R2 R1 K2 ["threadId"]
       11 GETUPVAL                         R3 3
       12 CALL                             R3 0 1
       13 GETUPVAL                         R4 1
       14 GETTABLEKS                       R4 R4 K3 ["useState"]
       16 NEWTABLE                         R5 0 0
       18 CALL                             R4 1 2
       19 GETUPVAL                         R6 1
       20 GETTABLEKS                       R6 R6 K4 ["useEffect"]
       22 NEWCLOSURE                       R7 P0
       23 CAPTURE                          VAL R4
       24 CAPTURE                          VAL R2
       25 CAPTURE                          UPVAL U4
       26 CAPTURE                          VAL R0
       27 CAPTURE                          VAL R3
       28 CAPTURE                          VAL R5
       29 NEWTABLE                         R8 0 4
       31 MOVE                             R9 R0
       32 MOVE                             R10 R2
       33 MOVE                             R11 R4
       34 MOVE                             R12 R3
       35 SETLIST                          R8 R9 4 [1]
       37 CALL                             R6 2 0
       38 GETUPVAL                         R6 1
       39 GETTABLEKS                       R6 R6 K5 ["useCallback"]
       41 NEWCLOSURE                       R7 P1
       42 CAPTURE                          VAL R5
       43 NEWTABLE                         R8 0 0
       45 CALL                             R6 2 -1
       46 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Components"]
       18 GETTABLEKS                       R3 R3 K9 ["Contexts"]
       20 GETTABLEKS                       R3 R3 K10 ["ThreadIdContext"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K11 ["Types"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K12 ["Hooks"]
       32 GETTABLEKS                       R5 R5 K13 ["useAddMessage"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K12 ["Hooks"]
       39 GETTABLEKS                       R6 R6 K14 ["useConversation"]
       41 CALL                             R5 1 1
       42 DUPCLOSURE                       R6 K15 [PROTO_0]
       43 DUPCLOSURE                       R7 K16 [PROTO_4]
       44 CAPTURE                          VAL R5
       45 CAPTURE                          VAL R1
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R4
       48 CAPTURE                          VAL R6
       49 RETURN                           R7 1
