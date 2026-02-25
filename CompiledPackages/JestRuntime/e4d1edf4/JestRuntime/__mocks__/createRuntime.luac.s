PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["new"]
        3 CALL                             R0 0 1
        4 GETIMPORT                        R5 K2 [script]
        6 GETTABLEKS                       R4 R5 K3 ["Parent"]
        8 GETTABLEKS                       R3 R4 K3 ["Parent"]
       10 GETTABLEKS                       R2 R3 K4 ["__tests__"]
       12 GETTABLEKS                       R1 R2 K5 ["test_root"]
       14 SETTABLEKS                       R1 R0 K6 ["__mockRootPath"]
       16 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["resolve"]
        3 CALL                             R1 0 1
        4 DUPCLOSURE                       R3 K1 [PROTO_0]
        5 CAPTURE                          UPVAL U1
        6 NAMECALL                         R1 R1 K2 ["andThen"]
        8 CALL                             R1 2 -1
        9 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Promise"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETIMPORT                        R5 K1 [script]
       18 GETTABLEKS                       R4 R5 K2 ["Parent"]
       20 GETTABLEKS                       R3 R4 K2 ["Parent"]
       22 CALL                             R2 1 1
       23 DUPCLOSURE                       R3 K6 [PROTO_1]
       24 CAPTURE                          VAL R1
       25 CAPTURE                          VAL R2
       26 RETURN                           R3 1
