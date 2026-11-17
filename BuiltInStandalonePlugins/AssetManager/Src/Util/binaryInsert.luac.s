PROTO_0:
        0 LOADN                            R3 1
        1 LENGTH                           R5 R0
        2 ADDK                             R4 R5 K0 [1]
        3 JUMPIFNOTLT                      R3 R4 ; [+16]
        5 ADD                              R7 R3 R4
        6 DIVK                             R6 R7 K1 [2]
        7 FASTCALL1                        MATH_FLOOR R6 ; [+2]
        8 GETIMPORT                        R5 K4 [math.floor]
       10 CALL                             R5 1 1
       11 MOVE                             R6 R2
       12 GETTABLE                         R7 R0 R5
       13 MOVE                             R8 R1
       14 CALL                             R6 2 1
       15 JUMPIFNOT                        R6 ; [+2]
       16 ADDK                             R3 R5 K0 [1]
       17 JUMP                             ; [+1]
       18 MOVE                             R4 R5
       19 JUMPBACK                         ; [-17]
       20 FASTCALL3                        TABLE_INSERT R0 R3 R1
       22 MOVE                             R6 R0
       23 MOVE                             R7 R3
       24 MOVE                             R8 R1
       25 GETIMPORT                        R5 K7 [table.insert]
       27 CALL                             R5 3 0
       28 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
