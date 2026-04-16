PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["event"]
        3 GETTABLEKS                       R3 R0 K1 ["callback"]
        5 NEWTABLE                         R4 0 2
        7 GETTABLEKS                       R5 R0 K0 ["event"]
        9 GETTABLEKS                       R6 R0 K1 ["callback"]
       11 SETLIST                          R4 R5 2 [1]
       13 CALL                             R1 3 0
       14 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R3 K3 [script]
        5 GETTABLEKS                       R2 R3 K4 ["Parent"]
        7 GETTABLEKS                       R1 R2 K5 ["useEventConnection"]
        9 CALL                             R0 1 1
       10 DUPCLOSURE                       R1 K6 [PROTO_0]
       11 CAPTURE                          VAL R0
       12 RETURN                           R1 1
