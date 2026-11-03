PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 0
        2 ADDK                             R1 R1 K0 [1]
        3 SETUPVAL                         R1 0
        4 LOADK                            R1 K1 [""]
        5 LOADN                            R2 0
        6 JUMPIFNOTLT                      R2 R0 ; [+17]
        8 MODK                             R4 R0 K3 [93]
        9 ADDK                             R3 R4 K2 [33]
       10 FASTCALL1                        STRING_CHAR R3 ; [+2]
       11 GETIMPORT                        R2 K6 [string.char]
       13 CALL                             R2 1 1
       14 MOVE                             R3 R1
       15 MOVE                             R4 R2
       16 CONCAT                           R1 R3 R4
       17 DIVK                             R4 R0 K3 [93]
       18 FASTCALL1                        MATH_FLOOR R4 ; [+2]
       19 GETIMPORT                        R3 K9 [math.floor]
       21 CALL                             R3 1 1
       22 MOVE                             R0 R3
       23 JUMPBACK                         ; [-19]
       24 RETURN                           R1 1

PROTO_1:
        0 LOADN                            R0 1
        1 NEWCLOSURE                       R1 P0
        2 CAPTURE                          REF R0
        3 CLOSEUPVALS                      R0
        4 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_1]
        2 RETURN                           R0 1
