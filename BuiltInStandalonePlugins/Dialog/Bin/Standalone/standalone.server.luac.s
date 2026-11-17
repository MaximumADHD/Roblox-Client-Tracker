MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Dialog"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Bin"]
       11 GETTABLEKS                       R2 R2 K7 ["Common"]
       13 GETTABLEKS                       R2 R2 K8 ["defineLuaFlags"]
       15 CALL                             R1 1 0
       16 GETIMPORT                        R1 K5 [require]
       18 GETTABLEKS                       R2 R0 K6 ["Bin"]
       20 GETTABLEKS                       R2 R2 K7 ["Common"]
       22 GETTABLEKS                       R2 R2 K9 ["pluginType"]
       24 CALL                             R1 1 1
       25 GETTABLEKS                       R2 R1 K10 ["get"]
       27 CALL                             R2 0 1
       28 GETTABLEKS                       R3 R1 K11 ["Standalone"]
       30 JUMPIFEQ                         R2 R3 ; [+2]
       32 RETURN                           R0 0
       33 GETIMPORT                        R2 K5 [require]
       35 GETTABLEKS                       R3 R0 K6 ["Bin"]
       37 GETTABLEKS                       R3 R3 K7 ["Common"]
       39 GETTABLEKS                       R3 R3 K12 ["setup"]
       41 CALL                             R2 1 1
       42 MOVE                             R3 R2
       43 GETIMPORT                        R4 K14 [plugin]
       45 CALL                             R3 1 0
       46 RETURN                           R0 0
