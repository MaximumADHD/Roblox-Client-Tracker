PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["Arctic"]
        3 JUMPIFNOTEQ                      R0 R4 ; [+9]
        5 LOADK                            R6 K1 [0.2]
        6 JUMPIFNOTLT                      R6 R1 ; [+3]
        8 LOADN                            R5 1
        9 JUMP                             ; [+1]
       10 LOADN                            R5 0
       11 MUL                              R4 R5 R2
       12 RETURN                           R4 1
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R4 R4 K2 ["Canyons"]
       16 JUMPIFNOTEQ                      R0 R4 ; [+9]
       18 LOADK                            R6 K3 [0.7]
       19 JUMPIFNOTLT                      R6 R1 ; [+3]
       21 LOADN                            R5 1
       22 JUMP                             ; [+1]
       23 LOADN                            R5 0
       24 MUL                              R4 R5 R2
       25 RETURN                           R4 1
       26 GETUPVAL                         R4 0
       27 GETTABLEKS                       R4 R4 K4 ["Mountains"]
       29 JUMPIFNOTEQ                      R0 R4 ; [+7]
       31 POWK                             R4 R1 K5 [3]
       32 SUBRK                            R7 K6 [1] R4
       33 MUL                              R6 R3 R7
       34 MUL                              R7 R2 R4
       35 ADD                              R5 R6 R7
       36 RETURN                           R5 1
       37 SUBRK                            R6 K6 [1] R1
       38 MUL                              R5 R3 R6
       39 MUL                              R6 R2 R1
       40 ADD                              R4 R5 R6
       41 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["Biome"]
       16 DUPCLOSURE                       R3 K9 [PROTO_0]
       17 CAPTURE                          VAL R2
       18 RETURN                           R3 1
