MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Bin"]
       11 GETTABLEKS                       R3 R4 K7 ["Common"]
       13 GETTABLEKS                       R2 R3 K8 ["defineLuaFlags"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K9 ["getFFlagEnableInputActionManager"]
       18 CALL                             R2 0 1
       19 JUMPIF                           R2 ; [+1]
       20 RETURN                           R0 0
       21 GETIMPORT                        R2 K11 [print]
       23 LOADK                            R3 K12 ["InputActionManager Loaded! Meow Meow! This is a test!"]
       24 CALL                             R2 1 0
       25 GETIMPORT                        R2 K5 [require]
       27 GETTABLEKS                       R4 R0 K13 ["Packages"]
       29 GETTABLEKS                       R3 R4 K14 ["TestLoader"]
       31 CALL                             R2 1 1
       32 GETTABLEKS                       R3 R2 K15 ["isCli"]
       34 CALL                             R3 0 1
       35 JUMPIFNOT                        R3 ; [+5]
       36 GETIMPORT                        R3 K17 [error]
       38 LOADK                            R4 K18 ["roblox-cli should not be loading standalone plugins"]
       39 CALL                             R3 1 0
       40 RETURN                           R0 0
       41 GETIMPORT                        R3 K5 [require]
       43 GETTABLEKS                       R6 R0 K6 ["Bin"]
       45 GETTABLEKS                       R5 R6 K7 ["Common"]
       47 GETTABLEKS                       R4 R5 K19 ["pluginType"]
       49 CALL                             R3 1 1
       50 GETTABLEKS                       R4 R3 K20 ["get"]
       52 CALL                             R4 0 1
       53 GETTABLEKS                       R5 R3 K21 ["Standalone"]
       55 JUMPIFEQ                         R4 R5 ; [+2]
       57 RETURN                           R0 0
       58 GETIMPORT                        R4 K5 [require]
       60 GETTABLEKS                       R7 R0 K6 ["Bin"]
       62 GETTABLEKS                       R6 R7 K7 ["Common"]
       64 GETTABLEKS                       R5 R6 K22 ["StudioNetworking"]
       66 CALL                             R4 1 1
       67 GETTABLEKS                       R5 R4 K23 ["create"]
       69 DUPTABLE                         R6 K27 [{"plugin", "isGuest", "isHost"}]
       70 GETIMPORT                        R7 K28 [plugin]
       72 SETTABLEKS                       R7 R6 K24 ["plugin"]
       74 LOADB                            R7 1
       75 SETTABLEKS                       R7 R6 K25 ["isGuest"]
       77 LOADB                            R7 0
       78 SETTABLEKS                       R7 R6 K26 ["isHost"]
       80 CALL                             R5 1 0
       81 GETIMPORT                        R5 K5 [require]
       83 GETTABLEKS                       R8 R0 K6 ["Bin"]
       85 GETTABLEKS                       R7 R8 K7 ["Common"]
       87 GETTABLEKS                       R6 R7 K29 ["setup"]
       89 CALL                             R5 1 1
       90 GETIMPORT                        R6 K5 [require]
       92 GETTABLEKS                       R9 R0 K6 ["Bin"]
       94 GETTABLEKS                       R8 R9 K7 ["Common"]
       96 GETTABLEKS                       R7 R8 K30 ["setupMain"]
       98 CALL                             R6 1 1
       99 MOVE                             R7 R5
      100 GETIMPORT                        R8 K28 [plugin]
      102 MOVE                             R9 R6
      103 CALL                             R7 2 0
      104 RETURN                           R0 0
