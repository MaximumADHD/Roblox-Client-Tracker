PROTO_0:
        0 LOADNIL                          R0
        1 GETUPVAL                         R1 0
        2 CALL                             R1 0 1
        3 JUMPIFNOT                        R1 ; [+6]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R1 R2 K0 ["threads"]
        7 GETUPVAL                         R2 2
        8 GETTABLE                         R0 R1 R2
        9 JUMP                             ; [+6]
       10 GETUPVAL                         R1 2
       11 JUMPIFNOT                        R1 ; [+3]
       12 GETUPVAL                         R2 1
       13 GETUPVAL                         R3 2
       14 GETTABLE                         R1 R2 R3
       15 MOVE                             R0 R1
       16 JUMPIF                           R0 ; [+1]
       17 RETURN                           R0 0
       18 GETUPVAL                         R2 3
       19 LENGTH                           R1 R2
       20 JUMPIFNOTEQKN                    R1 K1 [0] ; [+2]
       22 RETURN                           R0 0
       23 GETIMPORT                        R1 K4 [table.clone]
       25 GETUPVAL                         R2 3
       26 CALL                             R1 1 1
       27 GETIMPORT                        R2 K6 [table.remove]
       29 MOVE                             R3 R1
       30 LOADN                            R4 1
       31 CALL                             R2 2 1
       32 FASTCALL2K                       ASSERT R2 K7 ; [+5]
       34 MOVE                             R4 R2
       35 LOADK                            R5 K7 ["Callback should not be nil"]
       36 GETIMPORT                        R3 K9 [assert]
       38 CALL                             R3 2 0
       39 GETUPVAL                         R3 4
       40 MOVE                             R4 R1
       41 CALL                             R3 1 0
       42 GETIMPORT                        R3 K12 [task.spawn]
       44 MOVE                             R4 R2
       45 MOVE                             R5 R0
       46 CALL                             R3 2 0
       47 RETURN                           R0 0

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
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R1 R2 K0 ["useContext"]
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R2 R3 K1 ["Context"]
        8 CALL                             R1 1 1
        9 GETTABLEKS                       R2 R1 K2 ["threadId"]
       11 GETUPVAL                         R4 1
       12 GETTABLEKS                       R3 R4 K3 ["useState"]
       14 NEWTABLE                         R4 0 0
       16 CALL                             R3 1 2
       17 GETUPVAL                         R6 1
       18 GETTABLEKS                       R5 R6 K4 ["useEffect"]
       20 NEWCLOSURE                       R6 P0
       21 CAPTURE                          UPVAL U3
       22 CAPTURE                          VAL R0
       23 CAPTURE                          VAL R2
       24 CAPTURE                          VAL R3
       25 CAPTURE                          VAL R4
       26 NEWTABLE                         R7 0 3
       28 MOVE                             R8 R0
       29 MOVE                             R9 R2
       30 MOVE                             R10 R3
       31 SETLIST                          R7 R8 3 [1]
       33 CALL                             R5 2 0
       34 GETUPVAL                         R6 1
       35 GETTABLEKS                       R5 R6 K5 ["useCallback"]
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
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R5 K9 ["Contexts"]
       20 GETTABLEKS                       R3 R4 K10 ["ThreadIdContext"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K11 ["Types"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K12 ["Hooks"]
       32 GETTABLEKS                       R5 R6 K13 ["useConversation"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R7 R0 K14 ["Flags"]
       39 GETTABLEKS                       R6 R7 K15 ["FFlagAssistantMultipleChatSupport"]
       41 CALL                             R5 1 1
       42 DUPCLOSURE                       R6 K16 [PROTO_3]
       43 CAPTURE                          VAL R4
       44 CAPTURE                          VAL R1
       45 CAPTURE                          VAL R2
       46 CAPTURE                          VAL R5
       47 RETURN                           R6 1
