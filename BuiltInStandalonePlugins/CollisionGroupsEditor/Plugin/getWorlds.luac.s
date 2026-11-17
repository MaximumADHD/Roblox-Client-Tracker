MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["createGetWorlds"]
        9 CALL                             R0 1 1
       10 MOVE                             R1 R0
       11 GETIMPORT                        R2 K7 [game]
       13 LOADK                            R4 K8 ["CollectionService"]
       14 NAMECALL                         R2 R2 K9 ["GetService"]
       16 CALL                             R2 2 -1
       17 CALL                             R1 -1 -1
       18 RETURN                           R1 -1
