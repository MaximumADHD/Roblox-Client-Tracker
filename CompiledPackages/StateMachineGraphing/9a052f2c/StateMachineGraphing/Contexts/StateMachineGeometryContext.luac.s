PROTO_0:
        0 DUPTABLE                         R0 K3 [{"report", "observeGeometry", "observe"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K4 ["set"]
        4 SETTABLEKS                       R1 R0 K0 ["report"]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K5 ["observeMap"]
        9 SETTABLEKS                       R1 R0 K1 ["observeGeometry"]
       11 GETUPVAL                         R1 0
       12 GETTABLEKS                       R1 R1 K2 ["observe"]
       14 SETTABLEKS                       R1 R0 K2 ["observe"]
       16 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["useMemo"]
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          VAL R1
        7 NEWTABLE                         R4 0 1
        9 MOVE                             R5 R1
       10 SETLIST                          R4 R5 1 [1]
       12 CALL                             R2 2 1
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R3 R3 K1 ["createElement"]
       16 GETUPVAL                         R4 2
       17 GETTABLEKS                       R4 R4 K2 ["Provider"]
       19 DUPTABLE                         R5 K4 [{"value"}]
       20 SETTABLEKS                       R2 R5 K3 ["value"]
       22 GETTABLEKS                       R6 R0 K5 ["children"]
       24 CALL                             R3 3 -1
       25 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StateMachineGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["NodeGraphing"]
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
       35 GETTABLEKS                       R5 R1 K11 ["useSignalDispatcher"]
       37 DUPTABLE                         R6 K15 [{"report", "observeGeometry", "observe"}]
       38 GETTABLEKS                       R7 R3 K16 ["createUnimplemented"]
       40 LOADK                            R8 K12 ["report"]
       41 CALL                             R7 1 1
       42 SETTABLEKS                       R7 R6 K12 ["report"]
       44 GETTABLEKS                       R7 R4 K17 ["createSignal"]
       46 NEWTABLE                         R8 0 0
       48 CALL                             R7 1 1
       49 SETTABLEKS                       R7 R6 K13 ["observeGeometry"]
       51 GETTABLEKS                       R7 R3 K16 ["createUnimplemented"]
       53 LOADK                            R8 K14 ["observe"]
       54 CALL                             R7 1 1
       55 SETTABLEKS                       R7 R6 K14 ["observe"]
       57 GETTABLEKS                       R7 R2 K18 ["createContext"]
       59 MOVE                             R8 R6
       60 CALL                             R7 1 1
       61 DUPCLOSURE                       R8 K19 [PROTO_1]
       62 CAPTURE                          VAL R5
       63 CAPTURE                          VAL R2
       64 CAPTURE                          VAL R7
       65 DUPTABLE                         R9 K22 [{"Context", "Provider"}]
       66 SETTABLEKS                       R7 R9 K20 ["Context"]
       68 SETTABLEKS                       R8 R9 K21 ["Provider"]
       70 RETURN                           R9 1
