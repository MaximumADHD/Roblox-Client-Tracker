PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+15]
        2 GETUPVAL                         R1 1
        3 GETUPVAL                         R2 2
        4 GETTABLE                         R0 R1 R2
        5 JUMPIFNOTEQKNIL                  R0 ; [+4]
        7 LOADB                            R1 0
        8 SETUPVAL                         R1 0
        9 JUMP                             ; [+7]
       10 GETUPVAL                         R1 2
       11 GETUPVAL                         R2 2
       12 ADDK                             R2 R2 K0 [1]
       13 SETUPVAL                         R2 2
       14 MOVE                             R2 R1
       15 MOVE                             R3 R0
       16 RETURN                           R2 2
       17 GETIMPORT                        R0 K2 [next]
       19 GETUPVAL                         R1 1
       20 GETUPVAL                         R2 3
       21 CALL                             R0 2 1
       22 SETUPVAL                         R0 3
       23 GETUPVAL                         R1 3
       24 FASTCALL1                        TYPEOF R1 ; [+2]
       25 GETIMPORT                        R0 K4 [typeof]
       27 CALL                             R0 1 1
       28 JUMPIFNOTEQKS                    R0 K5 ["number"] ; [+13]
       30 GETUPVAL                         R0 3
       31 LOADN                            R1 0
       32 JUMPIFNOTLT                      R1 R0 ; [+9]
       34 GETUPVAL                         R0 3
       35 GETUPVAL                         R1 2
       36 JUMPIFNOTLT                      R0 R1 ; [+5]
       38 GETUPVAL                         R1 3
       39 MODK                             R0 R1 K0 [1]
       40 JUMPIFEQKN                       R0 K6 [0] ; [+11]
       42 GETUPVAL                         R0 3
       43 JUMPIFNOTEQKNIL                  R0 ; [+3]
       45 LOADNIL                          R0
       46 RETURN                           R0 1
       47 GETUPVAL                         R0 3
       48 GETUPVAL                         R2 1
       49 GETUPVAL                         R3 3
       50 GETTABLE                         R1 R2 R3
       51 RETURN                           R0 2
       52 JUMPBACK                         ; [-36]
       53 RETURN                           R0 0

PROTO_1:
        0 LOADN                            R1 1
        1 LOADB                            R2 1
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 NEWCLOSURE                       R4 P0
        5 CAPTURE                          REF R2
        6 CAPTURE                          VAL R0
        7 CAPTURE                          REF R1
        8 CAPTURE                          REF R3
        9 CLOSEUPVALS                      R1
       10 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETTABLEKS                       R2 R0 K5 ["Types"]
        9 CALL                             R1 1 1
       10 DUPCLOSURE                       R2 K6 [PROTO_1]
       11 RETURN                           R2 1
