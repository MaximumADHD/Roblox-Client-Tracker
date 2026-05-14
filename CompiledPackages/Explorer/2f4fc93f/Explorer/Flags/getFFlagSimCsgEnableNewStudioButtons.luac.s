MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Flags"]
       11 GETTABLEKS                       R2 R2 K7 ["createGetSafeFFlag"]
       13 CALL                             R1 1 1
       14 MOVE                             R2 R1
       15 LOADK                            R3 K8 ["SimCsgEnableNewStudioButtons"]
       16 CALL                             R2 1 -1
       17 RETURN                           R2 -1
