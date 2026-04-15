PROTO_0:
        0 DUPTABLE                         R0 K1 [{"SoundId"}]
        1 LOADK                            R1 K2 ["rbxassetid://1837461008"]
        2 SETTABLEKS                       R1 R0 K0 ["SoundId"]
        4 DUPTABLE                         R1 K4 [{"Default"}]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K5 ["createElement"]
        8 GETUPVAL                         R3 1
        9 MOVE                             R4 R0
       10 CALL                             R2 2 1
       11 SETTABLEKS                       R2 R1 K3 ["Default"]
       13 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R3 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETIMPORT                        R4 K1 [script]
       20 GETTABLEKS                       R3 R4 K4 ["Parent"]
       22 CALL                             R2 1 1
       23 DUPCLOSURE                       R3 K8 [PROTO_0]
       24 CAPTURE                          VAL R1
       25 CAPTURE                          VAL R2
       26 RETURN                           R3 1
