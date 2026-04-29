PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["Visible"]
        2 JUMPIFNOTEQKB                    R2 FALSE ; [+3]
        4 MOVE                             R1 R0
        5 JUMPIF                           R1 ; [+1]
        6 LOADNIL                          R1
        7 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 DUPCLOSURE                       R3 K0 [PROTO_0]
        3 CALL                             R1 2 1
        4 JUMPIFEQKNIL                     R1 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R3 K3 [script]
        5 GETTABLEKS                       R2 R3 K4 ["Parent"]
        7 GETTABLEKS                       R1 R2 K5 ["traverseAncestors"]
        9 CALL                             R0 1 1
       10 DUPCLOSURE                       R1 K6 [PROTO_1]
       11 CAPTURE                          VAL R0
       12 RETURN                           R1 1
