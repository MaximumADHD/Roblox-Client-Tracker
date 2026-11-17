MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETIMPORT                        R1 K3 [require]
        5 GETTABLEKS                       R2 R0 K4 ["Bin"]
        7 CALL                             R1 1 1
        8 DUPTABLE                         R2 K7 [{"new", "none"}]
        9 GETTABLEKS                       R3 R1 K5 ["new"]
       11 SETTABLEKS                       R3 R2 K5 ["new"]
       13 GETTABLEKS                       R3 R1 K6 ["none"]
       15 SETTABLEKS                       R3 R2 K6 ["none"]
       17 RETURN                           R2 1
