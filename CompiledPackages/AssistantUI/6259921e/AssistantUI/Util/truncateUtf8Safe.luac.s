PROTO_0:
        0 LENGTH                           R2 R0
        1 JUMPIFNOTLE                      R2 R1 ; [+4]
        3 MOVE                             R2 R0
        4 LOADB                            R3 0
        5 RETURN                           R2 2
        6 LOADN                            R4 1
        7 FASTCALL3                        STRING_SUB R0 R4 R1
        9 MOVE                             R3 R0
       10 MOVE                             R5 R1
       11 GETIMPORT                        R2 K2 [string.sub]
       13 CALL                             R2 3 1
       14 GETIMPORT                        R3 K5 [utf8.len]
       16 MOVE                             R4 R2
       17 CALL                             R3 1 1
       18 JUMPIF                           R3 ; [+14]
       19 LENGTH                           R3 R2
       20 LOADN                            R4 0
       21 JUMPIFNOTLT                      R4 R3 ; [+11]
       23 LOADN                            R5 1
       24 LOADN                            R6 254
       25 FASTCALL3                        STRING_SUB R2 R5 R6
       27 MOVE                             R4 R2
       28 GETIMPORT                        R3 K2 [string.sub]
       30 CALL                             R3 3 1
       31 MOVE                             R2 R3
       32 JUMPBACK                         ; [-19]
       33 MOVE                             R3 R2
       34 LOADB                            R4 1
       35 RETURN                           R3 2

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
