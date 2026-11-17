PROTO_0:
        0 GETUPVAL                         R1 0
        1 LENGTH                           R0 R1
        2 JUMPIFNOTEQKN                    R0 K0 [0] ; [+2]
        4 RETURN                           R0 0
        5 LOADNIL                          R0
        6 GETUPVAL                         R1 0
        7 LOADNIL                          R2
        8 LOADNIL                          R3
        9 FORGPREP                         R1
       10 GETUPVAL                         R7 1
       11 GETTABLEKS                       R7 R7 K1 ["threads"]
       13 GETTABLEKS                       R8 R5 K2 ["threadId"]
       15 JUMPIF                           R8 ; [+1]
       16 GETUPVAL                         R8 2
       17 GETTABLE                         R6 R7 R8
       18 JUMPIFNOT                        R6 ; [+2]
       19 MOVE                             R0 R4
       20 JUMP                             ; [+2]
       21 FORGLOOP                         R1 2 ; [-12]
       23 JUMPIF                           R0 ; [+1]
       24 RETURN                           R0 0
       25 GETIMPORT                        R1 K5 [table.clone]
       27 GETUPVAL                         R2 0
       28 CALL                             R1 1 1
       29 GETIMPORT                        R2 K7 [table.remove]
       31 MOVE                             R3 R1
       32 MOVE                             R4 R0
       33 CALL                             R2 2 1
       34 FASTCALL2K                       ASSERT R2 K8 ; [+5]
       36 MOVE                             R4 R2
       37 LOADK                            R5 K8 ["useGetThread: nextCallback is nil"]
       38 GETIMPORT                        R3 K10 [assert]
       40 CALL                             R3 2 0
       41 GETTABLEKS                       R3 R2 K2 ["threadId"]
       43 JUMPIF                           R3 ; [+1]
       44 GETUPVAL                         R3 2
       45 GETUPVAL                         R5 1
       46 GETTABLEKS                       R5 R5 K1 ["threads"]
       48 GETTABLE                         R4 R5 R3
       49 JUMPIF                           R4 ; [+1]
       50 RETURN                           R0 0
       51 GETUPVAL                         R5 3
       52 MOVE                             R6 R1
       53 CALL                             R5 1 0
       54 GETIMPORT                        R5 K13 [task.spawn]
       56 GETTABLEKS                       R6 R2 K14 ["callback"]
       58 MOVE                             R7 R4
       59 CALL                             R5 2 0
       60 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 DUPTABLE                         R4 K5 [{"callback", "threadId"}]
        5 GETUPVAL                         R5 0
        6 SETTABLEKS                       R5 R4 K3 ["callback"]
        8 GETUPVAL                         R5 1
        9 SETTABLEKS                       R5 R4 K4 ["threadId"]
       11 FASTCALL2                        TABLE_INSERT R1 R4 ; [+4]
       13 MOVE                             R3 R1
       14 GETIMPORT                        R2 K7 [table.insert]
       16 CALL                             R2 2 0
       17 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 CALL                             R2 1 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K0 ["useContext"]
        5 GETUPVAL                         R2 2
        6 GETTABLEKS                       R2 R2 K1 ["Context"]
        8 CALL                             R1 1 1
        9 GETTABLEKS                       R2 R1 K2 ["threadId"]
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R3 R3 K3 ["useState"]
       14 NEWTABLE                         R4 0 0
       16 CALL                             R3 1 2
       17 GETUPVAL                         R5 1
       18 GETTABLEKS                       R5 R5 K4 ["useEffect"]
       20 NEWCLOSURE                       R6 P0
       21 CAPTURE                          VAL R3
       22 CAPTURE                          VAL R0
       23 CAPTURE                          VAL R2
       24 CAPTURE                          VAL R4
       25 NEWTABLE                         R7 0 3
       27 MOVE                             R8 R0
       28 MOVE                             R9 R2
       29 MOVE                             R10 R3
       30 SETLIST                          R7 R8 3 [1]
       32 CALL                             R5 2 0
       33 GETUPVAL                         R5 1
       34 GETTABLEKS                       R5 R5 K5 ["useCallback"]
       36 NEWCLOSURE                       R6 P1
       37 CAPTURE                          VAL R4
       38 NEWTABLE                         R7 0 0
       40 CALL                             R5 2 -1
       41 RETURN                           R5 -1

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
       32 GETTABLEKS                       R5 R5 K13 ["useConversation"]
       34 CALL                             R4 1 1
       35 DUPCLOSURE                       R5 K14 [PROTO_3]
       36 CAPTURE                          VAL R4
       37 CAPTURE                          VAL R1
       38 CAPTURE                          VAL R2
       39 RETURN                           R5 1
