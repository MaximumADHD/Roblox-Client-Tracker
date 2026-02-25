MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["join"]
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R6 R0 K9 ["Src"]
       20 GETTABLEKS                       R5 R6 K10 ["Types"]
       22 GETTABLEKS                       R4 R5 K11 ["Enums"]
       24 CALL                             R3 1 1
       25 MOVE                             R4 R2
       26 NEWTABLE                         R5 0 0
       28 MOVE                             R6 R3
       29 CALL                             R4 2 1
       30 RETURN                           R4 1
