PROTO_0:
        0 DUPTABLE                         R0 K2 [{"testId", "slot"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["testId"]
        4 SETTABLEKS                       R1 R0 K0 ["testId"]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K1 ["slot"]
        9 SETTABLEKS                       R1 R0 K1 ["slot"]
       11 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useMemo"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 NEWTABLE                         R3 0 2
        7 GETTABLEKS                       R4 R0 K1 ["testId"]
        9 GETTABLEKS                       R5 R0 K2 ["slot"]
       11 SETLIST                          R3 R4 2 [1]
       13 CALL                             R1 2 1
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R2 R2 K3 ["createElement"]
       17 GETUPVAL                         R3 1
       18 GETTABLEKS                       R3 R3 K4 ["Provider"]
       20 DUPTABLE                         R4 K6 [{"value"}]
       21 SETTABLEKS                       R1 R4 K5 ["value"]
       23 GETTABLEKS                       R5 R0 K7 ["children"]
       25 CALL                             R2 3 -1
       26 RETURN                           R2 -1

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
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Enums"]
       18 GETTABLEKS                       R4 R4 K9 ["HeaderBarSlot"]
       20 CALL                             R3 1 1
       21 GETTABLEKS                       R4 R2 K10 ["createContext"]
       23 DUPTABLE                         R5 K13 [{["testId"] = ""}]
       24 CALL                             R4 1 1
       25 DUPCLOSURE                       R5 K14 [PROTO_1]
       26 CAPTURE                          VAL R2
       27 CAPTURE                          VAL R4
       28 DUPTABLE                         R6 K17 [{"Context", "Provider"}]
       29 SETTABLEKS                       R4 R6 K15 ["Context"]
       31 SETTABLEKS                       R5 R6 K16 ["Provider"]
       33 RETURN                           R6 1
