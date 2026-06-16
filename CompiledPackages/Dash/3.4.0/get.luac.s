PROTO_0:
        0 JUMPIFNOTEQKNIL                  R0 ; [+2]
        2 RETURN                           R2 1
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 LOADNIL                          R5
        6 LOADNIL                          R6
        7 FORGPREP                         R4
        8 FASTCALL1                        TYPE R3 ; [+3]
        9 MOVE                             R10 R3
       10 GETIMPORT                        R9 K1 [type]
       12 CALL                             R9 1 1
       13 JUMPIFEQKS                       R9 K2 ["table"] ; [+2]
       15 RETURN                           R2 1
       16 GETTABLE                         R3 R3 R8
       17 JUMPIFNOTEQKNIL                  R3 ; [+2]
       19 RETURN                           R2 1
       20 FORGLOOP                         R4 2 ; [-13]
       22 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
