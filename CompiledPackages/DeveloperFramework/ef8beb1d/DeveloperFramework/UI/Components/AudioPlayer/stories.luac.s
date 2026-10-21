PROTO_0:
        0 DUPTABLE                         R0 K2 [{[1] = "rbxassetid://1837461008"}]
        1 DUPTABLE                         R1 K4 [{"Default"}]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K5 ["createElement"]
        5 GETUPVAL                         R3 1
        6 MOVE                             R4 R0
        7 CALL                             R2 2 1
        8 SETTABLEKS                       R2 R1 K3 ["Default"]
       10 RETURN                           R1 1

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
       23 DUPCLOSURE                       R3 K8 [PROTO_0]
       24 CAPTURE                          VAL R1
       25 CAPTURE                          VAL R2
       26 RETURN                           R3 1
