PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETTABLEKS                       R3 R1 K0 ["Config"]
        4 GETTABLEKS                       R3 R3 K1 ["UI"]
        6 GETTABLEKS                       R3 R3 K2 ["Scale"]
        8 MUL                              R2 R0 R3
        9 GETTABLEKS                       R3 R1 K3 ["Size"]
       11 GETTABLEKS                       R3 R3 K4 ["Size_3000"]
       13 JUMPIFNOTLE                      R2 R3 ; [+6]
       15 GETUPVAL                         R3 1
       16 LOADK                            R5 K5 ["useScaledValue should be used for values larger than Size tokens. For smaller values, please align to a Size or derivative token."]
       17 NAMECALL                         R3 R3 K6 ["warning"]
       19 CALL                             R3 2 0
       20 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Utility"]
       11 GETTABLEKS                       R2 R2 K7 ["Logger"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Providers"]
       18 GETTABLEKS                       R3 R3 K9 ["Style"]
       20 GETTABLEKS                       R3 R3 K10 ["useTokens"]
       22 CALL                             R2 1 1
       23 DUPCLOSURE                       R3 K11 [PROTO_0]
       24 CAPTURE                          VAL R2
       25 CAPTURE                          VAL R1
       26 RETURN                           R3 1
