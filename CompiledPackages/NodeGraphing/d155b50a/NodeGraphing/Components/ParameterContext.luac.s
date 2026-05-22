PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Provider"]
        6 DUPTABLE                         R3 K3 [{"value"}]
        7 GETTABLEKS                       R4 R0 K2 ["value"]
        9 SETTABLEKS                       R4 R3 K2 ["value"]
       11 GETTABLEKS                       R4 R0 K4 ["children"]
       13 CALL                             R1 3 -1
       14 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["NodeGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R4 K9 ["ReactUtils"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Parent"]
       32 GETTABLEKS                       R5 R5 K10 ["Signals"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K11 ["Util"]
       39 GETTABLEKS                       R6 R6 K10 ["Signals"]
       41 GETTABLEKS                       R6 R6 K12 ["SignalsUtils"]
       43 CALL                             R5 1 1
       44 DUPTABLE                         R6 K15 [{"observeParameters", "setParameter"}]
       45 GETTABLEKS                       R7 R5 K16 ["of"]
       47 NEWTABLE                         R8 0 0
       49 CALL                             R7 1 1
       50 SETTABLEKS                       R7 R6 K13 ["observeParameters"]
       52 GETTABLEKS                       R7 R3 K17 ["createUnimplemented"]
       54 LOADK                            R8 K14 ["setParameter"]
       55 CALL                             R7 1 1
       56 SETTABLEKS                       R7 R6 K14 ["setParameter"]
       58 GETTABLEKS                       R7 R2 K18 ["createContext"]
       60 MOVE                             R8 R6
       61 CALL                             R7 1 1
       62 DUPCLOSURE                       R8 K19 [PROTO_0]
       63 CAPTURE                          VAL R2
       64 CAPTURE                          VAL R7
       65 DUPTABLE                         R9 K22 [{"Context", "Provider"}]
       66 SETTABLEKS                       R7 R9 K20 ["Context"]
       68 SETTABLEKS                       R8 R9 K21 ["Provider"]
       70 RETURN                           R9 1
