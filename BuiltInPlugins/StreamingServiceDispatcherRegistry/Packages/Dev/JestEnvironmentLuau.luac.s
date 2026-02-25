MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K3 ["_Index"]
        9 GETIMPORT                        R1 K5 [require]
       11 GETTABLEKS                       R3 R0 K6 ["JestEnvironmentLuau"]
       13 GETTABLEKS                       R2 R3 K6 ["JestEnvironmentLuau"]
       15 CALL                             R1 1 1
       16 RETURN                           R1 1
