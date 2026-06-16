PROTO_0:
        0 LOADB                            R1 0
        1 FASTCALL1                        TYPE R0 ; [+3]
        2 MOVE                             R3 R0
        3 GETIMPORT                        R2 K1 [type]
        5 CALL                             R2 1 1
        6 JUMPIFNOTEQKS                    R2 K2 ["number"] ; [+13]
        8 LOADB                            R1 0
        9 JUMPIFEQKN                       R0 K3 [∞] ; [+10]
       11 FASTCALL1                        MATH_FLOOR R0 ; [+3]
       12 MOVE                             R3 R0
       13 GETIMPORT                        R2 K6 [math.floor]
       15 CALL                             R2 1 1
       16 JUMPIFEQ                         R0 R2 ; [+2]
       18 LOADB                            R1 0 +1
       19 LOADB                            R1 1
       20 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
