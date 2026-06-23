PROTO_0:
        0 JUMPIFNOT                        R2 ; [+36]
        1 NEWTABLE                         R4 4 0
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R5 R5 K0 ["XSmall"]
        6 GETTABLEKS                       R6 R0 K1 ["Size"]
        8 GETTABLEKS                       R6 R6 K2 ["Size_300"]
       10 SETTABLE                         R6 R4 R5
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R5 R5 K3 ["Small"]
       14 GETTABLEKS                       R6 R0 K1 ["Size"]
       16 GETTABLEKS                       R6 R6 K4 ["Size_400"]
       18 SETTABLE                         R6 R4 R5
       19 GETUPVAL                         R5 0
       20 GETTABLEKS                       R5 R5 K5 ["Medium"]
       22 GETTABLEKS                       R6 R0 K1 ["Size"]
       24 GETTABLEKS                       R6 R6 K6 ["Size_500"]
       26 SETTABLE                         R6 R4 R5
       27 GETUPVAL                         R5 0
       28 GETTABLEKS                       R5 R5 K7 ["Large"]
       30 GETTABLEKS                       R6 R0 K1 ["Size"]
       32 GETTABLEKS                       R6 R6 K8 ["Size_600"]
       34 SETTABLE                         R6 R4 R5
       35 GETTABLE                         R3 R4 R1
       36 RETURN                           R3 1
       37 NEWTABLE                         R4 4 0
       39 GETUPVAL                         R5 0
       40 GETTABLEKS                       R5 R5 K0 ["XSmall"]
       42 GETTABLEKS                       R6 R0 K1 ["Size"]
       44 GETTABLEKS                       R6 R6 K8 ["Size_600"]
       46 SETTABLE                         R6 R4 R5
       47 GETUPVAL                         R5 0
       48 GETTABLEKS                       R5 R5 K3 ["Small"]
       50 GETTABLEKS                       R6 R0 K1 ["Size"]
       52 GETTABLEKS                       R6 R6 K9 ["Size_800"]
       54 SETTABLE                         R6 R4 R5
       55 GETUPVAL                         R5 0
       56 GETTABLEKS                       R5 R5 K5 ["Medium"]
       58 GETTABLEKS                       R6 R0 K1 ["Size"]
       60 GETTABLEKS                       R6 R6 K10 ["Size_1000"]
       62 SETTABLE                         R6 R4 R5
       63 GETUPVAL                         R5 0
       64 GETTABLEKS                       R5 R5 K7 ["Large"]
       66 GETTABLEKS                       R6 R0 K1 ["Size"]
       68 GETTABLEKS                       R6 R6 K11 ["Size_1200"]
       70 SETTABLE                         R6 R4 R5
       71 GETTABLE                         R3 R4 R1
       72 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Enums"]
       11 GETTABLEKS                       R2 R2 K7 ["InputSize"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Providers"]
       18 GETTABLEKS                       R3 R3 K9 ["Style"]
       20 GETTABLEKS                       R3 R3 K10 ["Tokens"]
       22 CALL                             R2 1 1
       23 DUPCLOSURE                       R3 K11 [PROTO_0]
       24 CAPTURE                          VAL R1
       25 RETURN                           R3 1
