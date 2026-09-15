MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Bin"]
       11 GETTABLEKS                       R2 R2 K7 ["Common"]
       13 GETTABLEKS                       R2 R2 K8 ["defineLuaFlags"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K9 ["getFFlagEnableInputActionManager"]
       18 CALL                             R2 0 1
       19 JUMPIF                           R2 ; [+1]
       20 RETURN                           R0 0
       21 GETIMPORT                        R2 K5 [require]
       23 GETTABLEKS                       R3 R0 K10 ["Packages"]
       25 GETTABLEKS                       R3 R3 K11 ["TestLoader"]
       27 CALL                             R2 1 1
       28 GETTABLEKS                       R3 R2 K12 ["isCli"]
       30 CALL                             R3 0 1
       31 JUMPIFNOT                        R3 ; [+5]
       32 GETIMPORT                        R3 K14 [error]
       34 LOADK                            R4 K15 ["roblox-cli should not be loading standalone plugins"]
       35 CALL                             R3 1 0
       36 RETURN                           R0 0
       37 GETIMPORT                        R3 K5 [require]
       39 GETTABLEKS                       R4 R0 K6 ["Bin"]
       41 GETTABLEKS                       R4 R4 K7 ["Common"]
       43 GETTABLEKS                       R4 R4 K16 ["pluginType"]
       45 CALL                             R3 1 1
       46 GETTABLEKS                       R4 R3 K17 ["get"]
       48 CALL                             R4 0 1
       49 GETTABLEKS                       R5 R3 K18 ["Standalone"]
       51 JUMPIFEQ                         R4 R5 ; [+2]
       53 RETURN                           R0 0
       54 GETIMPORT                        R4 K5 [require]
       56 GETTABLEKS                       R5 R0 K6 ["Bin"]
       58 GETTABLEKS                       R5 R5 K7 ["Common"]
       60 GETTABLEKS                       R5 R5 K19 ["StudioNetworking"]
       62 CALL                             R4 1 1
       63 GETTABLEKS                       R5 R4 K20 ["create"]
       65 DUPTABLE                         R6 K26 [{["plugin"], ["isGuest"] = True, ["isHost"] = False}]
       66 GETIMPORT                        R7 K27 [plugin]
       68 SETTABLEKS                       R7 R6 K21 ["plugin"]
       70 CALL                             R5 1 0
       71 GETIMPORT                        R5 K5 [require]
       73 GETTABLEKS                       R6 R0 K6 ["Bin"]
       75 GETTABLEKS                       R6 R6 K7 ["Common"]
       77 GETTABLEKS                       R6 R6 K28 ["setup"]
       79 CALL                             R5 1 1
       80 GETIMPORT                        R6 K5 [require]
       82 GETTABLEKS                       R7 R0 K6 ["Bin"]
       84 GETTABLEKS                       R7 R7 K7 ["Common"]
       86 GETTABLEKS                       R7 R7 K29 ["setupMain"]
       88 CALL                             R6 1 1
       89 MOVE                             R7 R5
       90 GETIMPORT                        R8 K27 [plugin]
       92 MOVE                             R9 R6
       93 CALL                             R7 2 0
       94 RETURN                           R0 0
