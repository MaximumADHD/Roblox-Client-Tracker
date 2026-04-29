PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["Provider"]
        6 DUPTABLE                         R3 K3 [{"value"}]
        7 GETUPVAL                         R4 2
        8 SETTABLEKS                       R4 R3 K2 ["value"]
       10 GETTABLEKS                       R4 R0 K4 ["children"]
       12 CALL                             R1 3 -1
       13 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["ContextActionService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["InputActionManager"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R4 R1 K10 ["Packages"]
       17 GETTABLEKS                       R3 R4 K11 ["React"]
       19 CALL                             R2 1 1
       20 NAMECALL                         R3 R0 K12 ["GetInputSchemaKeyCodeTree"]
       22 CALL                             R3 1 1
       23 GETTABLEKS                       R4 R2 K13 ["createContext"]
       25 MOVE                             R5 R3
       26 CALL                             R4 1 1
       27 DUPCLOSURE                       R5 K14 [PROTO_0]
       28 CAPTURE                          VAL R2
       29 CAPTURE                          VAL R4
       30 CAPTURE                          VAL R3
       31 DUPTABLE                         R6 K17 [{"Context", "Provider"}]
       32 SETTABLEKS                       R4 R6 K15 ["Context"]
       34 SETTABLEKS                       R5 R6 K16 ["Provider"]
       36 RETURN                           R6 1
