MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["join"]
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R4 R0 K9 ["Src"]
       20 GETTABLEKS                       R4 R4 K10 ["Types"]
       22 GETTABLEKS                       R4 R4 K11 ["Generation"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K5 [require]
       27 GETTABLEKS                       R5 R0 K9 ["Src"]
       29 GETTABLEKS                       R5 R5 K10 ["Types"]
       31 GETTABLEKS                       R5 R5 K12 ["PrivateEnums"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K5 [require]
       36 GETTABLEKS                       R6 R0 K9 ["Src"]
       38 GETTABLEKS                       R6 R6 K10 ["Types"]
       40 GETTABLEKS                       R6 R6 K13 ["PublicEnums"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K5 [require]
       45 GETTABLEKS                       R7 R0 K9 ["Src"]
       47 GETTABLEKS                       R7 R7 K10 ["Types"]
       49 GETTABLEKS                       R7 R7 K14 ["Settings"]
       51 CALL                             R6 1 1
       52 GETIMPORT                        R7 K5 [require]
       54 GETTABLEKS                       R8 R0 K9 ["Src"]
       56 GETTABLEKS                       R8 R8 K10 ["Types"]
       58 GETTABLEKS                       R8 R8 K15 ["Tools"]
       60 CALL                             R7 1 1
       61 MOVE                             R8 R2
       62 NEWTABLE                         R9 0 0
       64 MOVE                             R10 R3
       65 MOVE                             R11 R4
       66 MOVE                             R12 R5
       67 MOVE                             R13 R6
       68 MOVE                             R14 R7
       69 CALL                             R8 6 1
       70 RETURN                           R8 1
