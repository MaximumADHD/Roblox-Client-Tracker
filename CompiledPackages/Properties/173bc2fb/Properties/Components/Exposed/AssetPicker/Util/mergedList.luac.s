PROTO_0:
        0 GETIMPORT                        R2 K2 [table.create]
        2 LENGTH                           R4 R0
        3 LENGTH                           R5 R1
        4 ADD                              R3 R4 R5
        5 CALL                             R2 1 1
        6 GETIMPORT                        R3 K4 [table.move]
        8 MOVE                             R4 R0
        9 LOADN                            R5 1
       10 LENGTH                           R6 R0
       11 LOADN                            R7 1
       12 MOVE                             R8 R2
       13 CALL                             R3 5 0
       14 GETIMPORT                        R3 K4 [table.move]
       16 MOVE                             R4 R1
       17 LOADN                            R5 1
       18 LENGTH                           R6 R1
       19 LENGTH                           R8 R0
       20 ADDK                             R7 R8 K5 [1]
       21 MOVE                             R8 R2
       22 CALL                             R3 5 0
       23 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
