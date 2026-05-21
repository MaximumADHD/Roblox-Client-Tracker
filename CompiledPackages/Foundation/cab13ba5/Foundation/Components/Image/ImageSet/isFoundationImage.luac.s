PROTO_0:
        0 LOADB                            R1 0
        1 JUMPIFEQKNIL                     R0 ; [+12]
        3 LOADB                            R1 0
        4 JUMPIFEQKS                       R0 K0 [""] ; [+9]
        6 LOADK                            R4 K1 ["^%w+://.*$"]
        7 NAMECALL                         R2 R0 K2 ["match"]
        9 CALL                             R2 2 1
       10 JUMPIFEQKNIL                     R2 ; [+2]
       12 LOADB                            R1 0 +1
       13 LOADB                            R1 1
       14 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
