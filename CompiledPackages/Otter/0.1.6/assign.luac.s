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
       11 FASTCALL1                        SELECT_VARARG R3 ; [+4]
       12 GETIMPORT                        R4 K2 [select]
       14 MOVE                             R5 R3
       15 GETVARARGS                       R6 -1
       16 CALL                             R4 -1 1
       17 GETIMPORT                        R5 K4 [pairs]
       19 MOVE                             R6 R4
       20 CALL                             R5 1 3
       21 FORGPREP_NEXT                    R5
       22 SETTABLE                         R9 R0 R8
       23 FORGLOOP                         R5 2 ; [-2]
       25 FORNLOOP                         R1
       26 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
