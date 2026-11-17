MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Footer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Bin"]
       11 GETTABLEKS                       R2 R2 K7 ["Common"]
       13 GETTABLEKS                       R2 R2 K8 ["defineLuaFlags"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K9 ["getFFlagEnableFooter"]
       18 CALL                             R2 0 1
       19 JUMPIF                           R2 ; [+1]
       20 RETURN                           R0 0
       21 GETIMPORT                        R2 K5 [require]
       23 GETTABLEKS                       R3 R0 K6 ["Bin"]
       25 GETTABLEKS                       R3 R3 K7 ["Common"]
       27 GETTABLEKS                       R3 R3 K10 ["pluginType"]
       29 CALL                             R2 1 1
       30 GETTABLEKS                       R3 R2 K11 ["get"]
       32 CALL                             R3 0 1
       33 GETTABLEKS                       R4 R2 K12 ["Standalone"]
       35 JUMPIFEQ                         R3 R4 ; [+2]
       37 RETURN                           R0 0
       38 GETIMPORT                        R3 K5 [require]
       40 GETTABLEKS                       R4 R0 K6 ["Bin"]
       42 GETTABLEKS                       R4 R4 K7 ["Common"]
       44 GETTABLEKS                       R4 R4 K13 ["setup"]
       46 CALL                             R3 1 1
       47 MOVE                             R4 R3
       48 GETIMPORT                        R5 K15 [plugin]
       50 CALL                             R4 1 0
       51 RETURN                           R0 0
