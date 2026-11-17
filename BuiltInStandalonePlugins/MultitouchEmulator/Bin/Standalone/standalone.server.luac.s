MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["MultitouchEmulator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["TestLoader"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["isCli"]
       16 CALL                             R2 0 1
       17 JUMPIFNOT                        R2 ; [+5]
       18 GETIMPORT                        R2 K10 [error]
       20 LOADK                            R3 K11 ["roblox-cli should not be loading standalone plugins"]
       21 CALL                             R2 1 0
       22 RETURN                           R0 0
       23 GETIMPORT                        R2 K5 [require]
       25 GETTABLEKS                       R3 R0 K12 ["Bin"]
       27 GETTABLEKS                       R3 R3 K13 ["Common"]
       29 GETTABLEKS                       R3 R3 K14 ["pluginType"]
       31 CALL                             R2 1 1
       32 GETTABLEKS                       R3 R2 K15 ["get"]
       34 CALL                             R3 0 1
       35 GETTABLEKS                       R4 R2 K16 ["Standalone"]
       37 JUMPIFEQ                         R3 R4 ; [+2]
       39 RETURN                           R0 0
       40 RETURN                           R0 0
