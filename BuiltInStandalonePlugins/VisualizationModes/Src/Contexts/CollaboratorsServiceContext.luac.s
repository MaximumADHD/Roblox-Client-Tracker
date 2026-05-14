PROTO_0:
        0 DUPTABLE                         R1 K1 [{"collaboratorsService"}]
        1 GETTABLEKS                       R2 R0 K0 ["collaboratorsService"]
        3 SETTABLEKS                       R2 R1 K0 ["collaboratorsService"]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K2 ["createElement"]
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K3 ["Provider"]
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
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K9 [pcall]
       16 GETIMPORT                        R3 K11 [game]
       18 GETTABLEKS                       R3 R3 K12 ["GetService"]
       20 GETIMPORT                        R4 K11 [game]
       22 LOADK                            R5 K13 ["CollaboratorsService"]
       23 CALL                             R2 3 2
       24 DUPTABLE                         R4 K15 [{"collaboratorsService"}]
       25 SETTABLEKS                       R3 R4 K14 ["collaboratorsService"]
       27 GETTABLEKS                       R5 R1 K16 ["createContext"]
       29 MOVE                             R6 R4
       30 CALL                             R5 1 1
       31 DUPCLOSURE                       R6 K17 [PROTO_0]
       32 CAPTURE                          VAL R1
       33 CAPTURE                          VAL R5
       34 DUPTABLE                         R7 K20 [{"Context", "Provider"}]
       35 SETTABLEKS                       R5 R7 K18 ["Context"]
       37 SETTABLEKS                       R6 R7 K19 ["Provider"]
       39 RETURN                           R7 1
