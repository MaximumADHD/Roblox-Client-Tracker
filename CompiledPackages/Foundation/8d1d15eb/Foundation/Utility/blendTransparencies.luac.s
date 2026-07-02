PROTO_0:
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 ORK                              R2 R1 K0 [0]
        3 RETURN                           R2 1
        4 JUMPIFNOTEQKNIL                  R1 ; [+3]
        6 ORK                              R2 R0 K0 [0]
        7 RETURN                           R2 1
        8 SUBRK                            R4 K1 [1] R0
        9 SUBRK                            R5 K1 [1] R1
       10 MUL                              R3 R4 R5
       11 SUBRK                            R2 K1 [1] R3
       12 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
