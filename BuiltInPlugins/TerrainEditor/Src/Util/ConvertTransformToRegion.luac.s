PROTO_0:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 MOVE                             R6 R2
        4 CALL                             R3 3 2
        5 GETIMPORT                        R5 K2 [Region3int16.new]
        7 GETIMPORT                        R6 K4 [Vector3int16.new]
        9 GETTABLEKS                       R9 R3 K6 ["X"]
       11 DIVK                             R8 R9 K5 [4]
       12 FASTCALL1                        MATH_FLOOR R8 ; [+2]
       13 GETIMPORT                        R7 K9 [math.floor]
       15 CALL                             R7 1 1
       16 GETTABLEKS                       R10 R3 K10 ["Y"]
       18 DIVK                             R9 R10 K5 [4]
       19 FASTCALL1                        MATH_FLOOR R9 ; [+2]
       20 GETIMPORT                        R8 K9 [math.floor]
       22 CALL                             R8 1 1
       23 GETTABLEKS                       R11 R3 K11 ["Z"]
       25 DIVK                             R10 R11 K5 [4]
       26 FASTCALL1                        MATH_FLOOR R10 ; [+2]
       27 GETIMPORT                        R9 K9 [math.floor]
       29 CALL                             R9 1 1
       30 CALL                             R6 3 1
       31 GETIMPORT                        R7 K4 [Vector3int16.new]
       33 GETTABLEKS                       R10 R4 K6 ["X"]
       35 DIVK                             R9 R10 K5 [4]
       36 FASTCALL1                        MATH_CEIL R9 ; [+2]
       37 GETIMPORT                        R8 K13 [math.ceil]
       39 CALL                             R8 1 1
       40 GETTABLEKS                       R11 R4 K10 ["Y"]
       42 DIVK                             R10 R11 K5 [4]
       43 FASTCALL1                        MATH_CEIL R10 ; [+2]
       44 GETIMPORT                        R9 K13 [math.ceil]
       46 CALL                             R9 1 1
       47 GETTABLEKS                       R12 R4 K11 ["Z"]
       49 DIVK                             R11 R12 K5 [4]
       50 FASTCALL1                        MATH_CEIL R11 ; [+2]
       51 GETIMPORT                        R10 K13 [math.ceil]
       53 CALL                             R10 1 1
       54 CALL                             R7 3 -1
       55 CALL                             R5 -1 1
       56 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Util"]
       13 GETTABLEKS                       R2 R3 K8 ["getBoundingBox"]
       15 CALL                             R1 1 1
       16 DUPCLOSURE                       R2 K9 [PROTO_0]
       17 CAPTURE                          VAL R1
       18 RETURN                           R2 1
