PROTO_0:
        0 PREPVARARGS                      2
        1 JUMPIF                           R0 ; [+10]
        2 GETIMPORT                        R2 K1 [error]
        4 GETUPVAL                         R3 0
        5 GETIMPORT                        R4 K4 [string.format]
        7 MOVE                             R5 R1
        8 GETVARARGS                       R6 -1
        9 CALL                             R4 -1 -1
       10 CALL                             R3 -1 -1
       11 CALL                             R2 -1 0
       12 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K6 ["Error"]
       16 DUPCLOSURE                       R3 K7 [PROTO_0]
       17 CAPTURE                          VAL R2
       18 RETURN                           R3 1
