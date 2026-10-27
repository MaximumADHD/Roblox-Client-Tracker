PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["X"]
        2 FASTCALL1                        MATH_ABS R2 ; [+2]
        3 GETIMPORT                        R1 K3 [math.abs]
        5 CALL                             R1 1 1
        6 GETTABLEKS                       R3 R0 K4 ["Y"]
        8 FASTCALL1                        MATH_ABS R3 ; [+2]
        9 GETIMPORT                        R2 K3 [math.abs]
       11 CALL                             R2 1 1
       12 GETTABLEKS                       R4 R0 K5 ["Z"]
       14 FASTCALL1                        MATH_ABS R4 ; [+2]
       15 GETIMPORT                        R3 K3 [math.abs]
       17 CALL                             R3 1 1
       18 JUMPIFNOTLT                      R2 R1 ; [+14]
       20 JUMPIFNOTLT                      R3 R1 ; [+12]
       22 GETTABLEKS                       R5 R0 K0 ["X"]
       24 LOADN                            R6 0
       25 JUMPIFNOTLT                      R6 R5 ; [+4]
       27 GETIMPORT                        R4 K9 [Enum.NormalId.Right]
       29 JUMPIF                           R4 ; [+2]
       30 GETIMPORT                        R4 K11 [Enum.NormalId.Left]
       32 RETURN                           R4 1
       33 JUMPIFNOTLT                      R3 R2 ; [+12]
       35 GETTABLEKS                       R5 R0 K4 ["Y"]
       37 LOADN                            R6 0
       38 JUMPIFNOTLT                      R6 R5 ; [+4]
       40 GETIMPORT                        R4 K13 [Enum.NormalId.Top]
       42 JUMPIF                           R4 ; [+2]
       43 GETIMPORT                        R4 K15 [Enum.NormalId.Bottom]
       45 RETURN                           R4 1
       46 GETTABLEKS                       R5 R0 K5 ["Z"]
       48 LOADN                            R6 0
       49 JUMPIFNOTLT                      R6 R5 ; [+4]
       51 GETIMPORT                        R4 K17 [Enum.NormalId.Back]
       53 JUMPIF                           R4 ; [+2]
       54 GETIMPORT                        R4 K19 [Enum.NormalId.Front]
       56 RETURN                           R4 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["CFrame"]
        2 MOVE                             R4 R1
        3 NAMECALL                         R2 R2 K1 ["PointToObjectSpace"]
        5 CALL                             R2 2 1
        6 GETTABLEKS                       R5 R0 K3 ["Size"]
        8 DIV                              R4 R2 R5
        9 MULK                             R3 R4 K2 [2]
       10 GETUPVAL                         R4 0
       11 MOVE                             R5 R3
       12 CALL                             R4 1 1
       13 GETIMPORT                        R5 K5 [pairs]
       15 NAMECALL                         R6 R0 K6 ["GetChildren"]
       17 CALL                             R6 1 -1
       18 CALL                             R5 -1 3
       19 FORGPREP_NEXT                    R5
       20 LOADK                            R12 K7 ["FaceInstance"]
       21 NAMECALL                         R10 R9 K8 ["IsA"]
       23 CALL                             R10 2 1
       24 JUMPIFNOT                        R10 ; [+5]
       25 GETTABLEKS                       R10 R9 K9 ["Face"]
       27 JUMPIFNOTEQ                      R10 R4 ; [+2]
       29 RETURN                           R9 1
       30 FORGLOOP                         R5 2 ; [-11]
       32 LOADNIL                          R5
       33 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 DUPCLOSURE                       R1 K1 [PROTO_1]
        3 CAPTURE                          VAL R0
        4 RETURN                           R1 1
