PROTO_0:
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 NEWTABLE                         R0 0 0
        4 NEWTABLE                         R2 0 0
        6 GETIMPORT                        R3 K1 [pairs]
        8 GETUPVAL                         R4 0
        9 CALL                             R3 1 3
       10 FORGPREP_NEXT                    R3
       11 MOVE                             R8 R7
       12 GETTABLE                         R9 R0 R6
       13 MOVE                             R10 R1
       14 CALL                             R8 2 1
       15 SETTABLE                         R8 R2 R6
       16 FORGLOOP                         R3 2 ; [-6]
       18 RETURN                           R2 1

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_1]
        2 RETURN                           R0 1
