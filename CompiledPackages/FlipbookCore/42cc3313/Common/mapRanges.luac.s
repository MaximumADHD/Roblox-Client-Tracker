PROTO_0:
        0 JUMPIFNOTEQ                      R2 R1 ; [+5]
        2 GETIMPORT                        R5 K1 [error]
        4 LOADK                            R6 K2 ["Range of zero"]
        5 CALL                             R5 1 0
        6 SUB                              R8 R0 R1
        7 SUB                              R9 R4 R3
        8 MUL                              R7 R8 R9
        9 SUB                              R8 R2 R1
       10 DIV                              R6 R7 R8
       11 ADD                              R5 R6 R3
       12 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
