PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 NAMECALL                         R0 R0 K0 ["getPlanModeSystemReminder"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETUPVAL                         R1 1
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 2
        5 CALL                             R2 0 1
        6 GETTABLEKS                       R3 R1 K0 ["getRuntime"]
        8 CALL                             R3 0 1
        9 GETUPVAL                         R5 3
       10 GETTABLEKS                       R4 R5 K1 ["useCallback"]
       12 NEWCLOSURE                       R5 P0
       13 CAPTURE                          VAL R3
       14 CAPTURE                          VAL R0
       15 CAPTURE                          VAL R2
       16 NEWTABLE                         R6 0 3
       18 MOVE                             R7 R3
       19 MOVE                             R8 R0
       20 MOVE                             R9 R2
       21 SETLIST                          R6 R7 3 [1]
       23 CALL                             R4 2 -1
       24 RETURN                           R4 -1

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
       16 GETTABLEKS                       R4 R0 K8 ["Hooks"]
       18 GETTABLEKS                       R3 R4 K9 ["useAssistantMode"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Hooks"]
       25 GETTABLEKS                       R4 R5 K10 ["usePersistentPlan"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K8 ["Hooks"]
       32 GETTABLEKS                       R5 R6 K11 ["useThreadId"]
       34 CALL                             R4 1 1
       35 DUPCLOSURE                       R5 K12 [PROTO_1]
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R3
       38 CAPTURE                          VAL R4
       39 CAPTURE                          VAL R1
       40 RETURN                           R5 1
