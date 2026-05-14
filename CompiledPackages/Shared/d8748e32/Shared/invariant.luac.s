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
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R1 K6 ["Error"]
       14 DUPCLOSURE                       R3 K7 [PROTO_0]
       15 CAPTURE                          VAL R2
       16 RETURN                           R3 1
