PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 GETUPVAL                         R2 0
        3 NAMECALL                         R0 R0 K2 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_1:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          VAL R0
        4 CALL                             R1 1 2
        5 MOVE                             R3 R1
        6 JUMPIFNOT                        R3 ; [+4]
        7 JUMPIFEQKB                       R2 TRUE ; [+2]
        9 LOADB                            R3 0 +1
       10 LOADB                            R3 1
       11 RETURN                           R3 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_1]
        2 GETIMPORT                        R2 K2 [pcall]
        4 LOADK                            R4 K3 ["InstanceAttributes"]
        5 NEWCLOSURE                       R3 P1
        6 CAPTURE                          VAL R4
        7 CALL                             R2 1 2
        8 MOVE                             R1 R2
        9 JUMPIFNOT                        R1 ; [+4]
       10 JUMPIFEQKB                       R3 TRUE ; [+2]
       12 LOADB                            R1 0 +1
       13 LOADB                            R1 1
       14 DUPCLOSURE                       R2 K4 [PROTO_2]
       15 CAPTURE                          VAL R1
       16 RETURN                           R2 1
