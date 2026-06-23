MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K2 ["UI"]
       13 GETTABLEKS                       R2 R2 K7 ["ContextServices"]
       15 GETTABLEKS                       R2 R2 K8 ["ContextItem"]
       17 CALL                             R1 1 1
       18 LOADK                            R4 K9 ["Navigation"]
       19 NAMECALL                         R2 R1 K10 ["createSimple"]
       21 CALL                             R2 2 -1
       22 RETURN                           R2 -1
