PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 GETUPVAL                         R2 0
        3 GETUPVAL                         R4 1
        4 JUMPIFNOT                        R4 ; [+2]
        5 GETUPVAL                         R3 1
        6 JUMP                             ; [+1]
        7 LOADB                            R3 0
        8 NAMECALL                         R0 R0 K2 ["DefineFastFlag"]
       10 CALL                             R0 3 0
       11 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["^Debug"]
        2 NAMECALL                         R1 R1 K1 ["match"]
        4 CALL                             R1 2 1
        5 JUMPIFEQKNIL                     R1 ; [+2]
        7 LOADB                            R0 0 +1
        8 LOADB                            R0 1
        9 RETURN                           R0 1

PROTO_2:
        0 GETIMPORT                        R0 K1 [game]
        2 GETUPVAL                         R2 0
        3 NAMECALL                         R0 R0 K2 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_3:
        0 GETIMPORT                        R2 K1 [pcall]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 CALL                             R2 1 2
        6 JUMPIF                           R2 ; [+8]
        7 LOADK                            R6 K2 ["The current thread cannot call"]
        8 NAMECALL                         R4 R3 K3 ["match"]
       10 CALL                             R4 2 1
       11 JUMPIFNOT                        R4 ; [+3]
       12 NEWCLOSURE                       R4 P1
       13 CAPTURE                          VAL R0
       14 RETURN                           R4 1
       15 NEWCLOSURE                       R4 P2
       16 CAPTURE                          VAL R0
       17 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_3]
        2 RETURN                           R0 1
