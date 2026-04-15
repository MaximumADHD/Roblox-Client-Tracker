PROTO_0:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 0 1
        3 GETUPVAL                         R2 0
        4 GETTABLEN                        R1 R2 1
        5 GETVARARGS                       R2 -1
        6 CALL                             R1 -1 -1
        7 SETLIST                          R0 R1 -1 [1]
        9 LOADN                            R3 2
       10 GETUPVAL                         R1 1
       11 LOADN                            R2 1
       12 FORNPREP                         R1
       13 NEWTABLE                         R4 0 1
       15 GETUPVAL                         R6 0
       16 GETTABLE                         R5 R6 R3
       17 FASTCALL1                        TABLE_UNPACK R0 ; [+3]
       18 MOVE                             R7 R0
       19 GETIMPORT                        R6 K1 [unpack]
       21 CALL                             R6 1 -1
       22 CALL                             R5 -1 -1
       23 SETLIST                          R4 R5 -1 [1]
       25 MOVE                             R0 R4
       26 FORNLOOP                         R1
       27 FASTCALL1                        TABLE_UNPACK R0 ; [+3]
       28 MOVE                             R2 R0
       29 GETIMPORT                        R1 K1 [unpack]
       31 CALL                             R1 1 -1
       32 RETURN                           R1 -1

PROTO_1:
        0 PREPVARARGS                      0
        1 LOADK                            R1 K0 ["#"]
        2 FASTCALL1                        SELECT_VARARG R1 ; [+3]
        3 GETIMPORT                        R0 K2 [select]
        5 GETVARARGS                       R2 -1
        6 CALL                             R0 -1 1
        7 JUMPIFNOTEQKN                    R0 K3 [0] ; [+3]
        9 GETUPVAL                         R1 0
       10 RETURN                           R1 1
       11 NEWTABLE                         R1 0 0
       13 GETVARARGS                       R2 -1
       14 SETLIST                          R1 R2 -1 [1]
       16 NEWCLOSURE                       R2 P0
       17 CAPTURE                          VAL R1
       18 CAPTURE                          VAL R0
       19 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETTABLEKS                       R2 R0 K5 ["identity"]
        9 CALL                             R1 1 1
       10 DUPCLOSURE                       R2 K6 [PROTO_1]
       11 CAPTURE                          VAL R1
       12 RETURN                           R2 1
