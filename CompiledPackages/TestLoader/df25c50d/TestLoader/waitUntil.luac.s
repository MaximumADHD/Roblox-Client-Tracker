PROTO_0:
        0 GETIMPORT                        R3 K2 [os.clock]
        2 CALL                             R3 0 1
        3 ADD                              R2 R3 R1
        4 GETIMPORT                        R3 K2 [os.clock]
        6 CALL                             R3 0 1
        7 JUMPIFNOTLT                      R3 R2 ; [+8]
        9 MOVE                             R3 R0
       10 CALL                             R3 0 1
       11 JUMPIF                           R3 ; [+4]
       12 GETIMPORT                        R3 K5 [task.wait]
       14 CALL                             R3 0 0
       15 JUMPBACK                         ; [-12]
       16 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
