PROTO_0:
        0 PREPVARARGS                      0
        1 LOADN                            R1 1
        2 FASTCALL1                        SELECT_VARARG R1 ; [+3]
        3 GETIMPORT                        R0 K1 [select]
        5 GETVARARGS                       R2 -1
        6 CALL                             R0 -1 1
        7 LOADN                            R3 2
        8 LOADK                            R5 K2 ["#"]
        9 FASTCALL1                        SELECT_VARARG R5 ; [+3]
       10 GETIMPORT                        R4 K1 [select]
       12 GETVARARGS                       R6 -1
       13 CALL                             R4 -1 1
       14 MOVE                             R1 R4
       15 LOADN                            R2 1
       16 FORNPREP                         R1
       17 FASTCALL1                        SELECT_VARARG R3 ; [+4]
       18 GETIMPORT                        R4 K1 [select]
       20 MOVE                             R5 R3
       21 GETVARARGS                       R6 -1
       22 CALL                             R4 -1 1
       23 JUMPIFEQ                         R0 R4 ; [+3]
       25 LOADB                            R4 0
       26 RETURN                           R4 1
       27 FORNLOOP                         R1
       28 LOADB                            R1 1
       29 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
