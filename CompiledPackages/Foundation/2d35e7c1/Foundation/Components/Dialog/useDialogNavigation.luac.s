MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R4 K1 [script]
       11 GETTABLEKS                       R3 R4 K6 ["Parent"]
       13 GETTABLEKS                       R2 R3 K7 ["DialogContext"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R4 R0 K8 ["Utility"]
       20 GETTABLEKS                       R3 R4 K9 ["createUseModalNavigation"]
       22 CALL                             R2 1 1
       23 MOVE                             R3 R2
       24 MOVE                             R4 R1
       25 CALL                             R3 1 -1
       26 RETURN                           R3 -1
