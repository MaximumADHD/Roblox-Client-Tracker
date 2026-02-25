PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 0
        2 ADDK                             R2 R2 K0 [1]
        3 SETUPVAL                         R2 0
        4 GETIMPORT                        R2 K3 [string.format]
        6 LOADK                            R3 K4 ["%s%04i"]
        7 ORK                              R4 R0 K5 [""]
        8 MOVE                             R5 R1
        9 CALL                             R2 3 -1
       10 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 LOADN                            R0 0
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          REF R0
        4 CLOSEUPVALS                      R0
        5 RETURN                           R1 1
