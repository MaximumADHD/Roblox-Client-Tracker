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
       20 GETTABLEKS                       R3 R0 K11 ["Bin"]
       22 GETTABLEKS                       R3 R3 K12 ["Common"]
       24 GETTABLEKS                       R3 R3 K13 ["defineLuaFlags"]
       26 CALL                             R2 1 1
       27 GETTABLEKS                       R3 R2 K14 ["getFFlagEnableAnimationGraphEditor"]
       29 CALL                             R3 0 1
       30 JUMPIF                           R3 ; [+1]
       31 RETURN                           R0 0
       32 GETIMPORT                        R3 K10 [require]
       34 GETTABLEKS                       R4 R0 K15 ["Packages"]
       36 GETTABLEKS                       R4 R4 K16 ["TestLoader"]
       38 CALL                             R3 1 1
       39 GETTABLEKS                       R4 R3 K17 ["isCli"]
       41 CALL                             R4 0 1
       42 JUMPIFNOT                        R4 ; [+5]
       43 GETIMPORT                        R4 K19 [error]
       45 LOADK                            R5 K20 ["roblox-cli should not be loading standalone plugins"]
       46 CALL                             R4 1 0
       47 RETURN                           R0 0
       48 GETIMPORT                        R4 K10 [require]
       50 GETTABLEKS                       R5 R0 K15 ["Packages"]
       52 GETTABLEKS                       R5 R5 K21 ["ReactDeveloperTools"]
       54 CALL                             R4 1 1
       55 GETTABLEKS                       R5 R4 K22 ["tryEnableDevtools"]
       57 DUPTABLE                         R6 K25 [{"pluginName", "profileOnStart"}]
       58 LOADK                            R7 K2 ["AnimationGraphEditor"]
       59 SETTABLEKS                       R7 R6 K23 ["pluginName"]
       61 LOADB                            R7 0
       62 SETTABLEKS                       R7 R6 K24 ["profileOnStart"]
       64 CALL                             R5 1 0
       65 GETIMPORT                        R5 K10 [require]
       67 GETTABLEKS                       R6 R0 K11 ["Bin"]
       69 GETTABLEKS                       R6 R6 K12 ["Common"]
       71 GETTABLEKS                       R6 R6 K26 ["setup"]
       73 CALL                             R5 1 1
       74 MOVE                             R6 R5
       75 GETIMPORT                        R7 K5 [plugin]
       77 LOADK                            R8 K27 ["ui"]
       78 CALL                             R6 2 0
       79 RETURN                           R0 0
