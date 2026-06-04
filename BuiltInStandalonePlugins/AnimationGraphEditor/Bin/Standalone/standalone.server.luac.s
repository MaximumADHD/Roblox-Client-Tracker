MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationGraphEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Bin"]
       11 GETTABLEKS                       R2 R2 K7 ["Common"]
       13 GETTABLEKS                       R2 R2 K8 ["defineLuaFlags"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K9 ["getFFlagEnableAnimationGraphEditor"]
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
       39 GETTABLEKS                       R4 R0 K10 ["Packages"]
       41 GETTABLEKS                       R4 R4 K16 ["ReactDeveloperTools"]
       43 CALL                             R3 1 1
       44 GETTABLEKS                       R4 R3 K17 ["tryEnableDevtools"]
       46 DUPTABLE                         R5 K20 [{"pluginName", "profileOnStart"}]
       47 LOADK                            R6 K2 ["AnimationGraphEditor"]
       48 SETTABLEKS                       R6 R5 K18 ["pluginName"]
       50 LOADB                            R6 0
       51 SETTABLEKS                       R6 R5 K19 ["profileOnStart"]
       53 CALL                             R4 1 0
       54 GETIMPORT                        R4 K5 [require]
       56 GETTABLEKS                       R5 R0 K6 ["Bin"]
       58 GETTABLEKS                       R5 R5 K7 ["Common"]
       60 GETTABLEKS                       R5 R5 K21 ["setup"]
       62 CALL                             R4 1 1
       63 MOVE                             R5 R4
       64 GETIMPORT                        R6 K23 [plugin]
       66 LOADK                            R7 K24 ["ui"]
       67 CALL                             R5 2 0
       68 RETURN                           R0 0
