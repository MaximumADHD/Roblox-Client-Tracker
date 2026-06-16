PROTO_0:
        0 GETUPVAL                         R4 0
        1 JUMPIFNOT                        R4 ; [+5]
        2 GETUPVAL                         R3 0
        3 MOVE                             R4 R1
        4 MOVE                             R5 R2
        5 CALL                             R3 2 1
        6 JUMP                             ; [+1]
        7 MOVE                             R3 R1
        8 GETTABLE                         R4 R0 R3
        9 JUMPIFNOTEQKNIL                  R4 ; [+4]
       11 LOADN                            R4 1
       12 SETTABLE                         R4 R0 R3
       13 RETURN                           R0 1
       14 GETTABLE                         R4 R0 R3
       15 ADDK                             R4 R4 K0 [1]
       16 SETTABLE                         R4 R0 R3
       17 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          VAL R1
        4 NEWTABLE                         R5 0 0
        6 CALL                             R2 3 -1
        7 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETTABLEKS                       R2 R0 K5 ["Types"]
        9 CALL                             R1 1 1
       10 GETIMPORT                        R2 K4 [require]
       12 GETTABLEKS                       R3 R0 K6 ["reduce"]
       14 CALL                             R2 1 1
       15 DUPCLOSURE                       R3 K7 [PROTO_1]
       16 CAPTURE                          VAL R2
       17 RETURN                           R3 1
