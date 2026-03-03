PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R0 R2
        2 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["isBinding"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 JUMPIFNOT                        R2 ; [+6]
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          VAL R1
        8 NAMECALL                         R2 R0 K1 ["map"]
       10 CALL                             R2 2 -1
       11 RETURN                           R2 -1
       12 GETTABLE                         R2 R0 R1
       13 RETURN                           R2 1

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
       16 GETTABLEKS                       R4 R1 K8 ["ReactIs"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R6 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R6 K10 ["Types"]
       25 CALL                             R4 1 1
       26 DUPCLOSURE                       R5 K11 [PROTO_1]
       27 CAPTURE                          VAL R3
       28 RETURN                           R5 1
