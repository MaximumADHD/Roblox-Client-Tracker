PROTO_0:
        0 LOADK                            R3 K0 ["Accessory"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+12]
        5 LOADK                            R3 K2 ["Handle"]
        6 NAMECALL                         R1 R0 K3 ["FindFirstChild"]
        8 CALL                             R1 2 1
        9 JUMPIFNOT                        R1 ; [+7]
       10 LOADK                            R4 K4 ["MeshPart"]
       11 NAMECALL                         R2 R1 K1 ["IsA"]
       13 CALL                             R2 2 1
       14 JUMPIFNOT                        R2 ; [+2]
       15 LOADB                            R2 1
       16 RETURN                           R2 1
       17 LOADB                            R1 0
       18 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
