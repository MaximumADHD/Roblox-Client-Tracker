PROTO_0:
        0 DIVK                             R3 R2 K0 [2]
        1 GETUPVAL                         R6 0
        2 GETTABLEKS                       R5 R6 K1 ["Top"]
        4 JUMPIFNOTEQ                      R0 R5 ; [+13]
        6 GETTABLEKS                       R5 R1 K2 ["X"]
        8 GETTABLEKS                       R7 R1 K3 ["Y"]
       10 SUB                              R6 R7 R3
       11 GETTABLEKS                       R7 R1 K4 ["Z"]
       13 FASTCALL                         VECTOR ; [+2]
       14 GETIMPORT                        R4 K7 [Vector3.new]
       16 CALL                             R4 3 1
       17 RETURN                           R4 1
       18 GETUPVAL                         R6 0
       19 GETTABLEKS                       R5 R6 K8 ["Bottom"]
       21 JUMPIFNOTEQ                      R0 R5 ; [+13]
       23 GETTABLEKS                       R5 R1 K2 ["X"]
       25 GETTABLEKS                       R7 R1 K3 ["Y"]
       27 ADD                              R6 R7 R3
       28 GETTABLEKS                       R7 R1 K4 ["Z"]
       30 FASTCALL                         VECTOR ; [+2]
       31 GETIMPORT                        R4 K7 [Vector3.new]
       33 CALL                             R4 3 1
       34 RETURN                           R4 1
       35 MOVE                             R4 R1
       36 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R3 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["PivotPosition"]
       16 DUPCLOSURE                       R3 K9 [PROTO_0]
       17 CAPTURE                          VAL R2
       18 RETURN                           R3 1
