PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useState"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 2
        5 DUPTABLE                         R3 K3 [{"renameBoxActiveFor", "setRenameBoxActiveFor"}]
        6 SETTABLEKS                       R1 R3 K1 ["renameBoxActiveFor"]
        8 SETTABLEKS                       R2 R3 K2 ["setRenameBoxActiveFor"]
       10 GETUPVAL                         R4 1
       11 GETUPVAL                         R6 2
       12 GETTABLEKS                       R5 R6 K4 ["Provider"]
       14 DUPTABLE                         R6 K6 [{"value"}]
       15 SETTABLEKS                       R3 R6 K5 ["value"]
       17 GETTABLEKS                       R7 R0 K7 ["children"]
       19 CALL                             R4 3 -1
       20 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["RpcTypes"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Util"]
       23 GETTABLEKS                       R4 R5 K10 ["createUnimplemented"]
       25 CALL                             R3 1 1
       26 GETTABLEKS                       R4 R1 K11 ["createElement"]
       28 DUPTABLE                         R5 K14 [{"renameBoxActiveFor", "setRenameBoxActiveFor"}]
       29 LOADNIL                          R6
       30 SETTABLEKS                       R6 R5 K12 ["renameBoxActiveFor"]
       32 MOVE                             R6 R3
       33 LOADK                            R7 K13 ["setRenameBoxActiveFor"]
       34 CALL                             R6 1 1
       35 SETTABLEKS                       R6 R5 K13 ["setRenameBoxActiveFor"]
       37 GETTABLEKS                       R6 R1 K15 ["createContext"]
       39 MOVE                             R7 R5
       40 CALL                             R6 1 1
       41 DUPCLOSURE                       R7 K16 [PROTO_0]
       42 CAPTURE                          VAL R1
       43 CAPTURE                          VAL R4
       44 CAPTURE                          VAL R6
       45 DUPTABLE                         R8 K19 [{"Context", "Provider"}]
       46 SETTABLEKS                       R6 R8 K17 ["Context"]
       48 SETTABLEKS                       R7 R8 K18 ["Provider"]
       50 RETURN                           R8 1
