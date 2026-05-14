MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R1 R0 K2 ["Parent"]
        9 GETIMPORT                        R2 K4 [require]
       11 GETTABLEKS                       R3 R1 K5 ["React"]
       13 CALL                             R2 1 1
       14 NEWTABLE                         R3 0 0
       16 GETTABLEKS                       R4 R2 K6 ["createContext"]
       18 MOVE                             R5 R3
       19 CALL                             R4 1 1
       20 RETURN                           R4 1
