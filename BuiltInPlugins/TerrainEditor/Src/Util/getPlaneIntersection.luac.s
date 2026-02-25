PROTO_0:
        0 MOVE                             R6 R3
        1 NAMECALL                         R4 R1 K0 ["Dot"]
        3 CALL                             R4 2 1
        4 JUMPIFNOTEQKN                    R4 K1 [0] ; [+4]
        6 MOVE                             R5 R0
        7 LOADN                            R6 0
        8 RETURN                           R5 2
        9 SUB                              R6 R2 R0
       10 MOVE                             R8 R3
       11 NAMECALL                         R6 R6 K0 ["Dot"]
       13 CALL                             R6 2 1
       14 DIV                              R5 R6 R4
       15 MUL                              R7 R1 R5
       16 ADD                              R6 R0 R7
       17 MOVE                             R7 R5
       18 RETURN                           R6 2

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
