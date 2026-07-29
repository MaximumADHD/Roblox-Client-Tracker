PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["threads"]
        3 GETUPVAL                         R2 1
        4 GETTABLE                         R0 R1 R2
        5 JUMPIF                           R0 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R2 2
        8 LENGTH                           R1 R2
        9 JUMPIFNOTEQKN                    R1 K1 [0] ; [+2]
       11 RETURN                           R0 0
       12 GETIMPORT                        R1 K4 [table.clone]
       14 GETUPVAL                         R2 2
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [table.remove]
       18 MOVE                             R3 R1
       19 LOADN                            R4 1
       20 CALL                             R2 2 1
       21 FASTCALL2K                       ASSERT R2 K7 ; [+5]
       23 MOVE                             R4 R2
       24 LOADK                            R5 K7 ["Callback should not be nil"]
       25 GETIMPORT                        R3 K9 [assert]
       27 CALL                             R3 2 0
       28 GETUPVAL                         R3 3
       29 MOVE                             R4 R1
       30 CALL                             R3 1 0
       31 GETIMPORT                        R3 K12 [task.spawn]
       33 MOVE                             R4 R2
       34 MOVE                             R5 R0
       35 CALL                             R3 2 0
       36 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R4 0
        5 FASTCALL2                        TABLE_INSERT R1 R4 ; [+4]
        7 MOVE                             R3 R1
        8 GETIMPORT                        R2 K4 [table.insert]
       10 CALL                             R2 2 0
       11 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

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
       21 CAPTURE                          VAL R0
       22 CAPTURE                          VAL R2
       23 CAPTURE                          VAL R3
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
