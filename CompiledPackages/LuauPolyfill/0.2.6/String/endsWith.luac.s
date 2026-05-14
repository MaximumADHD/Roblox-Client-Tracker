PROTO_0:
        0 NAMECALL                         R3 R1 K0 ["len"]
        2 CALL                             R3 1 1
        3 JUMPIFNOTEQKN                    R3 K1 [0] ; [+3]
        5 LOADB                            R4 1
        6 RETURN                           R4 1
        7 NAMECALL                         R4 R0 K0 ["len"]
        9 CALL                             R4 1 1
       10 OR                               R5 R2 R4
       11 JUMPIFNOTLT                      R4 R5 ; [+2]
       13 MOVE                             R5 R4
       14 LOADN                            R6 1
       15 JUMPIFNOTLT                      R5 R6 ; [+3]
       17 LOADB                            R6 0
       18 RETURN                           R6 1
       19 SUB                              R7 R5 R3
       20 ADDK                             R6 R7 K2 [1]
       21 MOVE                             R10 R1
       22 MOVE                             R11 R6
       23 LOADB                            R12 1
       24 NAMECALL                         R8 R0 K3 ["find"]
       26 CALL                             R8 4 1
       27 JUMPIFEQ                         R8 R6 ; [+2]
       29 LOADB                            R7 0 +1
       30 LOADB                            R7 1
       31 RETURN                           R7 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
