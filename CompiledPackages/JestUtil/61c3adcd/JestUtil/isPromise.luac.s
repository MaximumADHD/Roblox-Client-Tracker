PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["is"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 GETIMPORT                        R2 K4 [require]
        9 GETTABLEKS                       R3 R1 K5 ["Promise"]
       11 CALL                             R2 1 1
       12 NEWTABLE                         R3 1 0
       14 DUPCLOSURE                       R4 K6 [PROTO_0]
       15 CAPTURE                          VAL R2
       16 SETTABLEKS                       R4 R3 K7 ["default"]
       18 RETURN                           R3 1
