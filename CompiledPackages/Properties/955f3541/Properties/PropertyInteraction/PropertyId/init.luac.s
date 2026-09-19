MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 GETIMPORT                        R1 K1 [require]
        5 GETIMPORT                        R2 K3 [script]
        7 GETTABLEKS                       R2 R2 K4 ["fromClass"]
        9 CALL                             R1 1 1
       10 SETTABLEKS                       R1 R0 K4 ["fromClass"]
       12 GETIMPORT                        R1 K1 [require]
       14 GETIMPORT                        R2 K3 [script]
       16 GETTABLEKS                       R2 R2 K5 ["fromAttribute"]
       18 CALL                             R1 1 1
       19 SETTABLEKS                       R1 R0 K5 ["fromAttribute"]
       21 GETIMPORT                        R1 K1 [require]
       23 GETIMPORT                        R2 K3 [script]
       25 GETTABLEKS                       R2 R2 K6 ["fromTag"]
       27 CALL                             R1 1 1
       28 SETTABLEKS                       R1 R0 K6 ["fromTag"]
       30 GETIMPORT                        R1 K1 [require]
       32 GETIMPORT                        R2 K3 [script]
       34 GETTABLEKS                       R2 R2 K7 ["fromInstance"]
       36 CALL                             R1 1 1
       37 SETTABLEKS                       R1 R0 K7 ["fromInstance"]
       39 RETURN                           R0 1
