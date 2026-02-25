PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["X"]
        2 GETTABLEKS                       R4 R0 K1 ["Z"]
        4 LOADN                            R7 0
        5 FASTCALL3                        VECTOR R3 R7 R4
        7 MOVE                             R6 R3
        8 MOVE                             R8 R4
        9 GETIMPORT                        R5 K4 [Vector3.new]
       11 CALL                             R5 3 1
       12 GETUPVAL                         R7 0
       13 GETUPVAL                         R8 1
       14 MOVE                             R9 R5
       15 LOADN                            R10 227
       16 LOADN                            R11 20
       17 CALL                             R8 3 -1
       18 CALL                             R7 -1 1
       19 MULK                             R6 R7 K5 [24]
       20 GETUPVAL                         R8 2
       21 GETTABLEKS                       R7 R8 K6 ["Ridge"]
       23 GETUPVAL                         R8 0
       24 GETUPVAL                         R9 1
       25 MOVE                             R10 R5
       26 LOADN                            R11 201
       27 LOADN                            R12 40
       28 CALL                             R9 3 -1
       29 CALL                             R8 -1 -1
       30 CALL                             R7 -1 1
       31 GETUPVAL                         R9 2
       32 GETTABLEKS                       R8 R9 K6 ["Ridge"]
       34 GETUPVAL                         R9 0
       35 GETUPVAL                         R10 1
       36 DIVK                             R13 R3 K7 [10]
       37 ADD                              R12 R13 R6
       38 LOADN                            R13 0
       39 ADD                              R14 R4 R6
       40 FASTCALL                         VECTOR ; [+2]
       41 GETIMPORT                        R11 K4 [Vector3.new]
       43 CALL                             R11 3 1
       44 LOADN                            R12 200
       45 LOADN                            R13 48
       46 CALL                             R10 3 -1
       47 CALL                             R9 -1 -1
       48 CALL                             R8 -1 1
       49 LOADK                            R10 K8 [0.4]
       50 LOADK                            R12 K9 [0.1]
       51 ADD                              R13 R7 R8
       52 MUL                              R11 R12 R13
       53 ADD                              R9 R10 R11
       54 GETIMPORT                        R10 K13 [Enum.Material.Sand]
       56 GETIMPORT                        R11 K15 [Enum.Material.Sandstone]
       58 RETURN                           R9 3

PROTO_1:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R3 R0 K4 ["Src"]
        9 GETTABLEKS                       R2 R3 K5 ["Util"]
       11 GETTABLEKS                       R1 R2 K6 ["Generation"]
       13 GETIMPORT                        R2 K8 [require]
       15 GETTABLEKS                       R3 R1 K9 ["Filter"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K8 [require]
       20 GETTABLEKS                       R4 R1 K10 ["Perlin"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K8 [require]
       25 GETTABLEKS                       R5 R1 K11 ["ProcessPerlin"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K8 [require]
       30 GETTABLEKS                       R7 R0 K4 ["Src"]
       32 GETTABLEKS                       R6 R7 K12 ["Types"]
       34 CALL                             R5 1 1
       35 DUPCLOSURE                       R6 K13 [PROTO_1]
       36 CAPTURE                          VAL R4
       37 CAPTURE                          VAL R2
       38 RETURN                           R6 1
