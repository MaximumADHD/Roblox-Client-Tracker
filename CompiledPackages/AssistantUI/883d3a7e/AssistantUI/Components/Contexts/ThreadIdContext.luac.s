PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
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
       15 LOADK                            R2 K5 ["DEFAULT_THREAD_ID"]
       16 CALL                             R1 1 2
       17 DUPTABLE                         R3 K8 [{"threadId", "setThreadId"}]
       18 GETTABLEKS                       R5 R0 K6 ["threadId"]
       20 OR                               R4 R5 R1
       21 SETTABLEKS                       R4 R3 K6 ["threadId"]
       23 GETTABLEKS                       R5 R0 K7 ["setThreadId"]
       25 OR                               R4 R5 R2
       26 SETTABLEKS                       R4 R3 K7 ["setThreadId"]
       28 GETUPVAL                         R4 1
       29 GETUPVAL                         R6 2
       30 GETTABLEKS                       R5 R6 K9 ["Provider"]
       32 DUPTABLE                         R6 K11 [{"value"}]
       33 SETTABLEKS                       R3 R6 K10 ["value"]
       35 GETTABLEKS                       R7 R0 K12 ["children"]
       37 CALL                             R4 3 -1
       38 RETURN                           R4 -1

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
       16 GETTABLEKS                       R3 R0 K8 ["Types"]
       18 CALL                             R2 1 1
       19 GETTABLEKS                       R3 R1 K9 ["createElement"]
       21 DUPTABLE                         R4 K13 [{"default", "threadId", "setThreadId"}]
       22 LOADB                            R5 1
       23 SETTABLEKS                       R5 R4 K10 ["default"]
       25 LOADK                            R5 K14 [""]
       26 SETTABLEKS                       R5 R4 K11 ["threadId"]
       28 DUPCLOSURE                       R5 K15 [PROTO_0]
       29 SETTABLEKS                       R5 R4 K12 ["setThreadId"]
       31 GETTABLEKS                       R5 R1 K16 ["createContext"]
       33 MOVE                             R6 R4
       34 CALL                             R5 1 1
       35 DUPCLOSURE                       R6 K17 [PROTO_1]
       36 CAPTURE                          VAL R1
       37 CAPTURE                          VAL R3
       38 CAPTURE                          VAL R5
       39 DUPTABLE                         R7 K20 [{"Context", "Provider"}]
       40 SETTABLEKS                       R5 R7 K18 ["Context"]
       42 SETTABLEKS                       R6 R7 K19 ["Provider"]
       44 RETURN                           R7 1
