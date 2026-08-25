PROTO_0:
        0 LOADB                            R1 0
        1 FASTCALL1                        TYPE R0 ; [+3]
        2 MOVE                             R3 R0
        3 GETIMPORT                        R2 K1 [type]
        5 CALL                             R2 1 1
        6 JUMPIFNOTEQKS                    R2 K2 ["string"] ; [+13]
        8 LOADN                            R4 1
        9 LOADN                            R5 4
       10 FASTCALL3                        STRING_SUB R0 R4 R5
       12 MOVE                             R3 R0
       13 GETIMPORT                        R2 K4 [string.sub]
       15 CALL                             R2 3 1
       16 JUMPIFEQKS                       R2 K5 ["sm::"] ; [+2]
       18 LOADB                            R1 0 +1
       19 LOADB                            R1 1
       20 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
