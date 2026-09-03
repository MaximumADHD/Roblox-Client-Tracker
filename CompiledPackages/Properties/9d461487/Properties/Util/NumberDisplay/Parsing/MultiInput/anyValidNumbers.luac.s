PROTO_0:
        0 LOADN                            R4 1
        1 MOVE                             R2 R1
        2 LOADN                            R3 1
        3 FORNPREP                         R2
        4 GETTABLE                         R6 R0 R4
        5 FASTCALL1                        TONUMBER R6 ; [+2]
        6 GETIMPORT                        R5 K1 [tonumber]
        8 CALL                             R5 1 1
        9 JUMPIFEQKNIL                     R5 ; [+3]
       11 LOADB                            R6 1
       12 RETURN                           R6 1
       13 FORNLOOP                         R2
       14 LOADB                            R2 0
       15 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
