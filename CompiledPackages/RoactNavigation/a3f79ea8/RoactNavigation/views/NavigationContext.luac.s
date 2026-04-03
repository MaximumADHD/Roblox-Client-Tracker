MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R5 K3 [script]
        5 GETTABLEKS                       R4 R5 K4 ["Parent"]
        7 GETTABLEKS                       R3 R4 K4 ["Parent"]
        9 GETTABLEKS                       R2 R3 K4 ["Parent"]
       11 GETTABLEKS                       R1 R2 K5 ["Roact"]
       13 CALL                             R0 1 1
       14 GETTABLEKS                       R1 R0 K6 ["createContext"]
       16 LOADNIL                          R2
       17 CALL                             R1 1 1
       18 RETURN                           R1 1
