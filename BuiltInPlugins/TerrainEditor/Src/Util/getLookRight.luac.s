PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["CurrentCamera"]
        3 GETTABLEKS                       R1 R2 K1 ["CFrame"]
        5 GETTABLEKS                       R0 R1 K2 ["RightVector"]
        7 GETTABLEKS                       R2 R0 K3 ["X"]
        9 FASTCALL1                        MATH_ABS R2 ; [+2]
       10 GETIMPORT                        R1 K6 [math.abs]
       12 CALL                             R1 1 1
       13 GETTABLEKS                       R3 R0 K7 ["Z"]
       15 FASTCALL1                        MATH_ABS R3 ; [+2]
       16 GETIMPORT                        R2 K6 [math.abs]
       18 CALL                             R2 1 1
       19 JUMPIFNOTLT                      R2 R1 ; [+10]
       21 GETTABLEKS                       R3 R0 K3 ["X"]
       23 LOADN                            R4 0
       24 JUMPIFNOTLT                      R3 R4 ; [+3]
       26 LOADK                            R3 K8 [{-1, 0, 0}]
       27 RETURN                           R3 1
       28 LOADK                            R3 K9 [{1, 0, 0}]
       29 RETURN                           R3 1
       30 GETTABLEKS                       R3 R0 K7 ["Z"]
       32 LOADN                            R4 0
       33 JUMPIFNOTLT                      R3 R4 ; [+3]
       35 LOADK                            R3 K10 [{0, 0, -1}]
       36 RETURN                           R3 1
       37 LOADK                            R3 K11 [{0, 0, 1}]
       38 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Workspace"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 DUPCLOSURE                       R1 K4 [PROTO_0]
        8 CAPTURE                          VAL R0
        9 RETURN                           R1 1
