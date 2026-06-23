PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["isBinding"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 JUMPIFNOT                        R2 ; [+5]
        6 MOVE                             R4 R1
        7 NAMECALL                         R2 R0 K1 ["map"]
        9 CALL                             R2 2 -1
       10 RETURN                           R2 -1
       11 MOVE                             R2 R1
       12 MOVE                             R3 R0
       13 CALL                             R2 1 -1
       14 RETURN                           R2 -1

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
       21 GETTABLEKS                       R5 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R5 K10 ["Types"]
       25 CALL                             R4 1 1
       26 DUPCLOSURE                       R5 K11 [PROTO_0]
       27 CAPTURE                          VAL R3
       28 RETURN                           R5 1
