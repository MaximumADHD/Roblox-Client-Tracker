PROTO_0:
        0 NAMECALL                         R3 R1 K0 ["len"]
        2 CALL                             R3 1 1
        3 JUMPIFNOTEQKN                    R3 K1 [0] ; [+3]
        5 LOADB                            R3 1
        6 RETURN                           R3 1
        7 JUMPIFEQKNIL                     R2 ; [+4]
        9 LOADN                            R3 1
       10 JUMPIFNOTLT                      R2 R3 ; [+2]
       12 LOADN                            R2 1
       13 NAMECALL                         R3 R0 K0 ["len"]
       15 CALL                             R3 1 1
       16 JUMPIFNOTLT                      R3 R2 ; [+3]
       18 LOADB                            R3 0
       19 RETURN                           R3 1
       20 ORK                              R3 R2 K2 [1]
       21 MOVE                             R7 R1
       22 MOVE                             R8 R3
       23 LOADB                            R9 1
       24 NAMECALL                         R5 R0 K3 ["find"]
       26 CALL                             R5 4 1
       27 JUMPIFEQ                         R5 R3 ; [+2]
       29 LOADB                            R4 0 +1
       30 LOADB                            R4 1
       31 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
