MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R3 R0 K5 ["Bin"]
       11 GETTABLEKS                       R2 R3 K6 ["defineLuaFlags"]
       13 CALL                             R1 1 0
       14 GETTABLEKS                       R1 R0 K7 ["Src"]
       16 GETTABLEKS                       R2 R0 K8 ["Packages"]
       18 RETURN                           R0 0
