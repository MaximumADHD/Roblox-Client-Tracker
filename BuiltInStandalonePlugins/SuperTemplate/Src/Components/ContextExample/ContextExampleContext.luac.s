PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Provider"]
        6 DUPTABLE                         R3 K3 [{"value"}]
        7 LOADK                            R4 K4 ["woof I'm a dog"]
        8 SETTABLEKS                       R4 R3 K2 ["value"]
       10 GETTABLEKS                       R4 R0 K5 ["children"]
       12 CALL                             R1 3 -1
       13 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Provider"]
        6 DUPTABLE                         R3 K3 [{"value"}]
        7 LOADK                            R4 K4 ["meow meow I'm a cat"]
        8 SETTABLEKS                       R4 R3 K2 ["value"]
       10 GETTABLEKS                       R4 R0 K5 ["children"]
       12 CALL                             R1 3 -1
       13 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["SuperTemplate"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["createContext"]
       16 LOADNIL                          R3
       17 CALL                             R2 1 1
       18 DUPCLOSURE                       R3 K9 [PROTO_0]
       19 CAPTURE                          VAL R1
       20 CAPTURE                          VAL R2
       21 DUPCLOSURE                       R4 K10 [PROTO_1]
       22 CAPTURE                          VAL R1
       23 CAPTURE                          VAL R2
       24 DUPTABLE                         R5 K14 [{"Context", "Provider", "MockProvider"}]
       25 SETTABLEKS                       R2 R5 K11 ["Context"]
       27 SETTABLEKS                       R3 R5 K12 ["Provider"]
       29 SETTABLEKS                       R4 R5 K13 ["MockProvider"]
       31 RETURN                           R5 1
