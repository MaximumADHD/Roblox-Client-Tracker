PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createSignal"]
        3 LOADN                            R1 0
        4 CALL                             R0 1 2
        5 DUPTABLE                         R2 K3 [{"observeRightEdge", "setRightEdge"}]
        6 SETTABLEKS                       R0 R2 K1 ["observeRightEdge"]
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          VAL R1
       10 SETTABLEKS                       R3 R2 K2 ["setRightEdge"]
       12 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useMemo"]
        3 DUPCLOSURE                       R2 K1 [PROTO_1]
        4 CAPTURE                          UPVAL U1
        5 NEWTABLE                         R3 0 0
        7 CALL                             R1 2 1
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K2 ["createElement"]
       11 GETUPVAL                         R3 2
       12 GETTABLEKS                       R3 R3 K3 ["Provider"]
       14 DUPTABLE                         R4 K5 [{"value"}]
       15 SETTABLEKS                       R1 R4 K4 ["value"]
       17 GETTABLEKS                       R5 R0 K6 ["children"]
       19 CALL                             R2 3 -1
       20 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["NodeGraphing"]
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
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R4 K9 ["Signals"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Parent"]
       32 GETTABLEKS                       R5 R5 K10 ["SignalsUtils"]
       34 CALL                             R4 1 1
       35 DUPTABLE                         R5 K13 [{"observeRightEdge", "setRightEdge"}]
       36 GETTABLEKS                       R6 R4 K14 ["of"]
       38 LOADN                            R7 0
       39 CALL                             R6 1 1
       40 SETTABLEKS                       R6 R5 K11 ["observeRightEdge"]
       42 GETTABLEKS                       R6 R2 K15 ["createUnimplemented"]
       44 LOADK                            R7 K12 ["setRightEdge"]
       45 CALL                             R6 1 1
       46 SETTABLEKS                       R6 R5 K12 ["setRightEdge"]
       48 GETTABLEKS                       R6 R1 K16 ["createContext"]
       50 MOVE                             R7 R5
       51 CALL                             R6 1 1
       52 DUPCLOSURE                       R7 K17 [PROTO_2]
       53 CAPTURE                          VAL R1
       54 CAPTURE                          VAL R3
       55 CAPTURE                          VAL R6
       56 DUPTABLE                         R8 K21 [{"Context", "Provider", "default"}]
       57 SETTABLEKS                       R6 R8 K18 ["Context"]
       59 SETTABLEKS                       R7 R8 K19 ["Provider"]
       61 SETTABLEKS                       R5 R8 K20 ["default"]
       63 RETURN                           R8 1
