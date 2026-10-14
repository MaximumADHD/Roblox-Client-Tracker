PROTO_0:
        0 GETUPVAL                         R2 0
        1 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        3 LOADK                            R3 K0 ["Json.encode is not setup"]
        4 GETIMPORT                        R1 K2 [assert]
        6 CALL                             R1 2 0
        7 GETUPVAL                         R1 0
        8 MOVE                             R2 R0
        9 CALL                             R1 1 -1
       10 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        3 LOADK                            R3 K0 ["Json.decode is not setup"]
        4 GETIMPORT                        R1 K2 [assert]
        6 CALL                             R1 2 0
        7 GETUPVAL                         R1 0
        8 MOVE                             R2 R0
        9 CALL                             R1 1 -1
       10 RETURN                           R1 -1

PROTO_2:
        0 SETUPVAL                         R0 0
        1 SETUPVAL                         R1 1
        2 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 LOADNIL                          R1
        4 LOADNIL                          R2
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          REF R1
        7 SETTABLEKS                       R3 R0 K0 ["encode"]
        9 NEWCLOSURE                       R3 P1
       10 CAPTURE                          REF R2
       11 SETTABLEKS                       R3 R0 K1 ["decode"]
       13 NEWCLOSURE                       R3 P2
       14 CAPTURE                          REF R1
       15 CAPTURE                          REF R2
       16 SETTABLEKS                       R3 R0 K2 ["setup"]
       18 CLOSEUPVALS                      R1
       19 RETURN                           R0 1
