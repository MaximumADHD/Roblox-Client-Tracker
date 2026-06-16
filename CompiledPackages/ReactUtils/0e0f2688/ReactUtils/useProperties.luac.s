PROTO_0:
        0 PREPVARARGS                      2
        1 GETUPVAL                         R2 0
        2 MOVE                             R3 R0
        3 MOVE                             R4 R1
        4 LOADB                            R5 0
        5 GETVARARGS                       R6 -1
        6 CALL                             R2 -1 -1
        7 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ReactUtils"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETIMPORT                        R4 K1 [script]
       18 GETTABLEKS                       R4 R4 K4 ["Parent"]
       20 GETTABLEKS                       R4 R4 K8 ["usePropertiesBase"]
       22 CALL                             R3 1 1
       23 DUPCLOSURE                       R4 K9 [PROTO_0]
       24 CAPTURE                          VAL R3
       25 RETURN                           R4 1
