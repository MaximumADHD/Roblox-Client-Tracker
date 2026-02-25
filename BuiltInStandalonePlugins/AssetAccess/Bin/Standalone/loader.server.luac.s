MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetAccess"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Bin"]
       11 GETTABLEKS                       R3 R4 K7 ["Common"]
       13 GETTABLEKS                       R2 R3 K8 ["defineLuaFlags"]
       15 CALL                             R1 1 0
       16 GETIMPORT                        R1 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Packages"]
       20 GETTABLEKS                       R2 R3 K10 ["TestLoader"]
       22 CALL                             R1 1 1
       23 GETTABLEKS                       R2 R1 K11 ["launch"]
       25 LOADK                            R3 K2 ["AssetAccess"]
       26 GETTABLEKS                       R4 R0 K12 ["Src"]
       28 CALL                             R2 2 0
       29 GETTABLEKS                       R2 R1 K13 ["isCli"]
       31 CALL                             R2 0 1
       32 JUMPIFNOT                        R2 ; [+1]
       33 RETURN                           R0 0
       34 GETIMPORT                        R2 K15 [plugin]
       36 GETTABLEKS                       R3 R0 K16 ["Name"]
       38 SETTABLEKS                       R3 R2 K16 ["Name"]
       40 GETIMPORT                        R2 K5 [require]
       42 GETIMPORT                        R5 K1 [script]
       44 GETTABLEKS                       R4 R5 K17 ["Parent"]
       46 GETTABLEKS                       R3 R4 K18 ["main"]
       48 CALL                             R2 1 1
       49 MOVE                             R3 R2
       50 GETIMPORT                        R4 K15 [plugin]
       52 CALL                             R3 1 0
       53 RETURN                           R0 0
