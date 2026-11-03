PROTO_0:
        0 LOADN                            R3 3
        1 GETIMPORT                        R4 K2 [buffer.len]
        3 MOVE                             R5 R0
        4 CALL                             R4 1 1
        5 MOVE                             R1 R4
        6 LOADN                            R2 4
        7 FORNPREP                         R1
        8 FASTCALL2                        BUFFER_READU8 R0 R3 ; [+5]
       10 MOVE                             R5 R0
       11 MOVE                             R6 R3
       12 GETIMPORT                        R4 K4 [buffer.readu8]
       14 CALL                             R4 2 1
       15 JUMPIFEQKN                       R4 K5 [0] ; [+3]
       17 LOADB                            R4 0
       18 RETURN                           R4 1
       19 FORNLOOP                         R1
       20 LOADB                            R1 1
       21 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
