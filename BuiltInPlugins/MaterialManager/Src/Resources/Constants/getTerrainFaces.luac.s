PROTO_0:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R3 R0 K5 ["Src"]
       15 GETTABLEKS                       R2 R3 K6 ["Types"]
       17 CALL                             R1 1 1
       18 NEWTABLE                         R2 0 3
       20 GETIMPORT                        R3 K10 [Enum.TerrainFace.Top]
       22 GETIMPORT                        R4 K12 [Enum.TerrainFace.Side]
       24 GETIMPORT                        R5 K14 [Enum.TerrainFace.Bottom]
       26 SETLIST                          R2 R3 3 [1]
       28 DUPCLOSURE                       R3 K15 [PROTO_0]
       29 CAPTURE                          VAL R2
       30 RETURN                           R3 1
