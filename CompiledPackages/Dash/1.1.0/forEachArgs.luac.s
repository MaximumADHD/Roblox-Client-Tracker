PROTO_0:
        0 PREPVARARGS                      1
        1 LOADN                            R3 1
        2 LOADK                            R5 K0 ["#"]
        3 FASTCALL1                        SELECT_VARARG R5 ; [+3]
        4 GETIMPORT                        R4 K2 [select]
        6 GETVARARGS                       R6 -1
        7 CALL                             R4 -1 1
        8 MOVE                             R1 R4
        9 LOADN                            R2 1
       10 FORNPREP                         R1
       11 MOVE                             R4 R0
       12 FASTCALL1                        SELECT_VARARG R3 ; [+4]
       13 GETIMPORT                        R5 K2 [select]
       15 MOVE                             R6 R3
       16 GETVARARGS                       R7 -1
       17 CALL                             R5 -1 1
       18 MOVE                             R6 R3
       19 CALL                             R4 2 0
       20 FORNLOOP                         R1
       21 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
