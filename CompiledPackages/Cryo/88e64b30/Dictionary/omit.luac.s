PROTO_0:
        0 PREPVARARGS                      1
        1 GETIMPORT                        R1 K2 [table.clone]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 NEWTABLE                         R2 0 0
        7 GETVARARGS                       R5 -1
        8 SETLIST                          R2 R5 -1 [1]
       10 LOADNIL                          R3
       11 LOADNIL                          R4
       12 FORGPREP                         R2
       13 LOADNIL                          R7
       14 SETTABLE                         R7 R1 R6
       15 FORGLOOP                         R2 2 ; [-3]
       17 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
