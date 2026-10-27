MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K3 [{"getUnique", "getAll", "getAny"}]
        2 GETIMPORT                        R1 K5 [require]
        4 GETIMPORT                        R2 K7 [script]
        6 GETTABLEKS                       R2 R2 K0 ["getUnique"]
        8 CALL                             R1 1 1
        9 SETTABLEKS                       R1 R0 K0 ["getUnique"]
       11 GETIMPORT                        R1 K5 [require]
       13 GETIMPORT                        R2 K7 [script]
       15 GETTABLEKS                       R2 R2 K1 ["getAll"]
       17 CALL                             R1 1 1
       18 SETTABLEKS                       R1 R0 K1 ["getAll"]
       20 GETIMPORT                        R1 K5 [require]
       22 GETIMPORT                        R2 K7 [script]
       24 GETTABLEKS                       R2 R2 K2 ["getAny"]
       26 CALL                             R1 1 1
       27 SETTABLEKS                       R1 R0 K2 ["getAny"]
       29 RETURN                           R0 1
