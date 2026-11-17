PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 GETUPVAL                         R2 0
        3 NAMECALL                         R0 R0 K2 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_1:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R0
        2 FASTPCALL                        pcall 1 ; [+2]
        3 GETIMPORT                        R1 K1 [pcall]
        5 CALL                             R1 1 2
        6 MOVE                             R3 R1
        7 JUMPIFNOT                        R3 ; [+4]
        8 JUMPIFEQKB                       R2 TRUE ; [+2]
       10 LOADB                            R3 0 +1
       11 LOADB                            R3 1
       12 RETURN                           R3 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_1]
        2 LOADK                            R4 K1 ["InstanceAttributes"]
        3 NEWCLOSURE                       R3 P1
        4 CAPTURE                          VAL R4
        5 FASTPCALL                        pcall 1 ; [+2]
        6 GETIMPORT                        R2 K3 [pcall]
        8 CALL                             R2 1 2
        9 MOVE                             R1 R2
       10 JUMPIFNOT                        R1 ; [+4]
       11 JUMPIFEQKB                       R3 TRUE ; [+2]
       13 LOADB                            R1 0 +1
       14 LOADB                            R1 1
       15 DUPCLOSURE                       R2 K4 [PROTO_2]
       16 CAPTURE                          VAL R1
       17 RETURN                           R2 1
