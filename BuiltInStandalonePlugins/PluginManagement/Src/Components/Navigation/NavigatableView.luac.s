PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["new"]
        3 DUPTABLE                         R2 K2 [{"navigation"}]
        4 GETTABLEKS                       R4 R0 K3 ["props"]
        6 GETTABLEKS                       R3 R4 K1 ["navigation"]
        8 SETTABLEKS                       R3 R2 K1 ["navigation"]
       10 CALL                             R1 1 1
       11 SETTABLEKS                       R1 R0 K1 ["navigation"]
       13 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["provide"]
        3 NEWTABLE                         R2 0 1
        5 GETTABLEKS                       R3 R0 K1 ["navigation"]
        7 SETLIST                          R2 R3 1 [1]
        9 NEWTABLE                         R3 0 1
       11 GETTABLEKS                       R5 R0 K2 ["props"]
       13 GETUPVAL                         R7 1
       14 GETTABLEKS                       R6 R7 K3 ["Children"]
       16 GETTABLE                         R4 R5 R6
       17 SETLIST                          R3 R4 1 [1]
       19 CALL                             R1 2 -1
       20 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R3 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R3 K6 ["Roact"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R3 K4 [require]
       20 GETTABLEKS                       R5 R0 K5 ["Packages"]
       22 GETTABLEKS                       R4 R5 K7 ["Framework"]
       24 CALL                             R3 1 1
       25 GETTABLEKS                       R2 R3 K8 ["ContextServices"]
       27 GETIMPORT                        R3 K4 [require]
       29 GETTABLEKS                       R6 R0 K9 ["Src"]
       31 GETTABLEKS                       R5 R6 K8 ["ContextServices"]
       33 GETTABLEKS                       R4 R5 K10 ["Navigation"]
       35 CALL                             R3 1 1
       36 GETTABLEKS                       R4 R1 K11 ["Component"]
       38 LOADK                            R6 K12 ["NavigatableView"]
       39 NAMECALL                         R4 R4 K13 ["extend"]
       41 CALL                             R4 2 1
       42 DUPCLOSURE                       R5 K14 [PROTO_0]
       43 CAPTURE                          VAL R3
       44 SETTABLEKS                       R5 R4 K15 ["init"]
       46 DUPCLOSURE                       R5 K16 [PROTO_1]
       47 CAPTURE                          VAL R2
       48 CAPTURE                          VAL R1
       49 SETTABLEKS                       R5 R4 K17 ["render"]
       51 RETURN                           R4 1
