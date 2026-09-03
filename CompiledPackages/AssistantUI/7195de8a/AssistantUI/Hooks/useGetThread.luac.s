PROTO_0:
        0 GETUPVAL                         R1 0
        1 LENGTH                           R0 R1
        2 JUMPIFNOTEQKN                    R0 K0 [0] ; [+2]
        4 RETURN                           R0 0
        5 LOADNIL                          R0
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K1 ["FFlagAssistantExternalInterface"]
        9 JUMPIFNOT                        R1 ; [+20]
       10 GETUPVAL                         R1 0
       11 LOADNIL                          R2
       12 LOADNIL                          R3
       13 FORGPREP                         R1
       14 GETUPVAL                         R7 2
       15 GETTABLEKS                       R7 R7 K2 ["threads"]
       17 GETTABLEKS                       R8 R5 K3 ["threadId"]
       19 JUMPIF                           R8 ; [+1]
       20 GETUPVAL                         R8 3
       21 GETTABLE                         R6 R7 R8
       22 JUMPIFNOT                        R6 ; [+2]
       23 MOVE                             R0 R4
       24 JUMP                             ; [+2]
       25 FORGLOOP                         R1 2 ; [-12]
       27 JUMPIF                           R0 ; [+3]
       28 RETURN                           R0 0
       29 JUMP                             ; [+1]
       30 LOADN                            R0 1
       31 GETIMPORT                        R1 K6 [table.clone]
       33 GETUPVAL                         R2 0
       34 CALL                             R1 1 1
       35 GETIMPORT                        R2 K8 [table.remove]
       37 MOVE                             R3 R1
       38 MOVE                             R4 R0
       39 CALL                             R2 2 1
       40 FASTCALL2K                       ASSERT R2 K9 ; [+5]
       42 MOVE                             R4 R2
       43 LOADK                            R5 K9 ["useGetThread: nextCallback is nil"]
       44 GETIMPORT                        R3 K11 [assert]
       46 CALL                             R3 2 0
       47 GETTABLEKS                       R3 R2 K3 ["threadId"]
       49 JUMPIF                           R3 ; [+1]
       50 GETUPVAL                         R3 3
       51 GETUPVAL                         R5 2
       52 GETTABLEKS                       R5 R5 K2 ["threads"]
       54 GETTABLE                         R4 R5 R3
       55 JUMPIF                           R4 ; [+1]
       56 RETURN                           R0 0
       57 GETUPVAL                         R5 4
       58 MOVE                             R6 R1
       59 CALL                             R5 1 0
       60 GETIMPORT                        R5 K14 [task.spawn]
       62 GETTABLEKS                       R6 R2 K15 ["callback"]
       64 MOVE                             R7 R4
       65 CALL                             R5 2 0
       66 RETURN                           R0 0

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
       22 CAPTURE                          UPVAL U3
       23 CAPTURE                          VAL R0
       24 CAPTURE                          VAL R2
       25 CAPTURE                          VAL R4
       26 NEWTABLE                         R7 0 3
       28 MOVE                             R8 R0
       29 MOVE                             R9 R2
       30 MOVE                             R10 R3
       31 SETLIST                          R7 R8 3 [1]
       33 CALL                             R5 2 0
       34 GETUPVAL                         R5 1
       35 GETTABLEKS                       R5 R5 K5 ["useCallback"]
       37 NEWCLOSURE                       R6 P1
       38 CAPTURE                          VAL R4
       39 NEWTABLE                         R7 0 0
       41 CALL                             R5 2 -1
       42 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Flags"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["Parent"]
       16 GETTABLEKS                       R3 R3 K8 ["React"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K9 ["Components"]
       23 GETTABLEKS                       R4 R4 K10 ["Contexts"]
       25 GETTABLEKS                       R4 R4 K11 ["ThreadIdContext"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K12 ["Types"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K13 ["Hooks"]
       37 GETTABLEKS                       R6 R6 K14 ["useConversation"]
       39 CALL                             R5 1 1
       40 DUPCLOSURE                       R6 K15 [PROTO_3]
       41 CAPTURE                          VAL R5
       42 CAPTURE                          VAL R2
       43 CAPTURE                          VAL R3
       44 CAPTURE                          VAL R1
       45 RETURN                           R6 1
