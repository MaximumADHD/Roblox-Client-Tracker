MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["CollectionDebugger"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Bin"]
       11 GETTABLEKS                       R2 R2 K7 ["Common"]
       13 GETTABLEKS                       R2 R2 K8 ["defineLuaFlags"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K9 ["getFFlagEnableCollectionDebuggerPlugin"]
       18 CALL                             R2 0 1
       19 JUMPIF                           R2 ; [+1]
       20 RETURN                           R0 0
       21 GETIMPORT                        R2 K5 [require]
       23 GETTABLEKS                       R3 R0 K10 ["Packages"]
       25 GETTABLEKS                       R3 R3 K11 ["TestLoader"]
       27 CALL                             R2 1 1
       28 GETTABLEKS                       R3 R2 K12 ["isCli"]
       30 CALL                             R3 0 1
       31 JUMPIFNOT                        R3 ; [+1]
       32 RETURN                           R0 0
       33 GETIMPORT                        R3 K5 [require]
       35 GETTABLEKS                       R4 R0 K6 ["Bin"]
       37 GETTABLEKS                       R4 R4 K7 ["Common"]
       39 GETTABLEKS                       R4 R4 K13 ["pluginType"]
       41 CALL                             R3 1 1
       42 GETTABLEKS                       R4 R3 K14 ["get"]
       44 CALL                             R4 0 1
       45 GETTABLEKS                       R5 R3 K15 ["Standalone"]
       47 JUMPIFEQ                         R4 R5 ; [+2]
       49 RETURN                           R0 0
       50 GETIMPORT                        R4 K5 [require]
       52 GETTABLEKS                       R5 R0 K6 ["Bin"]
       54 GETTABLEKS                       R5 R5 K7 ["Common"]
       56 GETTABLEKS                       R5 R5 K16 ["setup"]
       58 CALL                             R4 1 1
       59 GETIMPORT                        R5 K5 [require]
       61 GETTABLEKS                       R6 R0 K6 ["Bin"]
       63 GETTABLEKS                       R6 R6 K7 ["Common"]
       65 GETTABLEKS                       R6 R6 K17 ["setupMain"]
       67 CALL                             R5 1 1
       68 MOVE                             R6 R4
       69 GETIMPORT                        R7 K19 [plugin]
       71 MOVE                             R8 R5
       72 CALL                             R6 2 0
       73 RETURN                           R0 0
