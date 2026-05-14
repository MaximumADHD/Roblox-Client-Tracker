PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 RETURN                           R0 0

PROTO_3:
        0 DUPCLOSURE                       R0 K0 [PROTO_0]
        1 DUPCLOSURE                       R1 K1 [PROTO_1]
        2 DUPCLOSURE                       R2 K2 [PROTO_2]
        3 RETURN                           R0 3

PROTO_4:
        0 DUPTABLE                         R1 K1 [{"useTooltip"}]
        1 GETTABLEKS                       R2 R0 K0 ["useTooltip"]
        3 SETTABLEKS                       R2 R1 K0 ["useTooltip"]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K2 ["createElement"]
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K3 ["Provider"]
       11 DUPTABLE                         R4 K5 [{"value"}]
       12 SETTABLEKS                       R1 R4 K4 ["value"]
       14 GETTABLEKS                       R5 R0 K6 ["children"]
       16 CALL                             R2 3 -1
       17 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PerformanceTools"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 DUPTABLE                         R2 K9 [{"useTooltip"}]
       15 DUPCLOSURE                       R3 K10 [PROTO_3]
       16 SETTABLEKS                       R3 R2 K8 ["useTooltip"]
       18 GETTABLEKS                       R3 R1 K11 ["createContext"]
       20 MOVE                             R4 R2
       21 CALL                             R3 1 1
       22 DUPCLOSURE                       R4 K12 [PROTO_4]
       23 CAPTURE                          VAL R1
       24 CAPTURE                          VAL R3
       25 DUPTABLE                         R5 K15 [{"Context", "Provider"}]
       26 SETTABLEKS                       R3 R5 K13 ["Context"]
       28 SETTABLEKS                       R4 R5 K14 ["Provider"]
       30 RETURN                           R5 1
