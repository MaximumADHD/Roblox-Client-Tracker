PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useState"]
        3 GETUPVAL                         R3 1
        4 CALL                             R3 0 1
        5 JUMPIFNOT                        R3 ; [+2]
        6 GETUPVAL                         R2 2
        7 JUMP                             ; [+1]
        8 LOADK                            R2 K1 ["mock-thread-id"]
        9 CALL                             R1 1 2
       10 SETUPVAL                         R1 3
       11 SETUPVAL                         R2 4
       12 GETUPVAL                         R3 5
       13 GETUPVAL                         R5 6
       14 GETTABLEKS                       R4 R5 K2 ["Provider"]
       16 DUPTABLE                         R5 K5 [{"threadId", "setThreadId"}]
       17 SETTABLEKS                       R1 R5 K3 ["threadId"]
       19 SETTABLEKS                       R2 R5 K4 ["setThreadId"]
       21 GETTABLEKS                       R6 R0 K6 ["children"]
       23 CALL                             R3 3 -1
       24 RETURN                           R3 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 FASTCALL2K                       ASSERT R1 K0 ; [+4]
        3 LOADK                            R2 K0 ["lastThreadId is not initialized yet"]
        4 GETIMPORT                        R0 K2 [assert]
        6 CALL                             R0 2 0
        7 GETUPVAL                         R0 0
        8 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        3 LOADK                            R3 K0 ["lastSetThreadId is not initialized yet"]
        4 GETIMPORT                        R1 K2 [assert]
        6 CALL                             R1 2 0
        7 GETUPVAL                         R1 0
        8 MOVE                             R2 R0
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+2]
        3 LOADNIL                          R0
        4 JUMP                             ; [+1]
        5 LOADK                            R0 K0 ["mock-thread-id"]
        6 LOADNIL                          R1
        7 NEWCLOSURE                       R2 P0
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          UPVAL U0
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          REF R0
       12 CAPTURE                          REF R1
       13 CAPTURE                          UPVAL U3
       14 CAPTURE                          UPVAL U4
       15 MOVE                             R3 R2
       16 DUPTABLE                         R4 K3 [{"getThreadId", "setThreadId"}]
       17 NEWCLOSURE                       R5 P1
       18 CAPTURE                          REF R0
       19 SETTABLEKS                       R5 R4 K1 ["getThreadId"]
       21 NEWCLOSURE                       R5 P2
       22 CAPTURE                          REF R1
       23 SETTABLEKS                       R5 R4 K2 ["setThreadId"]
       25 CLOSEUPVALS                      R0
       26 RETURN                           R3 2

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
       30 GETTABLEKS                       R6 R0 K12 ["Util"]
       32 GETTABLEKS                       R5 R6 K13 ["createNewThread"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R7 R0 K14 ["Flags"]
       39 GETTABLEKS                       R6 R7 K15 ["FFlagAssistantMultipleChatPersistence"]
       41 CALL                             R5 1 1
       42 GETTABLEKS                       R6 R1 K16 ["createElement"]
       44 DUPCLOSURE                       R7 K17 [PROTO_3]
       45 CAPTURE                          VAL R5
       46 CAPTURE                          VAL R1
       47 CAPTURE                          VAL R4
       48 CAPTURE                          VAL R6
       49 CAPTURE                          VAL R2
       50 RETURN                           R7 1
