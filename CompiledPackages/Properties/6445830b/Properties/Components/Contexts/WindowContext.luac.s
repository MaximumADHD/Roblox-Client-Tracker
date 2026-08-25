PROTO_0:
        0 DUPTABLE                         R0 K1 [{"createWindowAsync"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["createWindowAsync"]
        4 SETTABLEKS                       R1 R0 K0 ["createWindowAsync"]
        6 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useMemo"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 NEWTABLE                         R3 0 1
        7 GETTABLEKS                       R4 R0 K1 ["createWindowAsync"]
        9 SETLIST                          R3 R4 1 [1]
       11 CALL                             R1 2 1
       12 GETUPVAL                         R2 1
       13 GETUPVAL                         R3 2
       14 GETTABLEKS                       R3 R3 K2 ["Provider"]
       16 DUPTABLE                         R4 K4 [{"value"}]
       17 SETTABLEKS                       R1 R4 K3 ["value"]
       19 GETTABLEKS                       R5 R0 K5 ["children"]
       21 CALL                             R2 3 -1
       22 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["createUnimplemented"]
       23 GETTABLEKS                       R4 R1 K10 ["createElement"]
       25 GETTABLEKS                       R5 R1 K11 ["createContext"]
       27 DUPTABLE                         R6 K13 [{"createWindowAsync"}]
       28 MOVE                             R7 R3
       29 LOADK                            R8 K12 ["createWindowAsync"]
       30 CALL                             R7 1 1
       31 SETTABLEKS                       R7 R6 K12 ["createWindowAsync"]
       33 CALL                             R5 1 1
       34 DUPCLOSURE                       R6 K14 [PROTO_1]
       35 CAPTURE                          VAL R1
       36 CAPTURE                          VAL R4
       37 CAPTURE                          VAL R5
       38 DUPTABLE                         R7 K17 [{"Context", "Provider"}]
       39 SETTABLEKS                       R5 R7 K15 ["Context"]
       41 SETTABLEKS                       R6 R7 K16 ["Provider"]
       43 RETURN                           R7 1
