PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R3 R4 K0 ["FoundationFixUseScaledValueWarning"]
        5 JUMPIFNOT                        R3 ; [+8]
        6 GETTABLEKS                       R5 R1 K1 ["Config"]
        8 GETTABLEKS                       R4 R5 K2 ["UI"]
       10 GETTABLEKS                       R3 R4 K3 ["Scale"]
       12 MUL                              R2 R0 R3
       13 JUMP                             ; [+1]
       14 MOVE                             R2 R0
       15 GETTABLEKS                       R4 R1 K4 ["Size"]
       17 GETTABLEKS                       R3 R4 K5 ["Size_3000"]
       19 JUMPIFNOTLE                      R2 R3 ; [+6]
       21 GETUPVAL                         R3 2
       22 LOADK                            R5 K6 ["useScaledValue should be used for values larger than Size tokens. For smaller values, please align to a Size or derivative token."]
       23 NAMECALL                         R3 R3 K7 ["warning"]
       25 CALL                             R3 2 0
       26 GETUPVAL                         R4 1
       27 GETTABLEKS                       R3 R4 K0 ["FoundationFixUseScaledValueWarning"]
       29 JUMPIFNOT                        R3 ; [+1]
       30 RETURN                           R2 1
       31 GETTABLEKS                       R6 R1 K1 ["Config"]
       33 GETTABLEKS                       R5 R6 K2 ["UI"]
       35 GETTABLEKS                       R4 R5 K3 ["Scale"]
       37 MUL                              R3 R0 R4
       38 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Utility"]
       11 GETTABLEKS                       R2 R3 K7 ["Flags"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Utility"]
       18 GETTABLEKS                       R3 R4 K8 ["Logger"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R6 R0 K9 ["Providers"]
       25 GETTABLEKS                       R5 R6 K10 ["Style"]
       27 GETTABLEKS                       R4 R5 K11 ["useTokens"]
       29 CALL                             R3 1 1
       30 DUPCLOSURE                       R4 K12 [PROTO_0]
       31 CAPTURE                          VAL R3
       32 CAPTURE                          VAL R1
       33 CAPTURE                          VAL R2
       34 RETURN                           R4 1
