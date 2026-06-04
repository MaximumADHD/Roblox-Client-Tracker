PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 FASTCALL2                        TABLE_INSERT R1 R6 ; [+4]
        8 MOVE                             R8 R1
        9 MOVE                             R9 R6
       10 GETUPVAL                         R7 0
       11 CALL                             R7 2 0
       12 FORGLOOP                         R2 2 ; [-7]
       14 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETTABLEKS                       R2 R0 K5 ["Types"]
        9 CALL                             R1 1 1
       10 GETIMPORT                        R2 K8 [table.insert]
       12 DUPCLOSURE                       R3 K9 [PROTO_0]
       13 CAPTURE                          VAL R2
       14 RETURN                           R3 1
