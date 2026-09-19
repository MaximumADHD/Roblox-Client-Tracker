PROTO_0:
        0 DUPTABLE                         R0 K1 [{"selectionService"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["selectionService"]
        4 SETTABLEKS                       R1 R0 K0 ["selectionService"]
        6 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useMemo"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 NEWTABLE                         R3 0 1
        7 GETTABLEKS                       R4 R0 K1 ["selectionService"]
        9 SETLIST                          R3 R4 1 [1]
       11 CALL                             R1 2 1
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K2 ["createElement"]
       15 GETUPVAL                         R3 1
       16 GETTABLEKS                       R3 R3 K3 ["Provider"]
       18 DUPTABLE                         R4 K5 [{"value"}]
       19 SETTABLEKS                       R1 R4 K4 ["value"]
       21 GETTABLEKS                       R5 R0 K6 ["children"]
       23 CALL                             R2 3 -1
       24 RETURN                           R2 -1

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
       27 DUPCLOSURE                       R5 K15 [PROTO_1]
       28 CAPTURE                          VAL R2
       29 CAPTURE                          VAL R4
       30 DUPTABLE                         R6 K18 [{"Context", "Provider"}]
       31 SETTABLEKS                       R4 R6 K16 ["Context"]
       33 SETTABLEKS                       R5 R6 K17 ["Provider"]
       35 RETURN                           R6 1
