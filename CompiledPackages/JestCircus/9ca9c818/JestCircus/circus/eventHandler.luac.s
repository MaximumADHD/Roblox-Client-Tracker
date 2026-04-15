MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R3 K3 [script]
        5 GETTABLEKS                       R2 R3 K4 ["Parent"]
        7 GETTABLEKS                       R1 R2 K5 ["combined"]
        9 CALL                             R0 1 1
       10 NEWTABLE                         R1 1 0
       12 GETTABLEKS                       R2 R0 K6 ["eventHandler"]
       14 SETTABLEKS                       R2 R1 K7 ["default"]
       16 RETURN                           R1 1
