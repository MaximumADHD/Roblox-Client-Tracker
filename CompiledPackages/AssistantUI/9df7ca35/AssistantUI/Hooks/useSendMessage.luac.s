PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 0
        5 MOVE                             R1 R0
        6 CALL                             R1 0 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["threadId"]
        2 JUMPIF                           R1 ; [+1]
        3 GETUPVAL                         R1 0
        4 GETIMPORT                        R2 K3 [table.clone]
        6 MOVE                             R3 R0
        7 CALL                             R2 1 1
        8 SETTABLEKS                       R1 R2 K0 ["threadId"]
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R3 R3 K4 ["enqueue"]
       13 DUPTABLE                         R4 K7 [{"key", "threadId", "run"}]
       14 LOADK                            R5 K8 ["send_%*"]
       15 GETUPVAL                         R7 2
       16 LOADB                            R9 0
       17 NAMECALL                         R7 R7 K9 ["GenerateGUID"]
       19 CALL                             R7 2 1
       20 NAMECALL                         R5 R5 K10 ["format"]
       22 CALL                             R5 2 1
       23 SETTABLEKS                       R5 R4 K5 ["key"]
       25 SETTABLEKS                       R1 R4 K0 ["threadId"]
       27 NEWCLOSURE                       R5 P0
       28 CAPTURE                          UPVAL U3
       29 CAPTURE                          VAL R2
       30 SETTABLEKS                       R5 R4 K6 ["run"]
       32 CALL                             R3 1 0
       33 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["useContext"]
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R3 R3 K1 ["Context"]
        9 CALL                             R2 1 1
       10 GETUPVAL                         R3 3
       11 CALL                             R3 0 1
       12 GETUPVAL                         R4 4
       13 MOVE                             R5 R1
       14 CALL                             R4 1 1
       15 GETUPVAL                         R5 1
       16 GETTABLEKS                       R5 R5 K2 ["useCallback"]
       18 NEWCLOSURE                       R6 P0
       19 CAPTURE                          VAL R3
       20 CAPTURE                          VAL R2
       21 CAPTURE                          UPVAL U5
       22 CAPTURE                          VAL R4
       23 NEWTABLE                         R7 0 3
       25 MOVE                             R8 R2
       26 MOVE                             R9 R4
       27 MOVE                             R10 R3
       28 SETLIST                          R7 R8 3 [1]
       30 CALL                             R5 2 1
       31 RETURN                           R5 1

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
       15 GETTABLEKS                       R3 R0 K10 ["Parent"]
       17 GETTABLEKS                       R3 R3 K11 ["React"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R0 K12 ["Components"]
       24 GETTABLEKS                       R4 R4 K13 ["Contexts"]
       26 GETTABLEKS                       R4 R4 K14 ["ThreadWorkQueueContext"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K9 [require]
       31 GETTABLEKS                       R5 R0 K15 ["Types"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETTABLEKS                       R6 R0 K16 ["Hooks"]
       38 GETTABLEKS                       R6 R6 K17 ["useLatest"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K9 [require]
       43 GETTABLEKS                       R7 R0 K18 ["ACPClientService"]
       45 GETTABLEKS                       R7 R7 K19 ["useSendMessageViaService"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K9 [require]
       50 GETTABLEKS                       R8 R0 K16 ["Hooks"]
       52 GETTABLEKS                       R8 R8 K20 ["useThreadId"]
       54 CALL                             R7 1 1
       55 DUPCLOSURE                       R8 K21 [PROTO_2]
       56 CAPTURE                          VAL R6
       57 CAPTURE                          VAL R2
       58 CAPTURE                          VAL R3
       59 CAPTURE                          VAL R7
       60 CAPTURE                          VAL R5
       61 CAPTURE                          VAL R1
       62 RETURN                           R8 1
