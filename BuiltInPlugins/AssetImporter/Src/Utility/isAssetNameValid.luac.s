PROTO_0:
        0 MOVE                             R1 R0
        1 JUMPIFNOT                        R1 ; [+8]
        2 LOADK                            R4 K0 ["^%s*$"]
        3 NAMECALL                         R2 R0 K1 ["match"]
        5 CALL                             R2 2 1
        6 JUMPIFNOTEQKNIL                  R2 ; [+2]
        8 LOADB                            R1 0 +1
        9 LOADB                            R1 1
       10 LOADB                            R2 0
       11 JUMPIFEQKNIL                     R0 ; [+5]
       13 LOADB                            R2 0
       14 JUMPIFEQKS                       R0 K2 [""] ; [+2]
       16 NOT                              R2 R1
       17 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
