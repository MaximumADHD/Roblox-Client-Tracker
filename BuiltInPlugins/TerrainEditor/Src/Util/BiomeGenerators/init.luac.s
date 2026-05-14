PROTO_0:
        0 NEWTABLE                         R3 16 0
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K0 ["Arctic"]
        5 GETUPVAL                         R5 1
        6 MOVE                             R6 R0
        7 MOVE                             R7 R2
        8 CALL                             R5 2 1
        9 SETTABLE                         R5 R3 R4
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K1 ["Canyons"]
       13 GETUPVAL                         R5 2
       14 MOVE                             R6 R0
       15 MOVE                             R7 R1
       16 MOVE                             R8 R2
       17 CALL                             R5 3 1
       18 SETTABLE                         R5 R3 R4
       19 GETUPVAL                         R4 0
       20 GETTABLEKS                       R4 R4 K2 ["Dunes"]
       22 GETUPVAL                         R5 3
       23 MOVE                             R6 R0
       24 MOVE                             R7 R2
       25 CALL                             R5 2 1
       26 SETTABLE                         R5 R3 R4
       27 GETUPVAL                         R4 0
       28 GETTABLEKS                       R4 R4 K3 ["Hills"]
       30 GETUPVAL                         R5 4
       31 MOVE                             R6 R0
       32 MOVE                             R7 R2
       33 CALL                             R5 2 1
       34 SETTABLE                         R5 R3 R4
       35 GETUPVAL                         R4 0
       36 GETTABLEKS                       R4 R4 K4 ["Lavascape"]
       38 GETUPVAL                         R5 5
       39 MOVE                             R6 R0
       40 MOVE                             R7 R2
       41 CALL                             R5 2 1
       42 SETTABLE                         R5 R3 R4
       43 GETUPVAL                         R4 0
       44 GETTABLEKS                       R4 R4 K5 ["Marsh"]
       46 GETUPVAL                         R5 6
       47 MOVE                             R6 R0
       48 MOVE                             R7 R2
       49 CALL                             R5 2 1
       50 SETTABLE                         R5 R3 R4
       51 GETUPVAL                         R4 0
       52 GETTABLEKS                       R4 R4 K6 ["Mountains"]
       54 GETUPVAL                         R5 7
       55 MOVE                             R6 R0
       56 MOVE                             R7 R2
       57 CALL                             R5 2 1
       58 SETTABLE                         R5 R3 R4
       59 GETUPVAL                         R4 0
       60 GETTABLEKS                       R4 R4 K7 ["Plains"]
       62 GETUPVAL                         R5 8
       63 MOVE                             R6 R0
       64 MOVE                             R7 R2
       65 CALL                             R5 2 1
       66 SETTABLE                         R5 R3 R4
       67 GETUPVAL                         R4 0
       68 GETTABLEKS                       R4 R4 K8 ["Water"]
       70 GETUPVAL                         R5 9
       71 MOVE                             R6 R0
       72 MOVE                             R7 R2
       73 CALL                             R5 2 1
       74 SETTABLE                         R5 R3 R4
       75 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R2 K1 [script]
       11 GETTABLEKS                       R2 R2 K6 ["Arctic"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETIMPORT                        R3 K1 [script]
       18 GETTABLEKS                       R3 R3 K7 ["Canyons"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETIMPORT                        R4 K1 [script]
       25 GETTABLEKS                       R4 R4 K8 ["Dunes"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETIMPORT                        R5 K1 [script]
       32 GETTABLEKS                       R5 R5 K9 ["Hills"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETIMPORT                        R6 K1 [script]
       39 GETTABLEKS                       R6 R6 K10 ["Lavascape"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETIMPORT                        R7 K1 [script]
       46 GETTABLEKS                       R7 R7 K11 ["Marsh"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETIMPORT                        R8 K1 [script]
       53 GETTABLEKS                       R8 R8 K12 ["Mountains"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETIMPORT                        R9 K1 [script]
       60 GETTABLEKS                       R9 R9 K13 ["Plains"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETIMPORT                        R10 K1 [script]
       67 GETTABLEKS                       R10 R10 K14 ["Water"]
       69 CALL                             R9 1 1
       70 GETTABLEKS                       R10 R0 K15 ["Src"]
       72 GETTABLEKS                       R10 R10 K16 ["Util"]
       74 GETTABLEKS                       R10 R10 K17 ["Generation"]
       76 GETIMPORT                        R11 K5 [require]
       78 GETTABLEKS                       R12 R10 K18 ["NoisySeed"]
       80 CALL                             R11 1 1
       81 GETIMPORT                        R12 K5 [require]
       83 GETTABLEKS                       R13 R10 K19 ["Perlin"]
       85 CALL                             R12 1 1
       86 GETIMPORT                        R13 K5 [require]
       88 GETTABLEKS                       R14 R0 K15 ["Src"]
       90 GETTABLEKS                       R14 R14 K20 ["Types"]
       92 CALL                             R13 1 1
       93 GETTABLEKS                       R14 R13 K21 ["Biome"]
       95 DUPCLOSURE                       R15 K22 [PROTO_0]
       96 CAPTURE                          VAL R14
       97 CAPTURE                          VAL R1
       98 CAPTURE                          VAL R2
       99 CAPTURE                          VAL R3
      100 CAPTURE                          VAL R4
      101 CAPTURE                          VAL R5
      102 CAPTURE                          VAL R6
      103 CAPTURE                          VAL R7
      104 CAPTURE                          VAL R8
      105 CAPTURE                          VAL R9
      106 RETURN                           R15 1
