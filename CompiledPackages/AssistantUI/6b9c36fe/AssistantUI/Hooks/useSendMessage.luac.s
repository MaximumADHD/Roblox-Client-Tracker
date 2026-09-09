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
       14 LOADK                            R6 K8 ["send_%*"]
       15 GETUPVAL                         R8 2
       16 LOADB                            R10 0
       17 NAMECALL                         R8 R8 K9 ["GenerateGUID"]
       19 CALL                             R8 2 1
       20 NAMECALL                         R6 R6 K10 ["format"]
       22 CALL                             R6 2 1
       23 MOVE                             R5 R6
       24 SETTABLEKS                       R5 R4 K5 ["key"]
       26 SETTABLEKS                       R1 R4 K0 ["threadId"]
       28 NEWCLOSURE                       R5 P0
       29 CAPTURE                          UPVAL U3
       30 CAPTURE                          VAL R2
       31 SETTABLEKS                       R5 R4 K6 ["run"]
       33 CALL                             R3 1 0
       34 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantExternalInterface"]
        3 JUMPIF                           R1 ; [+1]
        4 RETURN                           R0 1
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K1 ["useContext"]
        8 GETUPVAL                         R2 2
        9 GETTABLEKS                       R2 R2 K2 ["Context"]
       11 CALL                             R1 1 1
       12 GETUPVAL                         R2 3
       13 CALL                             R2 0 1
       14 GETUPVAL                         R3 4
       15 MOVE                             R4 R0
       16 CALL                             R3 1 1
       17 GETUPVAL                         R4 1
       18 GETTABLEKS                       R4 R4 K3 ["useCallback"]
       20 NEWCLOSURE                       R5 P0
       21 CAPTURE                          VAL R2
       22 CAPTURE                          VAL R1
       23 CAPTURE                          UPVAL U5
       24 CAPTURE                          VAL R3
       25 NEWTABLE                         R6 0 3
       27 MOVE                             R7 R1
       28 MOVE                             R8 R3
       29 MOVE                             R9 R2
       30 SETLIST                          R6 R7 3 [1]
       32 CALL                             R4 2 1
       33 RETURN                           R4 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 1
        5 RETURN                           R1 1

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
       15 GETTABLEKS                       R3 R0 K10 ["Flags"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K9 [require]
       20 GETTABLEKS                       R4 R0 K11 ["Parent"]
       22 GETTABLEKS                       R4 R4 K12 ["React"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K9 [require]
       27 GETTABLEKS                       R5 R0 K13 ["Components"]
       29 GETTABLEKS                       R5 R5 K14 ["Contexts"]
       31 GETTABLEKS                       R5 R5 K15 ["ThreadWorkQueueContext"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETTABLEKS                       R6 R0 K16 ["Types"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K9 [require]
       41 GETTABLEKS                       R7 R0 K17 ["Hooks"]
       43 GETTABLEKS                       R7 R7 K18 ["useLatest"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K9 [require]
       48 GETTABLEKS                       R8 R0 K19 ["ACPClientService"]
       50 GETTABLEKS                       R8 R8 K20 ["useSendMessageViaService"]
       52 CALL                             R7 1 1
       53 GETIMPORT                        R8 K9 [require]
       55 GETTABLEKS                       R9 R0 K17 ["Hooks"]
       57 GETTABLEKS                       R9 R9 K21 ["useThreadId"]
       59 CALL                             R8 1 1
       60 DUPCLOSURE                       R9 K22 [PROTO_2]
       61 CAPTURE                          VAL R2
       62 CAPTURE                          VAL R3
       63 CAPTURE                          VAL R4
       64 CAPTURE                          VAL R8
       65 CAPTURE                          VAL R6
       66 CAPTURE                          VAL R1
       67 DUPCLOSURE                       R10 K23 [PROTO_3]
       68 CAPTURE                          VAL R9
       69 CAPTURE                          VAL R7
       70 RETURN                           R10 1
