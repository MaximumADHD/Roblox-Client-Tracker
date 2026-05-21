PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOTEQKNIL                  R1 ; [+5]
        4 GETUPVAL                         R1 0
        5 LOADN                            R2 1
        6 SETTABLE                         R2 R1 R0
        7 RETURN                           R0 1
        8 GETUPVAL                         R1 0
        9 GETTABLE                         R2 R1 R0
       10 ADDK                             R2 R2 K0 [1]
       11 SETTABLE                         R2 R1 R0
       12 LOADK                            R2 K1 ["%*_%*"]
       13 MOVE                             R4 R0
       14 GETUPVAL                         R6 0
       15 GETTABLE                         R5 R6 R0
       16 NAMECALL                         R2 R2 K2 ["format"]
       18 CALL                             R2 3 1
       19 MOVE                             R1 R2
       20 GETUPVAL                         R3 0
       21 GETTABLE                         R2 R3 R1
       22 JUMPIFNOTEQKNIL                  R2 ; [+2]
       24 RETURN                           R1 1
       25 JUMPBACK                         ; [-18]
       26 RETURN                           R0 0

PROTO_1:
        0 NEWTABLE                         R0 0 0
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          VAL R0
        4 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_1]
        2 RETURN                           R0 1
