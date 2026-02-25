PROTO_0:
        0 DUPTABLE                         R1 K1 [{"actionsComponent"}]
        1 GETTABLEKS                       R2 R0 K0 ["actionsComponent"]
        3 SETTABLEKS                       R2 R1 K0 ["actionsComponent"]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K2 ["createElement"]
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R3 R4 K3 ["Provider"]
       11 DUPTABLE                         R4 K5 [{"value"}]
       12 SETTABLEKS                       R1 R4 K4 ["value"]
       14 GETTABLEKS                       R5 R0 K6 ["children"]
       16 CALL                             R2 3 -1
       17 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["VisualizationModes"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R4 K9 ["Types"]
       20 CALL                             R2 1 1
       21 DUPTABLE                         R3 K11 [{"actionsComponent"}]
       22 LOADNIL                          R4
       23 SETTABLEKS                       R4 R3 K10 ["actionsComponent"]
       25 GETTABLEKS                       R4 R1 K12 ["createContext"]
       27 MOVE                             R5 R3
       28 CALL                             R4 1 1
       29 DUPCLOSURE                       R5 K13 [PROTO_0]
       30 CAPTURE                          VAL R1
       31 CAPTURE                          VAL R4
       32 DUPTABLE                         R6 K16 [{"Context", "Provider"}]
       33 SETTABLEKS                       R4 R6 K14 ["Context"]
       35 SETTABLEKS                       R5 R6 K15 ["Provider"]
       37 RETURN                           R6 1
