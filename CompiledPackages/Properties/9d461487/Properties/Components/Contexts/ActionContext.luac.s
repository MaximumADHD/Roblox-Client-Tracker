PROTO_0:
        0 DUPTABLE                         R1 K1 [{"bindToAction"}]
        1 GETTABLEKS                       R2 R0 K0 ["bindToAction"]
        3 SETTABLEKS                       R2 R1 K0 ["bindToAction"]
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
       21 GETTABLEKS                       R3 R1 K9 ["createElement"]
       23 GETTABLEKS                       R4 R2 K10 ["createUnimplemented"]
       25 DUPTABLE                         R5 K12 [{"bindToAction"}]
       26 MOVE                             R6 R4
       27 LOADK                            R7 K11 ["bindToAction"]
       28 CALL                             R6 1 1
       29 SETTABLEKS                       R6 R5 K11 ["bindToAction"]
       31 GETTABLEKS                       R6 R1 K13 ["createContext"]
       33 MOVE                             R7 R5
       34 CALL                             R6 1 1
       35 LOADK                            R7 K14 ["ActionContext"]
       36 SETTABLEKS                       R7 R6 K15 ["displayName"]
       38 DUPCLOSURE                       R7 K16 [PROTO_0]
       39 CAPTURE                          VAL R3
       40 CAPTURE                          VAL R6
       41 DUPTABLE                         R8 K19 [{"Context", "Provider"}]
       42 SETTABLEKS                       R6 R8 K17 ["Context"]
       44 SETTABLEKS                       R7 R8 K18 ["Provider"]
       46 RETURN                           R8 1
