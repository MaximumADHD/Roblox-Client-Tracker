PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["Provider"]
        6 DUPTABLE                         R3 K3 [{"value"}]
        7 GETTABLEKS                       R4 R0 K2 ["value"]
        9 SETTABLEKS                       R4 R3 K2 ["value"]
       11 GETTABLEKS                       R4 R0 K4 ["children"]
       13 CALL                             R1 3 -1
       14 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R5 K10 ["Types"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R2 K11 ["createUnimplemented"]
       30 DUPTABLE                         R5 K19 [{"Destroy", "getIconAsync", "Request", "GetContextsAsync", "UpdateContext", "UpdateAction", "UpdateBinding"}]
       31 MOVE                             R6 R4
       32 LOADK                            R7 K12 ["Destroy"]
       33 CALL                             R6 1 1
       34 SETTABLEKS                       R6 R5 K12 ["Destroy"]
       36 MOVE                             R6 R4
       37 LOADK                            R7 K13 ["getIconAsync"]
       38 CALL                             R6 1 1
       39 SETTABLEKS                       R6 R5 K13 ["getIconAsync"]
       41 MOVE                             R6 R4
       42 LOADK                            R7 K14 ["Request"]
       43 CALL                             R6 1 1
       44 SETTABLEKS                       R6 R5 K14 ["Request"]
       46 MOVE                             R6 R4
       47 LOADK                            R7 K15 ["GetContextsAsync"]
       48 CALL                             R6 1 1
       49 SETTABLEKS                       R6 R5 K15 ["GetContextsAsync"]
       51 MOVE                             R6 R4
       52 LOADK                            R7 K16 ["UpdateContext"]
       53 CALL                             R6 1 1
       54 SETTABLEKS                       R6 R5 K16 ["UpdateContext"]
       56 MOVE                             R6 R4
       57 LOADK                            R7 K17 ["UpdateAction"]
       58 CALL                             R6 1 1
       59 SETTABLEKS                       R6 R5 K17 ["UpdateAction"]
       61 MOVE                             R6 R4
       62 LOADK                            R7 K18 ["UpdateBinding"]
       63 CALL                             R6 1 1
       64 SETTABLEKS                       R6 R5 K18 ["UpdateBinding"]
       66 GETTABLEKS                       R6 R1 K20 ["createContext"]
       68 MOVE                             R7 R5
       69 CALL                             R6 1 1
       70 DUPCLOSURE                       R7 K21 [PROTO_0]
       71 CAPTURE                          VAL R1
       72 CAPTURE                          VAL R6
       73 DUPTABLE                         R8 K24 [{"Context", "Provider"}]
       74 SETTABLEKS                       R6 R8 K22 ["Context"]
       76 SETTABLEKS                       R7 R8 K23 ["Provider"]
       78 RETURN                           R8 1
