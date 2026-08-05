PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 2
        5 SETUPVAL                         R1 2
        6 SETUPVAL                         R2 3
        7 GETUPVAL                         R3 4
        8 GETUPVAL                         R4 5
        9 GETTABLEKS                       R4 R4 K1 ["Provider"]
       11 DUPTABLE                         R5 K4 [{"threadId", "setThreadId"}]
       12 SETTABLEKS                       R1 R5 K2 ["threadId"]
       14 SETTABLEKS                       R2 R5 K3 ["setThreadId"]
       16 GETTABLEKS                       R6 R0 K5 ["children"]
       18 CALL                             R3 3 -1
       19 RETURN                           R3 -1

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
        0 LOADNIL                          R0
        1 LOADNIL                          R1
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          REF R0
        6 CAPTURE                          REF R1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 MOVE                             R3 R2
       10 DUPTABLE                         R4 K2 [{"getThreadId", "setThreadId"}]
       11 NEWCLOSURE                       R5 P1
       12 CAPTURE                          REF R0
       13 SETTABLEKS                       R5 R4 K0 ["getThreadId"]
       15 NEWCLOSURE                       R5 P2
       16 CAPTURE                          REF R1
       17 SETTABLEKS                       R5 R4 K1 ["setThreadId"]
       19 CLOSEUPVALS                      R0
       20 RETURN                           R3 2

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
       30 GETTABLEKS                       R5 R0 K12 ["Util"]
       32 GETTABLEKS                       R5 R5 K13 ["createNewThread"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R1 K14 ["createElement"]
       37 DUPCLOSURE                       R6 K15 [PROTO_3]
       38 CAPTURE                          VAL R1
       39 CAPTURE                          VAL R4
       40 CAPTURE                          VAL R5
       41 CAPTURE                          VAL R2
       42 RETURN                           R6 1
