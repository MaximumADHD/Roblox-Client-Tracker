PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLE                         R0 R1 R2
        3 JUMPIFNOTEQKN                    R0 K0 [1] ; [+10]
        5 GETUPVAL                         R0 2
        6 GETUPVAL                         R2 3
        7 FASTCALL1                        TABLE_UNPACK R2 ; [+2]
        8 GETIMPORT                        R1 K2 [unpack]
       10 CALL                             R1 1 -1
       11 CALL                             R0 -1 0
       12 GETUPVAL                         R0 4
       13 CALL                             R0 0 0
       14 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 CAPTURE                          UPVAL U5
        7 CAPTURE                          UPVAL U6
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_2:
        0 PREPVARARGS                      2
        1 NEWTABLE                         R2 0 0
        3 GETVARARGS                       R3 -1
        4 SETLIST                          R2 R3 -1 [1]
        6 NEWTABLE                         R3 1 0
        8 GETUPVAL                         R4 0
        9 LOADN                            R5 1
       10 SETTABLE                         R5 R3 R4
       11 JUMPIFNOTEQKNIL                  R1 ; [+2]
       13 LOADN                            R1 0
       14 DIVK                             R4 R1 K0 [1000]
       15 LOADNIL                          R5
       16 NEWCLOSURE                       R5 P0
       17 CAPTURE                          UPVAL U1
       18 CAPTURE                          VAL R4
       19 CAPTURE                          VAL R3
       20 CAPTURE                          UPVAL U0
       21 CAPTURE                          VAL R0
       22 CAPTURE                          VAL R2
       23 CAPTURE                          REF R5
       24 MOVE                             R6 R5
       25 CALL                             R6 0 0
       26 CLOSEUPVALS                      R5
       27 RETURN                           R3 1

PROTO_3:
        0 JUMPIFNOTEQKNIL                  R0 ; [+2]
        2 RETURN                           R0 0
        3 GETUPVAL                         R2 0
        4 GETTABLE                         R1 R0 R2
        5 JUMPIFNOTEQKN                    R1 K0 [1] ; [+4]
        7 GETUPVAL                         R1 0
        8 LOADN                            R2 3
        9 SETTABLE                         R2 R0 R1
       10 RETURN                           R0 0

PROTO_4:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 DUPCLOSURE                       R2 K0 [PROTO_3]
        4 CAPTURE                          UPVAL U0
        5 DUPTABLE                         R3 K3 [{"setInterval", "clearInterval"}]
        6 SETTABLEKS                       R1 R3 K1 ["setInterval"]
        8 SETTABLEKS                       R2 R3 K2 ["clearInterval"]
       10 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [newproxy]
        3 LOADB                            R1 0
        4 CALL                             R0 1 1
        5 DUPCLOSURE                       R1 K2 [PROTO_4]
        6 CAPTURE                          VAL R0
        7 RETURN                           R1 1
