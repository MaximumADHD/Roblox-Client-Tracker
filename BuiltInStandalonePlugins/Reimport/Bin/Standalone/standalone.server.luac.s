MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ReimportPlugin"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Flags"]
       11 GETTABLEKS                       R2 R3 K7 ["GetFFlagEnableReimport"]
       13 CALL                             R1 1 1
       14 MOVE                             R2 R1
       15 CALL                             R2 0 1
       16 JUMPIF                           R2 ; [+1]
       17 RETURN                           R0 0
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R5 R0 K8 ["Packages"]
       22 GETTABLEKS                       R4 R5 K9 ["TestLoader"]
       24 CALL                             R3 1 1
       25 GETTABLEKS                       R2 R3 K10 ["isCli"]
       27 CALL                             R2 0 1
       28 JUMPIFNOT                        R2 ; [+5]
       29 GETIMPORT                        R2 K12 [error]
       31 LOADK                            R3 K13 ["roblox-cli should not be loading standalone plugins"]
       32 CALL                             R2 1 0
       33 RETURN                           R0 0
       34 GETIMPORT                        R2 K15 [plugin]
       36 GETTABLEKS                       R3 R0 K16 ["Name"]
       38 SETTABLEKS                       R3 R2 K16 ["Name"]
       40 RETURN                           R0 0
