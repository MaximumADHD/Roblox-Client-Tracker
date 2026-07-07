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

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 2
        6 JUMPIFNOTEQ                      R1 R2 ; [+2]
        8 LOADB                            R0 0 +1
        9 LOADB                            R0 1
       10 RETURN                           R0 1

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
       37 GETTABLEKS                       R6 R0 K6 ["Parent"]
       39 GETTABLEKS                       R6 R6 K11 ["SignalsUtils"]
       41 CALL                             R5 1 1
       42 DUPTABLE                         R6 K14 [{"observeParameters", "setParameter"}]
       43 GETTABLEKS                       R7 R5 K15 ["of"]
       45 NEWTABLE                         R8 0 0
       47 CALL                             R7 1 1
       48 SETTABLEKS                       R7 R6 K12 ["observeParameters"]
       50 GETTABLEKS                       R7 R3 K16 ["createUnimplemented"]
       52 LOADK                            R8 K13 ["setParameter"]
       53 CALL                             R7 1 1
       54 SETTABLEKS                       R7 R6 K13 ["setParameter"]
       56 GETTABLEKS                       R7 R2 K17 ["createContext"]
       58 MOVE                             R8 R6
       59 CALL                             R7 1 1
       60 DUPCLOSURE                       R8 K18 [PROTO_0]
       61 CAPTURE                          VAL R2
       62 CAPTURE                          VAL R7
       63 DUPCLOSURE                       R9 K19 [PROTO_1]
       64 CAPTURE                          VAL R2
       65 CAPTURE                          VAL R7
       66 CAPTURE                          VAL R6
       67 DUPTABLE                         R10 K23 [{"Context", "Provider", "useConsumerHasParameters"}]
       68 SETTABLEKS                       R7 R10 K20 ["Context"]
       70 SETTABLEKS                       R8 R10 K21 ["Provider"]
       72 SETTABLEKS                       R9 R10 K22 ["useConsumerHasParameters"]
       74 RETURN                           R10 1
