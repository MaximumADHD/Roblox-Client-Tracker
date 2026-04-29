MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K8 [{"equals", "filter", "join", "keys", "map", "omit", "union", "values"}]
        2 GETIMPORT                        R1 K10 [require]
        4 GETIMPORT                        R3 K12 [script]
        6 GETTABLEKS                       R2 R3 K0 ["equals"]
        8 CALL                             R1 1 1
        9 SETTABLEKS                       R1 R0 K0 ["equals"]
       11 GETIMPORT                        R1 K10 [require]
       13 GETIMPORT                        R3 K12 [script]
       15 GETTABLEKS                       R2 R3 K1 ["filter"]
       17 CALL                             R1 1 1
       18 SETTABLEKS                       R1 R0 K1 ["filter"]
       20 GETIMPORT                        R1 K10 [require]
       22 GETIMPORT                        R3 K12 [script]
       24 GETTABLEKS                       R2 R3 K2 ["join"]
       26 CALL                             R1 1 1
       27 SETTABLEKS                       R1 R0 K2 ["join"]
       29 GETIMPORT                        R1 K10 [require]
       31 GETIMPORT                        R3 K12 [script]
       33 GETTABLEKS                       R2 R3 K3 ["keys"]
       35 CALL                             R1 1 1
       36 SETTABLEKS                       R1 R0 K3 ["keys"]
       38 GETIMPORT                        R1 K10 [require]
       40 GETIMPORT                        R3 K12 [script]
       42 GETTABLEKS                       R2 R3 K4 ["map"]
       44 CALL                             R1 1 1
       45 SETTABLEKS                       R1 R0 K4 ["map"]
       47 GETIMPORT                        R1 K10 [require]
       49 GETIMPORT                        R3 K12 [script]
       51 GETTABLEKS                       R2 R3 K5 ["omit"]
       53 CALL                             R1 1 1
       54 SETTABLEKS                       R1 R0 K5 ["omit"]
       56 GETIMPORT                        R1 K10 [require]
       58 GETIMPORT                        R3 K12 [script]
       60 GETTABLEKS                       R2 R3 K6 ["union"]
       62 CALL                             R1 1 1
       63 SETTABLEKS                       R1 R0 K6 ["union"]
       65 GETIMPORT                        R1 K10 [require]
       67 GETIMPORT                        R3 K12 [script]
       69 GETTABLEKS                       R2 R3 K7 ["values"]
       71 CALL                             R1 1 1
       72 SETTABLEKS                       R1 R0 K7 ["values"]
       74 RETURN                           R0 1
