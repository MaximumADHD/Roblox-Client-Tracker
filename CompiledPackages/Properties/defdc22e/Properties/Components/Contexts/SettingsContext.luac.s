PROTO_0:
        0 DUPTABLE                         R1 K2 [{"colorDisplayModeObservable", "setColorDisplayMode"}]
        1 GETTABLEKS                       R2 R0 K0 ["colorDisplayModeObservable"]
        3 SETTABLEKS                       R2 R1 K0 ["colorDisplayModeObservable"]
        5 GETTABLEKS                       R2 R0 K1 ["setColorDisplayMode"]
        7 SETTABLEKS                       R2 R1 K1 ["setColorDisplayMode"]
        9 GETUPVAL                         R2 0
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R3 R4 K3 ["Provider"]
       13 DUPTABLE                         R4 K5 [{"value"}]
       14 SETTABLEKS                       R1 R4 K4 ["value"]
       16 GETTABLEKS                       R5 R0 K6 ["children"]
       18 CALL                             R2 3 -1
       19 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R3 K7 ["Observable"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R4 K9 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Util"]
       25 GETTABLEKS                       R4 R5 K10 ["createUnimplemented"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R2 K11 ["createElement"]
       30 DUPTABLE                         R5 K14 [{"colorDisplayModeObservable", "setColorDisplayMode"}]
       31 GETTABLEKS                       R6 R1 K15 ["create"]
       33 LOADK                            R7 K16 ["RGB"]
       34 CALL                             R6 1 1
       35 SETTABLEKS                       R6 R5 K12 ["colorDisplayModeObservable"]
       37 MOVE                             R6 R3
       38 LOADK                            R7 K13 ["setColorDisplayMode"]
       39 CALL                             R6 1 1
       40 SETTABLEKS                       R6 R5 K13 ["setColorDisplayMode"]
       42 GETTABLEKS                       R6 R2 K17 ["createContext"]
       44 MOVE                             R7 R5
       45 CALL                             R6 1 1
       46 DUPCLOSURE                       R7 K18 [PROTO_0]
       47 CAPTURE                          VAL R4
       48 CAPTURE                          VAL R6
       49 DUPTABLE                         R8 K21 [{"Context", "Provider"}]
       50 SETTABLEKS                       R6 R8 K19 ["Context"]
       52 SETTABLEKS                       R7 R8 K20 ["Provider"]
       54 RETURN                           R8 1
