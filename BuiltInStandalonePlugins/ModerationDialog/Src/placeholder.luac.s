PROTO_0:
        0 JUMPIFNOTEQ                      R0 R1 ; [+2]
        2 LOADB                            R2 0 +1
        3 LOADB                            R2 1
        4 RETURN                           R2 1

PROTO_1:
        0 DIV                              R2 R0 R1
        1 RETURN                           R2 1

PROTO_2:
        0 MODK                             R2 R0 K0 [2]
        1 JUMPIFEQKN                       R2 K1 [0] ; [+2]
        3 LOADB                            R1 0 +1
        4 LOADB                            R1 1
        5 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 SETTABLEKS                       R1 R0 K1 ["checkValues"]
        6 DUPCLOSURE                       R1 K2 [PROTO_1]
        7 SETTABLEKS                       R1 R0 K3 ["divide"]
        9 DUPCLOSURE                       R1 K4 [PROTO_2]
       10 SETTABLEKS                       R1 R0 K5 ["isEven"]
       12 RETURN                           R0 1
