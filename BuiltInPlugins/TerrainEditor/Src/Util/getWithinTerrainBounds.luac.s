PROTO_0:
        0 LOADB                            R2 0
        1 GETTABLEKS                       R3 R0 K0 ["X"]
        3 GETTABLEKS                       R4 R1 K0 ["X"]
        5 JUMPIFNOTLE                      R4 R3 ; [+16]
        7 LOADB                            R2 0
        8 GETTABLEKS                       R3 R1 K1 ["Y"]
       10 GETTABLEKS                       R4 R1 K1 ["Y"]
       12 JUMPIFNOTLE                      R4 R3 ; [+9]
       14 GETTABLEKS                       R3 R0 K2 ["Z"]
       16 GETTABLEKS                       R4 R1 K2 ["Z"]
       18 JUMPIFLE                         R4 R3 ; [+2]
       20 LOADB                            R2 0 +1
       21 LOADB                            R2 1
       22 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 CALL                             R2 2 2
        4 GETUPVAL                         R5 1
        5 GETTABLEKS                       R5 R5 K0 ["Min"]
        7 GETTABLEKS                       R5 R5 K1 ["X"]
        9 GETUPVAL                         R6 1
       10 GETTABLEKS                       R6 R6 K0 ["Min"]
       12 GETTABLEKS                       R6 R6 K2 ["Y"]
       14 GETUPVAL                         R7 1
       15 GETTABLEKS                       R7 R7 K0 ["Min"]
       17 GETTABLEKS                       R7 R7 K3 ["Z"]
       19 FASTCALL                         VECTOR ; [+2]
       20 GETIMPORT                        R4 K6 [Vector3.new]
       22 CALL                             R4 3 1
       23 GETUPVAL                         R6 1
       24 GETTABLEKS                       R6 R6 K7 ["Max"]
       26 GETTABLEKS                       R6 R6 K1 ["X"]
       28 GETUPVAL                         R7 1
       29 GETTABLEKS                       R7 R7 K7 ["Max"]
       31 GETTABLEKS                       R7 R7 K2 ["Y"]
       33 GETUPVAL                         R8 1
       34 GETTABLEKS                       R8 R8 K7 ["Max"]
       36 GETTABLEKS                       R8 R8 K3 ["Z"]
       38 FASTCALL                         VECTOR ; [+2]
       39 GETIMPORT                        R5 K6 [Vector3.new]
       41 CALL                             R5 3 1
       42 LOADB                            R6 0
       43 GETTABLEKS                       R7 R2 K1 ["X"]
       45 GETTABLEKS                       R8 R4 K1 ["X"]
       47 JUMPIFNOTLE                      R8 R7 ; [+16]
       49 LOADB                            R6 0
       50 GETTABLEKS                       R7 R4 K2 ["Y"]
       52 GETTABLEKS                       R8 R4 K2 ["Y"]
       54 JUMPIFNOTLE                      R8 R7 ; [+9]
       56 GETTABLEKS                       R7 R2 K3 ["Z"]
       58 GETTABLEKS                       R8 R4 K3 ["Z"]
       60 JUMPIFLE                         R8 R7 ; [+2]
       62 LOADB                            R6 0 +1
       63 LOADB                            R6 1
       64 JUMPIFNOT                        R6 ; [+22]
       65 LOADB                            R6 0
       66 GETTABLEKS                       R7 R5 K1 ["X"]
       68 GETTABLEKS                       R8 R3 K1 ["X"]
       70 JUMPIFNOTLE                      R8 R7 ; [+16]
       72 LOADB                            R6 0
       73 GETTABLEKS                       R7 R3 K2 ["Y"]
       75 GETTABLEKS                       R8 R3 K2 ["Y"]
       77 JUMPIFNOTLE                      R8 R7 ; [+9]
       79 GETTABLEKS                       R7 R5 K3 ["Z"]
       81 GETTABLEKS                       R8 R3 K3 ["Z"]
       83 JUMPIFLE                         R8 R7 ; [+2]
       85 LOADB                            R6 0 +1
       86 LOADB                            R6 1
       87 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["getBoundingBox"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K10 [game]
       18 GETTABLEKS                       R2 R2 K11 ["workspace"]
       20 GETTABLEKS                       R2 R2 K12 ["Terrain"]
       22 GETTABLEKS                       R2 R2 K13 ["MaxExtents"]
       24 DUPCLOSURE                       R3 K14 [PROTO_0]
       25 DUPCLOSURE                       R4 K15 [PROTO_1]
       26 CAPTURE                          VAL R1
       27 CAPTURE                          VAL R2
       28 RETURN                           R4 1
