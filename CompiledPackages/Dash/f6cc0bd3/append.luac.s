PROTO_0:
        0 GETUPVAL                         R2 0
        1 FASTCALL2                        TABLE_INSERT R2 R0 ; [+3]
        3 MOVE                             R3 R0
        4 GETUPVAL                         R1 1
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 JUMPIFEQ                         R0 R1 ; [+3]
        3 JUMPIFNOTEQKNIL                  R0 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R1 1
        7 MOVE                             R2 R0
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          UPVAL U3
       11 CALL                             R1 2 0
       12 RETURN                           R0 0

PROTO_2:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R1 0
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U3
        7 GETVARARGS                       R3 -1
        8 CALL                             R1 -1 0
        9 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETTABLEKS                       R2 R0 K5 ["None"]
        9 CALL                             R1 1 1
       10 GETIMPORT                        R2 K4 [require]
       12 GETTABLEKS                       R3 R0 K6 ["forEachArgs"]
       14 CALL                             R2 1 1
       15 GETIMPORT                        R3 K4 [require]
       17 GETTABLEKS                       R4 R0 K7 ["forEach"]
       19 CALL                             R3 1 1
       20 GETIMPORT                        R4 K10 [table.insert]
       22 DUPCLOSURE                       R5 K11 [PROTO_2]
       23 CAPTURE                          VAL R2
       24 CAPTURE                          VAL R1
       25 CAPTURE                          VAL R3
       26 CAPTURE                          VAL R4
       27 RETURN                           R5 1
