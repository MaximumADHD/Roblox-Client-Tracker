PROTO_0:
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 LOADNIL                          R2
        3 RETURN                           R2 1
        4 JUMPIFNOT                        R1 ; [+8]
        5 LOADK                            R3 K0 ["data-testid=%*--%*"]
        6 MOVE                             R5 R0
        7 MOVE                             R6 R1
        8 NAMECALL                         R3 R3 K1 ["format"]
       10 CALL                             R3 3 1
       11 MOVE                             R2 R3
       12 RETURN                           R2 1
       13 LOADK                            R3 K2 ["data-testid=%*"]
       14 MOVE                             R5 R0
       15 NAMECALL                         R3 R3 K1 ["format"]
       17 CALL                             R3 2 1
       18 MOVE                             R2 R3
       19 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
