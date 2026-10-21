MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["enumerate"]
       15 CALL                             R1 1 1
       16 MOVE                             R2 R1
       17 LOADK                            R3 K9 ["ViewType"]
       18 DUPTABLE                         R4 K16 [{["List"] = 1, ["Grid"] = 2, ["Unsupported"] = 3}]
       19 CALL                             R2 2 -1
       20 RETURN                           R2 -1
