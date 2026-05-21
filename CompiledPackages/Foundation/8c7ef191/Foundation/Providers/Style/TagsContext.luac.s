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
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Utility"]
       18 GETTABLEKS                       R4 R4 K9 ["Logger"]
       20 CALL                             R3 1 1
       21 GETTABLEKS                       R4 R2 K10 ["createContext"]
       23 DUPCLOSURE                       R5 K11 [PROTO_0]
       24 CAPTURE                          VAL R3
       25 CALL                             R4 1 1
       26 RETURN                           R4 1
