MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceAnnotations"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["CrossDMCallbacks"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R1 R1 K9 ["registerStandaloneCallbacks"]
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R3 R0 K10 ["Packages"]
       22 GETTABLEKS                       R3 R3 K11 ["TestLoader"]
       24 CALL                             R2 1 1
       25 GETTABLEKS                       R3 R2 K12 ["isCli"]
       27 CALL                             R3 0 1
       28 JUMPIFNOT                        R3 ; [+5]
       29 GETIMPORT                        R3 K14 [error]
       31 LOADK                            R4 K15 ["roblox-cli should not be loading standalone plugins"]
       32 CALL                             R3 1 0
       33 RETURN                           R0 0
       34 GETIMPORT                        R3 K5 [require]
       36 GETTABLEKS                       R4 R0 K16 ["Bin"]
       38 GETTABLEKS                       R4 R4 K17 ["Common"]
       40 GETTABLEKS                       R4 R4 K18 ["pluginType"]
       42 CALL                             R3 1 1
       43 GETTABLEKS                       R4 R3 K19 ["get"]
       45 CALL                             R4 0 1
       46 GETTABLEKS                       R5 R3 K20 ["Standalone"]
       48 JUMPIFEQ                         R4 R5 ; [+2]
       50 RETURN                           R0 0
       51 MOVE                             R4 R1
       52 GETIMPORT                        R5 K22 [plugin]
       54 CALL                             R4 1 0
       55 GETIMPORT                        R4 K5 [require]
       57 GETTABLEKS                       R5 R0 K16 ["Bin"]
       59 GETTABLEKS                       R5 R5 K17 ["Common"]
       61 GETTABLEKS                       R5 R5 K23 ["setup"]
       63 CALL                             R4 1 1
       64 GETIMPORT                        R5 K5 [require]
       66 GETTABLEKS                       R6 R0 K16 ["Bin"]
       68 GETTABLEKS                       R6 R6 K17 ["Common"]
       70 GETTABLEKS                       R6 R6 K24 ["setupMain"]
       72 CALL                             R5 1 1
       73 MOVE                             R6 R4
       74 GETIMPORT                        R7 K22 [plugin]
       76 MOVE                             R8 R5
       77 CALL                             R6 2 0
       78 RETURN                           R0 0
