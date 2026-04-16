MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Providers"]
       11 GETTABLEKS                       R3 R4 K7 ["Style"]
       13 GETTABLEKS                       R2 R3 K8 ["Tokens"]
       15 CALL                             R1 1 1
       16 NEWTABLE                         R2 0 0
       18 RETURN                           R2 1
