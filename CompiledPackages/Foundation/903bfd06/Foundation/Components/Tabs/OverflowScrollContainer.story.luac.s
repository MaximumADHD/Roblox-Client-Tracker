PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 LOADN                            R4 1
        3 LOADN                            R2 10
        4 LOADN                            R3 1
        5 FORNPREP                         R2
        6 LOADK                            R6 K0 ["Child%*"]
        7 MOVE                             R8 R4
        8 NAMECALL                         R6 R6 K1 ["format"]
       10 CALL                             R6 2 1
       11 MOVE                             R5 R6
       12 GETUPVAL                         R6 0
       13 GETTABLEKS                       R6 R6 K2 ["createElement"]
       15 LOADK                            R7 K3 ["Frame"]
       16 DUPTABLE                         R8 K5 [{"Size"}]
       17 GETIMPORT                        R9 K8 [UDim2.fromOffset]
       19 LOADN                            R10 100
       20 LOADN                            R11 32
       21 CALL                             R9 2 1
       22 SETTABLEKS                       R9 R8 K4 ["Size"]
       24 CALL                             R6 2 1
       25 SETTABLE                         R6 R1 R5
       26 FORNLOOP                         R2
       27 GETUPVAL                         R2 0
       28 GETTABLEKS                       R2 R2 K2 ["createElement"]
       30 GETUPVAL                         R3 1
       31 DUPTABLE                         R4 K10 [{"size"}]
       32 GETTABLEKS                       R5 R0 K9 ["size"]
       34 SETTABLEKS                       R5 R4 K9 ["size"]
       36 DUPTABLE                         R5 K12 [{"Content"}]
       37 GETUPVAL                         R6 0
       38 GETTABLEKS                       R6 R6 K2 ["createElement"]
       40 GETUPVAL                         R7 2
       41 DUPTABLE                         R8 K14 [{"tag"}]
       42 LOADK                            R9 K15 ["auto-xy row gap-small"]
       43 SETTABLEKS                       R9 R8 K13 ["tag"]
       45 MOVE                             R9 R1
       46 CALL                             R6 3 1
       47 SETTABLEKS                       R6 R5 K11 ["Content"]
       49 CALL                             R2 3 -1
       50 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Dash"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Enums"]
       23 GETTABLEKS                       R5 R5 K10 ["InputSize"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K11 ["Components"]
       30 GETTABLEKS                       R6 R6 K12 ["View"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETIMPORT                        R7 K1 [script]
       37 GETTABLEKS                       R7 R7 K4 ["Parent"]
       39 GETTABLEKS                       R7 R7 K13 ["OverflowScrollContainer"]
       41 CALL                             R6 1 1
       42 DUPTABLE                         R7 K16 [{"controls", "story"}]
       43 DUPTABLE                         R8 K18 [{"size"}]
       44 GETTABLEKS                       R9 R2 K19 ["values"]
       46 MOVE                             R10 R4
       47 CALL                             R9 1 1
       48 SETTABLEKS                       R9 R8 K17 ["size"]
       50 SETTABLEKS                       R8 R7 K14 ["controls"]
       52 DUPCLOSURE                       R8 K20 [PROTO_0]
       53 CAPTURE                          VAL R3
       54 CAPTURE                          VAL R6
       55 CAPTURE                          VAL R5
       56 SETTABLEKS                       R8 R7 K15 ["story"]
       58 RETURN                           R7 1
