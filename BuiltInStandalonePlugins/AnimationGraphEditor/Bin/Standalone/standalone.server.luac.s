MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationGraphEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [plugin]
        9 LOADK                            R3 K6 ["__RBX_PreInit"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstChild"]
       12 CALL                             R1 2 1
       13 JUMPIFEQKNIL                     R1 ; [+4]
       15 LOADNIL                          R2
       16 SETTABLEKS                       R2 R1 K8 ["Parent"]
       18 GETIMPORT                        R2 K10 [require]
       20 GETTABLEKS                       R3 R0 K11 ["Packages"]
       22 GETTABLEKS                       R3 R3 K12 ["TestLoader"]
       24 CALL                             R2 1 1
       25 GETTABLEKS                       R3 R2 K13 ["isCli"]
       27 CALL                             R3 0 1
       28 JUMPIFNOT                        R3 ; [+5]
       29 GETIMPORT                        R3 K15 [error]
       31 LOADK                            R4 K16 ["roblox-cli should not be loading standalone plugins"]
       32 CALL                             R3 1 0
       33 RETURN                           R0 0
       34 GETIMPORT                        R3 K10 [require]
       36 GETTABLEKS                       R4 R0 K11 ["Packages"]
       38 GETTABLEKS                       R4 R4 K17 ["ReactDeveloperTools"]
       40 CALL                             R3 1 1
       41 GETTABLEKS                       R4 R3 K18 ["tryEnableDevtools"]
       43 DUPTABLE                         R5 K22 [{["pluginName"] = "AnimationGraphEditor", ["profileOnStart"] = False}]
       44 CALL                             R4 1 0
       45 GETIMPORT                        R4 K10 [require]
       47 GETTABLEKS                       R5 R0 K23 ["Bin"]
       49 GETTABLEKS                       R5 R5 K24 ["Common"]
       51 GETTABLEKS                       R5 R5 K25 ["setup"]
       53 CALL                             R4 1 1
       54 MOVE                             R5 R4
       55 GETIMPORT                        R6 K5 [plugin]
       57 LOADK                            R7 K26 ["ui"]
       58 CALL                             R5 2 0
       59 RETURN                           R0 0
