PROTO_0:
        0 DUPTABLE                         R1 K1 [{"selectionService"}]
        1 GETTABLEKS                       R2 R0 K0 ["selectionService"]
        3 SETTABLEKS                       R2 R1 K0 ["selectionService"]
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
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["Selection"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R0 K10 ["Parent"]
       17 GETTABLEKS                       R3 R3 K11 ["React"]
       19 CALL                             R2 1 1
       20 DUPTABLE                         R3 K13 [{"selectionService"}]
       21 SETTABLEKS                       R1 R3 K12 ["selectionService"]
       23 GETTABLEKS                       R4 R2 K14 ["createContext"]
       25 MOVE                             R5 R3
       26 CALL                             R4 1 1
       27 DUPCLOSURE                       R5 K15 [PROTO_0]
       28 CAPTURE                          VAL R2
       29 CAPTURE                          VAL R4
       30 DUPTABLE                         R6 K18 [{"Context", "Provider"}]
       31 SETTABLEKS                       R4 R6 K16 ["Context"]
       33 SETTABLEKS                       R5 R6 K17 ["Provider"]
       35 RETURN                           R6 1
