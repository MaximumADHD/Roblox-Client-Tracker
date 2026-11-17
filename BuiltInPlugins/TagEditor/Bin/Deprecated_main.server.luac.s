MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["ImprovePluginSpeed_TagEditor"]
        4 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        6 CALL                             R0 2 1
        7 JUMPIFNOT                        R0 ; [+1]
        8 RETURN                           R0 0
        9 GETIMPORT                        R0 K5 [require]
       11 GETIMPORT                        R1 K7 [script]
       13 GETTABLEKS                       R1 R1 K8 ["Parent"]
       15 GETTABLEKS                       R1 R1 K9 ["main"]
       17 CALL                             R0 1 1
       18 MOVE                             R1 R0
       19 GETIMPORT                        R2 K11 [plugin]
       21 CALL                             R1 1 0
       22 RETURN                           R0 0
