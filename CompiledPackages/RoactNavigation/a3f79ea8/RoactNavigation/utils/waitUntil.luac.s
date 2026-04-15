PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETIMPORT                        R2 K2 [task.wait]
        3 CALL                             R2 0 1
        4 ADD                              R0 R1 R2
        5 SETUPVAL                         R0 0
        6 RETURN                           R0 0

PROTO_1:
        0 ORK                              R1 R1 K0 [1]
        1 LOADN                            R2 0
        2 JUMPIFNOTLT                      R2 R1 ; [+11]
        4 MOVE                             R3 R0
        5 CALL                             R3 0 1
        6 JUMPIF                           R3 ; [+7]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R3 R4 K1 ["act"]
       10 NEWCLOSURE                       R4 P0
       11 CAPTURE                          REF R2
       12 CALL                             R3 1 0
       13 JUMPBACK                         ; [-12]
       14 CLOSEUPVALS                      R2
       15 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETTABLEKS                       R1 R0 K2 ["Parent"]
        9 GETIMPORT                        R2 K4 [require]
       11 GETTABLEKS                       R4 R1 K5 ["Dev"]
       13 GETTABLEKS                       R3 R4 K6 ["ReactRoblox"]
       15 CALL                             R2 1 1
       16 DUPCLOSURE                       R3 K7 [PROTO_1]
       17 CAPTURE                          VAL R2
       18 RETURN                           R3 1
