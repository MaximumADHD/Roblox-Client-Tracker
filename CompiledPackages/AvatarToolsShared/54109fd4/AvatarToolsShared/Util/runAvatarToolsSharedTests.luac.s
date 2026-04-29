PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["Name"]
        2 JUMPIFNOTEQKS                    R2 K1 ["packages"] ; [+2]
        4 LOADB                            R1 0 +1
        5 LOADB                            R1 1
        6 RETURN                           R1 1

PROTO_1:
        0 PREPVARARGS                      1
        1 GETTABLEKS                       R1 R0 K0 ["TestBootstrap"]
        3 GETUPVAL                         R2 0
        4 GETUPVAL                         R3 1
        5 NAMECALL                         R3 R3 K1 ["GetChildren"]
        7 CALL                             R3 1 1
        8 DUPCLOSURE                       R4 K2 [PROTO_0]
        9 CALL                             R2 2 1
       10 MOVE                             R5 R2
       11 GETVARARGS                       R6 -1
       12 NAMECALL                         R3 R1 K3 ["run"]
       14 CALL                             R3 -1 -1
       15 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETTABLEKS                       R1 R0 K2 ["Parent"]
        9 GETIMPORT                        R2 K4 [require]
       11 GETTABLEKS                       R3 R1 K5 ["Dash"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R3 R2 K6 ["filter"]
       16 DUPCLOSURE                       R4 K7 [PROTO_1]
       17 CAPTURE                          VAL R3
       18 CAPTURE                          VAL R0
       19 RETURN                           R4 1
