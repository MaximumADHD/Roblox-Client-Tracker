PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLE                         R0 R1 R2
        3 JUMPIFNOTEQKN                    R0 K0 [1] ; [+12]
        5 GETUPVAL                         R0 2
        6 GETUPVAL                         R2 3
        7 FASTCALL1                        TABLE_UNPACK R2 ; [+2]
        8 GETIMPORT                        R1 K2 [unpack]
       10 CALL                             R1 1 -1
       11 CALL                             R0 -1 0
       12 GETUPVAL                         R0 0
       13 GETUPVAL                         R1 1
       14 LOADN                            R2 2
       15 SETTABLE                         R2 R0 R1
       16 RETURN                           R0 0

PROTO_1:
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
       15 GETUPVAL                         R5 1
       16 MOVE                             R6 R4
       17 NEWCLOSURE                       R7 P0
       18 CAPTURE                          VAL R3
       19 CAPTURE                          UPVAL U0
       20 CAPTURE                          VAL R0
       21 CAPTURE                          VAL R2
       22 CALL                             R5 2 0
       23 RETURN                           R3 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R0 R2
        2 JUMPIFNOTEQKN                    R1 K0 [1] ; [+4]
        4 GETUPVAL                         R1 0
        5 LOADN                            R2 3
        6 SETTABLE                         R2 R0 R1
        7 RETURN                           R0 0

PROTO_3:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 DUPCLOSURE                       R2 K0 [PROTO_2]
        4 CAPTURE                          UPVAL U0
        5 DUPTABLE                         R3 K3 [{"setTimeout", "clearTimeout"}]
        6 SETTABLEKS                       R1 R3 K1 ["setTimeout"]
        8 SETTABLEKS                       R2 R3 K2 ["clearTimeout"]
       10 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [newproxy]
        3 LOADB                            R1 0
        4 CALL                             R0 1 1
        5 DUPCLOSURE                       R1 K2 [PROTO_3]
        6 CAPTURE                          VAL R0
        7 RETURN                           R1 1
