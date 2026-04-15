PROTO_0:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+4]
        2 GETIMPORT                        R1 K1 [print]
        4 LOADK                            R2 K2 ["Luau now has a direct table.isfrozen call that can save the overhead of this library function call"]
        5 CALL                             R1 1 0
        6 GETIMPORT                        R1 K5 [table.isfrozen]
        8 MOVE                             R2 R0
        9 CALL                             R1 1 -1
       10 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [_G]
        3 GETTABLEKS                       R0 R1 K2 ["__DEV__"]
        5 GETIMPORT                        R2 K4 [script]
        7 GETTABLEKS                       R1 R2 K5 ["Parent"]
        9 GETTABLEKS                       R3 R1 K5 ["Parent"]
       11 GETTABLEKS                       R2 R3 K5 ["Parent"]
       13 GETIMPORT                        R3 K7 [require]
       15 GETTABLEKS                       R4 R2 K8 ["ES7Types"]
       17 CALL                             R3 1 1
       18 DUPCLOSURE                       R4 K9 [PROTO_0]
       19 CAPTURE                          VAL R0
       20 RETURN                           R4 1
