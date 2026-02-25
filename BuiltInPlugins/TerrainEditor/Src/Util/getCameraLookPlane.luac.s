PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["CurrentCamera"]
        3 GETTABLEKS                       R2 R0 K1 ["CFrame"]
        5 GETTABLEKS                       R1 R2 K2 ["LookVector"]
        7 GETTABLEKS                       R5 R1 K3 ["X"]
        9 FASTCALL1                        MATH_ROUND R5 ; [+2]
       10 GETIMPORT                        R4 K6 [math.round]
       12 CALL                             R4 1 1
       13 GETTABLEKS                       R6 R1 K7 ["Y"]
       15 FASTCALL1                        MATH_ROUND R6 ; [+2]
       16 GETIMPORT                        R5 K6 [math.round]
       18 CALL                             R5 1 1
       19 GETTABLEKS                       R7 R1 K8 ["Z"]
       21 FASTCALL1                        MATH_ROUND R7 ; [+2]
       22 GETIMPORT                        R6 K6 [math.round]
       24 CALL                             R6 1 1
       25 FASTCALL                         VECTOR ; [+2]
       26 GETIMPORT                        R3 K11 [Vector3.new]
       28 CALL                             R3 3 1
       29 GETTABLEKS                       R2 R3 K12 ["Unit"]
       31 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Workspace"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 DUPCLOSURE                       R1 K4 [PROTO_0]
        8 CAPTURE                          VAL R0
        9 RETURN                           R1 1
