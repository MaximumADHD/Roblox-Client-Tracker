PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["Terrain"]
        3 LENGTH                           R4 R0
        4 LOADN                            R2 1
        5 LOADN                            R3 255
        6 FORNPREP                         R2
        7 GETTABLE                         R5 R0 R4
        8 LOADK                            R8 K1 ["BasePart"]
        9 NAMECALL                         R6 R5 K2 ["IsA"]
       11 CALL                             R6 2 1
       12 JUMPIFNOT                        R6 ; [+5]
       13 JUMPIFEQ                         R5 R1 ; [+4]
       15 GETTABLEKS                       R6 R5 K3 ["CFrame"]
       17 RETURN                           R6 1
       18 LOADK                            R8 K4 ["Model"]
       19 NAMECALL                         R6 R5 K2 ["IsA"]
       21 CALL                             R6 2 1
       22 JUMPIFNOT                        R6 ; [+4]
       23 NAMECALL                         R6 R5 K5 ["GetBoundingBox"]
       25 CALL                             R6 1 2
       26 RETURN                           R6 1
       27 FORNLOOP                         R2
       28 LOADNIL                          R2
       29 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Workspace"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 DUPCLOSURE                       R1 K4 [PROTO_0]
        8 CAPTURE                          VAL R0
        9 RETURN                           R1 1
