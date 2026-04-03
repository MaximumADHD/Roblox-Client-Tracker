PROTO_0:
        0 LOADK                            R0 K0 ["id-"]
        1 SETUPVAL                         R0 0
        2 LOADN                            R0 0
        3 SETUPVAL                         R0 1
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 FASTCALL1                        TOSTRING R3 ; [+2]
        3 GETIMPORT                        R2 K1 [tostring]
        5 CALL                             R2 1 1
        6 CONCAT                           R0 R1 R2
        7 GETUPVAL                         R2 1
        8 ADDK                             R1 R2 K2 [1]
        9 SETUPVAL                         R1 1
       10 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 LOADK                            R1 K0 ["id-"]
        2 GETIMPORT                        R3 K3 [math.random]
        4 LOADK                            R4 K4 [100000]
        5 LOADK                            R5 K5 [1000000]
        6 CALL                             R3 2 -1
        7 FASTCALL                         TOSTRING ; [+2]
        8 GETIMPORT                        R2 K7 [tostring]
       10 CALL                             R2 -1 1
       11 CONCAT                           R0 R1 R2
       12 LOADN                            R1 0
       13 NEWTABLE                         R2 2 0
       15 NEWCLOSURE                       R3 P0
       16 CAPTURE                          REF R0
       17 CAPTURE                          REF R1
       18 SETTABLEKS                       R3 R2 K8 ["_TESTING_ONLY_normalize_keys"]
       20 NEWCLOSURE                       R3 P1
       21 CAPTURE                          REF R0
       22 CAPTURE                          REF R1
       23 SETTABLEKS                       R3 R2 K9 ["generateKey"]
       25 CLOSEUPVALS                      R0
       26 RETURN                           R2 1
