PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 JUMPIFNOTLE                      R0 R1 ; [+23]
        4 GETUPVAL                         R1 2
        5 GETUPVAL                         R2 0
        6 GETTABLE                         R0 R1 R2
        7 NEWTABLE                         R1 0 1
        9 MOVE                             R2 R0
       10 CALL                             R2 0 -1
       11 SETLIST                          R1 R2 -1 [1]
       13 GETTABLEN                        R2 R1 1
       14 JUMPIFEQKNIL                     R2 ; [+7]
       16 FASTCALL1                        TABLE_UNPACK R1 ; [+3]
       17 MOVE                             R3 R1
       18 GETIMPORT                        R2 K2 [table.unpack]
       20 CALL                             R2 1 -1
       21 RETURN                           R2 -1
       22 GETUPVAL                         R3 0
       23 ADDK                             R2 R3 K3 [1]
       24 SETUPVAL                         R2 0
       25 JUMPBACK                         ; [-26]
       26 LOADNIL                          R0
       27 RETURN                           R0 1

PROTO_1:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 0 0
        3 GETVARARGS                       R1 -1
        4 SETLIST                          R0 R1 -1 [1]
        6 LENGTH                           R1 R0
        7 LOADN                            R2 1
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          REF R2
       10 CAPTURE                          VAL R1
       11 CAPTURE                          VAL R0
       12 CLOSEUPVALS                      R2
       13 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_1]
        2 RETURN                           R0 1
