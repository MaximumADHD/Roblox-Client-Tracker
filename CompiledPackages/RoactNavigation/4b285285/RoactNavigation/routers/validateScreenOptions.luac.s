PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R5 R0 K0 ["title"]
        3 FASTCALL1                        TYPE R5 ; [+2]
        4 GETIMPORT                        R4 K2 [type]
        6 CALL                             R4 1 1
        7 JUMPIFNOTEQKS                    R4 K3 ["function"] ; [+2]
        9 LOADB                            R3 0 +1
       10 LOADB                            R3 1
       11 LOADK                            R4 K4 ["title cannot be defined as a function in navigation options for screen '%s'"]
       12 GETTABLEKS                       R5 R1 K5 ["routeName"]
       14 CALL                             R2 3 0
       15 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K4 ["Parent"]
        9 GETTABLEKS                       R1 R1 K5 ["utils"]
       11 GETTABLEKS                       R1 R1 K6 ["invariant"]
       13 CALL                             R0 1 1
       14 DUPCLOSURE                       R1 K7 [PROTO_0]
       15 CAPTURE                          VAL R0
       16 RETURN                           R1 1
