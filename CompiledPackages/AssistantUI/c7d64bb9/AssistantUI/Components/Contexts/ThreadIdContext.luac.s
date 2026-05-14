PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 -1
        2 RETURN                           R0 -1

PROTO_2:
        0 DUPTABLE                         R0 K2 [{"threadId", "setThreadId"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["threadId"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["setThreadId"]
        7 RETURN                           R0 1

PROTO_3:
        0 GETTABLEKS                       R3 R0 K0 ["default"]
        2 JUMPIFEQKNIL                     R3 ; [+2]
        4 LOADB                            R2 0 +1
        5 LOADB                            R2 1
        6 FASTCALL2K                       ASSERT R2 K1 ; [+4]
        8 LOADK                            R3 K1 ["default is not supported in this context"]
        9 GETIMPORT                        R1 K3 [assert]
       11 CALL                             R1 2 0
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R1 R1 K4 ["useState"]
       15 GETUPVAL                         R3 1
       16 CALL                             R3 0 1
       17 JUMPIFNOT                        R3 ; [+3]
       18 DUPCLOSURE                       R2 K5 [PROTO_1]
       19 CAPTURE                          UPVAL U2
       20 JUMP                             ; [+1]
       21 LOADK                            R2 K6 ["DEFAULT_THREAD_ID"]
       22 CALL                             R1 1 2
       23 LOADNIL                          R3
       24 GETUPVAL                         R4 3
       25 CALL                             R4 0 1
       26 JUMPIFNOT                        R4 ; [+21]
       27 GETTABLEKS                       R5 R0 K7 ["threadId"]
       29 OR                               R4 R5 R1
       30 GETTABLEKS                       R6 R0 K8 ["setThreadId"]
       32 OR                               R5 R6 R2
       33 GETUPVAL                         R6 0
       34 GETTABLEKS                       R6 R6 K9 ["useMemo"]
       36 NEWCLOSURE                       R7 P1
       37 CAPTURE                          VAL R4
       38 CAPTURE                          VAL R5
       39 NEWTABLE                         R8 0 2
       41 MOVE                             R9 R4
       42 MOVE                             R10 R5
       43 SETLIST                          R8 R9 2 [1]
       45 CALL                             R6 2 1
       46 MOVE                             R3 R6
       47 JUMP                             ; [+12]
       48 DUPTABLE                         R4 K10 [{"threadId", "setThreadId"}]
       49 GETTABLEKS                       R6 R0 K7 ["threadId"]
       51 OR                               R5 R6 R1
       52 SETTABLEKS                       R5 R4 K7 ["threadId"]
       54 GETTABLEKS                       R6 R0 K8 ["setThreadId"]
       56 OR                               R5 R6 R2
       57 SETTABLEKS                       R5 R4 K8 ["setThreadId"]
       59 MOVE                             R3 R4
       60 GETUPVAL                         R4 4
       61 GETUPVAL                         R5 5
       62 GETTABLEKS                       R5 R5 K11 ["Provider"]
       64 DUPTABLE                         R6 K13 [{"value"}]
       65 SETTABLEKS                       R3 R6 K12 ["value"]
       67 GETTABLEKS                       R7 R0 K14 ["children"]
       69 CALL                             R4 3 -1
       70 RETURN                           R4 -1

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
       16 GETTABLEKS                       R3 R0 K8 ["Types"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K9 ["Util"]
       23 GETTABLEKS                       R4 R4 K10 ["createNewThread"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K11 ["Flags"]
       30 GETTABLEKS                       R5 R5 K12 ["FFlagAssistantMultipleChatPersistence"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K11 ["Flags"]
       37 GETTABLEKS                       R6 R6 K13 ["FFlagAssistantUseMemoizedContextValues"]
       39 CALL                             R5 1 1
       40 GETTABLEKS                       R6 R1 K14 ["createElement"]
       42 DUPTABLE                         R7 K18 [{"default", "threadId", "setThreadId"}]
       43 LOADB                            R8 1
       44 SETTABLEKS                       R8 R7 K15 ["default"]
       46 LOADK                            R8 K19 [""]
       47 SETTABLEKS                       R8 R7 K16 ["threadId"]
       49 DUPCLOSURE                       R8 K20 [PROTO_0]
       50 SETTABLEKS                       R8 R7 K17 ["setThreadId"]
       52 GETTABLEKS                       R8 R1 K21 ["createContext"]
       54 MOVE                             R9 R7
       55 CALL                             R8 1 1
       56 DUPCLOSURE                       R9 K22 [PROTO_3]
       57 CAPTURE                          VAL R1
       58 CAPTURE                          VAL R4
       59 CAPTURE                          VAL R3
       60 CAPTURE                          VAL R5
       61 CAPTURE                          VAL R6
       62 CAPTURE                          VAL R8
       63 DUPTABLE                         R10 K25 [{"Context", "Provider"}]
       64 SETTABLEKS                       R8 R10 K23 ["Context"]
       66 SETTABLEKS                       R9 R10 K24 ["Provider"]
       68 RETURN                           R10 1
