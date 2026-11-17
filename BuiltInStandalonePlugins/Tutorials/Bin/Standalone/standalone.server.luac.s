PROTO_0:
        0 GETIMPORT                        R0 K1 [plugin]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["Name"]
        5 SETTABLEKS                       R1 R0 K2 ["Name"]
        7 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["StudioService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 NAMECALL                         R0 R0 K4 ["HasInternalPermission"]
        9 CALL                             R0 1 1
       10 JUMPIF                           R0 ; [+1]
       11 RETURN                           R0 0
       12 GETIMPORT                        R0 K6 [script]
       14 GETTABLEKS                       R0 R0 K7 ["Parent"]
       16 GETTABLEKS                       R0 R0 K7 ["Parent"]
       18 GETTABLEKS                       R0 R0 K8 ["Common"]
       20 GETIMPORT                        R1 K10 [require]
       22 GETTABLEKS                       R2 R0 K11 ["defineLuaFlags"]
       24 CALL                             R1 1 0
       25 GETIMPORT                        R1 K13 [plugin]
       27 JUMPIF                           R1 ; [+1]
       28 RETURN                           R0 0
       29 GETIMPORT                        R1 K6 [script]
       31 GETTABLEKS                       R1 R1 K7 ["Parent"]
       33 GETTABLEKS                       R1 R1 K7 ["Parent"]
       35 GETTABLEKS                       R1 R1 K7 ["Parent"]
       37 GETIMPORT                        R2 K10 [require]
       39 GETTABLEKS                       R3 R1 K14 ["Packages"]
       41 GETTABLEKS                       R3 R3 K15 ["TestLoader"]
       43 CALL                             R2 1 1
       44 GETTABLEKS                       R3 R2 K16 ["isCli"]
       46 CALL                             R3 0 1
       47 JUMPIFNOT                        R3 ; [+1]
       48 RETURN                           R0 0
       49 DUPCLOSURE                       R3 K17 [PROTO_0]
       50 CAPTURE                          VAL R1
       51 GETIMPORT                        R4 K13 [plugin]
       53 GETTABLEKS                       R5 R1 K18 ["Name"]
       55 SETTABLEKS                       R5 R4 K18 ["Name"]
       57 RETURN                           R0 0
