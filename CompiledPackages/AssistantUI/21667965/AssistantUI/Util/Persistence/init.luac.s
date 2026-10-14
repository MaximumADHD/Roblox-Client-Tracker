PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K1 ["set"]
        7 MOVE                             R2 R0
        8 CALL                             R1 1 0
        9 DUPTABLE                         R1 K3 [{"coordinator"}]
       10 SETTABLEKS                       R0 R1 K2 ["coordinator"]
       12 RETURN                           R1 1

PROTO_1:
        0 MOVE                             R1 R0
        1 JUMPIFNOT                        R1 ; [+2]
        2 GETTABLEKS                       R1 R0 K0 ["nextCursor"]
        4 JUMPIF                           R1 ; [+1]
        5 RETURN                           R0 0
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K1 ["get"]
        9 CALL                             R2 0 1
       10 GETTABLEKS                       R3 R2 K2 ["requestLoad"]
       12 DUPTABLE                         R4 K5 [{"scope", "cursor"}]
       13 GETUPVAL                         R5 1
       14 GETTABLEKS                       R5 R5 K6 ["Threads"]
       16 SETTABLEKS                       R5 R4 K3 ["scope"]
       18 SETTABLEKS                       R1 R4 K4 ["cursor"]
       20 CALL                             R3 1 0
       21 RETURN                           R0 0

PROTO_2:
        0 MOVE                             R2 R0
        1 JUMPIFNOT                        R2 ; [+2]
        2 GETTABLEKS                       R2 R0 K0 ["nextCursor"]
        4 JUMPIF                           R2 ; [+1]
        5 RETURN                           R0 0
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K1 ["get"]
        9 CALL                             R3 0 1
       10 GETTABLEKS                       R4 R3 K2 ["requestLoad"]
       12 DUPTABLE                         R5 K6 [{"scope", "threadId", "cursor"}]
       13 GETUPVAL                         R6 1
       14 GETTABLEKS                       R6 R6 K7 ["Messages"]
       16 SETTABLEKS                       R6 R5 K3 ["scope"]
       18 SETTABLEKS                       R1 R5 K4 ["threadId"]
       20 SETTABLEKS                       R2 R5 K5 ["cursor"]
       22 CALL                             R4 1 0
       23 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Types"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K1 [script]
       14 GETIMPORT                        R3 K5 [require]
       16 GETTABLEKS                       R4 R2 K7 ["HistoryNormalizer"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K5 [require]
       21 GETTABLEKS                       R5 R2 K8 ["PersistenceCoordinator"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K5 [require]
       26 GETTABLEKS                       R6 R2 K9 ["PersistenceSessionOrchestrator"]
       28 CALL                             R5 1 1
       29 GETTABLEKS                       R6 R1 K10 ["ScopeTypes"]
       31 DUPCLOSURE                       R7 K11 [PROTO_0]
       32 CAPTURE                          VAL R4
       33 DUPCLOSURE                       R8 K12 [PROTO_1]
       34 CAPTURE                          VAL R4
       35 CAPTURE                          VAL R6
       36 DUPCLOSURE                       R9 K13 [PROTO_2]
       37 CAPTURE                          VAL R4
       38 CAPTURE                          VAL R6
       39 DUPTABLE                         R10 K19 [{"create", "getCoordinator", "trackSessions", "loadMoreThreads", "loadOlderMessages", "HistoryNormalizer"}]
       40 SETTABLEKS                       R7 R10 K14 ["create"]
       42 GETTABLEKS                       R11 R4 K20 ["get"]
       44 SETTABLEKS                       R11 R10 K15 ["getCoordinator"]
       46 GETTABLEKS                       R11 R5 K16 ["trackSessions"]
       48 SETTABLEKS                       R11 R10 K16 ["trackSessions"]
       50 SETTABLEKS                       R8 R10 K17 ["loadMoreThreads"]
       52 SETTABLEKS                       R9 R10 K18 ["loadOlderMessages"]
       54 SETTABLEKS                       R3 R10 K7 ["HistoryNormalizer"]
       56 RETURN                           R10 1
