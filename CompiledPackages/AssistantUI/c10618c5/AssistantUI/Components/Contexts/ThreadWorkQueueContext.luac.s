PROTO_0:
        0 GETIMPORT                        R0 K1 [warn]
        2 LOADK                            R1 K2 ["ThreadWorkQueueContext.enqueue called outside a Provider"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K1 [warn]
        2 LOADK                            R1 K2 ["ThreadWorkQueueContext.forget called outside a Provider"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R0 K1 [warn]
        2 LOADK                            R1 K2 ["ThreadWorkQueueContext.has called outside a Provider"]
        3 CALL                             R0 1 0
        4 LOADB                            R0 0
        5 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["createElement"]
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R3 R3 K1 ["Provider"]
        8 DUPTABLE                         R4 K3 [{"value"}]
        9 SETTABLEKS                       R1 R4 K2 ["value"]
       11 GETTABLEKS                       R5 R0 K4 ["children"]
       13 CALL                             R2 3 -1
       14 RETURN                           R2 -1

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
       16 GETTABLEKS                       R3 R0 K8 ["Hooks"]
       18 GETTABLEKS                       R3 R3 K9 ["useThreadWorkQueue"]
       20 CALL                             R2 1 1
       21 DUPTABLE                         R3 K13 [{"enqueue", "forget", "has"}]
       22 DUPCLOSURE                       R4 K14 [PROTO_0]
       23 SETTABLEKS                       R4 R3 K10 ["enqueue"]
       25 DUPCLOSURE                       R4 K15 [PROTO_1]
       26 SETTABLEKS                       R4 R3 K11 ["forget"]
       28 DUPCLOSURE                       R4 K16 [PROTO_2]
       29 SETTABLEKS                       R4 R3 K12 ["has"]
       31 GETTABLEKS                       R4 R1 K17 ["createContext"]
       33 MOVE                             R5 R3
       34 CALL                             R4 1 1
       35 DUPCLOSURE                       R5 K18 [PROTO_3]
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R1
       38 CAPTURE                          VAL R4
       39 DUPTABLE                         R6 K21 [{"Context", "Provider"}]
       40 SETTABLEKS                       R4 R6 K19 ["Context"]
       42 SETTABLEKS                       R5 R6 K20 ["Provider"]
       44 RETURN                           R6 1
