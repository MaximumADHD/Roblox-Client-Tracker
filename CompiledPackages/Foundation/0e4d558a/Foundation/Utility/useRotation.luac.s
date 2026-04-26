PROTO_0:
        0 MULK                             R2 R0 K0 [360]
        1 GETUPVAL                         R4 0
        2 ORK                              R3 R4 K1 [1]
        3 MUL                              R1 R2 R3
        4 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          VAL R0
        4 NAMECALL                         R2 R1 K0 ["map"]
        6 CALL                             R2 2 -1
        7 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["ReactUtils"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R4 R3 K9 ["useClock"]
       21 DUPCLOSURE                       R5 K10 [PROTO_1]
       22 CAPTURE                          VAL R4
       23 RETURN                           R5 1
