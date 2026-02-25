MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R5 K3 [script]
        5 GETTABLEKS                       R4 R5 K4 ["Parent"]
        7 GETTABLEKS                       R3 R4 K4 ["Parent"]
        9 GETTABLEKS                       R2 R3 K4 ["Parent"]
       11 GETTABLEKS                       R1 R2 K5 ["Logger"]
       13 CALL                             R0 1 1
       14 GETTABLEKS                       R1 R0 K6 ["new"]
       16 CALL                             R1 0 1
       17 DUPTABLE                         R4 K8 [{"root"}]
       18 LOADK                            R5 K7 ["root"]
       19 SETTABLEKS                       R5 R4 K7 ["root"]
       21 NAMECALL                         R2 R1 K9 ["setContext"]
       23 CALL                             R2 2 0
       24 RETURN                           R1 1
