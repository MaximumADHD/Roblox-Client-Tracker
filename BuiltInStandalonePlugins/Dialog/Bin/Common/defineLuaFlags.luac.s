MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Dialog"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Src"]
        9 GETTABLEKS                       R1 R1 K5 ["Flags"]
       11 NAMECALL                         R1 R1 K6 ["GetChildren"]
       13 CALL                             R1 1 3
       14 FORGPREP                         R1
       15 GETIMPORT                        R6 K8 [require]
       17 MOVE                             R7 R5
       18 CALL                             R6 1 0
       19 FORGLOOP                         R1 2 ; [-5]
       21 NEWTABLE                         R1 0 0
       23 RETURN                           R1 1
