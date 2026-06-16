PROTO_0:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [error]
        3 LOADK                            R1 K2 ["Not implemented. Dependencies used upstream aren't implemented"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_1:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R1 0
        2 MOVE                             R2 R0
        3 GETUPVAL                         R3 1
        4 GETVARARGS                       R4 -1
        5 CALL                             R1 -1 0
        6 RETURN                           R0 0

PROTO_2:
        0 NEWTABLE                         R1 0 0
        2 GETIMPORT                        R2 K1 [ipairs]
        4 GETTABLEKS                       R3 R0 K2 ["supportedCommands"]
        6 CALL                             R2 1 3
        7 FORGPREP_INEXT                   R2
        8 NEWCLOSURE                       R7 P0
        9 CAPTURE                          UPVAL U0
       10 CAPTURE                          VAL R6
       11 SETTABLE                         R7 R1 R6
       12 FORGLOOP                         R2 2 [inext] ; [-5]
       14 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K6 [PROTO_0]
       15 DUPCLOSURE                       R3 K7 [PROTO_2]
       16 CAPTURE                          VAL R2
       17 DUPTABLE                         R4 K9 [{"default"}]
       18 SETTABLEKS                       R3 R4 K8 ["default"]
       20 RETURN                           R4 1
