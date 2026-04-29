MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R4 K3 [script]
        5 GETTABLEKS                       R3 R4 K4 ["Parent"]
        7 GETTABLEKS                       R2 R3 K4 ["Parent"]
        9 GETTABLEKS                       R1 R2 K5 ["Roact"]
       11 CALL                             R0 1 1
       12 GETTABLEKS                       R1 R0 K6 ["createContext"]
       14 CALL                             R1 0 1
       15 RETURN                           R1 1
