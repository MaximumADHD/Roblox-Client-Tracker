PROTO_0:
        0 JUMPIFNOTEQKNIL                  R0 ; [+2]
        2 GETUPVAL                         R0 0
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R4 R1 K0 ["type"]
        6 GETTABLE                         R2 R3 R4
        7 JUMPIFNOT                        R2 ; [+5]
        8 MOVE                             R3 R2
        9 MOVE                             R4 R0
       10 MOVE                             R5 R1
       11 CALL                             R3 2 -1
       12 RETURN                           R3 -1
       13 RETURN                           R0 1

PROTO_1:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R1
        3 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["types"]
        9 GETTABLEKS                       R1 R1 K6 ["actions"]
       11 CALL                             R0 1 1
       12 GETIMPORT                        R1 K1 [require]
       14 GETIMPORT                        R2 K3 [script]
       16 GETTABLEKS                       R2 R2 K4 ["Parent"]
       18 GETTABLEKS                       R2 R2 K5 ["types"]
       20 GETTABLEKS                       R2 R2 K7 ["reducers"]
       22 CALL                             R1 1 1
       23 DUPCLOSURE                       R2 K8 [PROTO_1]
       24 RETURN                           R2 1
