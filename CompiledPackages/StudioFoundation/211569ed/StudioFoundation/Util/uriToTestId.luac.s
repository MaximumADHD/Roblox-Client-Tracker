PROTO_0:
        0 GETIMPORT                        R1 K2 [string.gsub]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K3 ["toString"]
        5 MOVE                             R3 R0
        6 CALL                             R2 1 1
        7 LOADK                            R3 K4 [" "]
        8 LOADK                            R4 K5 ["_"]
        9 CALL                             R1 3 2
       10 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R3 K3 [script]
        5 GETTABLEKS                       R2 R3 K4 ["Parent"]
        7 GETTABLEKS                       R1 R2 K5 ["StudioUri"]
        9 CALL                             R0 1 1
       10 DUPCLOSURE                       R1 K6 [PROTO_0]
       11 CAPTURE                          VAL R0
       12 RETURN                           R1 1
