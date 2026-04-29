PROTO_0:
        0 DUPTABLE                         R0 K1 [{"testId"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K0 ["testId"]
        4 SETTABLEKS                       R1 R0 K0 ["testId"]
        6 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useMemo"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 NEWTABLE                         R3 0 1
        7 GETTABLEKS                       R4 R0 K1 ["testId"]
        9 SETLIST                          R3 R4 1 [1]
       11 CALL                             R1 2 1
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R2 R3 K2 ["createElement"]
       15 GETUPVAL                         R4 1
       16 GETTABLEKS                       R3 R4 K3 ["Provider"]
       18 DUPTABLE                         R4 K5 [{"value"}]
       19 SETTABLEKS                       R1 R4 K4 ["value"]
       21 GETTABLEKS                       R5 R0 K6 ["children"]
       23 CALL                             R2 3 -1
       24 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R3 R2 K8 ["createContext"]
       16 DUPTABLE                         R4 K10 [{"testId"}]
       17 LOADK                            R5 K11 [""]
       18 SETTABLEKS                       R5 R4 K9 ["testId"]
       20 CALL                             R3 1 1
       21 DUPCLOSURE                       R4 K12 [PROTO_1]
       22 CAPTURE                          VAL R2
       23 CAPTURE                          VAL R3
       24 DUPTABLE                         R5 K15 [{"Context", "Provider"}]
       25 SETTABLEKS                       R3 R5 K13 ["Context"]
       27 SETTABLEKS                       R4 R5 K14 ["Provider"]
       29 RETURN                           R5 1
