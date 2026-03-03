PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADB                            R2 0
        2 NAMECALL                         R0 R0 K0 ["GenerateGUID"]
        4 CALL                             R0 2 1
        5 RETURN                           R0 1

PROTO_2:
        0 GETTABLEKS                       R3 R0 K0 ["default"]
        2 JUMPIFEQKNIL                     R3 ; [+2]
        4 LOADB                            R2 0 +1
        5 LOADB                            R2 1
        6 FASTCALL2K                       ASSERT R2 K1 ; [+4]
        8 LOADK                            R3 K1 ["default is not supported in this context"]
        9 GETIMPORT                        R1 K3 [assert]
       11 CALL                             R1 2 0
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R1 R2 K4 ["useState"]
       15 GETUPVAL                         R3 1
       16 CALL                             R3 0 1
       17 JUMPIFNOT                        R3 ; [+3]
       18 DUPCLOSURE                       R2 K5 [PROTO_1]
       19 CAPTURE                          UPVAL U2
       20 JUMP                             ; [+1]
       21 LOADK                            R2 K6 ["DEFAULT_THREAD_ID"]
       22 CALL                             R1 1 2
       23 DUPTABLE                         R3 K9 [{"threadId", "setThreadId"}]
       24 GETTABLEKS                       R5 R0 K7 ["threadId"]
       26 OR                               R4 R5 R1
       27 SETTABLEKS                       R4 R3 K7 ["threadId"]
       29 GETTABLEKS                       R5 R0 K8 ["setThreadId"]
       31 OR                               R4 R5 R2
       32 SETTABLEKS                       R4 R3 K8 ["setThreadId"]
       34 GETUPVAL                         R4 3
       35 GETUPVAL                         R6 4
       36 GETTABLEKS                       R5 R6 K10 ["Provider"]
       38 DUPTABLE                         R6 K12 [{"value"}]
       39 SETTABLEKS                       R3 R6 K11 ["value"]
       41 GETTABLEKS                       R7 R0 K13 ["children"]
       43 CALL                             R4 3 -1
       44 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["HttpService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R4 R0 K10 ["Parent"]
       17 GETTABLEKS                       R3 R4 K11 ["React"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R0 K12 ["Types"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K9 [require]
       27 GETTABLEKS                       R6 R0 K13 ["Flags"]
       29 GETTABLEKS                       R5 R6 K14 ["FFlagAssistantPersistConversations"]
       31 CALL                             R4 1 1
       32 GETTABLEKS                       R5 R2 K15 ["createElement"]
       34 DUPTABLE                         R6 K19 [{"default", "threadId", "setThreadId"}]
       35 LOADB                            R7 1
       36 SETTABLEKS                       R7 R6 K16 ["default"]
       38 LOADK                            R7 K20 [""]
       39 SETTABLEKS                       R7 R6 K17 ["threadId"]
       41 DUPCLOSURE                       R7 K21 [PROTO_0]
       42 SETTABLEKS                       R7 R6 K18 ["setThreadId"]
       44 GETTABLEKS                       R7 R2 K22 ["createContext"]
       46 MOVE                             R8 R6
       47 CALL                             R7 1 1
       48 DUPCLOSURE                       R8 K23 [PROTO_2]
       49 CAPTURE                          VAL R2
       50 CAPTURE                          VAL R4
       51 CAPTURE                          VAL R1
       52 CAPTURE                          VAL R5
       53 CAPTURE                          VAL R7
       54 DUPTABLE                         R9 K26 [{"Context", "Provider"}]
       55 SETTABLEKS                       R7 R9 K24 ["Context"]
       57 SETTABLEKS                       R8 R9 K25 ["Provider"]
       59 RETURN                           R9 1
