PROTO_0:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 0 0
        3 GETVARARGS                       R1 -1
        4 SETLIST                          R0 R1 -1 [1]
        6 LOADNIL                          R1
        7 GETUPVAL                         R2 0
        8 JUMPIFNOT                        R2 ; [+5]
        9 GETUPVAL                         R2 0
       10 GETVARARGS                       R3 -1
       11 CALL                             R2 -1 1
       12 MOVE                             R1 R2
       13 JUMP                             ; [+6]
       14 GETIMPORT                        R2 K2 [table.concat]
       16 MOVE                             R3 R0
       17 LOADK                            R4 K3 ["|"]
       18 CALL                             R2 2 1
       19 MOVE                             R1 R2
       20 GETUPVAL                         R3 1
       21 GETTABLE                         R2 R3 R1
       22 JUMPIFNOTEQKNIL                  R2 ; [+6]
       24 GETUPVAL                         R2 1
       25 GETUPVAL                         R3 2
       26 GETVARARGS                       R4 -1
       27 CALL                             R3 -1 1
       28 SETTABLE                         R3 R2 R1
       29 GETUPVAL                         R3 1
       30 GETTABLE                         R2 R3 R1
       31 RETURN                           R2 1

PROTO_1:
        0 NEWTABLE                         R2 0 0
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          VAL R2
        5 CAPTURE                          VAL R0
        6 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETTABLEKS                       R2 R0 K5 ["Types"]
        9 CALL                             R1 1 1
       10 DUPCLOSURE                       R2 K6 [PROTO_1]
       11 RETURN                           R2 1
