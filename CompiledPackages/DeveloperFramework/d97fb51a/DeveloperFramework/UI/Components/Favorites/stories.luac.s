PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R0 K3 [{"LowCount", "Favorited", "HighCount"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K4 ["createElement"]
        4 GETUPVAL                         R2 1
        5 DUPTABLE                         R3 K8 [{"Count", "IsFavorited", "OnClick"}]
        6 LOADN                            R4 5
        7 SETTABLEKS                       R4 R3 K5 ["Count"]
        9 LOADB                            R4 0
       10 SETTABLEKS                       R4 R3 K6 ["IsFavorited"]
       12 DUPCLOSURE                       R4 K9 [PROTO_0]
       13 SETTABLEKS                       R4 R3 K7 ["OnClick"]
       15 CALL                             R1 2 1
       16 SETTABLEKS                       R1 R0 K0 ["LowCount"]
       18 GETUPVAL                         R1 0
       19 GETTABLEKS                       R1 R1 K4 ["createElement"]
       21 GETUPVAL                         R2 1
       22 DUPTABLE                         R3 K8 [{"Count", "IsFavorited", "OnClick"}]
       23 LOADN                            R4 10
       24 SETTABLEKS                       R4 R3 K5 ["Count"]
       26 LOADB                            R4 1
       27 SETTABLEKS                       R4 R3 K6 ["IsFavorited"]
       29 DUPCLOSURE                       R4 K10 [PROTO_1]
       30 SETTABLEKS                       R4 R3 K7 ["OnClick"]
       32 CALL                             R1 2 1
       33 SETTABLEKS                       R1 R0 K1 ["Favorited"]
       35 GETUPVAL                         R1 0
       36 GETTABLEKS                       R1 R1 K4 ["createElement"]
       38 GETUPVAL                         R2 1
       39 DUPTABLE                         R3 K8 [{"Count", "IsFavorited", "OnClick"}]
       40 LOADN                            R4 4
       41 SETTABLEKS                       R4 R3 K5 ["Count"]
       43 LOADB                            R4 0
       44 SETTABLEKS                       R4 R3 K6 ["IsFavorited"]
       46 DUPCLOSURE                       R4 K11 [PROTO_2]
       47 SETTABLEKS                       R4 R3 K7 ["OnClick"]
       49 CALL                             R1 2 1
       50 SETTABLEKS                       R1 R0 K2 ["HighCount"]
       52 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETIMPORT                        R3 K1 [script]
       20 GETTABLEKS                       R3 R3 K4 ["Parent"]
       22 CALL                             R2 1 1
       23 DUPCLOSURE                       R3 K8 [PROTO_3]
       24 CAPTURE                          VAL R1
       25 CAPTURE                          VAL R2
       26 RETURN                           R3 1
