PROTO_0:
        0 DUPTABLE                         R1 K1 [{"getSettings"}]
        1 GETTABLEKS                       R2 R0 K0 ["getSettings"]
        3 SETTABLEKS                       R2 R1 K0 ["getSettings"]
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
        3 LOADK                            R2 K2 ["FaceControlEditorComponent"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 DUPTABLE                         R3 K9 [{"getSettings"}]
       15 GETIMPORT                        R4 K11 [settings]
       17 SETTABLEKS                       R4 R3 K8 ["getSettings"]
       19 GETTABLEKS                       R4 R2 K12 ["createContext"]
       21 MOVE                             R5 R3
       22 CALL                             R4 1 1
       23 DUPCLOSURE                       R5 K13 [PROTO_0]
       24 CAPTURE                          VAL R2
       25 CAPTURE                          VAL R4
       26 DUPTABLE                         R6 K16 [{"Context", "Provider"}]
       27 SETTABLEKS                       R4 R6 K14 ["Context"]
       29 SETTABLEKS                       R5 R6 K15 ["Provider"]
       31 RETURN                           R6 1
