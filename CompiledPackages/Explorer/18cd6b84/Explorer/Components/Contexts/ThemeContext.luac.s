PROTO_0:
        0 DUPTABLE                         R1 K1 [{"theme"}]
        1 GETTABLEKS                       R2 R0 K0 ["theme"]
        3 SETTABLEKS                       R2 R1 K0 ["theme"]
        5 GETUPVAL                         R2 0
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K2 ["Provider"]
        9 DUPTABLE                         R4 K4 [{"value"}]
       10 SETTABLEKS                       R1 R4 K3 ["value"]
       12 GETTABLEKS                       R5 R0 K5 ["children"]
       14 CALL                             R2 3 -1
       15 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["createElement"]
       16 DUPTABLE                         R3 K11 [{["theme"] = "Dark"}]
       17 GETTABLEKS                       R4 R1 K12 ["createContext"]
       19 MOVE                             R5 R3
       20 CALL                             R4 1 1
       21 DUPCLOSURE                       R5 K13 [PROTO_0]
       22 CAPTURE                          VAL R2
       23 CAPTURE                          VAL R4
       24 DUPTABLE                         R6 K16 [{"Context", "Provider"}]
       25 SETTABLEKS                       R4 R6 K14 ["Context"]
       27 SETTABLEKS                       R5 R6 K15 ["Provider"]
       29 RETURN                           R6 1
