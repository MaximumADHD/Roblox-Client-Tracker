PROTO_0:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R0
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 MOVE                             R8 R1
        7 MOVE                             R9 R6
        8 MOVE                             R10 R7
        9 CALL                             R8 2 1
       10 JUMPIFEQKNIL                     R8 ; [+7]
       12 FASTCALL2                        TABLE_INSERT R2 R8 ; [+4]
       14 MOVE                             R10 R2
       15 MOVE                             R11 R8
       16 GETUPVAL                         R9 0
       17 CALL                             R9 2 0
       18 FORGLOOP                         R3 2 ; [-13]
       20 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETTABLEKS                       R2 R0 K5 ["Types"]
        9 CALL                             R1 1 1
       10 GETIMPORT                        R2 K8 [table.insert]
       12 DUPCLOSURE                       R3 K9 [PROTO_0]
       13 CAPTURE                          VAL R2
       14 RETURN                           R3 1
