PROTO_0:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [type]
        4 CALL                             R1 1 1
        5 LOADB                            R2 1
        6 JUMPIFEQKS                       R1 K2 ["function"] ; [+14]
        8 LOADB                            R2 0
        9 JUMPIFNOTEQKS                    R1 K3 ["table"] ; [+11]
       11 GETTABLEKS                       R4 R0 K4 ["render"]
       13 FASTCALL1                        TYPE R4 ; [+2]
       14 GETIMPORT                        R3 K1 [type]
       16 CALL                             R3 1 1
       17 JUMPIFEQKS                       R3 K2 ["function"] ; [+2]
       19 LOADB                            R2 0 +1
       20 LOADB                            R2 1
       21 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
