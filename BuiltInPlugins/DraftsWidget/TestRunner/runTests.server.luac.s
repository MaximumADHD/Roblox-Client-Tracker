MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R3 K3 [script]
        5 GETTABLEKS                       R2 R3 K4 ["Parent"]
        7 GETTABLEKS                       R1 R2 K5 ["defineLuaFlags"]
        9 CALL                             R0 1 0
       10 GETIMPORT                        R2 K3 [script]
       12 GETTABLEKS                       R1 R2 K4 ["Parent"]
       14 GETTABLEKS                       R0 R1 K4 ["Parent"]
       16 GETTABLEKS                       R1 R0 K6 ["Src"]
       18 RETURN                           R0 0
