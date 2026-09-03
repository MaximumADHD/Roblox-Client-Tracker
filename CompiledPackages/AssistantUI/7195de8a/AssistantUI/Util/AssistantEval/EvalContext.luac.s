PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 DUPTABLE                         R2 K1 [{"eval"}]
        3 SETTABLEKS                       R1 R2 K0 ["eval"]
        5 GETUPVAL                         R3 1
        6 GETUPVAL                         R4 2
        7 GETTABLEKS                       R4 R4 K2 ["Provider"]
        9 DUPTABLE                         R5 K4 [{"value"}]
       10 SETTABLEKS                       R2 R5 K3 ["value"]
       12 GETTABLEKS                       R6 R0 K5 ["children"]
       14 CALL                             R3 3 -1
       15 RETURN                           R3 -1

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
       16 GETTABLEKS                       R3 R0 K8 ["Util"]
       18 GETTABLEKS                       R3 R3 K9 ["AssistantEval"]
       20 GETTABLEKS                       R3 R3 K10 ["useEvalController"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R1 K11 ["createElement"]
       25 DUPTABLE                         R4 K14 [{["eval"] = }]
       26 GETTABLEKS                       R5 R1 K15 ["createContext"]
       28 MOVE                             R6 R4
       29 CALL                             R5 1 1
       30 DUPCLOSURE                       R6 K16 [PROTO_0]
       31 CAPTURE                          VAL R2
       32 CAPTURE                          VAL R3
       33 CAPTURE                          VAL R5
       34 DUPTABLE                         R7 K19 [{"Context", "Provider"}]
       35 SETTABLEKS                       R5 R7 K17 ["Context"]
       37 SETTABLEKS                       R6 R7 K18 ["Provider"]
       39 RETURN                           R7 1
