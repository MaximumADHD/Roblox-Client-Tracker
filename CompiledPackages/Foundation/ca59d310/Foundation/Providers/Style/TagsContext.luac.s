PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["No Style Provider found"]
        2 NAMECALL                         R0 R0 K1 ["warning"]
        4 CALL                             R0 2 0
        5 LOADK                            R0 K2 [""]
        6 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Utility"]
       13 GETTABLEKS                       R3 R3 K8 ["Logger"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K6 [require]
       18 GETTABLEKS                       R4 R1 K9 ["React"]
       20 CALL                             R3 1 1
       21 GETTABLEKS                       R4 R3 K10 ["createContext"]
       23 DUPCLOSURE                       R5 K11 [PROTO_0]
       24 CAPTURE                          VAL R2
       25 CALL                             R4 1 1
       26 RETURN                           R4 1
