MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [plugin]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETIMPORT                        R0 K3 [script]
        7 LOADK                            R2 K4 ["ExplorerPlugin"]
        8 NAMECALL                         R0 R0 K5 ["FindFirstAncestor"]
       10 CALL                             R0 2 1
       11 GETIMPORT                        R1 K7 [require]
       13 GETTABLEKS                       R2 R0 K8 ["Packages"]
       15 GETTABLEKS                       R2 R2 K9 ["TestLoader"]
       17 CALL                             R1 1 1
       18 GETTABLEKS                       R2 R1 K10 ["isCli"]
       20 CALL                             R2 0 1
       21 JUMPIFNOT                        R2 ; [+1]
       22 RETURN                           R0 0
       23 GETIMPORT                        R2 K7 [require]
       25 GETTABLEKS                       R3 R0 K11 ["Src"]
       27 GETTABLEKS                       R3 R3 K12 ["Guest"]
       29 GETTABLEKS                       R3 R3 K13 ["startStudioGuest"]
       31 CALL                             R2 1 1
       32 MOVE                             R3 R2
       33 GETIMPORT                        R4 K1 [plugin]
       35 CALL                             R3 1 0
       36 RETURN                           R0 0
