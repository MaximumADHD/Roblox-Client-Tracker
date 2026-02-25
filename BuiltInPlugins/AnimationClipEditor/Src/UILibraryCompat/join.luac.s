PROTO_0:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 0 0
        3 LOADN                            R3 1
        4 LOADK                            R5 K0 ["#"]
        5 FASTCALL1                        SELECT_VARARG R5 ; [+3]
        6 GETIMPORT                        R4 K2 [select]
        8 GETVARARGS                       R6 -1
        9 CALL                             R4 -1 1
       10 MOVE                             R1 R4
       11 LOADN                            R2 1
       12 FORNPREP                         R1
       13 FASTCALL1                        SELECT_VARARG R3 ; [+4]
       14 GETIMPORT                        R4 K2 [select]
       16 MOVE                             R5 R3
       17 GETVARARGS                       R6 -1
       18 CALL                             R4 -1 1
       19 GETIMPORT                        R5 K4 [pairs]
       21 MOVE                             R6 R4
       22 CALL                             R5 1 3
       23 FORGPREP_NEXT                    R5
       24 SETTABLE                         R9 R0 R8
       25 FORGLOOP                         R5 2 ; [-2]
       27 FORNLOOP                         R1
       28 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
