PROTO_0:
        0 JUMPIFNOTEQKS                    R0 K0 ["Accessory"] ; [+6]
        2 JUMPIFEQKNIL                     R1 ; [+2]
        4 LOADB                            R3 0 +1
        5 LOADB                            R3 1
        6 RETURN                           R3 1
        7 JUMPIFNOTEQKS                    R0 K1 ["Clothing"] ; [+6]
        9 JUMPIFEQKNIL                     R2 ; [+2]
       11 LOADB                            R3 0 +1
       12 LOADB                            R3 1
       13 RETURN                           R3 1
       14 LOADB                            R3 0
       15 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
