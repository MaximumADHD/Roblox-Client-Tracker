PROTO_0:
        0 LOADK                            R4 K0 [0.36]
        1 GETUPVAL                         R6 0
        2 GETUPVAL                         R7 1
        3 MOVE                             R8 R0
        4 LOADN                            R9 2
        5 LOADN                            R10 50
        6 CALL                             R7 3 -1
        7 CALL                             R6 -1 1
        8 MULK                             R5 R6 K1 [0.08]
        9 ADD                              R3 R4 R5
       10 SUBRK                            R5 R2 K1 [0.08]
       11 LOADK                            R6 K3 [0.44]
       12 JUMPIFNOTLT                      R5 R6 ; [+4]
       14 GETIMPORT                        R4 K7 [Enum.Material.Slate]
       16 JUMP                             ; [+2]
       17 GETIMPORT                        R4 K9 [Enum.Material.Sand]
       19 GETIMPORT                        R5 K11 [Enum.Material.Rock]
       21 RETURN                           R3 3

PROTO_1:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Src"]
        9 GETTABLEKS                       R1 R1 K5 ["Util"]
       11 GETTABLEKS                       R1 R1 K6 ["Generation"]
       13 GETIMPORT                        R2 K8 [require]
       15 GETTABLEKS                       R3 R1 K9 ["Perlin"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K8 [require]
       20 GETTABLEKS                       R4 R1 K10 ["ProcessPerlin"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K8 [require]
       25 GETTABLEKS                       R5 R0 K4 ["Src"]
       27 GETTABLEKS                       R5 R5 K11 ["Types"]
       29 CALL                             R4 1 1
       30 DUPCLOSURE                       R5 K12 [PROTO_1]
       31 CAPTURE                          VAL R3
       32 RETURN                           R5 1
