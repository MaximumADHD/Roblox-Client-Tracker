PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["Vector3"] ; [+48]
        7 GETTABLEKS                       R1 R0 K3 ["X"]
        9 GETTABLEKS                       R2 R0 K3 ["X"]
       11 JUMPIFNOTEQ                      R1 R2 ; [+13]
       13 GETTABLEKS                       R1 R0 K4 ["Y"]
       15 GETTABLEKS                       R2 R0 K4 ["Y"]
       17 JUMPIFNOTEQ                      R1 R2 ; [+7]
       19 GETTABLEKS                       R1 R0 K5 ["Z"]
       21 GETTABLEKS                       R2 R0 K5 ["Z"]
       23 JUMPIFEQ                         R1 R2 ; [+3]
       25 LOADB                            R1 1
       26 RETURN                           R1 1
       27 GETTABLEKS                       R1 R0 K3 ["X"]
       29 JUMPIFEQKN                       R1 K6 [∞] ; [+21]
       31 GETTABLEKS                       R1 R0 K3 ["X"]
       33 JUMPIFEQKN                       R1 K7 [-∞] ; [+17]
       35 GETTABLEKS                       R1 R0 K4 ["Y"]
       37 JUMPIFEQKN                       R1 K6 [∞] ; [+13]
       39 GETTABLEKS                       R1 R0 K4 ["Y"]
       41 JUMPIFEQKN                       R1 K7 [-∞] ; [+9]
       43 GETTABLEKS                       R1 R0 K5 ["Z"]
       45 JUMPIFEQKN                       R1 K6 [∞] ; [+5]
       47 GETTABLEKS                       R1 R0 K5 ["Z"]
       49 JUMPIFNOTEQKN                    R1 K7 [-∞] ; [+43]
       51 LOADB                            R1 1
       52 RETURN                           R1 1
       53 JUMP                             ; [+39]
       54 FASTCALL1                        TYPEOF R0 ; [+3]
       55 MOVE                             R2 R0
       56 GETIMPORT                        R1 K1 [typeof]
       58 CALL                             R1 1 1
       59 JUMPIFNOTEQKS                    R1 K8 ["Vector2"] ; [+33]
       61 GETTABLEKS                       R1 R0 K3 ["X"]
       63 GETTABLEKS                       R2 R0 K3 ["X"]
       65 JUMPIFNOTEQ                      R1 R2 ; [+7]
       67 GETTABLEKS                       R1 R0 K4 ["Y"]
       69 GETTABLEKS                       R2 R0 K4 ["Y"]
       71 JUMPIFEQ                         R1 R2 ; [+3]
       73 LOADB                            R1 1
       74 RETURN                           R1 1
       75 GETTABLEKS                       R1 R0 K3 ["X"]
       77 JUMPIFEQKN                       R1 K6 [∞] ; [+13]
       79 GETTABLEKS                       R1 R0 K3 ["X"]
       81 JUMPIFEQKN                       R1 K7 [-∞] ; [+9]
       83 GETTABLEKS                       R1 R0 K4 ["Y"]
       85 JUMPIFEQKN                       R1 K6 [∞] ; [+5]
       87 GETTABLEKS                       R1 R0 K4 ["Y"]
       89 JUMPIFNOTEQKN                    R1 K7 [-∞] ; [+3]
       91 LOADB                            R1 1
       92 RETURN                           R1 1
       93 LOADB                            R1 0
       94 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 DUPCLOSURE                       R1 K4 [PROTO_0]
        8 RETURN                           R1 1
