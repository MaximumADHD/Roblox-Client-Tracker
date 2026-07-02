MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 LOADK                            R3 K3 ["Foundation"]
        6 NAMECALL                         R1 R0 K4 ["FindFirstAncestor"]
        8 CALL                             R1 2 1
        9 GETTABLEKS                       R2 R1 K2 ["Parent"]
       11 GETIMPORT                        R3 K6 [require]
       13 GETTABLEKS                       R4 R2 K7 ["React"]
       15 CALL                             R3 1 1
       16 GETTABLEKS                       R4 R3 K8 ["createContext"]
       18 NEWTABLE                         R5 0 0
       20 CALL                             R4 1 1
       21 RETURN                           R4 1
