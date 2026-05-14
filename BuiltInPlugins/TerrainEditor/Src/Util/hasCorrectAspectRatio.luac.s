PROTO_0:
        0 JUMPIFNOTEQKN                    R1 K0 [0] ; [+3]
        2 MOVE                             R2 R0
        3 RETURN                           R2 1
        4 GETUPVAL                         R2 0
        5 MOVE                             R3 R1
        6 MOD                              R4 R0 R1
        7 CALL                             R2 2 1
        8 RETURN                           R2 1

PROTO_1:
        0 GETTABLEKS                       R3 R1 K0 ["X"]
        2 GETTABLEKS                       R4 R1 K1 ["Z"]
        4 DIV                              R2 R3 R4
        5 GETTABLEKS                       R4 R0 K2 ["Width"]
        7 GETTABLEKS                       R5 R0 K3 ["Height"]
        9 DIV                              R3 R4 R5
       10 SUB                              R5 R3 R2
       11 FASTCALL1                        MATH_ABS R5 ; [+2]
       12 GETIMPORT                        R4 K6 [math.abs]
       14 CALL                             R4 1 1
       15 GETUPVAL                         R5 0
       16 GETTABLEKS                       R5 R5 K7 ["AspectRatioThreshold"]
       18 JUMPIFNOTLE                      R4 R5 ; [+4]
       20 LOADB                            R4 1
       21 LOADK                            R5 K8 [""]
       22 RETURN                           R4 2
       23 DUPCLOSURE                       R4 K9 [PROTO_0]
       24 CAPTURE                          VAL R4
       25 GETTABLEKS                       R6 R0 K2 ["Width"]
       27 GETTABLEKS                       R7 R0 K3 ["Height"]
       29 JUMPIFNOTEQKN                    R7 K10 [0] ; [+3]
       31 MOVE                             R5 R6
       32 JUMP                             ; [+5]
       33 MOVE                             R8 R4
       34 MOVE                             R9 R7
       35 MOD                              R10 R6 R7
       36 CALL                             R8 2 1
       37 MOVE                             R5 R8
       38 LOADK                            R7 K11 ["%*:%*"]
       39 GETTABLEKS                       R10 R0 K2 ["Width"]
       41 DIV                              R9 R10 R5
       42 GETTABLEKS                       R11 R0 K3 ["Height"]
       44 DIV                              R10 R11 R5
       45 NAMECALL                         R7 R7 K12 ["format"]
       47 CALL                             R7 3 1
       48 MOVE                             R6 R7
       49 LOADB                            R7 0
       50 MOVE                             R8 R6
       51 RETURN                           R7 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Resources"]
       13 GETTABLEKS                       R2 R2 K8 ["Constants"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K9 ["Types"]
       22 CALL                             R2 1 1
       23 DUPCLOSURE                       R3 K10 [PROTO_1]
       24 CAPTURE                          VAL R1
       25 RETURN                           R3 1
