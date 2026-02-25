PROTO_0:
        0 JUMPIFEQKNIL                     R0 ; [+3]
        2 JUMPIFNOTEQKS                    R0 K0 [""] ; [+4]
        4 LOADB                            R1 1
        5 LOADNIL                          R2
        6 RETURN                           R1 2
        7 FASTCALL1                        TONUMBER R0 ; [+3]
        8 MOVE                             R2 R0
        9 GETIMPORT                        R1 K2 [tonumber]
       11 CALL                             R1 1 1
       12 JUMPIF                           R1 ; [+3]
       13 LOADB                            R2 0
       14 LOADNIL                          R3
       15 RETURN                           R2 2
       16 LOADN                            R2 0
       17 JUMPIFNOTLT                      R1 R2 ; [+4]
       19 LOADB                            R2 0
       20 LOADNIL                          R3
       21 RETURN                           R2 2
       22 LOADB                            R2 1
       23 MOVE                             R3 R1
       24 RETURN                           R2 2

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
