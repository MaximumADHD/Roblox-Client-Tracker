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
       18 GETUPVAL                         R5 0
       19 GETTABLEKS                       R4 R5 K4 ["useState"]
       21 NEWTABLE                         R5 0 0
       23 CALL                             R4 1 2
       24 GETUPVAL                         R7 0
       25 GETTABLEKS                       R6 R7 K5 ["useEffect"]
       27 NEWCLOSURE                       R7 P0
       28 CAPTURE                          UPVAL U3
       29 CAPTURE                          VAL R1
       30 CAPTURE                          VAL R3
       31 CAPTURE                          VAL R4
       32 CAPTURE                          VAL R5
       33 NEWTABLE                         R8 0 3
       35 MOVE                             R9 R1
       36 MOVE                             R10 R3
       37 MOVE                             R11 R4
       38 SETLIST                          R8 R9 3 [1]
       40 CALL                             R6 2 0
       41 GETUPVAL                         R7 0
       42 GETTABLEKS                       R6 R7 K6 ["useCallback"]
       44 NEWCLOSURE                       R7 P1
       45 CAPTURE                          VAL R5
       46 NEWTABLE                         R8 0 0
       48 CALL                             R6 2 -1
       49 RETURN                           R6 -1

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
       39 GETTABLEKS                       R7 R0 K13 ["Flags"]
       41 GETTABLEKS                       R6 R7 K14 ["FFlagAssistantMultipleChatSupport"]
       43 CALL                             R5 1 1
       44 DUPCLOSURE                       R6 K15 [PROTO_3]
       45 CAPTURE                          VAL R2
       46 CAPTURE                          VAL R1
       47 CAPTURE                          VAL R3
       48 CAPTURE                          VAL R5
       49 RETURN                           R6 1
