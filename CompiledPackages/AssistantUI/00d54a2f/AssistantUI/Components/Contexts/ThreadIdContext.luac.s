PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 -1
        2 RETURN                           R0 -1

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
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Types"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Util"]
       23 GETTABLEKS                       R4 R5 K10 ["createNewThread"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R6 R0 K11 ["Flags"]
       30 GETTABLEKS                       R5 R6 K12 ["FFlagAssistantMultipleChatSupport"]
       32 CALL                             R4 1 1
       33 GETTABLEKS                       R5 R1 K13 ["createElement"]
       35 DUPTABLE                         R6 K17 [{"default", "threadId", "setThreadId"}]
       36 LOADB                            R7 1
       37 SETTABLEKS                       R7 R6 K14 ["default"]
       39 LOADK                            R7 K18 [""]
       40 SETTABLEKS                       R7 R6 K15 ["threadId"]
       42 DUPCLOSURE                       R7 K19 [PROTO_0]
       43 SETTABLEKS                       R7 R6 K16 ["setThreadId"]
       45 GETTABLEKS                       R7 R1 K20 ["createContext"]
       47 MOVE                             R8 R6
       48 CALL                             R7 1 1
       49 DUPCLOSURE                       R8 K21 [PROTO_2]
       50 CAPTURE                          VAL R1
       51 CAPTURE                          VAL R4
       52 CAPTURE                          VAL R3
       53 CAPTURE                          VAL R5
       54 CAPTURE                          VAL R7
       55 DUPTABLE                         R9 K24 [{"Context", "Provider"}]
       56 SETTABLEKS                       R7 R9 K22 ["Context"]
       58 SETTABLEKS                       R8 R9 K23 ["Provider"]
       60 RETURN                           R9 1
