PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["uuid"]
        3 LOADK                            R3 K1 ["InputAction"]
        4 CALL                             R1 2 1
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R2 R3 K2 ["createElement"]
        8 GETUPVAL                         R3 2
        9 DUPTABLE                         R4 K7 [{"depth", "item", "itemType", "LayoutOrder", "uuid"}]
       10 LOADN                            R5 1
       11 SETTABLEKS                       R5 R4 K3 ["depth"]
       13 SETTABLEKS                       R1 R4 K4 ["item"]
       15 LOADK                            R5 K1 ["InputAction"]
       16 SETTABLEKS                       R5 R4 K5 ["itemType"]
       18 GETTABLEKS                       R5 R0 K6 ["LayoutOrder"]
       20 SETTABLEKS                       R5 R4 K6 ["LayoutOrder"]
       22 GETTABLEKS                       R5 R0 K0 ["uuid"]
       24 SETTABLEKS                       R5 R4 K0 ["uuid"]
       26 CALL                             R2 2 -1
       27 RETURN                           R2 -1

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
       16 GETTABLEKS                       R6 R0 K8 ["Src"]
       18 GETTABLEKS                       R5 R6 K9 ["Components"]
       20 GETTABLEKS                       R4 R5 K10 ["Tree"]
       22 GETTABLEKS                       R3 R4 K11 ["Row"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R5 R0 K8 ["Src"]
       29 GETTABLEKS                       R4 R5 K12 ["Types"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R7 R0 K8 ["Src"]
       36 GETTABLEKS                       R6 R7 K13 ["Hooks"]
       38 GETTABLEKS                       R5 R6 K14 ["useItem"]
       40 CALL                             R4 1 1
       41 DUPCLOSURE                       R5 K15 [PROTO_0]
       42 CAPTURE                          VAL R4
       43 CAPTURE                          VAL R1
       44 CAPTURE                          VAL R2
       45 RETURN                           R5 1
