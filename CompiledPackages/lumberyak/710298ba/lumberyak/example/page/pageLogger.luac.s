MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K4 ["Parent"]
        9 GETTABLEKS                       R1 R1 K4 ["Parent"]
       11 GETTABLEKS                       R1 R1 K5 ["Logger"]
       13 CALL                             R0 1 1
       14 GETTABLEKS                       R1 R0 K6 ["new"]
       16 CALL                             R1 0 1
       17 DUPTABLE                         R4 K8 [{"foo"}]
       18 LOADK                            R5 K7 ["foo"]
       19 SETTABLEKS                       R5 R4 K7 ["foo"]
       21 NAMECALL                         R2 R1 K9 ["setContext"]
       23 CALL                             R2 2 0
       24 RETURN                           R1 1
