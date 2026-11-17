PROTO_0:
        0 JUMPIFNOT                        R0 ; [+15]
        1 LOADK                            R3 K0 ["Handle"]
        2 NAMECALL                         R1 R0 K1 ["FindFirstChild"]
        4 CALL                             R1 2 1
        5 JUMPIFNOT                        R1 ; [+10]
        6 LOADK                            R4 K2 ["MeshPart"]
        7 NAMECALL                         R2 R1 K3 ["IsA"]
        9 CALL                             R2 2 1
       10 JUMPIFNOT                        R2 ; [+5]
       11 GETUPVAL                         R2 0
       12 MOVE                             R4 R1
       13 NAMECALL                         R2 R2 K4 ["ResetCollisionFidelity"]
       15 CALL                             R2 2 0
       16 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["UGCValidationService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 DUPCLOSURE                       R1 K4 [PROTO_0]
        8 CAPTURE                          VAL R0
        9 RETURN                           R1 1
