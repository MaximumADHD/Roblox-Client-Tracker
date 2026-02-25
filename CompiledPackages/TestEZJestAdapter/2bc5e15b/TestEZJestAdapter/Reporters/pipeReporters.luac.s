PROTO_0:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [ipairs]
        3 GETUPVAL                         R1 0
        4 CALL                             R0 1 3
        5 FORGPREP_INEXT                   R0
        6 GETTABLEKS                       R5 R4 K2 ["report"]
        8 GETVARARGS                       R6 -1
        9 CALL                             R5 -1 0
       10 FORGLOOP                         R0 2 [inext] ; [-5]
       12 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R1 K1 [{"report"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 SETTABLEKS                       R2 R1 K0 ["report"]
        5 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 GETTABLEKS                       R2 R0 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETIMPORT                        R2 K4 [require]
       11 GETTABLEKS                       R3 R1 K5 ["LuauPolyfill"]
       13 CALL                             R2 1 1
       14 DUPCLOSURE                       R3 K6 [PROTO_1]
       15 RETURN                           R3 1
