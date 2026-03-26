MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Util"]
       13 GETTABLEKS                       R2 R3 K8 ["enumerate"]
       15 CALL                             R1 1 1
       16 MOVE                             R2 R1
       17 LOADK                            R3 K9 ["ViewType"]
       18 DUPTABLE                         R4 K13 [{"List", "Grid", "Unsupported"}]
       19 LOADN                            R5 1
       20 SETTABLEKS                       R5 R4 K10 ["List"]
       22 LOADN                            R5 2
       23 SETTABLEKS                       R5 R4 K11 ["Grid"]
       25 LOADN                            R5 3
       26 SETTABLEKS                       R5 R4 K12 ["Unsupported"]
       28 CALL                             R2 2 -1
       29 RETURN                           R2 -1
